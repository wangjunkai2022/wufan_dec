package com.android.dx.cf.code;

import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstInvokeDynamic;
import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Bits;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class BasicBlocker implements BytecodeArray.Visitor {
    private final int[] blockSet;
    private final ByteCatchList[] catchLists;
    private final int[] liveSet;
    private final ConcreteMethod method;
    private int previousOffset;
    private final IntList[] targetLists;
    private final int[] workSet;

    private BasicBlocker(ConcreteMethod concreteMethod) {
        Objects.requireNonNull(concreteMethod, "method == null");
        this.method = concreteMethod;
        int size = concreteMethod.getCode().size() + 1;
        this.workSet = Bits.makeBitSet(size);
        this.liveSet = Bits.makeBitSet(size);
        this.blockSet = Bits.makeBitSet(size);
        this.targetLists = new IntList[size];
        this.catchLists = new ByteCatchList[size];
        this.previousOffset = -1;
    }

    private void addWorkIfNecessary(int i2, boolean z3) {
        if (!Bits.get(this.liveSet, i2)) {
            Bits.set(this.workSet, i2);
        }
        if (z3) {
            Bits.set(this.blockSet, i2);
        }
    }

    private void doit() {
        BytecodeArray code = this.method.getCode();
        ByteCatchList catches = this.method.getCatches();
        int size = catches.size();
        Bits.set(this.workSet, 0);
        Bits.set(this.blockSet, 0);
        while (!Bits.isEmpty(this.workSet)) {
            try {
                code.processWorkSet(this.workSet, this);
                for (int i2 = 0; i2 < size; i2++) {
                    ByteCatchList.Item item = catches.get(i2);
                    int startPc = item.getStartPc();
                    int endPc = item.getEndPc();
                    if (Bits.anyInRange(this.liveSet, startPc, endPc)) {
                        Bits.set(this.blockSet, startPc);
                        Bits.set(this.blockSet, endPc);
                        addWorkIfNecessary(item.getHandlerPc(), true);
                    }
                }
            } catch (IllegalArgumentException e4) {
                throw new SimException("flow of control falls off end of method", e4);
            }
        }
    }

    private ByteBlockList getBlockList() {
        ByteCatchList byteCatchList;
        ByteBlock[] byteBlockArr = new ByteBlock[this.method.getCode().size()];
        int i2 = 0;
        int i4 = 0;
        while (true) {
            int findFirst = Bits.findFirst(this.blockSet, i2 + 1);
            if (findFirst < 0) {
                break;
            }
            if (Bits.get(this.liveSet, i2)) {
                IntList intList = null;
                int i5 = findFirst - 1;
                while (true) {
                    if (i5 < i2) {
                        i5 = -1;
                        break;
                    }
                    intList = this.targetLists[i5];
                    if (intList != null) {
                        break;
                    }
                    i5--;
                }
                if (intList == null) {
                    intList = IntList.makeImmutable(findFirst);
                    byteCatchList = ByteCatchList.EMPTY;
                } else {
                    byteCatchList = this.catchLists[i5];
                    if (byteCatchList == null) {
                        byteCatchList = ByteCatchList.EMPTY;
                    }
                }
                byteBlockArr[i4] = new ByteBlock(i2, i2, findFirst, intList, byteCatchList);
                i4++;
            }
            i2 = findFirst;
        }
        ByteBlockList byteBlockList = new ByteBlockList(i4);
        for (int i6 = 0; i6 < i4; i6++) {
            byteBlockList.set(i6, byteBlockArr[i6]);
        }
        return byteBlockList;
    }

    public static ByteBlockList identifyBlocks(ConcreteMethod concreteMethod) {
        BasicBlocker basicBlocker = new BasicBlocker(concreteMethod);
        basicBlocker.doit();
        return basicBlocker.getBlockList();
    }

    private void visitCommon(int i2, int i4, boolean z3) {
        Bits.set(this.liveSet, i2);
        if (z3) {
            addWorkIfNecessary(i2 + i4, false);
        } else {
            Bits.set(this.blockSet, i2 + i4);
        }
    }

    private void visitThrowing(int i2, int i4, boolean z3) {
        int i5 = i4 + i2;
        if (z3) {
            addWorkIfNecessary(i5, true);
        }
        ByteCatchList listFor = this.method.getCatches().listFor(i2);
        this.catchLists[i2] = listFor;
        IntList[] intListArr = this.targetLists;
        if (!z3) {
            i5 = -1;
        }
        intListArr[i2] = listFor.toTargetList(i5);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public int getPreviousOffset() {
        return this.previousOffset;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void setPreviousOffset(int i2) {
        this.previousOffset = i2;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitBranch(int i2, int i4, int i5, int i6) {
        if (i2 != 167) {
            if (i2 == 168) {
                addWorkIfNecessary(i4, true);
            }
            int i7 = i4 + i5;
            visitCommon(i4, i5, true);
            addWorkIfNecessary(i7, true);
            this.targetLists[i4] = IntList.makeImmutable(i7, i6);
        } else {
            visitCommon(i4, i5, false);
            this.targetLists[i4] = IntList.makeImmutable(i6);
        }
        addWorkIfNecessary(i6, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitConstant(int i2, int i4, int i5, Constant constant, int i6) {
        visitCommon(i4, i5, true);
        if ((constant instanceof CstMemberRef) || (constant instanceof CstType) || (constant instanceof CstString) || (constant instanceof CstInvokeDynamic) || (constant instanceof CstMethodHandle) || (constant instanceof CstProtoRef)) {
            visitThrowing(i4, i5, true);
        }
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitInvalid(int i2, int i4, int i5) {
        visitCommon(i4, i5, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitLocal(int i2, int i4, int i5, int i6, Type type, int i7) {
        if (i2 == 169) {
            visitCommon(i4, i5, false);
            this.targetLists[i4] = IntList.EMPTY;
            return;
        }
        visitCommon(i4, i5, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNewarray(int i2, int i4, CstType cstType, ArrayList<Constant> arrayList) {
        visitCommon(i2, i4, true);
        visitThrowing(i2, i4, true);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNoArgs(int i2, int i4, int i5, Type type) {
        if (i2 == 108 || i2 == 112) {
            visitCommon(i4, i5, true);
            if (type == Type.INT || type == Type.LONG) {
                visitThrowing(i4, i5, true);
            }
        } else if (i2 != 172 && i2 != 177) {
            if (i2 != 190) {
                if (i2 == 191) {
                    visitCommon(i4, i5, false);
                    visitThrowing(i4, i5, false);
                    return;
                } else if (i2 != 194 && i2 != 195) {
                    switch (i2) {
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                            break;
                        default:
                            switch (i2) {
                                case 79:
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                case 85:
                                case 86:
                                    break;
                                default:
                                    visitCommon(i4, i5, true);
                                    return;
                            }
                    }
                }
            }
            visitCommon(i4, i5, true);
            visitThrowing(i4, i5, true);
        } else {
            visitCommon(i4, i5, false);
            this.targetLists[i4] = IntList.EMPTY;
        }
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitSwitch(int i2, int i4, int i5, SwitchList switchList, int i6) {
        visitCommon(i4, i5, false);
        addWorkIfNecessary(switchList.getDefaultTarget(), true);
        int size = switchList.size();
        for (int i7 = 0; i7 < size; i7++) {
            addWorkIfNecessary(switchList.getTarget(i7), true);
        }
        this.targetLists[i4] = switchList.getTargets();
    }
}
