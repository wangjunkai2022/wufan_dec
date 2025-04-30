package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class RegisterRangeDecodedInstruction extends DecodedInstruction {

    /* renamed from: a  reason: collision with root package name */
    private final int f9959a;
    private final int registerCount;

    public RegisterRangeDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4, int i6, int i7) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
        this.f9959a = i6;
        this.registerCount = i7;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f9959a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new RegisterRangeDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral(), this.f9959a, this.registerCount);
    }
}
