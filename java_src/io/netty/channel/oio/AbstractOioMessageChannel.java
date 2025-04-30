package io.netty.channel.oio;

import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.RecvByteBufAllocator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes5.dex */
public abstract class AbstractOioMessageChannel extends AbstractOioChannel {
    private final List<Object> readBuf;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractOioMessageChannel(Channel channel) {
        super(channel);
        this.readBuf = new ArrayList();
    }

    @Override // io.netty.channel.oio.AbstractOioChannel
    protected void doRead() {
        boolean z3;
        if (this.readPending) {
            boolean z4 = false;
            this.readPending = false;
            ChannelConfig config = config();
            ChannelPipeline pipeline = pipeline();
            RecvByteBufAllocator.Handle recvBufAllocHandle = unsafe().recvBufAllocHandle();
            recvBufAllocHandle.reset(config);
            Throwable th = null;
            do {
                try {
                    int doReadMessages = doReadMessages(this.readBuf);
                    if (doReadMessages == 0) {
                        break;
                    } else if (doReadMessages < 0) {
                        z3 = true;
                        break;
                    } else {
                        recvBufAllocHandle.incMessagesRead(doReadMessages);
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } while (recvBufAllocHandle.continueReading());
            z3 = false;
            int size = this.readBuf.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    this.readPending = false;
                    pipeline.fireChannelRead(this.readBuf.get(i2));
                }
                this.readBuf.clear();
                recvBufAllocHandle.readComplete();
                pipeline.fireChannelReadComplete();
                z4 = true;
            }
            if (th != null) {
                boolean z5 = th instanceof IOException ? true : z3;
                pipeline.fireExceptionCaught(th);
                z3 = z5;
            }
            if (z3) {
                if (isOpen()) {
                    unsafe().close(unsafe().voidPromise());
                }
            } else if (this.readPending || config.isAutoRead() || (!z4 && isActive())) {
                read();
            }
        }
    }

    protected abstract int doReadMessages(List<Object> list) throws Exception;
}
