package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLiteral64;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.BitSet;
/* loaded from: classes2.dex */
public abstract class InsnFormat {
    public static final boolean ALLOW_EXTENDED_OPCODES = true;

    protected static int argIndex(DalvInsn dalvInsn) {
        int value = ((CstInteger) ((CstInsn) dalvInsn).getConstant()).getValue();
        if (value >= 0) {
            return value;
        }
        throw new IllegalArgumentException("bogus insn");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String branchComment(DalvInsn dalvInsn) {
        int targetOffset = ((TargetInsn) dalvInsn).getTargetOffset();
        return targetOffset == ((short) targetOffset) ? Hex.s2(targetOffset) : Hex.s4(targetOffset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String branchString(DalvInsn dalvInsn) {
        int targetAddress = ((TargetInsn) dalvInsn).getTargetAddress();
        return targetAddress == ((char) targetAddress) ? Hex.u2(targetAddress) : Hex.u4(targetAddress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static short codeUnit(int i2, int i4) {
        if ((i2 & 255) == i2) {
            if ((i4 & 255) == i4) {
                return (short) (i2 | (i4 << 8));
            }
            throw new IllegalArgumentException("high out of range 0..255");
        }
        throw new IllegalArgumentException("low out of range 0..255");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isRegListSequential(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        if (size < 2) {
            return true;
        }
        int reg = registerSpecList.get(0).getReg();
        for (int i2 = 0; i2 < size; i2++) {
            RegisterSpec registerSpec = registerSpecList.get(i2);
            if (registerSpec.getReg() != reg) {
                return false;
            }
            reg += registerSpec.getCategory();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String literalBitsComment(CstLiteralBits cstLiteralBits, int i2) {
        long intBits;
        StringBuilder sb = new StringBuilder(20);
        sb.append("#");
        if (cstLiteralBits instanceof CstLiteral64) {
            intBits = ((CstLiteral64) cstLiteralBits).getLongBits();
        } else {
            intBits = cstLiteralBits.getIntBits();
        }
        if (i2 == 4) {
            sb.append(Hex.uNibble((int) intBits));
        } else if (i2 == 8) {
            sb.append(Hex.u1((int) intBits));
        } else if (i2 == 16) {
            sb.append(Hex.u2((int) intBits));
        } else if (i2 == 32) {
            sb.append(Hex.u4((int) intBits));
        } else if (i2 == 64) {
            sb.append(Hex.u8(intBits));
        } else {
            throw new RuntimeException("shouldn't happen");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String literalBitsString(CstLiteralBits cstLiteralBits) {
        StringBuilder sb = new StringBuilder(100);
        sb.append('#');
        if (cstLiteralBits instanceof CstKnownNull) {
            sb.append("null");
        } else {
            sb.append(cstLiteralBits.typeName());
            sb.append(' ');
            sb.append(cstLiteralBits.toHuman());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int makeByte(int i2, int i4) {
        if ((i2 & 15) == i2) {
            if ((i4 & 15) == i4) {
                return i2 | (i4 << 4);
            }
            throw new IllegalArgumentException("high out of range 0..15");
        }
        throw new IllegalArgumentException("low out of range 0..15");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static short opcodeUnit(DalvInsn dalvInsn, int i2) {
        if ((i2 & 255) == i2) {
            int opcode = dalvInsn.getOpcode().getOpcode();
            if ((opcode & 255) == opcode) {
                return (short) (opcode | (i2 << 8));
            }
            throw new IllegalArgumentException("opcode out of range 0..255");
        }
        throw new IllegalArgumentException("arg out of range 0..255");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String regListString(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        StringBuilder sb = new StringBuilder((size * 5) + 2);
        sb.append('{');
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            sb.append(registerSpecList.get(i2).regString());
        }
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String regRangeString(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        StringBuilder sb = new StringBuilder(30);
        sb.append("{");
        if (size != 0) {
            if (size != 1) {
                RegisterSpec registerSpec = registerSpecList.get(size - 1);
                if (registerSpec.getCategory() == 2) {
                    registerSpec = registerSpec.withOffset(1);
                }
                sb.append(registerSpecList.get(0).regString());
                sb.append("..");
                sb.append(registerSpec.regString());
            } else {
                sb.append(registerSpecList.get(0).regString());
            }
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean signedFitsInByte(int i2) {
        return ((byte) i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean signedFitsInNibble(int i2) {
        return i2 >= -8 && i2 <= 7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean signedFitsInShort(int i2) {
        return ((short) i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean unsignedFitsInByte(int i2) {
        return i2 == (i2 & 255);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean unsignedFitsInNibble(int i2) {
        return i2 == (i2 & 15);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean unsignedFitsInShort(int i2) {
        return i2 == (65535 & i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void write(AnnotatedOutput annotatedOutput, short s3) {
        annotatedOutput.writeShort(s3);
    }

    public boolean branchFits(TargetInsn targetInsn) {
        return false;
    }

    public abstract int codeSize();

    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        return new BitSet();
    }

    public abstract String insnArgString(DalvInsn dalvInsn);

    public abstract String insnCommentString(DalvInsn dalvInsn, boolean z3);

    public abstract boolean isCompatible(DalvInsn dalvInsn);

    public final String listingString(DalvInsn dalvInsn, boolean z3) {
        String name = dalvInsn.getOpcode().getName();
        String insnArgString = insnArgString(dalvInsn);
        String insnCommentString = insnCommentString(dalvInsn, z3);
        StringBuilder sb = new StringBuilder(100);
        sb.append(name);
        if (insnArgString.length() != 0) {
            sb.append(' ');
            sb.append(insnArgString);
        }
        if (insnCommentString.length() != 0) {
            sb.append(" // ");
            sb.append(insnCommentString);
        }
        return sb.toString();
    }

    public abstract void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn);

    /* JADX INFO: Access modifiers changed from: protected */
    public static void write(AnnotatedOutput annotatedOutput, short s3, short s4) {
        annotatedOutput.writeShort(s3);
        annotatedOutput.writeShort(s4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static short codeUnit(int i2, int i4, int i5, int i6) {
        if ((i2 & 15) == i2) {
            if ((i4 & 15) == i4) {
                if ((i5 & 15) == i5) {
                    if ((i6 & 15) == i6) {
                        return (short) (i2 | (i4 << 4) | (i5 << 8) | (i6 << 12));
                    }
                    throw new IllegalArgumentException("n3 out of range 0..15");
                }
                throw new IllegalArgumentException("n2 out of range 0..15");
            }
            throw new IllegalArgumentException("n1 out of range 0..15");
        }
        throw new IllegalArgumentException("n0 out of range 0..15");
    }

    protected static short opcodeUnit(DalvInsn dalvInsn) {
        int opcode = dalvInsn.getOpcode().getOpcode();
        if (opcode < 256 || opcode > 65535) {
            throw new IllegalArgumentException("opcode out of range 0..65535");
        }
        return (short) opcode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void write(AnnotatedOutput annotatedOutput, short s3, short s4, short s5) {
        annotatedOutput.writeShort(s3);
        annotatedOutput.writeShort(s4);
        annotatedOutput.writeShort(s5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void write(AnnotatedOutput annotatedOutput, short s3, short s4, short s5, short s6) {
        annotatedOutput.writeShort(s3);
        annotatedOutput.writeShort(s4);
        annotatedOutput.writeShort(s5);
        annotatedOutput.writeShort(s6);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s3, short s4, short s5, short s6, short s7) {
        annotatedOutput.writeShort(s3);
        annotatedOutput.writeShort(s4);
        annotatedOutput.writeShort(s5);
        annotatedOutput.writeShort(s6);
        annotatedOutput.writeShort(s7);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void write(AnnotatedOutput annotatedOutput, short s3, int i2) {
        write(annotatedOutput, s3, (short) i2, (short) (i2 >> 16));
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s3, int i2, short s4) {
        write(annotatedOutput, s3, (short) i2, (short) (i2 >> 16), s4);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s3, int i2, short s4, short s5) {
        write(annotatedOutput, s3, (short) i2, (short) (i2 >> 16), s4, s5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void write(AnnotatedOutput annotatedOutput, short s3, long j4) {
        write(annotatedOutput, s3, (short) j4, (short) (j4 >> 16), (short) (j4 >> 32), (short) (j4 >> 48));
    }
}
