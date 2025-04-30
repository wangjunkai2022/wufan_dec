package com.cmic.sso.sdk.a;
/* compiled from: UmcConfigBean.java */
/* loaded from: classes2.dex */
public class a implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private String f10691a;

    /* renamed from: b  reason: collision with root package name */
    private String f10692b;

    /* renamed from: c  reason: collision with root package name */
    private String f10693c;

    /* renamed from: d  reason: collision with root package name */
    private String f10694d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10695e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f10696f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f10697g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10698h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f10699i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f10700j;

    /* renamed from: k  reason: collision with root package name */
    private int f10701k;

    /* renamed from: l  reason: collision with root package name */
    private int f10702l;

    /* compiled from: UmcConfigBean.java */
    /* renamed from: com.cmic.sso.sdk.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0047a {

        /* renamed from: a  reason: collision with root package name */
        private final a f10703a = new a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a a(String str) {
            this.f10703a.f10691a = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a b(String str) {
            this.f10703a.f10692b = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a c(String str) {
            this.f10703a.f10693c = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a d(String str) {
            this.f10703a.f10694d = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a e(boolean z3) {
            this.f10703a.f10699i = z3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a f(boolean z3) {
            this.f10703a.f10700j = z3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a a(boolean z3) {
            this.f10703a.f10695e = z3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a b(boolean z3) {
            this.f10703a.f10696f = z3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a c(boolean z3) {
            this.f10703a.f10697g = z3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a d(boolean z3) {
            this.f10703a.f10698h = z3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a a(int i2) {
            this.f10703a.f10701k = i2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0047a b(int i2) {
            this.f10703a.f10702l = i2;
            return this;
        }

        public a a() {
            return this.f10703a;
        }
    }

    public boolean g() {
        return this.f10697g;
    }

    public boolean h() {
        return this.f10698h;
    }

    public boolean i() {
        return this.f10699i;
    }

    public boolean j() {
        return this.f10700j;
    }

    public int k() {
        return this.f10701k;
    }

    public int l() {
        return this.f10702l;
    }

    /* renamed from: m */
    public a clone() throws CloneNotSupportedException {
        return (a) super.clone();
    }

    private a() {
        this.f10691a = "rcs.cmpassport.com";
        this.f10692b = "rcs.cmpassport.com";
        this.f10693c = "config2.cmpassport.com";
        this.f10694d = "log2.cmpassport.com:9443";
        this.f10695e = false;
        this.f10696f = false;
        this.f10697g = false;
        this.f10698h = false;
        this.f10699i = false;
        this.f10700j = false;
        this.f10701k = 3;
        this.f10702l = 1;
    }

    public boolean e() {
        return this.f10695e;
    }

    public boolean f() {
        return this.f10696f;
    }

    public String c() {
        return this.f10693c;
    }

    public String d() {
        return this.f10694d;
    }

    public String a() {
        return this.f10691a;
    }

    public String b() {
        return this.f10692b;
    }
}
