package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
/* loaded from: classes.dex */
public class Transformations {
    private Transformations() {
    }

    @NonNull
    @MainThread
    public static <X> LiveData<X> distinctUntilChanged(@NonNull LiveData<X> liveData) {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations.3

            /* renamed from: a  reason: collision with root package name */
            boolean f6331a = true;

            @Override // androidx.lifecycle.Observer
            public void onChanged(X x3) {
                T value = MediatorLiveData.this.getValue();
                if (this.f6331a || ((value == 0 && x3 != null) || !(value == 0 || value.equals(x3)))) {
                    this.f6331a = false;
                    MediatorLiveData.this.setValue(x3);
                }
            }
        });
        return mediatorLiveData;
    }

    @NonNull
    @MainThread
    public static <X, Y> LiveData<Y> map(@NonNull LiveData<X> liveData, @NonNull final Function<X, Y> function) {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable X x3) {
                MediatorLiveData.this.setValue(function.apply(x3));
            }
        });
        return mediatorLiveData;
    }

    @NonNull
    @MainThread
    public static <X, Y> LiveData<Y> switchMap(@NonNull LiveData<X> liveData, @NonNull final Function<X, LiveData<Y>> function) {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations.2

            /* renamed from: a  reason: collision with root package name */
            LiveData<Y> f6327a;

            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable X x3) {
                LiveData<Y> liveData2 = (LiveData) Function.this.apply(x3);
                Object obj = this.f6327a;
                if (obj == liveData2) {
                    return;
                }
                if (obj != null) {
                    mediatorLiveData.removeSource(obj);
                }
                this.f6327a = liveData2;
                if (liveData2 != 0) {
                    mediatorLiveData.addSource(liveData2, new Observer<Y>() { // from class: androidx.lifecycle.Transformations.2.1
                        @Override // androidx.lifecycle.Observer
                        public void onChanged(@Nullable Y y3) {
                            mediatorLiveData.setValue(y3);
                        }
                    });
                }
            }
        });
        return mediatorLiveData;
    }
}
