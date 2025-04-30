package io.netty.channel;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public final class ChannelMetadata {
    private final int defaultMaxMessagesPerRead;
    private final boolean hasDisconnect;

    public ChannelMetadata(boolean z3) {
        this(z3, 1);
    }

    public int defaultMaxMessagesPerRead() {
        return this.defaultMaxMessagesPerRead;
    }

    public boolean hasDisconnect() {
        return this.hasDisconnect;
    }

    public ChannelMetadata(boolean z3, int i2) {
        ObjectUtil.checkPositive(i2, "defaultMaxMessagesPerRead");
        this.hasDisconnect = z3;
        this.defaultMaxMessagesPerRead = i2;
    }
}
