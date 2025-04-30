package io.reactivex.flowables;

import io.reactivex.annotations.Nullable;
import io.reactivex.j;
/* compiled from: GroupedFlowable.java */
/* loaded from: classes5.dex */
public abstract class b<K, T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final K f65805b;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@Nullable K k4) {
        this.f65805b = k4;
    }

    @Nullable
    public K J8() {
        return this.f65805b;
    }
}
