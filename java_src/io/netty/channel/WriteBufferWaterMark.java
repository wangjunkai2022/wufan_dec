package io.netty.channel;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public final class WriteBufferWaterMark {
    public static final WriteBufferWaterMark DEFAULT = new WriteBufferWaterMark(32768, 65536, false);
    private static final int DEFAULT_HIGH_WATER_MARK = 65536;
    private static final int DEFAULT_LOW_WATER_MARK = 32768;
    private final int high;
    private final int low;

    public WriteBufferWaterMark(int i2, int i4) {
        this(i2, i4, true);
    }

    public int high() {
        return this.high;
    }

    public int low() {
        return this.low;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(55);
        sb.append("WriteBufferWaterMark(low: ");
        sb.append(this.low);
        sb.append(", high: ");
        sb.append(this.high);
        sb.append(")");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WriteBufferWaterMark(int i2, int i4, boolean z3) {
        if (z3) {
            ObjectUtil.checkPositiveOrZero(i2, "low");
            if (i4 < i2) {
                throw new IllegalArgumentException("write buffer's high water mark cannot be less than  low water mark (" + i2 + "): " + i4);
            }
        }
        this.low = i2;
        this.high = i4;
    }
}
