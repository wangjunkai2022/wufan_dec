package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Objects;
/* compiled from: DownstreamMessageEvent.java */
/* loaded from: classes5.dex */
public class d0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final e f73443a;

    /* renamed from: b  reason: collision with root package name */
    private final j f73444b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f73445c;

    /* renamed from: d  reason: collision with root package name */
    private final SocketAddress f73446d;

    public d0(e eVar, j jVar, Object obj, SocketAddress socketAddress) {
        Objects.requireNonNull(eVar, "channel");
        Objects.requireNonNull(jVar, "future");
        Objects.requireNonNull(obj, "message");
        this.f73443a = eVar;
        this.f73444b = jVar;
        this.f73445c = obj;
        if (socketAddress != null) {
            this.f73446d = socketAddress;
        } else {
            this.f73446d = eVar.getRemoteAddress();
        }
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return this.f73444b;
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73443a;
    }

    @Override // org.jboss.netty.channel.i0
    public Object getMessage() {
        return this.f73445c;
    }

    @Override // org.jboss.netty.channel.i0
    public SocketAddress getRemoteAddress() {
        return this.f73446d;
    }

    public String toString() {
        if (getRemoteAddress() == getChannel().getRemoteAddress()) {
            return getChannel().toString() + " WRITE: " + org.jboss.netty.util.internal.i.b(getMessage());
        }
        return getChannel().toString() + " WRITE: " + org.jboss.netty.util.internal.i.b(getMessage()) + " to " + getRemoteAddress();
    }
}
