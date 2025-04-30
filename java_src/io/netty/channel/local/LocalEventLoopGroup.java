package io.netty.channel.local;

import io.netty.channel.DefaultEventLoopGroup;
import java.util.concurrent.ThreadFactory;
@Deprecated
/* loaded from: classes5.dex */
public class LocalEventLoopGroup extends DefaultEventLoopGroup {
    public LocalEventLoopGroup() {
    }

    public LocalEventLoopGroup(int i2) {
        super(i2);
    }

    public LocalEventLoopGroup(ThreadFactory threadFactory) {
        super(0, threadFactory);
    }

    public LocalEventLoopGroup(int i2, ThreadFactory threadFactory) {
        super(i2, threadFactory);
    }
}
