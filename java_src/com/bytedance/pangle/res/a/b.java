package com.bytedance.pangle.res.a;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    g f10317a;

    /* renamed from: g  reason: collision with root package name */
    private final h f10323g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f10324h;

    /* renamed from: j  reason: collision with root package name */
    private int[] f10326j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f10328l;

    /* renamed from: m  reason: collision with root package name */
    private int f10329m;

    /* renamed from: n  reason: collision with root package name */
    private int[] f10330n;

    /* renamed from: o  reason: collision with root package name */
    private int f10331o;

    /* renamed from: i  reason: collision with root package name */
    private boolean f10325i = false;

    /* renamed from: k  reason: collision with root package name */
    private final a f10327k = new a();

    /* renamed from: b  reason: collision with root package name */
    int f10318b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f10319c = 1;

    /* renamed from: d  reason: collision with root package name */
    int f10320d = 2;

    /* renamed from: e  reason: collision with root package name */
    int f10321e = 3;

    /* renamed from: f  reason: collision with root package name */
    int f10322f = 4;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int[] f10332a = new int[32];

        /* renamed from: b  reason: collision with root package name */
        int f10333b;

        /* renamed from: c  reason: collision with root package name */
        int f10334c;

        public final void a() {
            b();
            int i2 = this.f10333b;
            int[] iArr = this.f10332a;
            iArr[i2] = 0;
            iArr[i2 + 1] = 0;
            this.f10333b = i2 + 2;
            this.f10334c++;
        }

        final void b() {
            int[] iArr = this.f10332a;
            int length = iArr.length;
            int i2 = this.f10333b;
            int i4 = length - i2;
            if (i4 > 2) {
                return;
            }
            int[] iArr2 = new int[(iArr.length + i4) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f10332a = iArr2;
        }
    }

    public b(byte[] bArr, h hVar) {
        this.f10323g = hVar;
        this.f10324h = bArr;
        c();
    }

    private void c() {
        this.f10329m = -1;
        this.f10330n = null;
        this.f10331o = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f6, code lost:
        throw new java.io.IOException("Invalid resource ids size (" + r6 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d() {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.res.a.b.d():void");
    }

    public final void a() {
        if (this.f10325i) {
            this.f10325i = false;
            this.f10317a = null;
            this.f10326j = null;
            a aVar = this.f10327k;
            aVar.f10333b = 0;
            aVar.f10334c = 0;
            c();
        }
    }

    public final int b() {
        if (this.f10317a != null) {
            try {
                d();
                return this.f10329m;
            } catch (IOException e4) {
                a();
                throw e4;
            }
        }
        throw new RuntimeException("Parser is not opened.");
    }
}
