package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class FourRegisterDecodedInstruction extends DecodedInstruction {

    /* renamed from: a  reason: collision with root package name */
    private final int f9953a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9954b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9955c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9956d;

    public FourRegisterDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4, int i6, int i7, int i8, int i9) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
        this.f9953a = i6;
        this.f9954b = i7;
        this.f9955c = i8;
        this.f9956d = i9;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f9953a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f9954b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f9955c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f9956d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 4;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new FourRegisterDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral(), this.f9953a, this.f9954b, this.f9955c, this.f9956d);
    }
}
