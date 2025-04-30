package io.reactivex.internal.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: SorterFunction.java */
/* loaded from: classes5.dex */
public final class o<T> implements w2.o<List<T>, List<T>> {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super T> f70109a;

    public o(Comparator<? super T> comparator) {
        this.f70109a = comparator;
    }

    @Override // w2.o
    /* renamed from: a */
    public List<T> apply(List<T> list) throws Exception {
        Collections.sort(list, this.f70109a);
        return list;
    }
}
