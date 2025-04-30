package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class ThreeRegisterDecodedInstruction extends DecodedInstruction {

    /* renamed from: a  reason: collision with root package name */
    private final int f9960a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9961b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9962c;

    public ThreeRegisterDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4, int i6, int i7, int i8) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
        this.f9960a = i6;
        this.f9961b = i7;
        this.f9962c = i8;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f9960a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f9961b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f9962c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 3;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new ThreeRegisterDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral(), this.f9960a, this.f9961b, this.f9962c);
    }
}
