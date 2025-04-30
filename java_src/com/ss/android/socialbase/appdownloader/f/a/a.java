package com.ss.android.socialbase.appdownloader.f.a;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: AXmlResourceParser.java */
/* loaded from: classes4.dex */
class a implements i {

    /* renamed from: b  reason: collision with root package name */
    private d f57684b;

    /* renamed from: d  reason: collision with root package name */
    private f f57686d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f57687e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f57689g;

    /* renamed from: h  reason: collision with root package name */
    private int f57690h;

    /* renamed from: i  reason: collision with root package name */
    private int f57691i;

    /* renamed from: j  reason: collision with root package name */
    private int f57692j;

    /* renamed from: k  reason: collision with root package name */
    private int f57693k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f57694l;

    /* renamed from: m  reason: collision with root package name */
    private int f57695m;

    /* renamed from: n  reason: collision with root package name */
    private int f57696n;

    /* renamed from: o  reason: collision with root package name */
    private int f57697o;

    /* renamed from: c  reason: collision with root package name */
    private boolean f57685c = false;

    /* renamed from: f  reason: collision with root package name */
    private C0307a f57688f = new C0307a();

    public a() {
        g();
    }

    private final void g() {
        this.f57690h = -1;
        this.f57691i = -1;
        this.f57692j = -1;
        this.f57693k = -1;
        this.f57694l = null;
        this.f57695m = -1;
        this.f57696n = -1;
        this.f57697o = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x018e, code lost:
        throw new java.io.IOException("Invalid chunk type (" + r5 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void h() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.f.a.a.h():void");
    }

    public void a(InputStream inputStream) {
        a();
        if (inputStream != null) {
            this.f57684b = new d(inputStream, false);
        }
    }

    public int b() throws h, IOException {
        if (this.f57684b != null) {
            try {
                h();
                return this.f57690h;
            } catch (IOException e4) {
                a();
                throw e4;
            }
        }
        throw new h("Parser is not opened.", this, null);
    }

    @Override // com.ss.android.socialbase.appdownloader.f.a.g
    public int c() {
        return this.f57691i;
    }

    @Override // com.ss.android.socialbase.appdownloader.f.a.g
    public String d() {
        return "XML line #" + c();
    }

    public int e() {
        if (this.f57690h != 2) {
            return -1;
        }
        return this.f57694l.length / 5;
    }

    @Override // com.ss.android.socialbase.appdownloader.f.a.g
    public int f() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AXmlResourceParser.java */
    /* renamed from: com.ss.android.socialbase.appdownloader.f.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0307a {

        /* renamed from: a  reason: collision with root package name */
        private int[] f57698a = new int[32];

        /* renamed from: b  reason: collision with root package name */
        private int f57699b;

        /* renamed from: c  reason: collision with root package name */
        private int f57700c;

        public final void a() {
            this.f57699b = 0;
            this.f57700c = 0;
        }

        public final int b() {
            int i2 = this.f57699b;
            if (i2 == 0) {
                return 0;
            }
            return this.f57698a[i2 - 1];
        }

        public final boolean c() {
            int i2;
            int[] iArr;
            int i4;
            int i5 = this.f57699b;
            if (i5 == 0 || (i4 = (iArr = this.f57698a)[i5 - 1]) == 0) {
                return false;
            }
            int i6 = i4 - 1;
            int i7 = i2 - 2;
            iArr[i7] = i6;
            iArr[i7 - ((i6 * 2) + 1)] = i6;
            this.f57699b = i5 - 2;
            return true;
        }

        public final int d() {
            return this.f57700c;
        }

        public final void e() {
            a(2);
            int i2 = this.f57699b;
            int[] iArr = this.f57698a;
            iArr[i2] = 0;
            iArr[i2 + 1] = 0;
            this.f57699b = i2 + 2;
            this.f57700c++;
        }

        public final void f() {
            int i2 = this.f57699b;
            if (i2 != 0) {
                int i4 = i2 - 1;
                int i5 = this.f57698a[i4] * 2;
                if ((i4 - 1) - i5 != 0) {
                    this.f57699b = i2 - (i5 + 2);
                    this.f57700c--;
                }
            }
        }

        public final void a(int i2, int i4) {
            if (this.f57700c == 0) {
                e();
            }
            a(2);
            int i5 = this.f57699b;
            int i6 = i5 - 1;
            int[] iArr = this.f57698a;
            int i7 = iArr[i6];
            int i8 = i7 + 1;
            iArr[(i6 - 1) - (i7 * 2)] = i8;
            iArr[i6] = i2;
            iArr[i6 + 1] = i4;
            iArr[i6 + 2] = i8;
            this.f57699b = i5 + 2;
        }

        private void a(int i2) {
            int[] iArr = this.f57698a;
            int length = iArr.length;
            int i4 = this.f57699b;
            int i5 = length - i4;
            if (i5 <= i2) {
                int[] iArr2 = new int[(iArr.length + i5) * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i4);
                this.f57698a = iArr2;
            }
        }
    }

    private final int e(int i2) {
        if (this.f57690h == 2) {
            int i4 = i2 * 5;
            if (i4 < this.f57694l.length) {
                return i4;
            }
            throw new IndexOutOfBoundsException("Invalid attribute index (" + i2 + ").");
        }
        throw new IndexOutOfBoundsException("Current event is not START_TAG.");
    }

    public int c(int i2) {
        return this.f57694l[e(i2) + 4];
    }

    public String d(int i2) {
        int e4 = e(i2);
        int[] iArr = this.f57694l;
        if (iArr[e4 + 3] == 3) {
            return this.f57686d.a(iArr[e4 + 2]);
        }
        int i4 = iArr[e4 + 4];
        return "";
    }

    public void a() {
        if (this.f57685c) {
            this.f57685c = false;
            this.f57684b.a();
            this.f57684b = null;
            this.f57686d = null;
            this.f57687e = null;
            this.f57688f.a();
            g();
        }
    }

    public int b(int i2) {
        return this.f57694l[e(i2) + 3];
    }

    public String a(int i2) {
        int i4 = this.f57694l[e(i2) + 1];
        return i4 == -1 ? "" : this.f57686d.a(i4);
    }
}
