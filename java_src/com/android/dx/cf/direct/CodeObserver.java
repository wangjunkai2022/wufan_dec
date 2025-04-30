package com.android.dx.cf.direct;

import com.android.dx.cf.code.ByteOps;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.SwitchList;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes2.dex */
public class CodeObserver implements BytecodeArray.Visitor {
    private final ByteArray bytes;
    private final ParseObserver observer;

    public CodeObserver(ByteArray byteArray, ParseObserver parseObserver) {
        Objects.requireNonNull(byteArray, "bytes == null");
        Objects.requireNonNull(parseObserver, "observer == null");
        this.bytes = byteArray;
        this.observer = parseObserver;
    }

    private String header(int i2) {
        int unsignedByte = this.bytes.getUnsignedByte(i2);
        String opName = ByteOps.opName(unsignedByte);
        if (unsignedByte == 196) {
            int unsignedByte2 = this.bytes.getUnsignedByte(i2 + 1);
            opName = opName + " " + ByteOps.opName(unsignedByte2);
        }
        return Hex.u2(i2) + ": " + opName;
    }

    private void visitLiteralDouble(int i2, int i4, int i5, long j4) {
        String str;
        if (i5 != 1) {
            str = " #" + Hex.u8(j4);
        } else {
            str = "";
        }
        this.observer.parsed(this.bytes, i4, i5, header(i4) + str + " // " + Double.longBitsToDouble(j4));
    }

    private void visitLiteralFloat(int i2, int i4, int i5, int i6) {
        String str;
        if (i5 != 1) {
            str = " #" + Hex.u4(i6);
        } else {
            str = "";
        }
        this.observer.parsed(this.bytes, i4, i5, header(i4) + str + " // " + Float.intBitsToFloat(i6));
    }

    private void visitLiteralInt(int i2, int i4, int i5, int i6) {
        String str;
        String str2 = i5 == 1 ? " // " : " ";
        int unsignedByte = this.bytes.getUnsignedByte(i4);
        if (i5 == 1 || unsignedByte == 16) {
            str = "#" + Hex.s1(i6);
        } else if (unsignedByte == 17) {
            str = "#" + Hex.s2(i6);
        } else {
            str = "#" + Hex.s4(i6);
        }
        this.observer.parsed(this.bytes, i4, i5, header(i4) + str2 + str);
    }

    private void visitLiteralLong(int i2, int i4, int i5, long j4) {
        String s8;
        String str = i5 == 1 ? " // " : " #";
        if (i5 == 1) {
            s8 = Hex.s1((int) j4);
        } else {
            s8 = Hex.s8(j4);
        }
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        parseObserver.parsed(byteArray, i4, i5, header(i4) + str + s8);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public int getPreviousOffset() {
        return -1;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void setPreviousOffset(int i2) {
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitBranch(int i2, int i4, int i5, int i6) {
        String u22 = i5 <= 3 ? Hex.u2(i6) : Hex.u4(i6);
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        parseObserver.parsed(byteArray, i4, i5, header(i4) + " " + u22);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitConstant(int i2, int i4, int i5, Constant constant, int i6) {
        String str;
        if (constant instanceof CstKnownNull) {
            visitNoArgs(i2, i4, i5, null);
        } else if (constant instanceof CstInteger) {
            visitLiteralInt(i2, i4, i5, i6);
        } else if (constant instanceof CstLong) {
            visitLiteralLong(i2, i4, i5, ((CstLong) constant).getValue());
        } else if (constant instanceof CstFloat) {
            visitLiteralFloat(i2, i4, i5, ((CstFloat) constant).getIntBits());
        } else if (constant instanceof CstDouble) {
            visitLiteralDouble(i2, i4, i5, ((CstDouble) constant).getLongBits());
        } else {
            if (i6 == 0) {
                str = "";
            } else if (i2 == 197) {
                str = ", " + Hex.u1(i6);
            } else {
                str = ", " + Hex.u2(i6);
            }
            this.observer.parsed(this.bytes, i4, i5, header(i4) + " " + constant + str);
        }
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitInvalid(int i2, int i4, int i5) {
        this.observer.parsed(this.bytes, i4, i5, header(i4));
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitLocal(int i2, int i4, int i5, int i6, Type type, int i7) {
        String str;
        String u12 = i5 <= 3 ? Hex.u1(i6) : Hex.u2(i6);
        boolean z3 = i5 == 1;
        String str2 = "";
        if (i2 == 132) {
            StringBuilder sb = new StringBuilder();
            sb.append(", #");
            sb.append(i5 <= 3 ? Hex.s1(i7) : Hex.s2(i7));
            str = sb.toString();
        } else {
            str = "";
        }
        if (type.isCategory2()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z3 ? "," : " //");
            sb2.append(" category-2");
            str2 = sb2.toString();
        }
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(header(i4));
        sb3.append(z3 ? " // " : " ");
        sb3.append(u12);
        sb3.append(str);
        sb3.append(str2);
        parseObserver.parsed(byteArray, i4, i5, sb3.toString());
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNewarray(int i2, int i4, CstType cstType, ArrayList<Constant> arrayList) {
        String str = i4 == 1 ? " // " : " ";
        String human = cstType.getClassType().getComponentType().toHuman();
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        parseObserver.parsed(byteArray, i2, i4, header(i2) + str + human);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNoArgs(int i2, int i4, int i5, Type type) {
        this.observer.parsed(this.bytes, i4, i5, header(i4));
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitSwitch(int i2, int i4, int i5, SwitchList switchList, int i6) {
        int size = switchList.size();
        StringBuilder sb = new StringBuilder((size * 20) + 100);
        sb.append(header(i4));
        if (i6 != 0) {
            sb.append(" // padding: " + Hex.u4(i6));
        }
        sb.append('\n');
        for (int i7 = 0; i7 < size; i7++) {
            sb.append("  ");
            sb.append(Hex.s4(switchList.getValue(i7)));
            sb.append(": ");
            sb.append(Hex.u2(switchList.getTarget(i7)));
            sb.append('\n');
        }
        sb.append("  default: ");
        sb.append(Hex.u2(switchList.getDefaultTarget()));
        this.observer.parsed(this.bytes, i4, i5, sb.toString());
    }
}
