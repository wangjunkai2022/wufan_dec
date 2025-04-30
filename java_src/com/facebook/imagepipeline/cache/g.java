package com.facebook.imagepipeline.cache;

import com.facebook.common.internal.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: CountingLruMap.java */
@ThreadSafe
/* loaded from: classes.dex */
public class g<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final v<V> f12493a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap<K, V> f12494b = new LinkedHashMap<>();
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private int f12495c = 0;

    public g(v<V> vVar) {
        this.f12493a = vVar;
    }

    private int i(V v3) {
        if (v3 == null) {
            return 0;
        }
        return this.f12493a.a(v3);
    }

    public synchronized ArrayList<V> a() {
        ArrayList<V> arrayList;
        arrayList = new ArrayList<>((Collection<? extends V>) this.f12494b.values());
        this.f12494b.clear();
        this.f12495c = 0;
        return arrayList;
    }

    public synchronized boolean b(K k4) {
        return this.f12494b.containsKey(k4);
    }

    @Nullable
    public synchronized V c(K k4) {
        return this.f12494b.get(k4);
    }

    public synchronized int d() {
        return this.f12494b.size();
    }

    @Nullable
    public synchronized K e() {
        return this.f12494b.isEmpty() ? null : this.f12494b.keySet().iterator().next();
    }

    @VisibleForTesting
    synchronized ArrayList<K> f() {
        return new ArrayList<>(this.f12494b.keySet());
    }

    public synchronized ArrayList<Map.Entry<K, V>> g(@Nullable com.facebook.common.internal.i<K> iVar) {
        ArrayList<Map.Entry<K, V>> arrayList;
        arrayList = new ArrayList<>(this.f12494b.entrySet().size());
        for (Map.Entry<K, V> entry : this.f12494b.entrySet()) {
            if (iVar == null || iVar.apply(entry.getKey())) {
                arrayList.add(entry);
            }
        }
        return arrayList;
    }

    public synchronized int h() {
        return this.f12495c;
    }

    @VisibleForTesting
    synchronized ArrayList<V> j() {
        return new ArrayList<>((Collection<? extends V>) this.f12494b.values());
    }

    @Nullable
    public synchronized V k(K k4, V v3) {
        V remove;
        remove = this.f12494b.remove(k4);
        this.f12495c -= i(remove);
        this.f12494b.put(k4, v3);
        this.f12495c += i(v3);
        return remove;
    }

    @Nullable
    public synchronized V l(K k4) {
        V remove;
        remove = this.f12494b.remove(k4);
        this.f12495c -= i(remove);
        return remove;
    }

    public synchronized ArrayList<V> m(@Nullable com.facebook.common.internal.i<K> iVar) {
        ArrayList<V> arrayList;
        arrayList = new ArrayList<>();
        Iterator<Map.Entry<K, V>> it2 = this.f12494b.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (iVar == null || iVar.apply(next.getKey())) {
                arrayList.add(next.getValue());
                this.f12495c -= i(next.getValue());
                it2.remove();
            }
        }
        return arrayList;
    }
}
