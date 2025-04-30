package org.jboss.netty.channel;

import java.util.EventListener;
/* compiled from: ChannelFutureListener.java */
/* loaded from: classes5.dex */
public interface k extends EventListener {

    /* renamed from: g0  reason: collision with root package name */
    public static final k f73452g0 = new a();

    /* renamed from: h0  reason: collision with root package name */
    public static final k f73453h0 = new b();

    /* compiled from: ChannelFutureListener.java */
    /* loaded from: classes5.dex */
    static class a implements k {
        a() {
        }

        @Override // org.jboss.netty.channel.k
        public void b(j jVar) {
            jVar.getChannel().close();
        }
    }

    /* compiled from: ChannelFutureListener.java */
    /* loaded from: classes5.dex */
    static class b implements k {
        b() {
        }

        @Override // org.jboss.netty.channel.k
        public void b(j jVar) {
            if (jVar.isSuccess()) {
                return;
            }
            jVar.getChannel().close();
        }
    }

    void b(j jVar) throws Exception;
}
