package com.sdk.b;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes4.dex */
public class c<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashMap<K, V> f56585a;

    /* renamed from: b  reason: collision with root package name */
    public int f56586b;

    /* renamed from: c  reason: collision with root package name */
    public int f56587c;

    /* renamed from: d  reason: collision with root package name */
    public b<K, Long> f56588d;

    public c(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f56587c = i2;
        this.f56585a = new LinkedHashMap<>(0, 0.75f, true);
        this.f56588d = new b<>(0, 0.75f);
    }

    public final int a(K k4, V v3) {
        int b4 = b(k4, v3);
        if (b4 <= 0) {
            this.f56586b = 0;
            for (Map.Entry<K, V> entry : this.f56585a.entrySet()) {
                this.f56586b = b(entry.getKey(), entry.getValue()) + this.f56586b;
            }
        }
        return b4;
    }

    public final V a(K k4) {
        Objects.requireNonNull(k4, "key == null");
        synchronized (this) {
            if (!this.f56588d.containsKey(k4)) {
                b(k4);
                return null;
            }
            V v3 = this.f56585a.get(k4);
            if (v3 != null) {
                return v3;
            }
            return null;
        }
    }

    public final V a(K k4, V v3, long j4) {
        V put;
        if (k4 == null || v3 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f56586b += a(k4, v3);
            put = this.f56585a.put(k4, v3);
            this.f56588d.put(k4, Long.valueOf(j4));
            if (put != null) {
                this.f56586b -= a(k4, put);
            }
        }
        a(this.f56587c);
        return put;
    }

    public final void a(int i2) {
        while (true) {
            synchronized (this) {
                if (this.f56586b <= i2 || this.f56585a.isEmpty()) {
                    break;
                }
                Map.Entry<K, V> next = this.f56585a.entrySet().iterator().next();
                K key = next.getKey();
                V value = next.getValue();
                this.f56585a.remove(key);
                this.f56588d.remove((Object) key);
                this.f56586b -= a(key, value);
            }
        }
    }

    public int b(K k4, V v3) {
        throw null;
    }

    public final V b(K k4) {
        V remove;
        Objects.requireNonNull(k4, "key == null");
        synchronized (this) {
            remove = this.f56585a.remove(k4);
            this.f56588d.remove((Object) k4);
            if (remove != null) {
                this.f56586b -= a(k4, remove);
            }
        }
        return remove;
    }
}
