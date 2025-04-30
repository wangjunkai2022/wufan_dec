package com.tencent.bugly.proguard;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class aj extends k implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static byte[] f59625d;

    /* renamed from: a  reason: collision with root package name */
    private byte f59626a;

    /* renamed from: b  reason: collision with root package name */
    private String f59627b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f59628c;

    public aj() {
        this.f59626a = (byte) 0;
        this.f59627b = "";
        this.f59628c = null;
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59626a, 0);
        jVar.a(this.f59627b, 1);
        byte[] bArr = this.f59628c;
        if (bArr != null) {
            jVar.a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
    }

    public aj(byte b4, String str, byte[] bArr) {
        this.f59626a = (byte) 0;
        this.f59627b = "";
        this.f59628c = null;
        this.f59626a = b4;
        this.f59627b = str;
        this.f59628c = bArr;
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59626a = iVar.a(this.f59626a, 0, true);
        this.f59627b = iVar.b(1, true);
        if (f59625d == null) {
            f59625d = r0;
            byte[] bArr = {0};
        }
        this.f59628c = iVar.c(2, false);
    }
}
