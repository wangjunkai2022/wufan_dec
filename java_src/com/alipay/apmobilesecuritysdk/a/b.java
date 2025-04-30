package com.alipay.apmobilesecuritysdk.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9516a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9517b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9518c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ a f9519d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, String str, String str2, String str3) {
        this.f9519d = aVar;
        this.f9516a = str;
        this.f9517b = str2;
        this.f9518c = str3;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        a.c(this.f9519d, this.f9516a, this.f9517b, this.f9518c);
    }
}
