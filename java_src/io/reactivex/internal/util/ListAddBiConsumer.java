package io.reactivex.internal.util;

import java.util.List;
/* loaded from: classes5.dex */
public enum ListAddBiConsumer implements w2.c<List, Object, List> {
    INSTANCE;

    public static <T> w2.c<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    @Override // w2.c
    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
