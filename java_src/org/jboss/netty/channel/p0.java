package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Objects;
/* compiled from: UpstreamMessageEvent.java */
/* loaded from: classes5.dex */
public class p0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final e f73460a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f73461b;

    /* renamed from: c  reason: collision with root package name */
    private final SocketAddress f73462c;

    public p0(e eVar, Object obj, SocketAddress socketAddress) {
        Objects.requireNonNull(eVar, "channel");
        Objects.requireNonNull(obj, "message");
        this.f73460a = eVar;
        this.f73461b = obj;
        if (socketAddress != null) {
            this.f73462c = socketAddress;
        } else {
            this.f73462c = eVar.getRemoteAddress();
        }
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73460a;
    }

    @Override // org.jboss.netty.channel.i0
    public Object getMessage() {
        return this.f73461b;
    }

    @Override // org.jboss.netty.channel.i0
    public SocketAddress getRemoteAddress() {
        return this.f73462c;
    }

    public String toString() {
        if (getRemoteAddress() == getChannel().getRemoteAddress()) {
            return getChannel().toString() + " RECEIVED: " + org.jboss.netty.util.internal.i.b(getMessage());
        }
        return getChannel().toString() + " RECEIVED: " + org.jboss.netty.util.internal.i.b(getMessage()) + " from " + getRemoteAddress();
    }
}
