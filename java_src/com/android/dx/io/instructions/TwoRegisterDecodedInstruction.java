package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class TwoRegisterDecodedInstruction extends DecodedInstruction {

    /* renamed from: a  reason: collision with root package name */
    private final int f9963a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9964b;

    public TwoRegisterDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4, int i6, int i7) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
        this.f9963a = i6;
        this.f9964b = i7;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f9963a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f9964b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 2;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new TwoRegisterDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral(), this.f9963a, this.f9964b);
    }
}
