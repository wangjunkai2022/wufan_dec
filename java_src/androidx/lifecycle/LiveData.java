package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class LiveData<T> {
    static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    int mActiveCount;
    private boolean mChangingActiveState;
    private volatile Object mData;
    final Object mDataLock;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper> mObservers;
    volatile Object mPendingData;
    private final Runnable mPostValueRunnable;
    private int mVersion;

    /* loaded from: classes.dex */
    private class AlwaysActiveObserver extends LiveData<T>.ObserverWrapper {
        AlwaysActiveObserver(Observer<? super T> observer) {
            super(observer);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean d() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class LifecycleBoundObserver extends LiveData<T>.ObserverWrapper implements LifecycleEventObserver {
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        final LifecycleOwner f6259e;

        LifecycleBoundObserver(@NonNull LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(observer);
            this.f6259e = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        void b() {
            this.f6259e.getLifecycle().removeObserver(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean c(LifecycleOwner lifecycleOwner) {
            return this.f6259e == lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean d() {
            return this.f6259e.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            Lifecycle.State currentState = this.f6259e.getLifecycle().getCurrentState();
            if (currentState == Lifecycle.State.DESTROYED) {
                LiveData.this.removeObserver(this.f6261a);
                return;
            }
            Lifecycle.State state = null;
            while (state != currentState) {
                a(d());
                state = currentState;
                currentState = this.f6259e.getLifecycle().getCurrentState();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public abstract class ObserverWrapper {

        /* renamed from: a  reason: collision with root package name */
        final Observer<? super T> f6261a;

        /* renamed from: b  reason: collision with root package name */
        boolean f6262b;

        /* renamed from: c  reason: collision with root package name */
        int f6263c = -1;

        ObserverWrapper(Observer<? super T> observer) {
            this.f6261a = observer;
        }

        void a(boolean z3) {
            if (z3 == this.f6262b) {
                return;
            }
            this.f6262b = z3;
            LiveData.this.changeActiveCounter(z3 ? 1 : -1);
            if (this.f6262b) {
                LiveData.this.dispatchingValue(this);
            }
        }

        void b() {
        }

        boolean c(LifecycleOwner lifecycleOwner) {
            return false;
        }

        abstract boolean d();
    }

    public LiveData(T t3) {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj;
                synchronized (LiveData.this.mDataLock) {
                    obj = LiveData.this.mPendingData;
                    LiveData.this.mPendingData = LiveData.NOT_SET;
                }
                LiveData.this.setValue(obj);
            }
        };
        this.mData = t3;
        this.mVersion = 0;
    }

    static void assertMainThread(String str) {
        if (ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void considerNotify(LiveData<T>.ObserverWrapper observerWrapper) {
        if (observerWrapper.f6262b) {
            if (!observerWrapper.d()) {
                observerWrapper.a(false);
                return;
            }
            int i2 = observerWrapper.f6263c;
            int i4 = this.mVersion;
            if (i2 >= i4) {
                return;
            }
            observerWrapper.f6263c = i4;
            observerWrapper.f6261a.onChanged((Object) this.mData);
        }
    }

    @MainThread
    void changeActiveCounter(int i2) {
        int i4 = this.mActiveCount;
        this.mActiveCount = i2 + i4;
        if (this.mChangingActiveState) {
            return;
        }
        this.mChangingActiveState = true;
        while (true) {
            try {
                int i5 = this.mActiveCount;
                if (i4 == i5) {
                    return;
                }
                boolean z3 = i4 == 0 && i5 > 0;
                boolean z4 = i4 > 0 && i5 == 0;
                if (z3) {
                    onActive();
                } else if (z4) {
                    onInactive();
                }
                i4 = i5;
            } finally {
                this.mChangingActiveState = false;
            }
        }
    }

    void dispatchingValue(@Nullable LiveData<T>.ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper != null) {
                considerNotify(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper>.IteratorWithAdditions iteratorWithAdditions = this.mObservers.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((ObserverWrapper) iteratorWithAdditions.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    @Nullable
    public T getValue() {
        T t3 = (T) this.mData;
        if (t3 != NOT_SET) {
            return t3;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersion() {
        return this.mVersion;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    public boolean hasObservers() {
        return this.mObservers.size() > 0;
    }

    @MainThread
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        assertMainThread("observe");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
        LiveData<T>.ObserverWrapper putIfAbsent = this.mObservers.putIfAbsent(observer, lifecycleBoundObserver);
        if (putIfAbsent != null && !putIfAbsent.c(lifecycleOwner)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (putIfAbsent != null) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(lifecycleBoundObserver);
    }

    @MainThread
    public void observeForever(@NonNull Observer<? super T> observer) {
        assertMainThread("observeForever");
        AlwaysActiveObserver alwaysActiveObserver = new AlwaysActiveObserver(observer);
        LiveData<T>.ObserverWrapper putIfAbsent = this.mObservers.putIfAbsent(observer, alwaysActiveObserver);
        if (putIfAbsent instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (putIfAbsent != null) {
            return;
        }
        alwaysActiveObserver.a(true);
    }

    protected void onActive() {
    }

    protected void onInactive() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postValue(T t3) {
        boolean z3;
        synchronized (this.mDataLock) {
            z3 = this.mPendingData == NOT_SET;
            this.mPendingData = t3;
        }
        if (z3) {
            ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
        }
    }

    @MainThread
    public void removeObserver(@NonNull Observer<? super T> observer) {
        assertMainThread("removeObserver");
        LiveData<T>.ObserverWrapper remove = this.mObservers.remove(observer);
        if (remove == null) {
            return;
        }
        remove.b();
        remove.a(false);
    }

    @MainThread
    public void removeObservers(@NonNull LifecycleOwner lifecycleOwner) {
        assertMainThread("removeObservers");
        Iterator<Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper>> it2 = this.mObservers.iterator();
        while (it2.hasNext()) {
            Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper> next = it2.next();
            if (next.getValue().c(lifecycleOwner)) {
                removeObserver(next.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    public void setValue(T t3) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t3;
        dispatchingValue(null);
    }

    public LiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (LiveData.this.mDataLock) {
                    obj2 = LiveData.this.mPendingData;
                    LiveData.this.mPendingData = LiveData.NOT_SET;
                }
                LiveData.this.setValue(obj2);
            }
        };
        this.mData = obj;
        this.mVersion = -1;
    }
}
