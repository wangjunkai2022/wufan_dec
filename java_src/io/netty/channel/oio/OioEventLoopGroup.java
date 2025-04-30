package io.netty.channel.oio;

import io.netty.channel.ThreadPerChannelEventLoopGroup;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
@Deprecated
/* loaded from: classes5.dex */
public class OioEventLoopGroup extends ThreadPerChannelEventLoopGroup {
    public OioEventLoopGroup() {
        this(0);
    }

    public OioEventLoopGroup(int i2) {
        this(i2, Executors.defaultThreadFactory());
    }

    public OioEventLoopGroup(int i2, Executor executor) {
        super(i2, executor, new Object[0]);
    }

    public OioEventLoopGroup(int i2, ThreadFactory threadFactory) {
        super(i2, threadFactory, new Object[0]);
    }
}
