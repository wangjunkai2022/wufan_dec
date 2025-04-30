package com.android.dx.rop.code;

import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
/* loaded from: classes2.dex */
public final class BasicBlock implements LabeledItem {
    private final InsnList insns;
    private final int label;
    private final int primarySuccessor;
    private final IntList successors;

    /* loaded from: classes2.dex */
    public interface Visitor {
        void visitBlock(BasicBlock basicBlock);
    }

    public BasicBlock(int i2, InsnList insnList, IntList intList, int i4) {
        if (i2 >= 0) {
            try {
                insnList.throwIfMutable();
                int size = insnList.size();
                if (size != 0) {
                    for (int i5 = size - 2; i5 >= 0; i5--) {
                        if (insnList.get(i5).getOpcode().getBranchingness() != 1) {
                            throw new IllegalArgumentException("insns[" + i5 + "] is a branch or can throw");
                        }
                    }
                    if (insnList.get(size - 1).getOpcode().getBranchingness() != 1) {
                        try {
                            intList.throwIfMutable();
                            if (i4 >= -1) {
                                if (i4 >= 0 && !intList.contains(i4)) {
                                    throw new IllegalArgumentException("primarySuccessor " + i4 + " not in successors " + intList);
                                }
                                this.label = i2;
                                this.insns = insnList;
                                this.successors = intList;
                                this.primarySuccessor = i4;
                                return;
                            }
                            throw new IllegalArgumentException("primarySuccessor < -1");
                        } catch (NullPointerException unused) {
                            throw new NullPointerException("successors == null");
                        }
                    }
                    throw new IllegalArgumentException("insns does not end with a branch or throwing instruction");
                }
                throw new IllegalArgumentException("insns.size() == 0");
            } catch (NullPointerException unused2) {
                throw new NullPointerException("insns == null");
            }
        }
        throw new IllegalArgumentException("label < 0");
    }

    public boolean canThrow() {
        return this.insns.getLast().canThrow();
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public TypeList getExceptionHandlerTypes() {
        return this.insns.getLast().getCatches();
    }

    public Insn getFirstInsn() {
        return this.insns.get(0);
    }

    public InsnList getInsns() {
        return this.insns;
    }

    @Override // com.android.dx.util.LabeledItem
    public int getLabel() {
        return this.label;
    }

    public Insn getLastInsn() {
        return this.insns.getLast();
    }

    public int getPrimarySuccessor() {
        return this.primarySuccessor;
    }

    public int getSecondarySuccessor() {
        if (this.successors.size() == 2) {
            int i2 = this.successors.get(0);
            return i2 == this.primarySuccessor ? this.successors.get(1) : i2;
        }
        throw new UnsupportedOperationException("block doesn't have exactly two successors");
    }

    public IntList getSuccessors() {
        return this.successors;
    }

    public boolean hasExceptionHandlers() {
        return this.insns.getLast().getCatches().size() != 0;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public String toString() {
        return '{' + Hex.u2(this.label) + '}';
    }

    public BasicBlock withRegisterOffset(int i2) {
        return new BasicBlock(this.label, this.insns.withRegisterOffset(i2), this.successors, this.primarySuccessor);
    }
}
