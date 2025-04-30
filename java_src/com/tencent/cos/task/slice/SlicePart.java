package com.tencent.cos.task.slice;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class SlicePart implements Serializable {
    private static final long serialVersionUID = -8847711809744693626L;
    private long offset;
    private boolean overFlag;
    private int sliceSize;

    public long getOffset() {
        return this.offset;
    }

    public boolean getOverFlag() {
        return this.overFlag;
    }

    public int getSliceSize() {
        return this.sliceSize;
    }

    public void setOffset(long j4) {
        this.offset = j4;
    }

    public void setOverFlag(boolean z3) {
        this.overFlag = z3;
    }

    public void setSliceSize(int i2) {
        this.sliceSize = i2;
    }
}
