package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SwitchData extends VariableSizeInsn {
    private final IntList cases;
    private final boolean packed;
    private final CodeAddress[] targets;
    private final CodeAddress user;

    public SwitchData(SourcePosition sourcePosition, CodeAddress codeAddress, IntList intList, CodeAddress[] codeAddressArr) {
        super(sourcePosition, RegisterSpecList.EMPTY);
        Objects.requireNonNull(codeAddress, "user == null");
        Objects.requireNonNull(intList, "cases == null");
        Objects.requireNonNull(codeAddressArr, "targets == null");
        int size = intList.size();
        if (size != codeAddressArr.length) {
            throw new IllegalArgumentException("cases / targets mismatch");
        }
        if (size <= 65535) {
            this.user = codeAddress;
            this.cases = intList;
            this.targets = codeAddressArr;
            this.packed = shouldPack(intList);
            return;
        }
        throw new IllegalArgumentException("too many cases");
    }

    private static long packedCodeSize(IntList intList) {
        long j4 = (((intList.get(intList.size() - 1) - intList.get(0)) + 1) * 2) + 4;
        if (j4 <= 2147483647L) {
            return j4;
        }
        return -1L;
    }

    private static boolean shouldPack(IntList intList) {
        if (intList.size() < 2) {
            return true;
        }
        long packedCodeSize = packedCodeSize(intList);
        return packedCodeSize >= 0 && packedCodeSize <= (sparseCodeSize(intList) * 5) / 4;
    }

    private static long sparseCodeSize(IntList intList) {
        return (intList.size() * 4) + 2;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String argString() {
        StringBuilder sb = new StringBuilder(100);
        int length = this.targets.length;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append("\n    ");
            sb.append(this.cases.get(i2));
            sb.append(": ");
            sb.append(this.targets[i2]);
        }
        return sb.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public int codeSize() {
        return (int) (this.packed ? packedCodeSize(this.cases) : sparseCodeSize(this.cases));
    }

    public boolean isPacked() {
        return this.packed;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String listingString0(boolean z3) {
        int address = this.user.getAddress();
        StringBuilder sb = new StringBuilder(100);
        int length = this.targets.length;
        sb.append(this.packed ? "packed" : "sparse");
        sb.append("-switch-payload // for switch @ ");
        sb.append(Hex.u2(address));
        for (int i2 = 0; i2 < length; i2++) {
            int address2 = this.targets[i2].getAddress();
            sb.append("\n  ");
            sb.append(this.cases.get(i2));
            sb.append(": ");
            sb.append(Hex.u4(address2));
            sb.append(" // ");
            sb.append(Hex.s4(address2 - address));
        }
        return sb.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new SwitchData(getPosition(), this.user, this.cases, this.targets);
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public void writeTo(AnnotatedOutput annotatedOutput) {
        int address;
        int address2 = this.user.getAddress();
        int codeSize = Dops.PACKED_SWITCH.getFormat().codeSize();
        int length = this.targets.length;
        int i2 = 0;
        if (this.packed) {
            int i4 = length == 0 ? 0 : this.cases.get(0);
            int i5 = ((length == 0 ? 0 : this.cases.get(length - 1)) - i4) + 1;
            annotatedOutput.writeShort(256);
            annotatedOutput.writeShort(i5);
            annotatedOutput.writeInt(i4);
            int i6 = 0;
            while (i2 < i5) {
                if (this.cases.get(i6) > i4 + i2) {
                    address = codeSize;
                } else {
                    address = this.targets[i6].getAddress() - address2;
                    i6++;
                }
                annotatedOutput.writeInt(address);
                i2++;
            }
            return;
        }
        annotatedOutput.writeShort(512);
        annotatedOutput.writeShort(length);
        for (int i7 = 0; i7 < length; i7++) {
            annotatedOutput.writeInt(this.cases.get(i7));
        }
        while (i2 < length) {
            annotatedOutput.writeInt(this.targets[i2].getAddress() - address2);
            i2++;
        }
    }
}
