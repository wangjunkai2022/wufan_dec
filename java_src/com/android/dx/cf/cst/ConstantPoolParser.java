package com.android.dx.cf.cst;

import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstInvokeDynamic;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.StdConstantPool;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.BitSet;
/* loaded from: classes2.dex */
public final class ConstantPoolParser {
    private final ByteArray bytes;
    private int endOffset;
    private ParseObserver observer;
    private final int[] offsets;
    private final StdConstantPool pool;

    public ConstantPoolParser(ByteArray byteArray) {
        int unsignedShort = byteArray.getUnsignedShort(8);
        this.bytes = byteArray;
        this.pool = new StdConstantPool(unsignedShort);
        this.offsets = new int[unsignedShort];
        this.endOffset = -1;
    }

    private void determineOffsets() {
        int i2;
        int i4 = 10;
        int i5 = 1;
        while (true) {
            int[] iArr = this.offsets;
            if (i5 < iArr.length) {
                iArr[i5] = i4;
                int unsignedByte = this.bytes.getUnsignedByte(i4);
                switch (unsignedByte) {
                    case 1:
                        i4 += this.bytes.getUnsignedShort(i4 + 1) + 3;
                        break;
                    case 2:
                    case 13:
                    case 14:
                    case 17:
                    default:
                        throw new ParseException("unknown tag byte: " + Hex.u1(unsignedByte));
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 18:
                        i4 += 5;
                        break;
                    case 5:
                    case 6:
                        i2 = 2;
                        i4 += 9;
                        continue;
                        i5 += i2;
                    case 7:
                    case 8:
                    case 16:
                        i4 += 3;
                        break;
                    case 15:
                        try {
                            i4 += 4;
                            break;
                        } catch (ParseException e4) {
                            e4.addContext("...while preparsing cst " + Hex.u2(i5) + " at offset " + Hex.u4(i4));
                            throw e4;
                        }
                }
                i2 = 1;
                i5 += i2;
            } else {
                this.endOffset = i4;
                return;
            }
        }
    }

    private static int getMethodHandleTypeForKind(int i2) {
        switch (i2) {
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 0;
            case 5:
                return 5;
            case 6:
                return 4;
            case 7:
                return 7;
            case 8:
                return 6;
            case 9:
                return 8;
            default:
                throw new IllegalArgumentException("invalid kind: " + i2);
        }
    }

    private void parse() {
        Constant orNull;
        determineOffsets();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(this.bytes, 8, 2, "constant_pool_count: " + Hex.u2(this.offsets.length));
            this.observer.parsed(this.bytes, 10, 0, "\nconstant_pool:");
            this.observer.changeIndent(1);
        }
        BitSet bitSet = new BitSet(this.offsets.length);
        int i2 = 1;
        while (true) {
            int[] iArr = this.offsets;
            if (i2 >= iArr.length) {
                break;
            }
            if (iArr[i2] != 0 && this.pool.getOrNull(i2) == null) {
                parse0(i2, bitSet);
            }
            i2++;
        }
        if (this.observer != null) {
            for (int i4 = 1; i4 < this.offsets.length; i4++) {
                if (this.pool.getOrNull(i4) != null) {
                    int i5 = this.offsets[i4];
                    int i6 = this.endOffset;
                    int i7 = i4 + 1;
                    while (true) {
                        int[] iArr2 = this.offsets;
                        if (i7 >= iArr2.length) {
                            break;
                        }
                        int i8 = iArr2[i7];
                        if (i8 != 0) {
                            i6 = i8;
                            break;
                        }
                        i7++;
                    }
                    this.observer.parsed(this.bytes, i5, i6 - i5, bitSet.get(i4) ? Hex.u2(i4) + ": utf8{\"" + orNull.toHuman() + "\"}" : Hex.u2(i4) + ": " + orNull.toString());
                }
            }
            this.observer.changeIndent(-1);
            this.observer.parsed(this.bytes, this.endOffset, 0, "end constant_pool");
        }
    }

    private Constant parse0(int i2, BitSet bitSet) {
        Constant parseUtf8;
        Constant make;
        Constant cstFieldRef;
        Constant constant;
        Constant orNull = this.pool.getOrNull(i2);
        if (orNull != null) {
            return orNull;
        }
        int i4 = this.offsets[i2];
        try {
            int unsignedByte = this.bytes.getUnsignedByte(i4);
            switch (unsignedByte) {
                case 1:
                    parseUtf8 = parseUtf8(i4);
                    bitSet.set(i2);
                    make = parseUtf8;
                    break;
                case 2:
                case 13:
                case 14:
                case 17:
                default:
                    throw new ParseException("unknown tag byte: " + Hex.u1(unsignedByte));
                case 3:
                    make = CstInteger.make(this.bytes.getInt(i4 + 1));
                    break;
                case 4:
                    make = CstFloat.make(this.bytes.getInt(i4 + 1));
                    break;
                case 5:
                    make = CstLong.make(this.bytes.getLong(i4 + 1));
                    break;
                case 6:
                    make = CstDouble.make(this.bytes.getLong(i4 + 1));
                    break;
                case 7:
                    parseUtf8 = new CstType(Type.internClassName(((CstString) parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet)).getString()));
                    make = parseUtf8;
                    break;
                case 8:
                    make = parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet);
                    break;
                case 9:
                    cstFieldRef = new CstFieldRef((CstType) parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i4 + 3), bitSet));
                    make = cstFieldRef;
                    break;
                case 10:
                    cstFieldRef = new CstMethodRef((CstType) parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i4 + 3), bitSet));
                    make = cstFieldRef;
                    break;
                case 11:
                    cstFieldRef = new CstInterfaceMethodRef((CstType) parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i4 + 3), bitSet));
                    make = cstFieldRef;
                    break;
                case 12:
                    cstFieldRef = new CstNat((CstString) parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet), (CstString) parse0(this.bytes.getUnsignedShort(i4 + 3), bitSet));
                    make = cstFieldRef;
                    break;
                case 15:
                    int unsignedByte2 = this.bytes.getUnsignedByte(i4 + 1);
                    int unsignedShort = this.bytes.getUnsignedShort(i4 + 2);
                    switch (unsignedByte2) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            constant = (CstFieldRef) parse0(unsignedShort, bitSet);
                            break;
                        case 5:
                        case 8:
                            constant = (CstMethodRef) parse0(unsignedShort, bitSet);
                            break;
                        case 6:
                        case 7:
                            constant = parse0(unsignedShort, bitSet);
                            if (!(constant instanceof CstMethodRef) && !(constant instanceof CstInterfaceMethodRef)) {
                                throw new ParseException("Unsupported ref constant type for MethodHandle " + constant.getClass());
                            }
                            break;
                        case 9:
                            constant = (CstInterfaceMethodRef) parse0(unsignedShort, bitSet);
                            break;
                        default:
                            throw new ParseException("Unsupported MethodHandle kind: " + unsignedByte2);
                    }
                    make = CstMethodHandle.make(getMethodHandleTypeForKind(unsignedByte2), constant);
                    break;
                case 16:
                    make = CstProtoRef.make((CstString) parse0(this.bytes.getUnsignedShort(i4 + 1), bitSet));
                    break;
                case 18:
                    make = CstInvokeDynamic.make(this.bytes.getUnsignedShort(i4 + 1), (CstNat) parse0(this.bytes.getUnsignedShort(i4 + 3), bitSet));
                    break;
            }
            this.pool.set(i2, make);
            return make;
        } catch (ParseException e4) {
            e4.addContext("...while parsing cst " + Hex.u2(i2) + " at offset " + Hex.u4(i4));
            throw e4;
        } catch (RuntimeException e5) {
            ParseException parseException = new ParseException(e5);
            parseException.addContext("...while parsing cst " + Hex.u2(i2) + " at offset " + Hex.u4(i4));
            throw parseException;
        }
    }

    private void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    private CstString parseUtf8(int i2) {
        int unsignedShort = this.bytes.getUnsignedShort(i2 + 1);
        int i4 = i2 + 3;
        try {
            return new CstString(this.bytes.slice(i4, unsignedShort + i4));
        } catch (IllegalArgumentException e4) {
            throw new ParseException(e4);
        }
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public StdConstantPool getPool() {
        parseIfNecessary();
        return this.pool;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
