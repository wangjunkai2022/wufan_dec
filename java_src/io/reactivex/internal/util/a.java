package io.reactivex.internal.util;

import w2.r;
/* compiled from: AppendOnlyLinkedArrayList.java */
/* loaded from: classes5.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f70089a;

    /* renamed from: b  reason: collision with root package name */
    final Object[] f70090b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f70091c;

    /* renamed from: d  reason: collision with root package name */
    int f70092d;

    /* compiled from: AppendOnlyLinkedArrayList.java */
    /* renamed from: io.reactivex.internal.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0469a<T> extends r<T> {
        @Override // w2.r
        boolean test(T t3);
    }

    public a(int i2) {
        this.f70089a = i2;
        Object[] objArr = new Object[i2 + 1];
        this.f70090b = objArr;
        this.f70091c = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <U> boolean a(io.reactivex.g0<? super U> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f70090b
            int r1 = r4.f70089a
        L4:
            r2 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r2 >= r1) goto L19
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L19
        Le:
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r5)
            if (r3 == 0) goto L16
            r5 = 1
            return r5
        L16:
            int r2 = r2 + 1
            goto L7
        L19:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.a(io.reactivex.g0):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <U> boolean b(l3.c<? super U> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f70090b
            int r1 = r4.f70089a
        L4:
            r2 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r2 >= r1) goto L19
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L19
        Le:
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r5)
            if (r3 == 0) goto L16
            r5 = 1
            return r5
        L16:
            int r2 = r2 + 1
            goto L7
        L19:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.b(l3.c):boolean");
    }

    public void c(T t3) {
        int i2 = this.f70089a;
        int i4 = this.f70092d;
        if (i4 == i2) {
            Object[] objArr = new Object[i2 + 1];
            this.f70091c[i2] = objArr;
            this.f70091c = objArr;
            i4 = 0;
        }
        this.f70091c[i4] = t3;
        this.f70092d = i4 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0018, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(io.reactivex.internal.util.a.InterfaceC0469a<? super T> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f70090b
            int r1 = r4.f70089a
        L4:
            if (r0 == 0) goto L1d
            r2 = 0
        L7:
            if (r2 >= r1) goto L18
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L18
        Le:
            boolean r3 = r5.test(r3)
            if (r3 == 0) goto L15
            return
        L15:
            int r2 = r2 + 1
            goto L7
        L18:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.d(io.reactivex.internal.util.a$a):void");
    }

    public <S> void e(S s3, w2.d<? super S, ? super T> dVar) throws Exception {
        Object[] objArr = this.f70090b;
        int i2 = this.f70089a;
        while (true) {
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj == null || dVar.a(s3, obj)) {
                    return;
                }
            }
            objArr = objArr[i2];
        }
    }

    public void f(T t3) {
        this.f70090b[0] = t3;
    }
}
