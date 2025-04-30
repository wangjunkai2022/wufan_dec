package com.android.dx.io.instructions;
/* loaded from: classes2.dex */
public final class PackedSwitchPayloadDecodedInstruction extends DecodedInstruction {
    private final int firstKey;
    private final int[] targets;

    public PackedSwitchPayloadDecodedInstruction(InstructionCodec instructionCodec, int i2, int i4, int[] iArr) {
        super(instructionCodec, i2, 0, null, 0, 0L);
        this.firstKey = i4;
        this.targets = iArr;
    }

    public int getFirstKey() {
        return this.firstKey;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 0;
    }

    public int[] getTargets() {
        return this.targets;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i2) {
        throw new UnsupportedOperationException("no index in instruction");
    }
}
