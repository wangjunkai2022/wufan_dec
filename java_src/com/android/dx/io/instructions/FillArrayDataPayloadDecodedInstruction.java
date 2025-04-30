package com.android.dx.io.instructions;
/* loaded from: classes2.dex */
public final class FillArrayDataPayloadDecodedInstruction extends DecodedInstruction {
    private final Object data;
    private final int elementWidth;
    private final int size;

    private FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i2, Object obj, int i4, int i5) {
        super(instructionCodec, i2, 0, null, 0, 0L);
        this.data = obj;
        this.size = i4;
        this.elementWidth = i5;
    }

    public Object getData() {
        return this.data;
    }

    public short getElementWidthUnit() {
        return (short) this.elementWidth;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 0;
    }

    public int getSize() {
        return this.size;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        throw new UnsupportedOperationException("no index in instruction");
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i2, byte[] bArr) {
        this(instructionCodec, i2, bArr, bArr.length, 1);
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i2, short[] sArr) {
        this(instructionCodec, i2, sArr, sArr.length, 2);
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i2, int[] iArr) {
        this(instructionCodec, i2, iArr, iArr.length, 4);
    }

    public FillArrayDataPayloadDecodedInstruction(InstructionCodec instructionCodec, int i2, long[] jArr) {
        this(instructionCodec, i2, jArr, jArr.length, 8);
    }
}
