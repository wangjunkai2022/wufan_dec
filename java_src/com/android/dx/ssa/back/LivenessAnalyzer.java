package com.android.dx.ssa.back;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class LivenessAnalyzer {
    private SsaBasicBlock blockN;
    private final InterferenceGraph interference;
    private final BitSet liveOutBlocks;
    private NextFunction nextFunction;
    private final int regV;
    private final SsaMethod ssaMeth;
    private int statementIndex;
    private final BitSet visitedBlocks;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.dx.ssa.back.LivenessAnalyzer$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction;

        static {
            int[] iArr = new int[NextFunction.values().length];
            $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction = iArr;
            try {
                iArr[NextFunction.LIVE_IN_AT_STATEMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[NextFunction.LIVE_OUT_AT_STATEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[NextFunction.LIVE_OUT_AT_BLOCK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum NextFunction {
        LIVE_IN_AT_STATEMENT,
        LIVE_OUT_AT_STATEMENT,
        LIVE_OUT_AT_BLOCK,
        DONE
    }

    private LivenessAnalyzer(SsaMethod ssaMethod, int i2, InterferenceGraph interferenceGraph) {
        int size = ssaMethod.getBlocks().size();
        this.ssaMeth = ssaMethod;
        this.regV = i2;
        this.visitedBlocks = new BitSet(size);
        this.liveOutBlocks = new BitSet(size);
        this.interference = interferenceGraph;
    }

    private static void coInterferePhiRegisters(InterferenceGraph interferenceGraph, RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        int reg = registerSpec.getReg();
        for (int i2 = 0; i2 < registerSpecList.size(); i2++) {
            interferenceGraph.add(reg, registerSpecList.get(i2).getReg());
        }
    }

    private static void coInterferePhis(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        Iterator<SsaBasicBlock> it2 = ssaMethod.getBlocks().iterator();
        while (it2.hasNext()) {
            List<SsaInsn> phiInsns = it2.next().getPhiInsns();
            int size = phiInsns.size();
            for (int i2 = 0; i2 < size; i2++) {
                for (int i4 = 0; i4 < size; i4++) {
                    if (i2 != i4) {
                        SsaInsn ssaInsn = phiInsns.get(i2);
                        SsaInsn ssaInsn2 = phiInsns.get(i4);
                        coInterferePhiRegisters(interferenceGraph, ssaInsn.getResult(), ssaInsn2.getSources());
                        coInterferePhiRegisters(interferenceGraph, ssaInsn2.getResult(), ssaInsn.getSources());
                        interferenceGraph.add(ssaInsn.getResult().getReg(), ssaInsn2.getResult().getReg());
                    }
                }
            }
        }
    }

    public static InterferenceGraph constructInterferenceGraph(SsaMethod ssaMethod) {
        int regCount = ssaMethod.getRegCount();
        InterferenceGraph interferenceGraph = new InterferenceGraph(regCount);
        for (int i2 = 0; i2 < regCount; i2++) {
            new LivenessAnalyzer(ssaMethod, i2, interferenceGraph).run();
        }
        coInterferePhis(ssaMethod, interferenceGraph);
        return interferenceGraph;
    }

    private void handleTailRecursion() {
        while (true) {
            NextFunction nextFunction = this.nextFunction;
            NextFunction nextFunction2 = NextFunction.DONE;
            if (nextFunction == nextFunction2) {
                return;
            }
            int i2 = AnonymousClass1.$SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[nextFunction.ordinal()];
            if (i2 == 1) {
                this.nextFunction = nextFunction2;
                liveInAtStatement();
            } else if (i2 == 2) {
                this.nextFunction = nextFunction2;
                liveOutAtStatement();
            } else if (i2 == 3) {
                this.nextFunction = nextFunction2;
                liveOutAtBlock();
            }
        }
    }

    private void liveInAtStatement() {
        int i2 = this.statementIndex;
        if (i2 == 0) {
            this.blockN.addLiveIn(this.regV);
            this.liveOutBlocks.or(this.blockN.getPredecessors());
            return;
        }
        this.statementIndex = i2 - 1;
        this.nextFunction = NextFunction.LIVE_OUT_AT_STATEMENT;
    }

    private void liveOutAtBlock() {
        if (this.visitedBlocks.get(this.blockN.getIndex())) {
            return;
        }
        this.visitedBlocks.set(this.blockN.getIndex());
        this.blockN.addLiveOut(this.regV);
        this.statementIndex = this.blockN.getInsns().size() - 1;
        this.nextFunction = NextFunction.LIVE_OUT_AT_STATEMENT;
    }

    private void liveOutAtStatement() {
        SsaInsn ssaInsn = this.blockN.getInsns().get(this.statementIndex);
        RegisterSpec result = ssaInsn.getResult();
        if (ssaInsn.isResultReg(this.regV)) {
            return;
        }
        if (result != null) {
            this.interference.add(this.regV, result.getReg());
        }
        this.nextFunction = NextFunction.LIVE_IN_AT_STATEMENT;
    }

    public void run() {
        for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(this.regV)) {
            this.nextFunction = NextFunction.DONE;
            if (ssaInsn instanceof PhiInsn) {
                for (SsaBasicBlock ssaBasicBlock : ((PhiInsn) ssaInsn).predBlocksForReg(this.regV, this.ssaMeth)) {
                    this.blockN = ssaBasicBlock;
                    this.nextFunction = NextFunction.LIVE_OUT_AT_BLOCK;
                    handleTailRecursion();
                }
            } else {
                SsaBasicBlock block = ssaInsn.getBlock();
                this.blockN = block;
                int indexOf = block.getInsns().indexOf(ssaInsn);
                this.statementIndex = indexOf;
                if (indexOf >= 0) {
                    this.nextFunction = NextFunction.LIVE_IN_AT_STATEMENT;
                    handleTailRecursion();
                } else {
                    throw new RuntimeException("insn not found in it's own block");
                }
            }
        }
        while (true) {
            int nextSetBit = this.liveOutBlocks.nextSetBit(0);
            if (nextSetBit < 0) {
                return;
            }
            this.blockN = this.ssaMeth.getBlocks().get(nextSetBit);
            this.liveOutBlocks.clear(nextSetBit);
            this.nextFunction = NextFunction.LIVE_OUT_AT_BLOCK;
            handleTailRecursion();
        }
    }
}
