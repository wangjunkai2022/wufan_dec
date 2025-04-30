package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class OneRegisterDecodedInstruction extends DecodedInstruction {

    /* renamed from: a  reason: collision with root package name */
    private final int f9958a;

    public OneRegisterDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4, int i6) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
        this.f9958a = i6;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f9958a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 1;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new OneRegisterDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral(), this.f9958a);
    }
}
