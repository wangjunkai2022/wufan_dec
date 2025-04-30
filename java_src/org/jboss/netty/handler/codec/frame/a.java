package org.jboss.netty.handler.codec.frame;

import java.net.SocketAddress;
import org.jboss.netty.buffer.e;
import org.jboss.netty.buffer.h;
import org.jboss.netty.buffer.i;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.e0;
import org.jboss.netty.channel.h0;
import org.jboss.netty.channel.i0;
import org.jboss.netty.channel.m;
import org.jboss.netty.channel.m0;
import org.jboss.netty.channel.n;
import org.jboss.netty.channel.q;
import org.jboss.netty.channel.s;
/* compiled from: FrameDecoder.java */
/* loaded from: classes5.dex */
public abstract class a extends m0 implements h0 {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS = 1024;
    private int copyThreshold;
    private volatile m ctx;
    protected e cumulation;
    private int maxCumulationBufferComponents;
    private boolean unfold;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        this(false);
    }

    private void callDecode(m mVar, org.jboss.netty.channel.e eVar, e eVar2, SocketAddress socketAddress) throws Exception {
        while (eVar2.I0()) {
            int readerIndex = eVar2.readerIndex();
            Object decode = decode(mVar, eVar, eVar2);
            if (decode == null) {
                if (readerIndex == eVar2.readerIndex()) {
                    return;
                }
            } else if (readerIndex != eVar2.readerIndex()) {
                unfoldAndFireMessageReceived(mVar, socketAddress, decode);
            } else {
                throw new IllegalStateException("decode() method must read at least one byte if it returned a frame (caused by: " + getClass() + ')');
            }
        }
    }

    protected int actualReadableBytes() {
        return internalBuffer().readableBytes();
    }

    @Override // org.jboss.netty.channel.h0
    public void afterAdd(m mVar) throws Exception {
    }

    @Override // org.jboss.netty.channel.h0
    public void afterRemove(m mVar) throws Exception {
    }

    protected e appendToCumulation(e eVar) {
        e eVar2 = this.cumulation;
        if (eVar2 instanceof i) {
            i iVar = (i) eVar2;
            if (iVar.Y() >= this.maxCumulationBufferComponents) {
                eVar2 = iVar.copy();
            }
        }
        e j02 = h.j0(eVar2, eVar);
        this.cumulation = j02;
        return j02;
    }

    @Override // org.jboss.netty.channel.h0
    public void beforeAdd(m mVar) throws Exception {
        this.ctx = mVar;
    }

    @Override // org.jboss.netty.channel.h0
    public void beforeRemove(m mVar) throws Exception {
    }

    @Override // org.jboss.netty.channel.m0
    public void channelClosed(m mVar, q qVar) throws Exception {
        cleanup(mVar, qVar);
    }

    @Override // org.jboss.netty.channel.m0
    public void channelDisconnected(m mVar, q qVar) throws Exception {
        cleanup(mVar, qVar);
    }

    protected void cleanup(m mVar, q qVar) throws Exception {
        try {
            e eVar = this.cumulation;
            if (eVar == null) {
                return;
            }
            this.cumulation = null;
            if (eVar.I0()) {
                callDecode(mVar, mVar.getChannel(), eVar, null);
            }
            Object decodeLast = decodeLast(mVar, mVar.getChannel(), eVar);
            if (decodeLast != null) {
                unfoldAndFireMessageReceived(mVar, null, decodeLast);
            }
        } finally {
            mVar.a(qVar);
        }
    }

    protected abstract Object decode(m mVar, org.jboss.netty.channel.e eVar, e eVar2) throws Exception;

    protected Object decodeLast(m mVar, org.jboss.netty.channel.e eVar, e eVar2) throws Exception {
        return decode(mVar, eVar, eVar2);
    }

    @Override // org.jboss.netty.channel.m0
    public void exceptionCaught(m mVar, e0 e0Var) throws Exception {
        mVar.a(e0Var);
    }

    protected e extractFrame(e eVar, int i2, int i4) {
        e a4 = eVar.factory().a(i4);
        a4.L(eVar, i2, i4);
        return a4;
    }

    public final int getMaxCumulationBufferCapacity() {
        return this.copyThreshold;
    }

    public final int getMaxCumulationBufferComponents() {
        return this.maxCumulationBufferComponents;
    }

    protected e internalBuffer() {
        e eVar = this.cumulation;
        return eVar == null ? h.f73374c : eVar;
    }

    public final boolean isUnfold() {
        return this.unfold;
    }

    @Override // org.jboss.netty.channel.m0
    public void messageReceived(m mVar, i0 i0Var) throws Exception {
        Object message = i0Var.getMessage();
        if (!(message instanceof e)) {
            mVar.a(i0Var);
            return;
        }
        e eVar = (e) message;
        if (eVar.I0()) {
            if (this.cumulation == null) {
                try {
                    callDecode(mVar, i0Var.getChannel(), eVar, i0Var.getRemoteAddress());
                    return;
                } finally {
                    updateCumulation(mVar, eVar);
                }
            }
            e appendToCumulation = appendToCumulation(eVar);
            try {
                callDecode(mVar, i0Var.getChannel(), appendToCumulation, i0Var.getRemoteAddress());
            } finally {
                updateCumulation(mVar, appendToCumulation);
            }
        }
    }

    protected e newCumulationBuffer(m mVar, int i2) {
        return mVar.getChannel().getConfig().g().a(Math.max(i2, 256));
    }

    public void replace(String str, ChannelHandler channelHandler) {
        if (this.ctx != null) {
            n pipeline = this.ctx.getPipeline();
            pipeline.f(this.ctx.getName(), str, channelHandler);
            try {
                if (this.cumulation != null) {
                    s.J(this.ctx, this.cumulation.o(actualReadableBytes()));
                }
                return;
            } finally {
                pipeline.d(this);
            }
        }
        throw new IllegalStateException("Replace cann only be called once the FrameDecoder is added to the ChannelPipeline");
    }

    public final void setMaxCumulationBufferCapacity(int i2) {
        if (i2 >= 0) {
            if (this.ctx == null) {
                this.copyThreshold = i2;
                return;
            }
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
        throw new IllegalArgumentException("maxCumulationBufferCapacity must be >= 0");
    }

    public final void setMaxCumulationBufferComponents(int i2) {
        if (i2 >= 2) {
            if (this.ctx == null) {
                this.maxCumulationBufferComponents = i2;
                return;
            }
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
        throw new IllegalArgumentException("maxCumulationBufferComponents: " + i2 + " (expected: >= 2)");
    }

    public final void setUnfold(boolean z3) {
        if (this.ctx == null) {
            this.unfold = z3;
            return;
        }
        throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
    }

    protected final void unfoldAndFireMessageReceived(m mVar, SocketAddress socketAddress, Object obj) {
        if (this.unfold) {
            if (obj instanceof Object[]) {
                for (Object obj2 : (Object[]) obj) {
                    s.K(mVar, obj2, socketAddress);
                }
                return;
            } else if (obj instanceof Iterable) {
                for (Object obj3 : (Iterable) obj) {
                    s.K(mVar, obj3, socketAddress);
                }
                return;
            } else {
                s.K(mVar, obj, socketAddress);
                return;
            }
        }
        s.K(mVar, obj, socketAddress);
    }

    protected e updateCumulation(m mVar, e eVar) {
        int readableBytes = eVar.readableBytes();
        if (readableBytes > 0) {
            int capacity = eVar.capacity();
            if (readableBytes < capacity && capacity > this.copyThreshold) {
                e newCumulationBuffer = newCumulationBuffer(mVar, eVar.readableBytes());
                this.cumulation = newCumulationBuffer;
                newCumulationBuffer.q(eVar);
                return newCumulationBuffer;
            } else if (eVar.readerIndex() != 0) {
                e H0 = eVar.H0();
                this.cumulation = H0;
                return H0;
            } else {
                this.cumulation = eVar;
                return eVar;
            }
        }
        this.cumulation = null;
        return null;
    }

    protected a(boolean z3) {
        this.maxCumulationBufferComponents = 1024;
        this.unfold = z3;
    }
}
