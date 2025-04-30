package org.jboss.netty.channel.socket.nio;

import java.net.Socket;
import java.util.Map;
import java.util.Objects;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.j0;
import org.jboss.netty.channel.k0;
/* compiled from: DefaultNioSocketChannelConfig.java */
/* loaded from: classes5.dex */
class i extends k3.c implements s {

    /* renamed from: i  reason: collision with root package name */
    private static final k0 f73518i = new org.jboss.netty.channel.d();

    /* renamed from: d  reason: collision with root package name */
    private volatile int f73519d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f73520e;

    /* renamed from: f  reason: collision with root package name */
    private volatile j0 f73521f;

    /* renamed from: g  reason: collision with root package name */
    private volatile k0 f73522g;

    /* renamed from: h  reason: collision with root package name */
    private volatile int f73523h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Socket socket) {
        super(socket);
        this.f73519d = 65536;
        this.f73520e = 32768;
        this.f73522g = f73518i;
        this.f73523h = 16;
    }

    private void j(int i2) {
        if (i2 >= 0) {
            this.f73519d = i2;
            return;
        }
        throw new IllegalArgumentException("writeBufferHighWaterMark: " + i2);
    }

    private void k(int i2) {
        if (i2 >= 0) {
            this.f73520e = i2;
            return;
        }
        throw new IllegalArgumentException("writeBufferLowWaterMark: " + i2);
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public void a(k0 k0Var) {
        Objects.requireNonNull(k0Var, "predictorFactory");
        this.f73522g = k0Var;
    }

    @Override // k3.c, org.jboss.netty.channel.v, org.jboss.netty.channel.f
    public boolean c(String str, Object obj) {
        if (super.c(str, obj)) {
            return true;
        }
        if ("writeBufferHighWaterMark".equals(str)) {
            j(org.jboss.netty.util.internal.b.b(obj));
        } else if ("writeBufferLowWaterMark".equals(str)) {
            k(org.jboss.netty.util.internal.b.b(obj));
        } else if ("writeSpinCount".equals(str)) {
            setWriteSpinCount(org.jboss.netty.util.internal.b.b(obj));
        } else if ("receiveBufferSizePredictorFactory".equals(str)) {
            a((k0) obj);
        } else if (!"receiveBufferSizePredictor".equals(str)) {
            return false;
        } else {
            i((j0) obj);
        }
        return true;
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public k0 e() {
        return this.f73522g;
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public j0 f() {
        j0 j0Var = this.f73521f;
        if (j0Var == null) {
            try {
                j0 a4 = e().a();
                this.f73521f = a4;
                return a4;
            } catch (Exception e4) {
                throw new ChannelException("Failed to create a new " + j0.class.getSimpleName() + external.org.apache.commons.lang3.d.f65364a, e4);
            }
        }
        return j0Var;
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public int getWriteBufferHighWaterMark() {
        return this.f73519d;
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public int getWriteBufferLowWaterMark() {
        return this.f73520e;
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public int getWriteSpinCount() {
        return this.f73523h;
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public void i(j0 j0Var) {
        Objects.requireNonNull(j0Var, "predictor");
        this.f73521f = j0Var;
    }

    @Override // org.jboss.netty.channel.v, org.jboss.netty.channel.f
    public void setOptions(Map<String, Object> map) {
        super.setOptions(map);
        if (getWriteBufferHighWaterMark() < getWriteBufferLowWaterMark()) {
            k(getWriteBufferHighWaterMark() >>> 1);
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public void setWriteBufferHighWaterMark(int i2) {
        if (i2 >= getWriteBufferLowWaterMark()) {
            j(i2);
            return;
        }
        throw new IllegalArgumentException("writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark (" + getWriteBufferLowWaterMark() + "): " + i2);
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public void setWriteBufferLowWaterMark(int i2) {
        if (i2 <= getWriteBufferHighWaterMark()) {
            k(i2);
            return;
        }
        throw new IllegalArgumentException("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark (" + getWriteBufferHighWaterMark() + "): " + i2);
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public void setWriteSpinCount(int i2) {
        if (i2 > 0) {
            this.f73523h = i2;
            return;
        }
        throw new IllegalArgumentException("writeSpinCount must be a positive integer.");
    }
}
