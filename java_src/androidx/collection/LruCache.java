package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public class LruCache<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f1683a;

    /* renamed from: b  reason: collision with root package name */
    private int f1684b;

    /* renamed from: c  reason: collision with root package name */
    private int f1685c;

    /* renamed from: d  reason: collision with root package name */
    private int f1686d;

    /* renamed from: e  reason: collision with root package name */
    private int f1687e;

    /* renamed from: f  reason: collision with root package name */
    private int f1688f;

    /* renamed from: g  reason: collision with root package name */
    private int f1689g;

    /* renamed from: h  reason: collision with root package name */
    private int f1690h;

    public LruCache(int i2) {
        if (i2 > 0) {
            this.f1685c = i2;
            this.f1683a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int c(K k4, V v3) {
        int d4 = d(k4, v3);
        if (d4 >= 0) {
            return d4;
        }
        throw new IllegalStateException("Negative size: " + k4 + SimpleComparison.EQUAL_TO_OPERATION + v3);
    }

    @Nullable
    protected V a(@NonNull K k4) {
        return null;
    }

    protected void b(boolean z3, @NonNull K k4, @NonNull V v3, @Nullable V v4) {
    }

    public final synchronized int createCount() {
        return this.f1687e;
    }

    protected int d(@NonNull K k4, @NonNull V v3) {
        return 1;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int evictionCount() {
        return this.f1688f;
    }

    @Nullable
    public final V get(@NonNull K k4) {
        V put;
        Objects.requireNonNull(k4, "key == null");
        synchronized (this) {
            V v3 = this.f1683a.get(k4);
            if (v3 != null) {
                this.f1689g++;
                return v3;
            }
            this.f1690h++;
            V a4 = a(k4);
            if (a4 == null) {
                return null;
            }
            synchronized (this) {
                this.f1687e++;
                put = this.f1683a.put(k4, a4);
                if (put != null) {
                    this.f1683a.put(k4, put);
                } else {
                    this.f1684b += c(k4, a4);
                }
            }
            if (put != null) {
                b(false, k4, a4, put);
                return put;
            }
            trimToSize(this.f1685c);
            return a4;
        }
    }

    public final synchronized int hitCount() {
        return this.f1689g;
    }

    public final synchronized int maxSize() {
        return this.f1685c;
    }

    public final synchronized int missCount() {
        return this.f1690h;
    }

    @Nullable
    public final V put(@NonNull K k4, @NonNull V v3) {
        V put;
        if (k4 != null && v3 != null) {
            synchronized (this) {
                this.f1686d++;
                this.f1684b += c(k4, v3);
                put = this.f1683a.put(k4, v3);
                if (put != null) {
                    this.f1684b -= c(k4, put);
                }
            }
            if (put != null) {
                b(false, k4, put, v3);
            }
            trimToSize(this.f1685c);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final synchronized int putCount() {
        return this.f1686d;
    }

    @Nullable
    public final V remove(@NonNull K k4) {
        V remove;
        Objects.requireNonNull(k4, "key == null");
        synchronized (this) {
            remove = this.f1683a.remove(k4);
            if (remove != null) {
                this.f1684b -= c(k4, remove);
            }
        }
        if (remove != null) {
            b(false, k4, remove, null);
        }
        return remove;
    }

    public void resize(int i2) {
        if (i2 > 0) {
            synchronized (this) {
                this.f1685c = i2;
            }
            trimToSize(i2);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final synchronized int size() {
        return this.f1684b;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.f1683a);
    }

    public final synchronized String toString() {
        int i2;
        int i4;
        i2 = this.f1689g;
        i4 = this.f1690h + i2;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f1685c), Integer.valueOf(this.f1689g), Integer.valueOf(this.f1690h), Integer.valueOf(i4 != 0 ? (i2 * 100) / i4 : 0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f1684b     // Catch: java.lang.Throwable -> L71
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<K, V> r0 = r4.f1683a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L11
            int r0 = r4.f1684b     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L52
        L11:
            int r0 = r4.f1684b     // Catch: java.lang.Throwable -> L71
            if (r0 <= r5) goto L50
            java.util.LinkedHashMap<K, V> r0 = r4.f1683a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L1e
            goto L50
        L1e:
            java.util.LinkedHashMap<K, V> r0 = r4.f1683a     // Catch: java.lang.Throwable -> L71
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L71
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L71
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L71
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L71
            java.util.LinkedHashMap<K, V> r2 = r4.f1683a     // Catch: java.lang.Throwable -> L71
            r2.remove(r1)     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f1684b     // Catch: java.lang.Throwable -> L71
            int r3 = r4.c(r1, r0)     // Catch: java.lang.Throwable -> L71
            int r2 = r2 - r3
            r4.f1684b = r2     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f1688f     // Catch: java.lang.Throwable -> L71
            r3 = 1
            int r2 = r2 + r3
            r4.f1688f = r2     // Catch: java.lang.Throwable -> L71
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            r2 = 0
            r4.b(r3, r1, r0, r2)
            goto L0
        L50:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            return
        L52:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r0.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L71
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L71
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L71
            throw r5     // Catch: java.lang.Throwable -> L71
        L71:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            goto L75
        L74:
            throw r5
        L75:
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }
}
