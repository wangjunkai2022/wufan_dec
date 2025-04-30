package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;
/* loaded from: classes2.dex */
public class InvokePolymorphicRangeDecodedInstruction extends DecodedInstruction {

    /* renamed from: c  reason: collision with root package name */
    private final int f9957c;
    private final int protoIndex;
    private final int registerCount;

    public InvokePolymorphicRangeDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, IndexType indexType, int i5, int i6, int i7) {
        super(instructionCodec, i2, i4, indexType, 0, 0L);
        if (i7 == ((short) i7)) {
            this.f9957c = i5;
            this.registerCount = i6;
            this.protoIndex = i7;
            return;
        }
        throw new IllegalArgumentException("protoIndex doesn't fit in a short: " + i7);
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f9957c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public short getProtoIndex() {
        return (short) this.protoIndex;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        throw new UnsupportedOperationException("use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range");
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withProtoIndex(int i2, int i4) {
        return new InvokePolymorphicRangeDecodedInstruction(getFormat(), getOpcode(), i2, getIndexType(), this.f9957c, this.registerCount, i4);
    }
}
