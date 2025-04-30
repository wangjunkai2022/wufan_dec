package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Objects;
/* loaded from: classes2.dex */
public class LocalVariableExtractor {
    private final ArrayList<SsaBasicBlock> blocks;
    private final SsaMethod method;
    private final LocalVariableInfo resultInfo;
    private final BitSet workSet;

    private LocalVariableExtractor(SsaMethod ssaMethod) {
        Objects.requireNonNull(ssaMethod, "method == null");
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        this.method = ssaMethod;
        this.blocks = blocks;
        this.resultInfo = new LocalVariableInfo(ssaMethod);
        this.workSet = new BitSet(blocks.size());
    }

    private LocalVariableInfo doit() {
        if (this.method.getRegCount() > 0) {
            int entryBlockIndex = this.method.getEntryBlockIndex();
            while (entryBlockIndex >= 0) {
                this.workSet.clear(entryBlockIndex);
                processBlock(entryBlockIndex);
                entryBlockIndex = this.workSet.nextSetBit(0);
            }
        }
        this.resultInfo.setImmutable();
        return this.resultInfo;
    }

    public static LocalVariableInfo extract(SsaMethod ssaMethod) {
        return new LocalVariableExtractor(ssaMethod).doit();
    }

    private void processBlock(int i2) {
        RegisterSpecSet mutableCopyOfStarts = this.resultInfo.mutableCopyOfStarts(i2);
        SsaBasicBlock ssaBasicBlock = this.blocks.get(i2);
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        int size = insns.size();
        if (i2 == this.method.getExitBlockIndex()) {
            return;
        }
        int i4 = size - 1;
        SsaInsn ssaInsn = insns.get(i4);
        boolean z3 = true;
        z3 = (!(ssaInsn.getOriginalRopInsn().getCatches().size() != 0) || ssaInsn.getResult() == null) ? false : false;
        RegisterSpecSet registerSpecSet = mutableCopyOfStarts;
        for (int i5 = 0; i5 < size; i5++) {
            if (z3 && i5 == i4) {
                registerSpecSet.setImmutable();
                registerSpecSet = registerSpecSet.mutableCopy();
            }
            SsaInsn ssaInsn2 = insns.get(i5);
            RegisterSpec localAssignment = ssaInsn2.getLocalAssignment();
            if (localAssignment == null) {
                RegisterSpec result = ssaInsn2.getResult();
                if (result != null && registerSpecSet.get(result.getReg()) != null) {
                    registerSpecSet.remove(registerSpecSet.get(result.getReg()));
                }
            } else {
                RegisterSpec withSimpleType = localAssignment.withSimpleType();
                if (!withSimpleType.equals(registerSpecSet.get(withSimpleType))) {
                    RegisterSpec localItemToSpec = registerSpecSet.localItemToSpec(withSimpleType.getLocalItem());
                    if (localItemToSpec != null && localItemToSpec.getReg() != withSimpleType.getReg()) {
                        registerSpecSet.remove(localItemToSpec);
                    }
                    this.resultInfo.addAssignment(ssaInsn2, withSimpleType);
                    registerSpecSet.put(withSimpleType);
                }
            }
        }
        registerSpecSet.setImmutable();
        IntList successorList = ssaBasicBlock.getSuccessorList();
        int size2 = successorList.size();
        int primarySuccessorIndex = ssaBasicBlock.getPrimarySuccessorIndex();
        for (int i6 = 0; i6 < size2; i6++) {
            int i7 = successorList.get(i6);
            if (this.resultInfo.mergeStarts(i7, i7 == primarySuccessorIndex ? registerSpecSet : mutableCopyOfStarts)) {
                this.workSet.set(i7);
            }
        }
    }
}
