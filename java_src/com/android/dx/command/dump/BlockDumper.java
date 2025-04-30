package com.android.dx.command.dump;

import com.android.dx.cf.code.BasicBlocker;
import com.android.dx.cf.code.ByteBlock;
import com.android.dx.cf.code.ByteBlockList;
import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.CodeObserver;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.Method;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.CstType;
import com.android.dx.ssa.Optimizer;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.uc.crashsdk.export.LogType;
import java.io.PrintStream;
/* loaded from: classes2.dex */
public class BlockDumper extends BaseDumper {
    protected DirectClassFile classFile;
    private boolean first;
    private final boolean optimize;
    private final boolean rop;
    protected boolean suppressDump;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockDumper(byte[] bArr, PrintStream printStream, String str, boolean z3, Args args) {
        super(bArr, printStream, str, args);
        this.rop = z3;
        this.classFile = null;
        this.suppressDump = true;
        this.first = true;
        this.optimize = args.optimize;
    }

    public static void dump(byte[] bArr, PrintStream printStream, String str, boolean z3, Args args) {
        new BlockDumper(bArr, printStream, str, z3, args).dump();
    }

    private void regularDump(ConcreteMethod concreteMethod) {
        BytecodeArray code = concreteMethod.getCode();
        ByteArray bytes = code.getBytes();
        ByteBlockList identifyBlocks = BasicBlocker.identifyBlocks(concreteMethod);
        int size = identifyBlocks.size();
        CodeObserver codeObserver = new CodeObserver(bytes, this);
        this.suppressDump = false;
        int i2 = 0;
        int i4 = 0;
        while (i2 < size) {
            ByteBlock byteBlock = identifyBlocks.get(i2);
            int start = byteBlock.getStart();
            int end = byteBlock.getEnd();
            if (i4 < start) {
                parsed(bytes, i4, start - i4, "dead code " + Hex.u2(i4) + ".." + Hex.u2(start));
            }
            parsed(bytes, start, 0, "block " + Hex.u2(byteBlock.getLabel()) + ": " + Hex.u2(start) + ".." + Hex.u2(end));
            changeIndent(1);
            while (start < end) {
                int parseInstruction = code.parseInstruction(start, codeObserver);
                codeObserver.setPreviousOffset(start);
                start += parseInstruction;
            }
            IntList successors = byteBlock.getSuccessors();
            int size2 = successors.size();
            if (size2 == 0) {
                parsed(bytes, end, 0, "returns");
            } else {
                for (int i5 = 0; i5 < size2; i5++) {
                    int i6 = successors.get(i5);
                    parsed(bytes, end, 0, "next " + Hex.u2(i6));
                }
            }
            ByteCatchList catches = byteBlock.getCatches();
            int size3 = catches.size();
            for (int i7 = 0; i7 < size3; i7++) {
                ByteCatchList.Item item = catches.get(i7);
                CstType exceptionClass = item.getExceptionClass();
                StringBuilder sb = new StringBuilder();
                sb.append("catch ");
                sb.append(exceptionClass == CstType.OBJECT ? "<any>" : exceptionClass.toHuman());
                sb.append(" -> ");
                sb.append(Hex.u2(item.getHandlerPc()));
                parsed(bytes, end, 0, sb.toString());
            }
            changeIndent(-1);
            i2++;
            i4 = end;
        }
        int size4 = bytes.size();
        if (i4 < size4) {
            parsed(bytes, i4, size4 - i4, "dead code " + Hex.u2(i4) + ".." + Hex.u2(size4));
        }
        this.suppressDump = true;
    }

    private void ropDump(ConcreteMethod concreteMethod) {
        DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
        ByteArray bytes = concreteMethod.getCode().getBytes();
        RopMethod convert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
        StringBuilder sb = new StringBuilder(2000);
        if (this.optimize) {
            boolean isStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
            convert = Optimizer.optimize(convert, BaseDumper.computeParamWidth(concreteMethod, isStatic), isStatic, true, dexTranslationAdvice);
        }
        BasicBlockList blocks = convert.getBlocks();
        int[] labelsInOrder = blocks.getLabelsInOrder();
        sb.append("first " + Hex.u2(convert.getFirstLabel()) + "\n");
        for (int i2 : labelsInOrder) {
            BasicBlock basicBlock = blocks.get(blocks.indexOfLabel(i2));
            sb.append("block ");
            sb.append(Hex.u2(i2));
            sb.append("\n");
            IntList labelToPredecessors = convert.labelToPredecessors(i2);
            int size = labelToPredecessors.size();
            for (int i4 = 0; i4 < size; i4++) {
                sb.append("  pred ");
                sb.append(Hex.u2(labelToPredecessors.get(i4)));
                sb.append("\n");
            }
            InsnList insns = basicBlock.getInsns();
            int size2 = insns.size();
            for (int i5 = 0; i5 < size2; i5++) {
                insns.get(i5);
                sb.append("  ");
                sb.append(insns.get(i5).toHuman());
                sb.append("\n");
            }
            IntList successors = basicBlock.getSuccessors();
            int size3 = successors.size();
            if (size3 == 0) {
                sb.append("  returns\n");
            } else {
                int primarySuccessor = basicBlock.getPrimarySuccessor();
                for (int i6 = 0; i6 < size3; i6++) {
                    int i7 = successors.get(i6);
                    sb.append("  next ");
                    sb.append(Hex.u2(i7));
                    if (size3 != 1 && i7 == primarySuccessor) {
                        sb.append(" *");
                    }
                    sb.append("\n");
                }
            }
        }
        this.suppressDump = false;
        parsed(bytes, 0, bytes.size(), sb.toString());
        this.suppressDump = true;
    }

    @Override // com.android.dx.command.dump.BaseDumper, com.android.dx.cf.iface.ParseObserver
    public void changeIndent(int i2) {
        if (this.suppressDump) {
            return;
        }
        super.changeIndent(i2);
    }

    @Override // com.android.dx.command.dump.BaseDumper, com.android.dx.cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i2, String str, String str2, Member member) {
        if ((member instanceof Method) && shouldDumpMethod(str) && (member.getAccessFlags() & LogType.UNEXP_ANR) == 0) {
            ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, this.classFile, true, true);
            if (this.rop) {
                ropDump(concreteMethod);
            } else {
                regularDump(concreteMethod);
            }
        }
    }

    @Override // com.android.dx.command.dump.BaseDumper, com.android.dx.cf.iface.ParseObserver
    public void parsed(ByteArray byteArray, int i2, int i4, String str) {
        if (this.suppressDump) {
            return;
        }
        super.parsed(byteArray, i2, i4, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldDumpMethod(String str) {
        String str2 = this.args.method;
        return str2 == null || str2.equals(str);
    }

    @Override // com.android.dx.command.dump.BaseDumper, com.android.dx.cf.iface.ParseObserver
    public void startParsingMember(ByteArray byteArray, int i2, String str, String str2) {
        if (str2.indexOf(40) >= 0 && shouldDumpMethod(str)) {
            this.suppressDump = false;
            if (this.first) {
                this.first = false;
            } else {
                parsed(byteArray, i2, 0, "\n");
            }
            parsed(byteArray, i2, 0, "method " + str + " " + str2);
            this.suppressDump = true;
        }
    }

    public void dump() {
        ByteArray byteArray = new ByteArray(getBytes());
        DirectClassFile directClassFile = new DirectClassFile(byteArray, getFilePath(), getStrictParse());
        this.classFile = directClassFile;
        StdAttributeFactory stdAttributeFactory = StdAttributeFactory.THE_ONE;
        directClassFile.setAttributeFactory(stdAttributeFactory);
        this.classFile.getMagic();
        DirectClassFile directClassFile2 = new DirectClassFile(byteArray, getFilePath(), getStrictParse());
        directClassFile2.setAttributeFactory(stdAttributeFactory);
        directClassFile2.setObserver(this);
        directClassFile2.getMagic();
    }
}
