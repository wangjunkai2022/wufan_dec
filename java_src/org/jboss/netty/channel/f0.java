package org.jboss.netty.channel;

import java.util.Objects;
/* compiled from: FailedChannelFuture.java */
/* loaded from: classes5.dex */
public class f0 extends u {

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f73451b;

    public f0(e eVar, Throwable th) {
        super(eVar);
        Objects.requireNonNull(th, "cause");
        this.f73451b = th;
    }

    private void f() {
        Throwable th = this.f73451b;
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            throw new ChannelException(this.f73451b);
        }
        throw ((RuntimeException) th);
    }

    @Override // org.jboss.netty.channel.j
    public Throwable a() {
        return this.f73451b;
    }

    @Override // org.jboss.netty.channel.j
    @Deprecated
    public j e() throws Exception {
        Throwable th = this.f73451b;
        if (!(th instanceof Exception)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            throw new RuntimeException(this.f73451b);
        }
        throw ((Exception) th);
    }

    @Override // org.jboss.netty.channel.j
    public boolean isSuccess() {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public j sync() throws InterruptedException {
        f();
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j syncUninterruptibly() {
        f();
        return this;
    }
}
