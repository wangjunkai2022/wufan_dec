package com.android.dx.ssa;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.util.ToHuman;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class SsaInsn implements ToHuman, Cloneable {
    private final SsaBasicBlock block;
    private RegisterSpec result;

    /* loaded from: classes2.dex */
    public interface Visitor {
        void visitMoveInsn(NormalSsaInsn normalSsaInsn);

        void visitNonMoveInsn(NormalSsaInsn normalSsaInsn);

        void visitPhiInsn(PhiInsn phiInsn);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SsaInsn(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        Objects.requireNonNull(ssaBasicBlock, "block == null");
        this.block = ssaBasicBlock;
        this.result = registerSpec;
    }

    public static SsaInsn makeFromRop(Insn insn, SsaBasicBlock ssaBasicBlock) {
        return new NormalSsaInsn(insn, ssaBasicBlock);
    }

    public abstract void accept(Visitor visitor);

    public abstract boolean canThrow();

    public void changeResultReg(int i2) {
        RegisterSpec registerSpec = this.result;
        if (registerSpec != null) {
            this.result = registerSpec.withReg(i2);
        }
    }

    public SsaBasicBlock getBlock() {
        return this.block;
    }

    public RegisterSpec getLocalAssignment() {
        RegisterSpec registerSpec = this.result;
        if (registerSpec == null || registerSpec.getLocalItem() == null) {
            return null;
        }
        return this.result;
    }

    public abstract Rop getOpcode();

    public abstract Insn getOriginalRopInsn();

    public RegisterSpec getResult() {
        return this.result;
    }

    public abstract RegisterSpecList getSources();

    public abstract boolean hasSideEffect();

    public boolean isMoveException() {
        return false;
    }

    public boolean isNormalMoveInsn() {
        return false;
    }

    public abstract boolean isPhiOrMove();

    public boolean isRegASource(int i2) {
        return getSources().specForRegister(i2) != null;
    }

    public boolean isResultReg(int i2) {
        RegisterSpec registerSpec = this.result;
        return registerSpec != null && registerSpec.getReg() == i2;
    }

    public final void mapRegisters(RegisterMapper registerMapper) {
        RegisterSpec registerSpec = this.result;
        this.result = registerMapper.map(registerSpec);
        this.block.getParent().updateOneDefinition(this, registerSpec);
        mapSourceRegisters(registerMapper);
    }

    public abstract void mapSourceRegisters(RegisterMapper registerMapper);

    /* JADX INFO: Access modifiers changed from: protected */
    public void setResult(RegisterSpec registerSpec) {
        Objects.requireNonNull(registerSpec, "result == null");
        this.result = registerSpec;
    }

    public final void setResultLocal(LocalItem localItem) {
        if (localItem != this.result.getLocalItem()) {
            if (localItem == null || !localItem.equals(this.result.getLocalItem())) {
                this.result = RegisterSpec.makeLocalOptional(this.result.getReg(), this.result.getType(), localItem);
            }
        }
    }

    public abstract Insn toRopInsn();

    @Override // 
    /* renamed from: clone */
    public SsaInsn mo9clone() {
        try {
            return (SsaInsn) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException("unexpected", e4);
        }
    }
}
