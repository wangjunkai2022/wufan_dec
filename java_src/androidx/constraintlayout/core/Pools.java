package androidx.constraintlayout.core;
/* loaded from: classes.dex */
final class Pools {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f1801a = false;

    /* loaded from: classes.dex */
    interface Pool<T> {
        T acquire();

        boolean release(T t3);

        void releaseAll(T[] tArr, int i2);
    }

    /* loaded from: classes.dex */
    static class SimplePool<T> implements Pool<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f1802a;

        /* renamed from: b  reason: collision with root package name */
        private int f1803b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SimplePool(int i2) {
            if (i2 > 0) {
                this.f1802a = new Object[i2];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean a(T t3) {
            for (int i2 = 0; i2 < this.f1803b; i2++) {
                if (this.f1802a[i2] == t3) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public T acquire() {
            int i2 = this.f1803b;
            if (i2 > 0) {
                int i4 = i2 - 1;
                Object[] objArr = this.f1802a;
                T t3 = (T) objArr[i4];
                objArr[i4] = null;
                this.f1803b = i2 - 1;
                return t3;
            }
            return null;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public boolean release(T t3) {
            int i2 = this.f1803b;
            Object[] objArr = this.f1802a;
            if (i2 < objArr.length) {
                objArr[i2] = t3;
                this.f1803b = i2 + 1;
                return true;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public void releaseAll(T[] tArr, int i2) {
            if (i2 > tArr.length) {
                i2 = tArr.length;
            }
            for (int i4 = 0; i4 < i2; i4++) {
                T t3 = tArr[i4];
                int i5 = this.f1803b;
                Object[] objArr = this.f1802a;
                if (i5 < objArr.length) {
                    objArr[i5] = t3;
                    this.f1803b = i5 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
