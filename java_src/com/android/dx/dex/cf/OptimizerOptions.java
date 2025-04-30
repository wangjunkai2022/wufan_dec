package com.android.dx.dex.cf;

import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.ssa.Optimizer;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.util.EnumSet;
import java.util.HashSet;
/* loaded from: classes2.dex */
public class OptimizerOptions {
    private HashSet<String> dontOptimizeList;
    private HashSet<String> optimizeList;
    private boolean optimizeListsLoaded;

    private static HashSet<String> loadStringsFromFile(String str) {
        HashSet<String> hashSet = new HashSet<>();
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    hashSet.add(readLine);
                } else {
                    fileReader.close();
                    return hashSet;
                }
            }
        } catch (IOException e4) {
            throw new RuntimeException("Error with optimize list: " + str, e4);
        }
    }

    public void compareOptimizerStep(RopMethod ropMethod, int i2, boolean z3, CfOptions cfOptions, TranslationAdvice translationAdvice, RopMethod ropMethod2) {
        EnumSet allOf = EnumSet.allOf(Optimizer.OptionalStep.class);
        allOf.remove(Optimizer.OptionalStep.CONST_COLLECTOR);
        RopMethod optimize = Optimizer.optimize(ropMethod, i2, z3, cfOptions.localInfo, translationAdvice, allOf);
        int effectiveInstructionCount = ropMethod2.getBlocks().getEffectiveInstructionCount();
        int effectiveInstructionCount2 = optimize.getBlocks().getEffectiveInstructionCount();
        PrintStream printStream = System.err;
        double regCount = (optimize.getBlocks().getRegCount() - ropMethod2.getBlocks().getRegCount()) / optimize.getBlocks().getRegCount();
        Double.isNaN(regCount);
        double d4 = (effectiveInstructionCount2 - effectiveInstructionCount) / effectiveInstructionCount2;
        Double.isNaN(d4);
        printStream.printf("optimize step regs:(%d/%d/%.2f%%) insns:(%d/%d/%.2f%%)\n", Integer.valueOf(ropMethod2.getBlocks().getRegCount()), Integer.valueOf(optimize.getBlocks().getRegCount()), Double.valueOf(regCount * 100.0d), Integer.valueOf(effectiveInstructionCount), Integer.valueOf(effectiveInstructionCount2), Double.valueOf(d4 * 100.0d));
    }

    public void loadOptimizeLists(String str, String str2) {
        if (this.optimizeListsLoaded) {
            return;
        }
        if (str != null && str2 != null) {
            throw new RuntimeException("optimize and don't optimize lists  are mutually exclusive.");
        }
        if (str != null) {
            this.optimizeList = loadStringsFromFile(str);
        }
        if (str2 != null) {
            this.dontOptimizeList = loadStringsFromFile(str2);
        }
        this.optimizeListsLoaded = true;
    }

    public boolean shouldOptimize(String str) {
        HashSet<String> hashSet = this.optimizeList;
        if (hashSet != null) {
            return hashSet.contains(str);
        }
        HashSet<String> hashSet2 = this.dontOptimizeList;
        if (hashSet2 != null) {
            return !hashSet2.contains(str);
        }
        return true;
    }
}
