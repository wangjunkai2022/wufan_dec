package org.jboss.netty.buffer;
/* compiled from: ChannelBufferIndexFinder.java */
/* loaded from: classes5.dex */
public interface g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f73362a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static final g f73363b = new c();

    /* renamed from: c  reason: collision with root package name */
    public static final g f73364c = new d();

    /* renamed from: d  reason: collision with root package name */
    public static final g f73365d = new e();

    /* renamed from: e  reason: collision with root package name */
    public static final g f73366e = new f();

    /* renamed from: f  reason: collision with root package name */
    public static final g f73367f = new C0491g();

    /* renamed from: g  reason: collision with root package name */
    public static final g f73368g = new h();

    /* renamed from: h  reason: collision with root package name */
    public static final g f73369h = new i();

    /* renamed from: i  reason: collision with root package name */
    public static final g f73370i = new j();

    /* renamed from: j  reason: collision with root package name */
    public static final g f73371j = new a();

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class a implements g {
        a() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            byte b4 = eVar.getByte(i2);
            return (b4 == 32 || b4 == 9) ? false : true;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class b implements g {
        b() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            return eVar.getByte(i2) == 0;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class c implements g {
        c() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            return eVar.getByte(i2) != 0;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class d implements g {
        d() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            return eVar.getByte(i2) == 13;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class e implements g {
        e() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            return eVar.getByte(i2) != 13;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class f implements g {
        f() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            return eVar.getByte(i2) == 10;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* renamed from: org.jboss.netty.buffer.g$g  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class C0491g implements g {
        C0491g() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            return eVar.getByte(i2) != 10;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class h implements g {
        h() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            byte b4 = eVar.getByte(i2);
            return b4 == 13 || b4 == 10;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class i implements g {
        i() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            byte b4 = eVar.getByte(i2);
            return (b4 == 13 || b4 == 10) ? false : true;
        }
    }

    /* compiled from: ChannelBufferIndexFinder.java */
    /* loaded from: classes5.dex */
    static class j implements g {
        j() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i2) {
            byte b4 = eVar.getByte(i2);
            return b4 == 32 || b4 == 9;
        }
    }

    boolean a(org.jboss.netty.buffer.e eVar, int i2);
}
