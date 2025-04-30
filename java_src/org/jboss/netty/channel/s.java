package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Map;
import java.util.Objects;
/* compiled from: Channels.java */
/* loaded from: classes5.dex */
public final class s {

    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    static class a implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f73463a;

        a(n nVar) {
            this.f73463a = nVar;
        }

        @Override // org.jboss.netty.channel.o
        public n getPipeline() {
            return s.R(this.f73463a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f73464a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f73465b;

        b(org.jboss.netty.channel.e eVar, long j4) {
            this.f73464a = eVar;
            this.f73465b = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.L(this.f73464a, this.f73465b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f73466a;

        c(org.jboss.netty.channel.e eVar) {
            this.f73466a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.u(this.f73466a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    public static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f73467a;

        d(org.jboss.netty.channel.e eVar) {
            this.f73467a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.r(this.f73467a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    public static class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f73468a;

        e(org.jboss.netty.channel.e eVar) {
            this.f73468a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.z(this.f73468a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    public static class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f73469a;

        f(org.jboss.netty.channel.e eVar) {
            this.f73469a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.m(this.f73469a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    public static class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f73470a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f73471b;

        g(org.jboss.netty.channel.e eVar, Throwable th) {
            this.f73470a = eVar;
            this.f73471b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.D(this.f73470a, this.f73471b);
        }
    }

    /* compiled from: Channels.java */
    /* loaded from: classes5.dex */
    static class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m f73472a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f73473b;

        h(m mVar, Throwable th) {
            this.f73472a = mVar;
            this.f73473b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.E(this.f73472a, this.f73473b);
        }
    }

    private s() {
    }

    public static void A(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.BOUND, null));
    }

    public static j B(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new e(eVar));
    }

    private static void C(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.e eVar2) {
        eVar.getPipeline().a(new y(eVar, eVar2));
    }

    public static void D(org.jboss.netty.channel.e eVar, Throwable th) {
        eVar.getPipeline().a(new z(eVar, th));
    }

    public static void E(m mVar, Throwable th) {
        mVar.a(new z(mVar.getChannel(), th));
    }

    public static j F(org.jboss.netty.channel.e eVar, Throwable th) {
        return eVar.getPipeline().execute(new g(eVar, th));
    }

    public static j G(m mVar, Throwable th) {
        return mVar.getPipeline().execute(new h(mVar, th));
    }

    public static void H(org.jboss.netty.channel.e eVar, Object obj) {
        I(eVar, obj, null);
    }

    public static void I(org.jboss.netty.channel.e eVar, Object obj, SocketAddress socketAddress) {
        eVar.getPipeline().a(new p0(eVar, obj, socketAddress));
    }

    public static void J(m mVar, Object obj) {
        mVar.a(new p0(mVar.getChannel(), obj, null));
    }

    public static void K(m mVar, Object obj, SocketAddress socketAddress) {
        mVar.a(new p0(mVar.getChannel(), obj, socketAddress));
    }

    public static void L(org.jboss.netty.channel.e eVar, long j4) {
        if (j4 == 0) {
            return;
        }
        eVar.getPipeline().a(new b0(eVar, j4));
    }

    public static void M(m mVar, long j4) {
        mVar.a(new b0(mVar.getChannel(), j4));
    }

    public static j N(org.jboss.netty.channel.e eVar, long j4) {
        return eVar.getPipeline().execute(new b(eVar, j4));
    }

    public static j O(org.jboss.netty.channel.e eVar) {
        return P(eVar, false);
    }

    public static j P(org.jboss.netty.channel.e eVar, boolean z3) {
        return new w(eVar, z3);
    }

    public static n Q() {
        return new x();
    }

    public static n R(n nVar) {
        n Q = Q();
        for (Map.Entry<String, ChannelHandler> entry : nVar.toMap().entrySet()) {
            Q.g(entry.getKey(), entry.getValue());
        }
        return Q;
    }

    public static n S(ChannelHandler... channelHandlerArr) {
        ChannelHandler channelHandler;
        Objects.requireNonNull(channelHandlerArr, "handlers");
        n Q = Q();
        for (int i2 = 0; i2 < channelHandlerArr.length && (channelHandler = channelHandlerArr[i2]) != null; i2++) {
            Q.g(org.jboss.netty.util.internal.b.c(i2), channelHandler);
        }
        return Q;
    }

    public static o T(n nVar) {
        return new a(nVar);
    }

    public static j U(org.jboss.netty.channel.e eVar, int i2) {
        Z(i2);
        int j4 = j(i2);
        j O = O(eVar);
        eVar.getPipeline().c(new c0(eVar, O, ChannelState.INTEREST_OPS, Integer.valueOf(j4)));
        return O;
    }

    public static void V(m mVar, j jVar, int i2) {
        Z(i2);
        mVar.c(new c0(mVar.getChannel(), jVar, ChannelState.INTEREST_OPS, Integer.valueOf(j(i2))));
    }

    public static j W(org.jboss.netty.channel.e eVar) {
        if (eVar instanceof org.jboss.netty.channel.a) {
            return ((org.jboss.netty.channel.a) eVar).A();
        }
        return new n0(eVar);
    }

    public static j X(org.jboss.netty.channel.e eVar) {
        j O = O(eVar);
        eVar.getPipeline().c(new c0(eVar, O, ChannelState.BOUND, null));
        return O;
    }

    public static void Y(m mVar, j jVar) {
        mVar.c(new c0(mVar.getChannel(), jVar, ChannelState.BOUND, null));
    }

    private static void Z(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 4 || i2 == 5) {
            return;
        }
        throw new IllegalArgumentException("Invalid interestOps: " + i2);
    }

    public static j a(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        Objects.requireNonNull(socketAddress, "localAddress");
        j O = O(eVar);
        eVar.getPipeline().c(new c0(eVar, O, ChannelState.BOUND, socketAddress));
        return O;
    }

    public static j a0(org.jboss.netty.channel.e eVar, Object obj) {
        return b0(eVar, obj, null);
    }

    public static void b(m mVar, j jVar, SocketAddress socketAddress) {
        Objects.requireNonNull(socketAddress, "localAddress");
        mVar.c(new c0(mVar.getChannel(), jVar, ChannelState.BOUND, socketAddress));
    }

    public static j b0(org.jboss.netty.channel.e eVar, Object obj, SocketAddress socketAddress) {
        j O = O(eVar);
        eVar.getPipeline().c(new d0(eVar, O, obj, socketAddress));
        return O;
    }

    public static j c(org.jboss.netty.channel.e eVar) {
        j t02 = eVar.t0();
        eVar.getPipeline().c(new c0(eVar, t02, ChannelState.OPEN, Boolean.FALSE));
        return t02;
    }

    public static void c0(m mVar, j jVar, Object obj) {
        d0(mVar, jVar, obj, null);
    }

    public static void d(m mVar, j jVar) {
        mVar.c(new c0(mVar.getChannel(), jVar, ChannelState.OPEN, Boolean.FALSE));
    }

    public static void d0(m mVar, j jVar, Object obj, SocketAddress socketAddress) {
        mVar.c(new d0(mVar.getChannel(), jVar, obj, socketAddress));
    }

    public static j e(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        Objects.requireNonNull(socketAddress, "remoteAddress");
        j P = P(eVar, true);
        eVar.getPipeline().c(new c0(eVar, P, ChannelState.CONNECTED, socketAddress));
        return P;
    }

    public static void f(m mVar, j jVar, SocketAddress socketAddress) {
        Objects.requireNonNull(socketAddress, "remoteAddress");
        mVar.c(new c0(mVar.getChannel(), jVar, ChannelState.CONNECTED, socketAddress));
    }

    public static j g(org.jboss.netty.channel.e eVar) {
        j O = O(eVar);
        eVar.getPipeline().c(new c0(eVar, O, ChannelState.CONNECTED, null));
        return O;
    }

    public static void h(m mVar, j jVar) {
        mVar.c(new c0(mVar.getChannel(), jVar, ChannelState.CONNECTED, null));
    }

    public static j i(org.jboss.netty.channel.e eVar, Throwable th) {
        return new f0(eVar, th);
    }

    private static int j(int i2) {
        return i2 & (-5);
    }

    public static void k(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.BOUND, socketAddress));
    }

    public static void l(m mVar, SocketAddress socketAddress) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.BOUND, socketAddress));
    }

    public static void m(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.OPEN, Boolean.FALSE));
        if (eVar.getParent() != null) {
            C(eVar.getParent(), eVar);
        }
    }

    public static void n(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.OPEN, Boolean.FALSE));
    }

    public static j o(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new f(eVar));
    }

    public static void p(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.CONNECTED, socketAddress));
    }

    public static void q(m mVar, SocketAddress socketAddress) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.CONNECTED, socketAddress));
    }

    public static void r(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.CONNECTED, null));
    }

    public static void s(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.CONNECTED, null));
    }

    public static j t(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new d(eVar));
    }

    public static void u(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.INTEREST_OPS, 1));
    }

    public static void v(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.INTEREST_OPS, 1));
    }

    public static j w(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new c(eVar));
    }

    public static void x(org.jboss.netty.channel.e eVar) {
        if (eVar.getParent() != null) {
            C(eVar.getParent(), eVar);
        }
        eVar.getPipeline().a(new o0(eVar, ChannelState.OPEN, Boolean.TRUE));
    }

    public static void y(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.OPEN, Boolean.TRUE));
    }

    public static void z(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.BOUND, null));
    }
}
