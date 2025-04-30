package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public final class FiveRegisterDecodedInstruction extends DecodedInstruction {

    /* renamed from: a  reason: collision with root package name */
    private final int f9948a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9949b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9950c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9951d;

    /* renamed from: e  reason: collision with root package name */
    private final int f9952e;

    public FiveRegisterDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, long j4, int i6, int i7, int i8, int i9, int i10) {
        super(instructionCodec, i2, i4, indexType, i5, j4);
        this.f9948a = i6;
        this.f9949b = i7;
        this.f9950c = i8;
        this.f9951d = i9;
        this.f9952e = i10;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f9948a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f9949b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f9950c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f9951d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getE() {
        return this.f9952e;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 5;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        return new FiveRegisterDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), getTarget(), getLiteral(), this.f9948a, this.f9949b, this.f9950c, this.f9951d, this.f9952e);
    }
}
