package io.reactivex.observables;

import io.reactivex.annotations.Nullable;
import io.reactivex.z;
/* compiled from: GroupedObservable.java */
/* loaded from: classes5.dex */
public abstract class b<K, T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final K f70111a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@Nullable K k4) {
        this.f70111a = k4;
    }

    @Nullable
    public K f8() {
        return this.f70111a;
    }
}
