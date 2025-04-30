package com.android.dx.cf.code;

import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class BaseMachine implements Machine {
    private int argCount;
    private TypeBearer[] args;
    private SwitchList auxCases;
    private Constant auxCst;
    private ArrayList<Constant> auxInitValues;
    private int auxInt;
    private int auxTarget;
    private Type auxType;
    private int localIndex;
    private boolean localInfo;
    private RegisterSpec localTarget;
    private final Prototype prototype;
    private int resultCount;
    private TypeBearer[] results;

    public BaseMachine(Prototype prototype) {
        Objects.requireNonNull(prototype, "prototype == null");
        this.prototype = prototype;
        this.args = new TypeBearer[10];
        this.results = new TypeBearer[6];
        clearArgs();
    }

    public static void throwLocalMismatch(TypeBearer typeBearer, TypeBearer typeBearer2) {
        throw new SimException("local variable type mismatch: attempt to set or access a value of type " + typeBearer.toHuman() + " using a local variable of type " + typeBearer2.toHuman() + ". This is symptomatic of .class transformation tools that ignore local variable information.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addResult(TypeBearer typeBearer) {
        Objects.requireNonNull(typeBearer, "result == null");
        TypeBearer[] typeBearerArr = this.results;
        int i2 = this.resultCount;
        typeBearerArr[i2] = typeBearer;
        this.resultCount = i2 + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final TypeBearer arg(int i2) {
        if (i2 < this.argCount) {
            try {
                return this.args[i2];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("n < 0");
            }
        }
        throw new IllegalArgumentException("n >= argCount");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int argCount() {
        return this.argCount;
    }

    protected final int argWidth() {
        int i2 = 0;
        for (int i4 = 0; i4 < this.argCount; i4++) {
            i2 += this.args[i4].getType().getCategory();
        }
        return i2;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxCstArg(Constant constant) {
        Objects.requireNonNull(constant, "cst == null");
        this.auxCst = constant;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxInitValues(ArrayList<Constant> arrayList) {
        this.auxInitValues = arrayList;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxIntArg(int i2) {
        this.auxInt = i2;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxSwitchArg(SwitchList switchList) {
        Objects.requireNonNull(switchList, "cases == null");
        this.auxCases = switchList;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxTargetArg(int i2) {
        this.auxTarget = i2;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxType(Type type) {
        this.auxType = type;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void clearArgs() {
        this.argCount = 0;
        this.auxType = null;
        this.auxInt = 0;
        this.auxCst = null;
        this.auxTarget = 0;
        this.auxCases = null;
        this.auxInitValues = null;
        this.localIndex = -1;
        this.localInfo = false;
        this.localTarget = null;
        this.resultCount = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void clearResult() {
        this.resultCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SwitchList getAuxCases() {
        return this.auxCases;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Constant getAuxCst() {
        return this.auxCst;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getAuxInt() {
        return this.auxInt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getAuxTarget() {
        return this.auxTarget;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Type getAuxType() {
        return this.auxType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ArrayList<Constant> getInitValues() {
        return this.auxInitValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getLocalIndex() {
        return this.localIndex;
    }

    protected final boolean getLocalInfo() {
        return this.localInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RegisterSpec getLocalTarget(boolean z3) {
        if (this.localTarget == null) {
            return null;
        }
        if (this.resultCount != 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("local target with ");
            sb.append(this.resultCount == 0 ? "no" : "multiple");
            sb.append(" results");
            throw new SimException(sb.toString());
        }
        TypeBearer typeBearer = this.results[0];
        Type type = typeBearer.getType();
        Type type2 = this.localTarget.getType();
        if (type == type2) {
            if (z3) {
                return this.localTarget.withType(typeBearer);
            }
            return this.localTarget;
        } else if (!Merger.isPossiblyAssignableFrom(type2, type)) {
            throwLocalMismatch(type, type2);
            return null;
        } else {
            if (type2 == Type.OBJECT) {
                this.localTarget = this.localTarget.withType(typeBearer);
            }
            return this.localTarget;
        }
    }

    @Override // com.android.dx.cf.code.Machine
    public Prototype getPrototype() {
        return this.prototype;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void localArg(Frame frame, int i2) {
        clearArgs();
        this.args[0] = frame.getLocals().get(i2);
        this.argCount = 1;
        this.localIndex = i2;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void localInfo(boolean z3) {
        this.localInfo = z3;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void localTarget(int i2, Type type, LocalItem localItem) {
        this.localTarget = RegisterSpec.makeLocalOptional(i2, type, localItem);
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, int i2) {
        ExecutionStack stack = frame.getStack();
        clearArgs();
        if (i2 > this.args.length) {
            this.args = new TypeBearer[i2 + 10];
        }
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            this.args[i4] = stack.pop();
        }
        this.argCount = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final TypeBearer result(int i2) {
        if (i2 < this.resultCount) {
            try {
                return this.results[i2];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("n < 0");
            }
        }
        throw new IllegalArgumentException("n >= resultCount");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int resultCount() {
        int i2 = this.resultCount;
        if (i2 >= 0) {
            return i2;
        }
        throw new SimException("results never set");
    }

    protected final int resultWidth() {
        int i2 = 0;
        for (int i4 = 0; i4 < this.resultCount; i4++) {
            i2 += this.results[i4].getType().getCategory();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setResult(TypeBearer typeBearer) {
        Objects.requireNonNull(typeBearer, "result == null");
        this.results[0] = typeBearer;
        this.resultCount = 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void storeResults(Frame frame) {
        int i2 = this.resultCount;
        if (i2 < 0) {
            throw new SimException("results never set");
        }
        if (i2 == 0) {
            return;
        }
        if (this.localTarget != null) {
            frame.getLocals().set(getLocalTarget(false));
            return;
        }
        ExecutionStack stack = frame.getStack();
        for (int i4 = 0; i4 < this.resultCount; i4++) {
            if (this.localInfo) {
                stack.setLocal();
            }
            stack.push(this.results[i4]);
        }
    }

    @Override // com.android.dx.cf.code.Machine
    public void popArgs(Frame frame, Prototype prototype) {
        StdTypeList parameterTypes = prototype.getParameterTypes();
        int size = parameterTypes.size();
        popArgs(frame, size);
        for (int i2 = 0; i2 < size; i2++) {
            if (!Merger.isPossiblyAssignableFrom(parameterTypes.getType(i2), this.args[i2])) {
                throw new SimException("at stack depth " + ((size - 1) - i2) + ", expected type " + parameterTypes.getType(i2).toHuman() + " but found " + this.args[i2].getType().toHuman());
            }
        }
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, Type type) {
        popArgs(frame, 1);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            return;
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, Type type, Type type2) {
        popArgs(frame, 2);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            if (Merger.isPossiblyAssignableFrom(type2, this.args[1])) {
                return;
            }
            throw new SimException("expected type " + type2.toHuman() + " but found " + this.args[1].getType().toHuman());
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, Type type, Type type2, Type type3) {
        popArgs(frame, 3);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            if (Merger.isPossiblyAssignableFrom(type2, this.args[1])) {
                if (Merger.isPossiblyAssignableFrom(type3, this.args[2])) {
                    return;
                }
                throw new SimException("expected type " + type3.toHuman() + " but found " + this.args[2].getType().toHuman());
            }
            throw new SimException("expected type " + type2.toHuman() + " but found " + this.args[1].getType().toHuman());
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }
}
