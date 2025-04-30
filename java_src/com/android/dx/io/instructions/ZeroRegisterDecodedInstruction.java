package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class ZeroRegisterDecodedInstruction extends DecodedInstruction {
    public ZeroRegisterDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 0;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new ZeroRegisterDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral());
    }
}
