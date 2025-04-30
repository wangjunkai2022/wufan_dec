package com.android.dx.ssa;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.ssa.SsaInsn;
/* loaded from: classes2.dex */
public final class NormalSsaInsn extends SsaInsn implements Cloneable {
    private Insn insn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NormalSsaInsn(Insn insn, SsaBasicBlock ssaBasicBlock) {
        super(insn.getResult(), ssaBasicBlock);
        this.insn = insn;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public void accept(SsaInsn.Visitor visitor) {
        if (isNormalMoveInsn()) {
            visitor.visitMoveInsn(this);
        } else {
            visitor.visitNonMoveInsn(this);
        }
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean canThrow() {
        return this.insn.canThrow();
    }

    public final void changeOneSource(int i2, RegisterSpec registerSpec) {
        RegisterSpecList sources = this.insn.getSources();
        int size = sources.size();
        RegisterSpecList registerSpecList = new RegisterSpecList(size);
        int i4 = 0;
        while (i4 < size) {
            registerSpecList.set(i4, i4 == i2 ? registerSpec : sources.get(i4));
            i4++;
        }
        registerSpecList.setImmutable();
        RegisterSpec registerSpec2 = sources.get(i2);
        if (registerSpec2.getReg() != registerSpec.getReg()) {
            getBlock().getParent().onSourceChanged(this, registerSpec2, registerSpec);
        }
        this.insn = this.insn.withNewRegisters(getResult(), registerSpecList);
    }

    @Override // com.android.dx.ssa.SsaInsn
    public RegisterSpec getLocalAssignment() {
        RegisterSpec result;
        if (this.insn.getOpcode().getOpcode() == 54) {
            result = this.insn.getSources().get(0);
        } else {
            result = getResult();
        }
        if (result == null || result.getLocalItem() == null) {
            return null;
        }
        return result;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Rop getOpcode() {
        return this.insn.getOpcode();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Insn getOriginalRopInsn() {
        return this.insn;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public RegisterSpecList getSources() {
        return this.insn.getSources();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean hasSideEffect() {
        Rop opcode = getOpcode();
        if (opcode.getBranchingness() != 1) {
            return true;
        }
        boolean z3 = Optimizer.getPreserveLocals() && getLocalAssignment() != null;
        int opcode2 = opcode.getOpcode();
        if (opcode2 == 2 || opcode2 == 5 || opcode2 == 55) {
            return z3;
        }
        return true;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isMoveException() {
        return this.insn.getOpcode().getOpcode() == 4;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isNormalMoveInsn() {
        return this.insn.getOpcode().getOpcode() == 2;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isPhiOrMove() {
        return isNormalMoveInsn();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        RegisterSpecList sources = this.insn.getSources();
        RegisterSpecList map = registerMapper.map(sources);
        if (map != sources) {
            this.insn = this.insn.withNewRegisters(getResult(), map);
            getBlock().getParent().onSourcesChanged(this, sources);
        }
    }

    public final void setNewSources(RegisterSpecList registerSpecList) {
        if (this.insn.getSources().size() == registerSpecList.size()) {
            this.insn = this.insn.withNewRegisters(getResult(), registerSpecList);
            return;
        }
        throw new RuntimeException("Sources counts don't match");
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toRopInsn().toHuman();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Insn toRopInsn() {
        return this.insn.withNewRegisters(getResult(), this.insn.getSources());
    }

    public void upgradeToLiteral() {
        RegisterSpecList sources = this.insn.getSources();
        this.insn = this.insn.withSourceLiteral();
        getBlock().getParent().onSourcesChanged(this, sources);
    }

    @Override // com.android.dx.ssa.SsaInsn
    /* renamed from: clone */
    public NormalSsaInsn mo9clone() {
        return (NormalSsaInsn) super.mo9clone();
    }
}
