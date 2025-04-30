package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class LifecycleRegistry extends Lifecycle {

    /* renamed from: b  reason: collision with root package name */
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> f6241b;

    /* renamed from: c  reason: collision with root package name */
    private Lifecycle.State f6242c;

    /* renamed from: d  reason: collision with root package name */
    private final WeakReference<LifecycleOwner> f6243d;

    /* renamed from: e  reason: collision with root package name */
    private int f6244e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6245f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6246g;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<Lifecycle.State> f6247h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f6248i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ObserverWithState {

        /* renamed from: a  reason: collision with root package name */
        Lifecycle.State f6249a;

        /* renamed from: b  reason: collision with root package name */
        LifecycleEventObserver f6250b;

        ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            this.f6250b = Lifecycling.f(lifecycleObserver);
            this.f6249a = state;
        }

        void a(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            this.f6249a = LifecycleRegistry.f(this.f6249a, targetState);
            this.f6250b.onStateChanged(lifecycleOwner, event);
            this.f6249a = targetState;
        }
    }

    public LifecycleRegistry(@NonNull LifecycleOwner lifecycleOwner) {
        this(lifecycleOwner, true);
    }

    private void a(LifecycleOwner lifecycleOwner) {
        Iterator<Map.Entry<LifecycleObserver, ObserverWithState>> descendingIterator = this.f6241b.descendingIterator();
        while (descendingIterator.hasNext() && !this.f6246g) {
            Map.Entry<LifecycleObserver, ObserverWithState> next = descendingIterator.next();
            ObserverWithState value = next.getValue();
            while (value.f6249a.compareTo(this.f6242c) > 0 && !this.f6246g && this.f6241b.contains(next.getKey())) {
                Lifecycle.Event downFrom = Lifecycle.Event.downFrom(value.f6249a);
                if (downFrom != null) {
                    i(downFrom.getTargetState());
                    value.a(lifecycleOwner, downFrom);
                    h();
                } else {
                    throw new IllegalStateException("no event down from " + value.f6249a);
                }
            }
        }
    }

    private Lifecycle.State b(LifecycleObserver lifecycleObserver) {
        Map.Entry<LifecycleObserver, ObserverWithState> ceil = this.f6241b.ceil(lifecycleObserver);
        Lifecycle.State state = null;
        Lifecycle.State state2 = ceil != null ? ceil.getValue().f6249a : null;
        if (!this.f6247h.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.f6247h;
            state = arrayList.get(arrayList.size() - 1);
        }
        return f(f(this.f6242c, state2), state);
    }

    @SuppressLint({"RestrictedApi"})
    private void c(String str) {
        if (!this.f6248i || ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    @NonNull
    @VisibleForTesting
    public static LifecycleRegistry createUnsafe(@NonNull LifecycleOwner lifecycleOwner) {
        return new LifecycleRegistry(lifecycleOwner, false);
    }

    private void d(LifecycleOwner lifecycleOwner) {
        SafeIterableMap<LifecycleObserver, ObserverWithState>.IteratorWithAdditions iteratorWithAdditions = this.f6241b.iteratorWithAdditions();
        while (iteratorWithAdditions.hasNext() && !this.f6246g) {
            Map.Entry next = iteratorWithAdditions.next();
            ObserverWithState observerWithState = (ObserverWithState) next.getValue();
            while (observerWithState.f6249a.compareTo(this.f6242c) < 0 && !this.f6246g && this.f6241b.contains((LifecycleObserver) next.getKey())) {
                i(observerWithState.f6249a);
                Lifecycle.Event upFrom = Lifecycle.Event.upFrom(observerWithState.f6249a);
                if (upFrom != null) {
                    observerWithState.a(lifecycleOwner, upFrom);
                    h();
                } else {
                    throw new IllegalStateException("no event up from " + observerWithState.f6249a);
                }
            }
        }
    }

    private boolean e() {
        if (this.f6241b.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.f6241b.eldest().getValue().f6249a;
        Lifecycle.State state2 = this.f6241b.newest().getValue().f6249a;
        return state == state2 && this.f6242c == state2;
    }

    static Lifecycle.State f(@NonNull Lifecycle.State state, @Nullable Lifecycle.State state2) {
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    private void g(Lifecycle.State state) {
        if (this.f6242c == state) {
            return;
        }
        this.f6242c = state;
        if (!this.f6245f && this.f6244e == 0) {
            this.f6245f = true;
            j();
            this.f6245f = false;
            return;
        }
        this.f6246g = true;
    }

    private void h() {
        ArrayList<Lifecycle.State> arrayList = this.f6247h;
        arrayList.remove(arrayList.size() - 1);
    }

    private void i(Lifecycle.State state) {
        this.f6247h.add(state);
    }

    private void j() {
        LifecycleOwner lifecycleOwner = this.f6243d.get();
        if (lifecycleOwner != null) {
            while (!e()) {
                this.f6246g = false;
                if (this.f6242c.compareTo(this.f6241b.eldest().getValue().f6249a) < 0) {
                    a(lifecycleOwner);
                }
                Map.Entry<LifecycleObserver, ObserverWithState> newest = this.f6241b.newest();
                if (!this.f6246g && newest != null && this.f6242c.compareTo(newest.getValue().f6249a) > 0) {
                    d(lifecycleOwner);
                }
            }
            this.f6246g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(@NonNull LifecycleObserver lifecycleObserver) {
        LifecycleOwner lifecycleOwner;
        c("addObserver");
        Lifecycle.State state = this.f6242c;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, state2);
        if (this.f6241b.putIfAbsent(lifecycleObserver, observerWithState) == null && (lifecycleOwner = this.f6243d.get()) != null) {
            boolean z3 = this.f6244e != 0 || this.f6245f;
            Lifecycle.State b4 = b(lifecycleObserver);
            this.f6244e++;
            while (observerWithState.f6249a.compareTo(b4) < 0 && this.f6241b.contains(lifecycleObserver)) {
                i(observerWithState.f6249a);
                Lifecycle.Event upFrom = Lifecycle.Event.upFrom(observerWithState.f6249a);
                if (upFrom != null) {
                    observerWithState.a(lifecycleOwner, upFrom);
                    h();
                    b4 = b(lifecycleObserver);
                } else {
                    throw new IllegalStateException("no event up from " + observerWithState.f6249a);
                }
            }
            if (!z3) {
                j();
            }
            this.f6244e--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    @NonNull
    public Lifecycle.State getCurrentState() {
        return this.f6242c;
    }

    public int getObserverCount() {
        c("getObserverCount");
        return this.f6241b.size();
    }

    public void handleLifecycleEvent(@NonNull Lifecycle.Event event) {
        c("handleLifecycleEvent");
        g(event.getTargetState());
    }

    @MainThread
    @Deprecated
    public void markState(@NonNull Lifecycle.State state) {
        c("markState");
        setCurrentState(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(@NonNull LifecycleObserver lifecycleObserver) {
        c("removeObserver");
        this.f6241b.remove(lifecycleObserver);
    }

    @MainThread
    public void setCurrentState(@NonNull Lifecycle.State state) {
        c("setCurrentState");
        g(state);
    }

    private LifecycleRegistry(@NonNull LifecycleOwner lifecycleOwner, boolean z3) {
        this.f6241b = new FastSafeIterableMap<>();
        this.f6244e = 0;
        this.f6245f = false;
        this.f6246g = false;
        this.f6247h = new ArrayList<>();
        this.f6243d = new WeakReference<>(lifecycleOwner);
        this.f6242c = Lifecycle.State.INITIALIZED;
        this.f6248i = z3;
    }
}
