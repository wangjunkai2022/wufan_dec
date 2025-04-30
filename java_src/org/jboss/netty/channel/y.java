package org.jboss.netty.channel;

import java.util.Objects;
/* compiled from: DefaultChildChannelStateEvent.java */
/* loaded from: classes5.dex */
public class y implements t {

    /* renamed from: a  reason: collision with root package name */
    private final e f73608a;

    /* renamed from: b  reason: collision with root package name */
    private final e f73609b;

    public y(e eVar, e eVar2) {
        Objects.requireNonNull(eVar, "parentChannel");
        Objects.requireNonNull(eVar2, "childChannel");
        this.f73608a = eVar;
        this.f73609b = eVar2;
    }

    @Override // org.jboss.netty.channel.t
    public e b() {
        return this.f73609b;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.t, org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73608a;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 32);
        sb.append(obj);
        sb.append(b().isOpen() ? " CHILD_OPEN: " : " CHILD_CLOSED: ");
        sb.append(b().getId());
        return sb.toString();
    }
}
