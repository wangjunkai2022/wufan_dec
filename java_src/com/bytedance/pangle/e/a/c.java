package com.bytedance.pangle.e.a;
/* loaded from: classes2.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    int[] f10206a = new int[32];

    /* renamed from: b  reason: collision with root package name */
    int f10207b;

    /* renamed from: c  reason: collision with root package name */
    int f10208c;

    public final void a() {
        b();
        int i2 = this.f10207b;
        int[] iArr = this.f10206a;
        iArr[i2] = 0;
        iArr[i2 + 1] = 0;
        this.f10207b = i2 + 2;
        this.f10208c++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        int[] iArr = this.f10206a;
        int length = iArr.length;
        int i2 = this.f10207b;
        int i4 = length - i2;
        if (i4 <= 2) {
            int[] iArr2 = new int[(iArr.length + i4) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f10206a = iArr2;
        }
    }
}
