package org.jboss.netty.channel.socket.nio;

import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.i0;
/* compiled from: NioClientSocketPipelineSink.java */
/* loaded from: classes5.dex */
class o extends c {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f73539b = false;

    /* renamed from: a  reason: collision with root package name */
    private final h<k> f73540a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NioClientSocketPipelineSink.java */
    /* loaded from: classes5.dex */
    public class a implements org.jboss.netty.channel.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.j f73541a;

        a(org.jboss.netty.channel.j jVar) {
            this.f73541a = jVar;
        }

        @Override // org.jboss.netty.channel.k
        public void b(org.jboss.netty.channel.j jVar) throws Exception {
            if (this.f73541a.isDone()) {
                return;
            }
            this.f73541a.setFailure(new ClosedChannelException());
        }
    }

    /* compiled from: NioClientSocketPipelineSink.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f73543a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f73543a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73543a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73543a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73543a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(h<k> hVar) {
        this.f73540a = hVar;
    }

    private static void e(m mVar, org.jboss.netty.channel.j jVar, SocketAddress socketAddress) {
        try {
            ((SocketChannel) mVar.A).socket().bind(socketAddress);
            mVar.J = true;
            mVar.O0();
            jVar.setSuccess();
            org.jboss.netty.channel.s.k(mVar, mVar.getLocalAddress());
        } catch (Throwable th) {
            jVar.setFailure(th);
            org.jboss.netty.channel.s.D(mVar, th);
        }
    }

    private void f(m mVar, org.jboss.netty.channel.j jVar, SocketAddress socketAddress) {
        try {
            if (((SocketChannel) mVar.A).connect(socketAddress)) {
                mVar.f73478n.s(mVar, jVar);
            } else {
                mVar.t0().b(new a(jVar));
                jVar.b(org.jboss.netty.channel.k.f73453h0);
                mVar.I = jVar;
                g().s(mVar, jVar);
            }
        } catch (Throwable th) {
            jVar.setFailure(th);
            org.jboss.netty.channel.s.D(mVar, th);
            mVar.f73478n.n(mVar, org.jboss.netty.channel.s.W(mVar));
        }
    }

    private k g() {
        return this.f73540a.d();
    }

    @Override // org.jboss.netty.channel.p
    public void a(org.jboss.netty.channel.n nVar, org.jboss.netty.channel.h hVar) throws Exception {
        if (hVar instanceof org.jboss.netty.channel.q) {
            org.jboss.netty.channel.q qVar = (org.jboss.netty.channel.q) hVar;
            m mVar = (m) qVar.getChannel();
            org.jboss.netty.channel.j d4 = qVar.d();
            ChannelState state = qVar.getState();
            Object value = qVar.getValue();
            int i2 = b.f73543a[state.ordinal()];
            if (i2 == 1) {
                if (Boolean.FALSE.equals(value)) {
                    mVar.f73478n.n(mVar, d4);
                }
            } else if (i2 == 2) {
                if (value != null) {
                    e(mVar, d4, (SocketAddress) value);
                } else {
                    mVar.f73478n.n(mVar, d4);
                }
            } else if (i2 != 3) {
                if (i2 != 4) {
                    return;
                }
                mVar.f73478n.t(mVar, d4, ((Integer) value).intValue());
            } else if (value != null) {
                f(mVar, d4, (SocketAddress) value);
            } else {
                mVar.f73478n.n(mVar, d4);
            }
        } else if (hVar instanceof i0) {
            i0 i0Var = (i0) hVar;
            r rVar = (r) i0Var.getChannel();
            rVar.f73482r.offer(i0Var);
            rVar.f73478n.y(rVar);
        }
    }
}
