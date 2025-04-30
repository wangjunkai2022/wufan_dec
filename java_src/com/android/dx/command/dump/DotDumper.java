package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.ssa.Optimizer;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.io.PrintStream;
/* loaded from: classes2.dex */
public class DotDumper implements ParseObserver {
    private final Args args;
    private final byte[] bytes;
    private DirectClassFile classFile;
    private final DexOptions dexOptions = new DexOptions();
    private final String filePath;
    private final boolean optimize;
    private final boolean strictParse;

    DotDumper(byte[] bArr, String str, Args args) {
        this.bytes = bArr;
        this.filePath = str;
        this.strictParse = args.strictParse;
        this.optimize = args.optimize;
        this.args = args;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void dump(byte[] bArr, String str, Args args) {
        new DotDumper(bArr, str, args).run();
    }

    private void run() {
        ByteArray byteArray = new ByteArray(this.bytes);
        DirectClassFile directClassFile = new DirectClassFile(byteArray, this.filePath, this.strictParse);
        this.classFile = directClassFile;
        StdAttributeFactory stdAttributeFactory = StdAttributeFactory.THE_ONE;
        directClassFile.setAttributeFactory(stdAttributeFactory);
        this.classFile.getMagic();
        DirectClassFile directClassFile2 = new DirectClassFile(byteArray, this.filePath, this.strictParse);
        directClassFile2.setAttributeFactory(stdAttributeFactory);
        directClassFile2.setObserver(this);
        directClassFile2.getMagic();
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void changeIndent(int i2) {
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i2, String str, String str2, Member member) {
        if ((member instanceof Method) && shouldDumpMethod(str)) {
            ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, this.classFile, true, true);
            DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
            RopMethod convert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
            if (this.optimize) {
                boolean isStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
                convert = Optimizer.optimize(convert, BaseDumper.computeParamWidth(concreteMethod, isStatic), isStatic, true, dexTranslationAdvice);
            }
            PrintStream printStream = System.out;
            printStream.println("digraph " + str + "{");
            PrintStream printStream2 = System.out;
            printStream2.println("\tfirst -> n" + Hex.u2(convert.getFirstLabel()) + ";");
            BasicBlockList blocks = convert.getBlocks();
            int size = blocks.size();
            int i4 = 0;
            int i5 = 0;
            while (i5 < size) {
                BasicBlock basicBlock = blocks.get(i5);
                int label = basicBlock.getLabel();
                IntList successors = basicBlock.getSuccessors();
                if (successors.size() == 0) {
                    PrintStream printStream3 = System.out;
                    printStream3.println("\tn" + Hex.u2(label) + " -> returns;");
                } else if (successors.size() == 1) {
                    PrintStream printStream4 = System.out;
                    printStream4.println("\tn" + Hex.u2(label) + " -> n" + Hex.u2(successors.get(i4)) + ";");
                } else {
                    PrintStream printStream5 = System.out;
                    printStream5.print("\tn" + Hex.u2(label) + " -> {");
                    for (int i6 = 0; i6 < successors.size(); i6++) {
                        int i7 = successors.get(i6);
                        if (i7 != basicBlock.getPrimarySuccessor()) {
                            PrintStream printStream6 = System.out;
                            printStream6.print(" n" + Hex.u2(i7) + " ");
                        }
                    }
                    System.out.println("};");
                    PrintStream printStream7 = System.out;
                    printStream7.println("\tn" + Hex.u2(label) + " -> n" + Hex.u2(basicBlock.getPrimarySuccessor()) + " [label=\"primary\"];");
                }
                i5++;
                i4 = 0;
            }
            System.out.println("}");
        }
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void parsed(ByteArray byteArray, int i2, int i4, String str) {
    }

    protected boolean shouldDumpMethod(String str) {
        String str2 = this.args.method;
        return str2 == null || str2.equals(str);
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void startParsingMember(ByteArray byteArray, int i2, String str, String str2) {
    }
}
