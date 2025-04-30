package com.android.dx.ssa;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class PhiInsn extends SsaInsn {
    private final ArrayList<Operand> operands;
    private final int ropResultReg;
    private RegisterSpecList sources;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Operand {
        public final int blockIndex;
        public RegisterSpec regSpec;
        public final int ropLabel;

        public Operand(RegisterSpec registerSpec, int i2, int i4) {
            this.regSpec = registerSpec;
            this.blockIndex = i2;
            this.ropLabel = i4;
        }
    }

    /* loaded from: classes2.dex */
    public interface Visitor {
        void visitPhiInsn(PhiInsn phiInsn);
    }

    public PhiInsn(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        super(registerSpec, ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = registerSpec.getReg();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public void accept(SsaInsn.Visitor visitor) {
        visitor.visitPhiInsn(this);
    }

    public void addPhiOperand(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        this.operands.add(new Operand(registerSpec, ssaBasicBlock.getIndex(), ssaBasicBlock.getRopLabel()));
        this.sources = null;
    }

    public boolean areAllOperandsEqual() {
        if (this.operands.size() == 0) {
            return true;
        }
        int reg = this.operands.get(0).regSpec.getReg();
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            if (reg != it2.next().regSpec.getReg()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean canThrow() {
        return false;
    }

    public void changeResultType(TypeBearer typeBearer, LocalItem localItem) {
        setResult(RegisterSpec.makeLocalOptional(getResult().getReg(), typeBearer, localItem));
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Rop getOpcode() {
        return null;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Insn getOriginalRopInsn() {
        return null;
    }

    public int getRopResultReg() {
        return this.ropResultReg;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public RegisterSpecList getSources() {
        RegisterSpecList registerSpecList = this.sources;
        if (registerSpecList != null) {
            return registerSpecList;
        }
        if (this.operands.size() == 0) {
            return RegisterSpecList.EMPTY;
        }
        int size = this.operands.size();
        this.sources = new RegisterSpecList(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.sources.set(i2, this.operands.get(i2).regSpec);
        }
        this.sources.setImmutable();
        return this.sources;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean hasSideEffect() {
        return Optimizer.getPreserveLocals() && getLocalAssignment() != null;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isPhiOrMove() {
        return true;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isRegASource(int i2) {
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            if (it2.next().regSpec.getReg() == i2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            Operand next = it2.next();
            RegisterSpec registerSpec = next.regSpec;
            RegisterSpec map = registerMapper.map(registerSpec);
            next.regSpec = map;
            if (registerSpec != map) {
                getBlock().getParent().onSourceChanged(this, registerSpec, next.regSpec);
            }
        }
        this.sources = null;
    }

    public int predBlockIndexForSourcesIndex(int i2) {
        return this.operands.get(i2).blockIndex;
    }

    public List<SsaBasicBlock> predBlocksForReg(int i2, SsaMethod ssaMethod) {
        ArrayList arrayList = new ArrayList();
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            Operand next = it2.next();
            if (next.regSpec.getReg() == i2) {
                arrayList.add(ssaMethod.getBlocks().get(next.blockIndex));
            }
        }
        return arrayList;
    }

    public void removePhiRegister(RegisterSpec registerSpec) {
        ArrayList arrayList = new ArrayList();
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            Operand next = it2.next();
            if (next.regSpec.getReg() == registerSpec.getReg()) {
                arrayList.add(next);
            }
        }
        this.operands.removeAll(arrayList);
        this.sources = null;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toHumanWithInline(null);
    }

    protected final String toHumanWithInline(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append(SourcePosition.NO_INFO);
        sb.append(": phi");
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        RegisterSpec result = getResult();
        if (result == null) {
            sb.append(" .");
        } else {
            sb.append(" ");
            sb.append(result.toHuman());
        }
        sb.append(" <-");
        int size = getSources().size();
        if (size == 0) {
            sb.append(" .");
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                sb.append(" ");
                sb.append(this.sources.get(i2).toHuman() + "[b=" + Hex.u2(this.operands.get(i2).ropLabel) + "]");
            }
        }
        return sb.toString();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Insn toRopInsn() {
        throw new IllegalArgumentException("Cannot convert phi insns to rop form");
    }

    public void updateSourcesToDefinitions(SsaMethod ssaMethod) {
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            Operand next = it2.next();
            next.regSpec = next.regSpec.withType(ssaMethod.getDefinitionForRegister(next.regSpec.getReg()).getResult().getType());
        }
        this.sources = null;
    }

    @Override // com.android.dx.ssa.SsaInsn
    /* renamed from: clone */
    public PhiInsn mo9clone() {
        throw new UnsupportedOperationException("can't clone phi");
    }

    public PhiInsn(int i2, SsaBasicBlock ssaBasicBlock) {
        super(RegisterSpec.make(i2, Type.VOID), ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = i2;
    }
}
