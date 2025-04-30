package com.facebook.common.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: Sets.java */
/* loaded from: classes2.dex */
public final class j {
    private j() {
    }

    public static <E> CopyOnWriteArraySet<E> a() {
        return new CopyOnWriteArraySet<>();
    }

    public static <E> HashSet<E> b() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> c(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? new HashSet<>((Collection) iterable) : d(iterable.iterator());
    }

    public static <E> HashSet<E> d(Iterator<? extends E> it2) {
        HashSet<E> b4 = b();
        while (it2.hasNext()) {
            b4.add(it2.next());
        }
        return b4;
    }

    public static <E> HashSet<E> e(E... eArr) {
        HashSet<E> f4 = f(eArr.length);
        Collections.addAll(f4, eArr);
        return f4;
    }

    public static <E> HashSet<E> f(int i2) {
        return new HashSet<>(i2);
    }

    public static <E> Set<E> g() {
        return i(new IdentityHashMap());
    }

    public static <E> LinkedHashSet<E> h() {
        return new LinkedHashSet<>();
    }

    public static <E> Set<E> i(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }
}
