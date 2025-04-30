package io.netty.channel.rxtx;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
@Deprecated
/* loaded from: classes5.dex */
public interface RxtxChannelConfig extends ChannelConfig {

    /* loaded from: classes5.dex */
    public enum Databits {
        DATABITS_5(5),
        DATABITS_6(6),
        DATABITS_7(7),
        DATABITS_8(8);
        
        private final int value;

        Databits(int i2) {
            this.value = i2;
        }

        public int value() {
            return this.value;
        }

        public static Databits valueOf(int i2) {
            Databits[] values;
            for (Databits databits : values()) {
                if (databits.value == i2) {
                    return databits;
                }
            }
            throw new IllegalArgumentException("unknown " + Databits.class.getSimpleName() + " value: " + i2);
        }
    }

    /* loaded from: classes5.dex */
    public enum Paritybit {
        NONE(0),
        ODD(1),
        EVEN(2),
        MARK(3),
        SPACE(4);
        
        private final int value;

        Paritybit(int i2) {
            this.value = i2;
        }

        public int value() {
            return this.value;
        }

        public static Paritybit valueOf(int i2) {
            Paritybit[] values;
            for (Paritybit paritybit : values()) {
                if (paritybit.value == i2) {
                    return paritybit;
                }
            }
            throw new IllegalArgumentException("unknown " + Paritybit.class.getSimpleName() + " value: " + i2);
        }
    }

    /* loaded from: classes5.dex */
    public enum Stopbits {
        STOPBITS_1(1),
        STOPBITS_2(2),
        STOPBITS_1_5(3);
        
        private final int value;

        Stopbits(int i2) {
            this.value = i2;
        }

        public int value() {
            return this.value;
        }

        public static Stopbits valueOf(int i2) {
            Stopbits[] values;
            for (Stopbits stopbits : values()) {
                if (stopbits.value == i2) {
                    return stopbits;
                }
            }
            throw new IllegalArgumentException("unknown " + Stopbits.class.getSimpleName() + " value: " + i2);
        }
    }

    int getBaudrate();

    Databits getDatabits();

    Paritybit getParitybit();

    int getReadTimeout();

    Stopbits getStopbits();

    int getWaitTimeMillis();

    boolean isDtr();

    boolean isRts();

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setAutoClose(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setAutoRead(boolean z3);

    RxtxChannelConfig setBaudrate(int i2);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setConnectTimeoutMillis(int i2);

    RxtxChannelConfig setDatabits(Databits databits);

    RxtxChannelConfig setDtr(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    RxtxChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    RxtxChannelConfig setParitybit(Paritybit paritybit);

    RxtxChannelConfig setReadTimeout(int i2);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    RxtxChannelConfig setRts(boolean z3);

    RxtxChannelConfig setStopbits(Stopbits stopbits);

    RxtxChannelConfig setWaitTimeMillis(int i2);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteBufferHighWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteBufferLowWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteSpinCount(int i2);
}
