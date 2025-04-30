package com.tencent.stat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f60140a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ n f60141b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(n nVar, int i2) {
        this.f60141b = nVar;
        this.f60140a = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        int a4 = StatConfig.a();
        int i2 = this.f60140a;
        if (i2 == -1) {
            i2 = this.f60141b.f60121b;
        }
        int i4 = i2 / a4;
        int i5 = i2 % a4;
        for (int i6 = 0; i6 < i4 + 1; i6++) {
            this.f60141b.b(a4);
        }
        if (i5 > 0) {
            this.f60141b.b(i5);
        }
    }
}
