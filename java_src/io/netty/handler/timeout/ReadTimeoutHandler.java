package io.netty.handler.timeout;

import io.netty.channel.ChannelHandlerContext;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class ReadTimeoutHandler extends IdleStateHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private boolean closed;

    public ReadTimeoutHandler(int i2) {
        this(i2, TimeUnit.SECONDS);
    }

    @Override // io.netty.handler.timeout.IdleStateHandler
    protected final void channelIdle(ChannelHandlerContext channelHandlerContext, IdleStateEvent idleStateEvent) throws Exception {
        readTimedOut(channelHandlerContext);
    }

    protected void readTimedOut(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (this.closed) {
            return;
        }
        channelHandlerContext.fireExceptionCaught((Throwable) ReadTimeoutException.INSTANCE);
        channelHandlerContext.close();
        this.closed = true;
    }

    public ReadTimeoutHandler(long j4, TimeUnit timeUnit) {
        super(j4, 0L, 0L, timeUnit);
    }
}
