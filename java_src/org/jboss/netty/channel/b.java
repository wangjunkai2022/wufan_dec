package org.jboss.netty.channel;
/* compiled from: AbstractChannelSink.java */
/* loaded from: classes5.dex */
public abstract class b implements p {
    @Override // org.jboss.netty.channel.p
    public j b(n nVar, Runnable runnable) {
        try {
            runnable.run();
            return s.W(nVar.getChannel());
        } catch (Throwable th) {
            return s.i(nVar.getChannel(), th);
        }
    }

    @Override // org.jboss.netty.channel.p
    public void c(n nVar, h hVar, ChannelPipelineException channelPipelineException) throws Exception {
        Throwable cause = channelPipelineException.getCause();
        if (cause != null) {
            channelPipelineException = cause;
        }
        if (d(hVar, channelPipelineException)) {
            s.F(hVar.getChannel(), channelPipelineException);
        } else {
            s.D(hVar.getChannel(), channelPipelineException);
        }
    }

    protected boolean d(h hVar, Throwable th) {
        return false;
    }
}
