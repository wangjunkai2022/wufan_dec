package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class Pools {

    /* loaded from: classes.dex */
    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t3);
    }

    /* loaded from: classes.dex */
    public static class SimplePool<T> implements Pool<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f4718a;

        /* renamed from: b  reason: collision with root package name */
        private int f4719b;

        public SimplePool(int i2) {
            if (i2 > 0) {
                this.f4718a = new Object[i2];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean a(@NonNull T t3) {
            for (int i2 = 0; i2 < this.f4719b; i2++) {
                if (this.f4718a[i2] == t3) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            int i2 = this.f4719b;
            if (i2 > 0) {
                int i4 = i2 - 1;
                Object[] objArr = this.f4718a;
                T t3 = (T) objArr[i4];
                objArr[i4] = null;
                this.f4719b = i2 - 1;
                return t3;
            }
            return null;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t3) {
            if (!a(t3)) {
                int i2 = this.f4719b;
                Object[] objArr = this.f4718a;
                if (i2 < objArr.length) {
                    objArr[i2] = t3;
                    this.f4719b = i2 + 1;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* loaded from: classes.dex */
    public static class SynchronizedPool<T> extends SimplePool<T> {

        /* renamed from: c  reason: collision with root package name */
        private final Object f4720c;

        public SynchronizedPool(int i2) {
            super(i2);
            this.f4720c = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t3;
            synchronized (this.f4720c) {
                t3 = (T) super.acquire();
            }
            return t3;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t3) {
            boolean release;
            synchronized (this.f4720c) {
                release = super.release(t3);
            }
            return release;
        }
    }

    private Pools() {
    }
}
