package org.jboss.netty.channel;
/* compiled from: SimpleChannelHandler.java */
/* loaded from: classes5.dex */
public class l0 implements r, g {

    /* compiled from: SimpleChannelHandler.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f73454a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f73454a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73454a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73454a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73454a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void bindRequested(m mVar, q qVar) throws Exception {
        mVar.c(qVar);
    }

    public void channelBound(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelClosed(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelConnected(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelDisconnected(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelInterestChanged(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelOpen(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelUnbound(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void childChannelClosed(m mVar, t tVar) throws Exception {
        mVar.a(tVar);
    }

    public void childChannelOpen(m mVar, t tVar) throws Exception {
        mVar.a(tVar);
    }

    public void closeRequested(m mVar, q qVar) throws Exception {
        mVar.c(qVar);
    }

    public void connectRequested(m mVar, q qVar) throws Exception {
        mVar.c(qVar);
    }

    public void disconnectRequested(m mVar, q qVar) throws Exception {
        mVar.c(qVar);
    }

    public void exceptionCaught(m mVar, e0 e0Var) throws Exception {
        mVar.getPipeline().getLast();
        mVar.a(e0Var);
    }

    @Override // org.jboss.netty.channel.g
    public void handleDownstream(m mVar, h hVar) throws Exception {
        if (hVar instanceof i0) {
            writeRequested(mVar, (i0) hVar);
        } else if (hVar instanceof q) {
            q qVar = (q) hVar;
            int i2 = a.f73454a[qVar.getState().ordinal()];
            if (i2 == 1) {
                if (Boolean.TRUE.equals(qVar.getValue())) {
                    return;
                }
                closeRequested(mVar, qVar);
            } else if (i2 == 2) {
                if (qVar.getValue() != null) {
                    bindRequested(mVar, qVar);
                } else {
                    unbindRequested(mVar, qVar);
                }
            } else if (i2 != 3) {
                if (i2 != 4) {
                    mVar.c(hVar);
                } else {
                    setInterestOpsRequested(mVar, qVar);
                }
            } else if (qVar.getValue() != null) {
                connectRequested(mVar, qVar);
            } else {
                disconnectRequested(mVar, qVar);
            }
        } else {
            mVar.c(hVar);
        }
    }

    @Override // org.jboss.netty.channel.r
    public void handleUpstream(m mVar, h hVar) throws Exception {
        if (hVar instanceof i0) {
            messageReceived(mVar, (i0) hVar);
        } else if (hVar instanceof q0) {
            writeComplete(mVar, (q0) hVar);
        } else if (hVar instanceof t) {
            t tVar = (t) hVar;
            if (tVar.b().isOpen()) {
                childChannelOpen(mVar, tVar);
            } else {
                childChannelClosed(mVar, tVar);
            }
        } else if (hVar instanceof q) {
            q qVar = (q) hVar;
            int i2 = a.f73454a[qVar.getState().ordinal()];
            if (i2 == 1) {
                if (Boolean.TRUE.equals(qVar.getValue())) {
                    channelOpen(mVar, qVar);
                } else {
                    channelClosed(mVar, qVar);
                }
            } else if (i2 == 2) {
                if (qVar.getValue() != null) {
                    channelBound(mVar, qVar);
                } else {
                    channelUnbound(mVar, qVar);
                }
            } else if (i2 != 3) {
                if (i2 != 4) {
                    mVar.a(hVar);
                } else {
                    channelInterestChanged(mVar, qVar);
                }
            } else if (qVar.getValue() != null) {
                channelConnected(mVar, qVar);
            } else {
                channelDisconnected(mVar, qVar);
            }
        } else if (hVar instanceof e0) {
            exceptionCaught(mVar, (e0) hVar);
        } else {
            mVar.a(hVar);
        }
    }

    public void messageReceived(m mVar, i0 i0Var) throws Exception {
        mVar.a(i0Var);
    }

    public void setInterestOpsRequested(m mVar, q qVar) throws Exception {
        mVar.c(qVar);
    }

    public void unbindRequested(m mVar, q qVar) throws Exception {
        mVar.c(qVar);
    }

    public void writeComplete(m mVar, q0 q0Var) throws Exception {
        mVar.a(q0Var);
    }

    public void writeRequested(m mVar, i0 i0Var) throws Exception {
        mVar.c(i0Var);
    }
}
