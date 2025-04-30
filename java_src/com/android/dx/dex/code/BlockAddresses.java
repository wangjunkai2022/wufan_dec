package com.android.dx.dex.code;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.SourcePosition;
/* loaded from: classes2.dex */
public final class BlockAddresses {
    private final CodeAddress[] ends;
    private final CodeAddress[] lasts;
    private final CodeAddress[] starts;

    public BlockAddresses(RopMethod ropMethod) {
        int maxLabel = ropMethod.getBlocks().getMaxLabel();
        this.starts = new CodeAddress[maxLabel];
        this.lasts = new CodeAddress[maxLabel];
        this.ends = new CodeAddress[maxLabel];
        setupArrays(ropMethod);
    }

    private void setupArrays(RopMethod ropMethod) {
        BasicBlockList blocks = ropMethod.getBlocks();
        int size = blocks.size();
        for (int i2 = 0; i2 < size; i2++) {
            BasicBlock basicBlock = blocks.get(i2);
            int label = basicBlock.getLabel();
            this.starts[label] = new CodeAddress(basicBlock.getInsns().get(0).getPosition());
            SourcePosition position = basicBlock.getLastInsn().getPosition();
            this.lasts[label] = new CodeAddress(position);
            this.ends[label] = new CodeAddress(position);
        }
    }

    public CodeAddress getEnd(BasicBlock basicBlock) {
        return this.ends[basicBlock.getLabel()];
    }

    public CodeAddress getLast(BasicBlock basicBlock) {
        return this.lasts[basicBlock.getLabel()];
    }

    public CodeAddress getStart(BasicBlock basicBlock) {
        return this.starts[basicBlock.getLabel()];
    }

    public CodeAddress getEnd(int i2) {
        return this.ends[i2];
    }

    public CodeAddress getLast(int i2) {
        return this.lasts[i2];
    }

    public CodeAddress getStart(int i2) {
        return this.starts[i2];
    }
}
