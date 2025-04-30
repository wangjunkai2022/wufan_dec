package org.jboss.netty.channel;

import java.util.Objects;
/* compiled from: DefaultExceptionEvent.java */
/* loaded from: classes5.dex */
public class z implements e0 {

    /* renamed from: a  reason: collision with root package name */
    private final e f73610a;

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f73611b;

    public z(e eVar, Throwable th) {
        Objects.requireNonNull(eVar, "channel");
        Objects.requireNonNull(th, "cause");
        this.f73610a = eVar;
        this.f73611b = th;
    }

    @Override // org.jboss.netty.channel.e0
    public Throwable a() {
        return this.f73611b;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73610a;
    }

    public String toString() {
        return getChannel().toString() + " EXCEPTION: " + this.f73611b;
    }
}
