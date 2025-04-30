package com.papa.controller.core.hardware;
/* compiled from: GamepadBase.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    protected static final String f54835e = "GB";

    /* renamed from: f  reason: collision with root package name */
    protected static final int f54836f = 16;

    /* renamed from: g  reason: collision with root package name */
    public static final int f54837g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f54838h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f54839i = 8;

    /* renamed from: j  reason: collision with root package name */
    public static final int f54840j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f54841k = 5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f54842l = 6;

    /* renamed from: m  reason: collision with root package name */
    public static final int f54843m = 246;

    /* renamed from: n  reason: collision with root package name */
    public static final int f54844n = 19;

    /* renamed from: o  reason: collision with root package name */
    public static final int f54845o = 20;

    /* renamed from: a  reason: collision with root package name */
    protected String f54846a;

    /* renamed from: b  reason: collision with root package name */
    protected int f54847b;

    /* renamed from: c  reason: collision with root package name */
    protected int f54848c;

    /* renamed from: d  reason: collision with root package name */
    protected int f54849d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
    }

    public byte[] a() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        byte[] bytes = f54835e.getBytes();
        int length = bytes.length + 2 + bArr.length;
        byte[] bArr2 = {16, (byte) length};
        byte[] bArr3 = new byte[length];
        System.arraycopy(bytes, 0, bArr3, 0, bytes.length);
        System.arraycopy(bArr2, 0, bArr3, bytes.length, 2);
        System.arraycopy(bArr, 0, bArr3, bytes.length + 2, bArr.length);
        return bArr3;
    }

    public String c() {
        return this.f54846a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int d(byte b4) {
        return b4 & 255;
    }

    public int e() {
        return this.f54848c;
    }

    public int f() {
        return this.f54847b;
    }

    public void g(String str) {
        this.f54846a = str;
    }

    public int getType() {
        return this.f54849d;
    }

    public void h(int i2) {
        this.f54848c = i2;
    }

    public void i(int i2) {
        this.f54849d = i2;
    }

    public void j(int i2) {
        this.f54847b = i2;
    }

    public a(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int length = bArr.length;
        this.f54848c = length;
        if (length > 5) {
            byte[] bArr2 = new byte[2];
            this.f54847b = d(bArr[2]);
            this.f54849d = d(bArr[4]);
            System.arraycopy(bArr, 0, bArr2, 0, 2);
            this.f54846a = new String(bArr2);
        }
    }
}
