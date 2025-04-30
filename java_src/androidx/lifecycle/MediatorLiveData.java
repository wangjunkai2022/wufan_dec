package androidx.lifecycle;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {

    /* renamed from: a  reason: collision with root package name */
    private SafeIterableMap<LiveData<?>, Source<?>> f6265a = new SafeIterableMap<>();

    /* loaded from: classes.dex */
    private static class Source<V> implements Observer<V> {

        /* renamed from: a  reason: collision with root package name */
        final LiveData<V> f6266a;

        /* renamed from: b  reason: collision with root package name */
        final Observer<? super V> f6267b;

        /* renamed from: c  reason: collision with root package name */
        int f6268c = -1;

        Source(LiveData<V> liveData, Observer<? super V> observer) {
            this.f6266a = liveData;
            this.f6267b = observer;
        }

        void a() {
            this.f6266a.observeForever(this);
        }

        void b() {
            this.f6266a.removeObserver(this);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable V v3) {
            if (this.f6268c != this.f6266a.getVersion()) {
                this.f6268c = this.f6266a.getVersion();
                this.f6267b.onChanged(v3);
            }
        }
    }

    @MainThread
    public <S> void addSource(@NonNull LiveData<S> liveData, @NonNull Observer<? super S> observer) {
        Source<?> source = new Source<>(liveData, observer);
        Source<?> putIfAbsent = this.f6265a.putIfAbsent(liveData, source);
        if (putIfAbsent != null && putIfAbsent.f6267b != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (putIfAbsent == null && hasActiveObservers()) {
            source.a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    protected void onActive() {
        Iterator<Map.Entry<LiveData<?>, Source<?>>> it2 = this.f6265a.iterator();
        while (it2.hasNext()) {
            it2.next().getValue().a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    protected void onInactive() {
        Iterator<Map.Entry<LiveData<?>, Source<?>>> it2 = this.f6265a.iterator();
        while (it2.hasNext()) {
            it2.next().getValue().b();
        }
    }

    @MainThread
    public <S> void removeSource(@NonNull LiveData<S> liveData) {
        Source<?> remove = this.f6265a.remove(liveData);
        if (remove != null) {
            remove.b();
        }
    }
}
