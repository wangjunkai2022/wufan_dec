package io.netty.channel;

import io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.util.internal.ObjectUtil;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class AdaptiveRecvByteBufAllocator extends DefaultMaxMessagesRecvByteBufAllocator {
    @Deprecated
    public static final AdaptiveRecvByteBufAllocator DEFAULT;
    static final int DEFAULT_INITIAL = 1024;
    static final int DEFAULT_MAXIMUM = 65536;
    static final int DEFAULT_MINIMUM = 64;
    private static final int INDEX_DECREMENT = 1;
    private static final int INDEX_INCREMENT = 4;
    private static final int[] SIZE_TABLE;
    private final int initial;
    private final int maxIndex;
    private final int minIndex;

    /* loaded from: classes5.dex */
    private final class HandleImpl extends DefaultMaxMessagesRecvByteBufAllocator.MaxMessageHandle {
        private boolean decreaseNow;
        private int index;
        private final int maxIndex;
        private final int minIndex;
        private int nextReceiveBufferSize;

        HandleImpl(int i2, int i4, int i5) {
            super();
            this.minIndex = i2;
            this.maxIndex = i4;
            this.index = AdaptiveRecvByteBufAllocator.getSizeTableIndex(i5);
            this.nextReceiveBufferSize = AdaptiveRecvByteBufAllocator.SIZE_TABLE[this.index];
        }

        private void record(int i2) {
            if (i2 <= AdaptiveRecvByteBufAllocator.SIZE_TABLE[Math.max(0, this.index - 1)]) {
                if (this.decreaseNow) {
                    this.index = Math.max(this.index - 1, this.minIndex);
                    this.nextReceiveBufferSize = AdaptiveRecvByteBufAllocator.SIZE_TABLE[this.index];
                    this.decreaseNow = false;
                    return;
                }
                this.decreaseNow = true;
            } else if (i2 >= this.nextReceiveBufferSize) {
                this.index = Math.min(this.index + 4, this.maxIndex);
                this.nextReceiveBufferSize = AdaptiveRecvByteBufAllocator.SIZE_TABLE[this.index];
                this.decreaseNow = false;
            }
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int guess() {
            return this.nextReceiveBufferSize;
        }

        @Override // io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator.MaxMessageHandle, io.netty.channel.RecvByteBufAllocator.Handle
        public void lastBytesRead(int i2) {
            if (i2 == attemptedBytesRead()) {
                record(i2);
            }
            super.lastBytesRead(i2);
        }

        @Override // io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator.MaxMessageHandle, io.netty.channel.RecvByteBufAllocator.Handle
        public void readComplete() {
            record(totalBytesRead());
        }
    }

    static {
        int i2;
        ArrayList arrayList = new ArrayList();
        int i4 = 16;
        while (true) {
            if (i4 >= 512) {
                break;
            }
            arrayList.add(Integer.valueOf(i4));
            i4 += 16;
        }
        for (i2 = 512; i2 > 0; i2 <<= 1) {
            arrayList.add(Integer.valueOf(i2));
        }
        SIZE_TABLE = new int[arrayList.size()];
        int i5 = 0;
        while (true) {
            int[] iArr = SIZE_TABLE;
            if (i5 < iArr.length) {
                iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
                i5++;
            } else {
                DEFAULT = new AdaptiveRecvByteBufAllocator();
                return;
            }
        }
    }

    public AdaptiveRecvByteBufAllocator() {
        this(64, 1024, 65536);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSizeTableIndex(int i2) {
        int length = SIZE_TABLE.length - 1;
        int i4 = 0;
        while (length >= i4) {
            if (length == i4) {
                return length;
            }
            int i5 = (i4 + length) >>> 1;
            int[] iArr = SIZE_TABLE;
            int i6 = iArr[i5];
            int i7 = i5 + 1;
            if (i2 > iArr[i7]) {
                i4 = i7;
            } else if (i2 >= i6) {
                return i2 == i6 ? i5 : i7;
            } else {
                length = i5 - 1;
            }
        }
        return i4;
    }

    @Override // io.netty.channel.RecvByteBufAllocator
    public RecvByteBufAllocator.Handle newHandle() {
        return new HandleImpl(this.minIndex, this.maxIndex, this.initial);
    }

    public AdaptiveRecvByteBufAllocator(int i2, int i4, int i5) {
        ObjectUtil.checkPositive(i2, "minimum");
        if (i4 < i2) {
            throw new IllegalArgumentException("initial: " + i4);
        } else if (i5 >= i4) {
            int sizeTableIndex = getSizeTableIndex(i2);
            int[] iArr = SIZE_TABLE;
            if (iArr[sizeTableIndex] < i2) {
                this.minIndex = sizeTableIndex + 1;
            } else {
                this.minIndex = sizeTableIndex;
            }
            int sizeTableIndex2 = getSizeTableIndex(i5);
            if (iArr[sizeTableIndex2] > i5) {
                this.maxIndex = sizeTableIndex2 - 1;
            } else {
                this.maxIndex = sizeTableIndex2;
            }
            this.initial = i4;
        } else {
            throw new IllegalArgumentException("maximum: " + i5);
        }
    }

    @Override // io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator
    public AdaptiveRecvByteBufAllocator respectMaybeMoreData(boolean z3) {
        super.respectMaybeMoreData(z3);
        return this;
    }
}
