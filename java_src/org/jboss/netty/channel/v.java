package org.jboss.netty.channel;

import java.util.Map;
import java.util.Objects;
/* compiled from: DefaultChannelConfig.java */
/* loaded from: classes5.dex */
public class v implements f {

    /* renamed from: a  reason: collision with root package name */
    private volatile org.jboss.netty.buffer.f f73581a = org.jboss.netty.buffer.n.g();

    /* renamed from: b  reason: collision with root package name */
    private volatile int f73582b = 10000;

    @Override // org.jboss.netty.channel.f
    public o b() {
        return null;
    }

    @Override // org.jboss.netty.channel.f
    public boolean c(String str, Object obj) {
        Objects.requireNonNull(str, "key");
        if ("pipelineFactory".equals(str)) {
            h((o) obj);
            return true;
        } else if ("connectTimeoutMillis".equals(str)) {
            setConnectTimeoutMillis(org.jboss.netty.util.internal.b.b(obj));
            return true;
        } else if ("bufferFactory".equals(str)) {
            d((org.jboss.netty.buffer.f) obj);
            return true;
        } else {
            return false;
        }
    }

    @Override // org.jboss.netty.channel.f
    public void d(org.jboss.netty.buffer.f fVar) {
        Objects.requireNonNull(fVar, "bufferFactory");
        this.f73581a = fVar;
    }

    @Override // org.jboss.netty.channel.f
    public org.jboss.netty.buffer.f g() {
        return this.f73581a;
    }

    @Override // org.jboss.netty.channel.f
    public int getConnectTimeoutMillis() {
        return this.f73582b;
    }

    @Override // org.jboss.netty.channel.f
    public void h(o oVar) {
    }

    @Override // org.jboss.netty.channel.f
    public void setConnectTimeoutMillis(int i2) {
        if (i2 >= 0) {
            this.f73582b = i2;
            return;
        }
        throw new IllegalArgumentException("connectTimeoutMillis: " + i2);
    }

    @Override // org.jboss.netty.channel.f
    public void setOptions(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            c(entry.getKey(), entry.getValue());
        }
    }
}
