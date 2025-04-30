package com.android.dx;

import com.android.dx.DexMaker;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class Code {
    private final List<Label> catchLabels;
    private final List<TypeId<?>> catchTypes;
    private StdTypeList catches;
    private Label currentLabel;
    private final List<Label> labels = new ArrayList();
    private final List<Local<?>> locals;
    private boolean localsInitialized;
    private final MethodId<?, ?> method;
    private final List<Local<?>> parameters;
    private SourcePosition sourcePosition;
    private final Local<?> thisLocal;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Code(DexMaker.MethodDeclaration methodDeclaration) {
        ArrayList arrayList = new ArrayList();
        this.parameters = arrayList;
        this.locals = new ArrayList();
        this.sourcePosition = SourcePosition.NO_INFO;
        this.catchTypes = new ArrayList();
        this.catchLabels = new ArrayList();
        this.catches = StdTypeList.EMPTY;
        MethodId<?, ?> methodId = methodDeclaration.method;
        this.method = methodId;
        if (methodDeclaration.isStatic()) {
            this.thisLocal = null;
        } else {
            Local<?> local = Local.get(this, methodId.declaringType);
            this.thisLocal = local;
            arrayList.add(local);
        }
        TypeId<?>[] typeIdArr = methodId.parameters.types;
        for (TypeId<?> typeId : typeIdArr) {
            this.parameters.add(Local.get(this, typeId));
        }
        Label label = new Label();
        this.currentLabel = label;
        adopt(label);
        this.currentLabel.marked = true;
    }

    private void addInstruction(Insn insn) {
        addInstruction(insn, null);
    }

    private void adopt(Label target) {
        Code code = target.code;
        if (code == this) {
            return;
        }
        if (code == null) {
            target.code = this;
            this.labels.add(target);
            return;
        }
        throw new IllegalArgumentException("Cannot adopt label; it belongs to another Code");
    }

    private void cleanUpLabels() {
        Iterator<Label> it2 = this.labels.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            Label next = it2.next();
            if (next.isEmpty()) {
                it2.remove();
            } else {
                next.compact();
                next.id = i2;
                i2++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> Local<T> coerce(Local<?> local, TypeId<T> expectedType) {
        if (local.type.equals(expectedType)) {
            return local;
        }
        throw new IllegalArgumentException("requested " + expectedType + " but was " + local.type);
    }

    private static RegisterSpecList concatenate(Local<?> first, Local<?>[] rest) {
        int i2 = first != null ? 1 : 0;
        RegisterSpecList registerSpecList = new RegisterSpecList(rest.length + i2);
        if (first != null) {
            registerSpecList.set(0, first.spec());
        }
        for (int i4 = 0; i4 < rest.length; i4++) {
            registerSpecList.set(i4 + i2, rest[i4].spec());
        }
        return registerSpecList;
    }

    private Rop getCastRop(Type sourceType, Type targetType) {
        if (sourceType.getBasicType() == 6) {
            int basicType = targetType.getBasicType();
            if (basicType == 2) {
                return Rops.TO_BYTE;
            }
            if (basicType == 3) {
                return Rops.TO_CHAR;
            }
            if (basicType == 8) {
                return Rops.TO_SHORT;
            }
        }
        return Rops.opConv(targetType, sourceType);
    }

    private <D, R> void invoke(Rop rop, MethodId<D, R> method, Local<? super R> target, Local<? extends D> object, Local<?>... args) {
        addInstruction(new ThrowingCstInsn(rop, this.sourcePosition, concatenate(object, args), this.catches, method.constant));
        if (target != null) {
            moveResult(target, false);
        }
    }

    private void moveResult(Local<?> target, boolean afterNonInvokeThrowingInsn) {
        Rop opMoveResult;
        if (afterNonInvokeThrowingInsn) {
            opMoveResult = Rops.opMoveResultPseudo(target.type.ropType);
        } else {
            opMoveResult = Rops.opMoveResult(target.type.ropType);
        }
        addInstruction(new PlainInsn(opMoveResult, this.sourcePosition, target.spec(), RegisterSpecList.EMPTY));
    }

    private void splitCurrentLabel(Label alternateSuccessor, List<Label> catchLabels) {
        Label label = new Label();
        adopt(label);
        Label label2 = this.currentLabel;
        label2.primarySuccessor = label;
        label2.alternateSuccessor = alternateSuccessor;
        label2.catchLabels = catchLabels;
        this.currentLabel = label;
        label.marked = true;
    }

    private StdTypeList toTypeList(List<TypeId<?>> types) {
        StdTypeList stdTypeList = new StdTypeList(types.size());
        for (int i2 = 0; i2 < types.size(); i2++) {
            stdTypeList.set(i2, types.get(i2).ropType);
        }
        return stdTypeList;
    }

    public void addCatchClause(TypeId<? extends Throwable> toCatch, Label catchClause) {
        if (!this.catchTypes.contains(toCatch)) {
            adopt(catchClause);
            this.catchTypes.add(toCatch);
            this.catches = toTypeList(this.catchTypes);
            this.catchLabels.add(catchClause);
            return;
        }
        throw new IllegalArgumentException("Already caught: " + toCatch);
    }

    public void aget(Local<?> target, Local<?> array, Local<Integer> index) {
        addInstruction(new ThrowingInsn(Rops.opAget(target.type.ropType), this.sourcePosition, RegisterSpecList.make(array.spec(), index.spec()), this.catches));
        moveResult(target, true);
    }

    public void aput(Local<?> array, Local<Integer> index, Local<?> source) {
        addInstruction(new ThrowingInsn(Rops.opAput(source.type.ropType), this.sourcePosition, RegisterSpecList.make(source.spec(), array.spec(), index.spec()), this.catches));
    }

    public <T> void arrayLength(Local<Integer> target, Local<T> array) {
        addInstruction(new ThrowingInsn(Rops.ARRAY_LENGTH, this.sourcePosition, RegisterSpecList.make(array.spec()), this.catches));
        moveResult(target, true);
    }

    public void cast(Local<?> target, Local<?> source) {
        if (source.getType().ropType.isReference()) {
            addInstruction(new ThrowingCstInsn(Rops.CHECK_CAST, this.sourcePosition, RegisterSpecList.make(source.spec()), this.catches, target.type.constant));
            moveResult(target, true);
            return;
        }
        addInstruction(new PlainInsn(getCastRop(source.type.ropType, target.type.ropType), this.sourcePosition, target.spec(), source.spec()));
    }

    public <T> void compare(Comparison comparison, Label trueLabel, Local<T> a4, Local<T> b4) {
        adopt(trueLabel);
        addInstruction(new PlainInsn(comparison.rop(StdTypeList.make(a4.type.ropType, b4.type.ropType)), this.sourcePosition, (RegisterSpec) null, RegisterSpecList.make(a4.spec(), b4.spec())), trueLabel);
    }

    public <T extends Number> void compareFloatingPoint(Local<Integer> target, Local<T> a4, Local<T> b4, int nanValue) {
        Rop opCmpl;
        if (nanValue == 1) {
            opCmpl = Rops.opCmpg(a4.type.ropType);
        } else if (nanValue == -1) {
            opCmpl = Rops.opCmpl(a4.type.ropType);
        } else {
            throw new IllegalArgumentException("expected 1 or -1 but was " + nanValue);
        }
        addInstruction(new PlainInsn(opCmpl, this.sourcePosition, target.spec(), RegisterSpecList.make(a4.spec(), b4.spec())));
    }

    public void compareLongs(Local<Integer> target, Local<Long> a4, Local<Long> b4) {
        addInstruction(new PlainInsn(Rops.CMPL_LONG, this.sourcePosition, target.spec(), RegisterSpecList.make(a4.spec(), b4.spec())));
    }

    public <T> void compareZ(Comparison comparison, Label trueLabel, Local<?> a4) {
        adopt(trueLabel);
        addInstruction(new PlainInsn(comparison.rop(StdTypeList.make(a4.type.ropType)), this.sourcePosition, (RegisterSpec) null, RegisterSpecList.make(a4.spec())), trueLabel);
    }

    public <T> Local<T> getParameter(int index, TypeId<T> type) {
        if (this.thisLocal != null) {
            index++;
        }
        return coerce(this.parameters.get(index), type);
    }

    public <T> Local<T> getThis(TypeId<T> type) {
        Local<?> local = this.thisLocal;
        if (local != null) {
            return coerce(local, type);
        }
        throw new IllegalStateException("static methods cannot access 'this'");
    }

    public <D, V> void iget(FieldId<D, ? extends V> fieldId, Local<V> target, Local<D> instance) {
        addInstruction(new ThrowingCstInsn(Rops.opGetField(target.type.ropType), this.sourcePosition, RegisterSpecList.make(instance.spec()), this.catches, fieldId.constant));
        moveResult(target, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initializeLocals() {
        if (!this.localsInitialized) {
            this.localsInitialized = true;
            int i2 = 0;
            for (Local<?> local : this.locals) {
                i2 += local.initialize(i2);
            }
            ArrayList arrayList = new ArrayList();
            int i4 = i2;
            for (Local<?> local2 : this.parameters) {
                CstInteger make = CstInteger.make(i4 - i2);
                i4 += local2.initialize(i4);
                arrayList.add(new PlainCstInsn(Rops.opMoveParam(local2.type.ropType), this.sourcePosition, local2.spec(), RegisterSpecList.EMPTY, make));
            }
            this.labels.get(0).instructions.addAll(0, arrayList);
            return;
        }
        throw new AssertionError();
    }

    public void instanceOfType(Local<?> target, Local<?> source, TypeId<?> type) {
        addInstruction(new ThrowingCstInsn(Rops.INSTANCE_OF, this.sourcePosition, RegisterSpecList.make(source.spec()), this.catches, type.constant));
        moveResult(target, true);
    }

    public <D, R> void invokeDirect(MethodId<D, R> method, Local<? super R> target, Local<? extends D> instance, Local<?>... args) {
        invoke(Rops.opInvokeDirect(method.prototype(true)), method, target, instance, args);
    }

    public <D, R> void invokeInterface(MethodId<D, R> method, Local<? super R> target, Local<? extends D> instance, Local<?>... args) {
        invoke(Rops.opInvokeInterface(method.prototype(true)), method, target, instance, args);
    }

    public <R> void invokeStatic(MethodId<?, R> method, Local<? super R> target, Local<?>... args) {
        invoke(Rops.opInvokeStatic(method.prototype(true)), method, target, null, args);
    }

    public <D, R> void invokeSuper(MethodId<D, R> method, Local<? super R> target, Local<? extends D> instance, Local<?>... args) {
        invoke(Rops.opInvokeSuper(method.prototype(true)), method, target, instance, args);
    }

    public <D, R> void invokeVirtual(MethodId<D, R> method, Local<? super R> target, Local<? extends D> instance, Local<?>... args) {
        invoke(Rops.opInvokeVirtual(method.prototype(true)), method, target, instance, args);
    }

    public <D, V> void iput(FieldId<D, V> fieldId, Local<? extends D> instance, Local<? extends V> source) {
        addInstruction(new ThrowingCstInsn(Rops.opPutField(source.type.ropType), this.sourcePosition, RegisterSpecList.make(source.spec(), instance.spec()), this.catches, fieldId.constant));
    }

    public void jump(Label target) {
        adopt(target);
        addInstruction(new PlainInsn(Rops.GOTO, this.sourcePosition, (RegisterSpec) null, RegisterSpecList.EMPTY), target);
    }

    public <T> void loadConstant(Local<T> target, T value) {
        Rop opConst;
        if (value == null) {
            opConst = Rops.CONST_OBJECT_NOTHROW;
        } else {
            opConst = Rops.opConst(target.type.ropType);
        }
        Rop rop = opConst;
        if (rop.getBranchingness() == 1) {
            addInstruction(new PlainCstInsn(rop, this.sourcePosition, target.spec(), RegisterSpecList.EMPTY, Constants.getConstant(value)));
            return;
        }
        addInstruction(new ThrowingCstInsn(rop, this.sourcePosition, RegisterSpecList.EMPTY, this.catches, Constants.getConstant(value)));
        moveResult(target, true);
    }

    public void mark(Label label) {
        adopt(label);
        if (!label.marked) {
            label.marked = true;
            if (this.currentLabel != null) {
                jump(label);
            }
            this.currentLabel = label;
            return;
        }
        throw new IllegalStateException("already marked");
    }

    public void monitorEnter(Local<?> monitor) {
        addInstruction(new ThrowingInsn(Rops.MONITOR_ENTER, this.sourcePosition, RegisterSpecList.make(monitor.spec()), this.catches));
    }

    public void monitorExit(Local<?> monitor) {
        addInstruction(new ThrowingInsn(Rops.MONITOR_EXIT, this.sourcePosition, RegisterSpecList.make(monitor.spec()), this.catches));
    }

    public <T> void move(Local<T> target, Local<T> source) {
        addInstruction(new PlainInsn(Rops.opMove(source.type.ropType), this.sourcePosition, target.spec(), source.spec()));
    }

    public void moveException(Local<?> result) {
        addInstruction(new PlainInsn(Rops.opMoveException(Type.THROWABLE), SourcePosition.NO_INFO, result.spec(), RegisterSpecList.EMPTY));
    }

    public <T> void newArray(Local<T> target, Local<Integer> length) {
        addInstruction(new ThrowingCstInsn(Rops.opNewArray(target.type.ropType), this.sourcePosition, RegisterSpecList.make(length.spec()), this.catches, target.type.constant));
        moveResult(target, true);
    }

    public <T> void newInstance(Local<T> target, MethodId<T, Void> constructor, Local<?>... args) {
        if (target != null) {
            addInstruction(new ThrowingCstInsn(Rops.NEW_INSTANCE, this.sourcePosition, RegisterSpecList.EMPTY, this.catches, constructor.declaringType.constant));
            moveResult(target, true);
            invokeDirect(constructor, null, target, args);
            return;
        }
        throw new IllegalArgumentException();
    }

    public <T> Local<T> newLocal(TypeId<T> type) {
        if (!this.localsInitialized) {
            Local<T> local = Local.get(this, type);
            this.locals.add(local);
            return local;
        }
        throw new IllegalStateException("Cannot allocate locals after adding instructions");
    }

    public <T> void op(UnaryOp op, Local<T> target, Local<T> source) {
        addInstruction(new PlainInsn(op.rop(source.type), this.sourcePosition, target.spec(), source.spec()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int paramSize() {
        int i2 = 0;
        for (Local<?> local : this.parameters) {
            i2 += local.size();
        }
        return i2;
    }

    public Label removeCatchClause(TypeId<? extends Throwable> toCatch) {
        int indexOf = this.catchTypes.indexOf(toCatch);
        if (indexOf != -1) {
            this.catchTypes.remove(indexOf);
            this.catches = toTypeList(this.catchTypes);
            return this.catchLabels.remove(indexOf);
        }
        throw new IllegalArgumentException("No catch clause: " + toCatch);
    }

    public void returnValue(Local<?> result) {
        if (result.type.equals(this.method.returnType)) {
            addInstruction(new PlainInsn(Rops.opReturn(result.type.ropType), this.sourcePosition, (RegisterSpec) null, RegisterSpecList.make(result.spec())));
            return;
        }
        throw new IllegalArgumentException("declared " + this.method.returnType + " but returned " + result.type);
    }

    public void returnVoid() {
        if (this.method.returnType.equals(TypeId.VOID)) {
            addInstruction(new PlainInsn(Rops.RETURN_VOID, this.sourcePosition, (RegisterSpec) null, RegisterSpecList.EMPTY));
            return;
        }
        throw new IllegalArgumentException("declared " + this.method.returnType + " but returned void");
    }

    public <V> void sget(FieldId<?, ? extends V> fieldId, Local<V> target) {
        addInstruction(new ThrowingCstInsn(Rops.opGetStatic(target.type.ropType), this.sourcePosition, RegisterSpecList.EMPTY, this.catches, fieldId.constant));
        moveResult(target, true);
    }

    public <V> void sput(FieldId<?, V> fieldId, Local<? extends V> source) {
        addInstruction(new ThrowingCstInsn(Rops.opPutStatic(source.type.ropType), this.sourcePosition, RegisterSpecList.make(source.spec()), this.catches, fieldId.constant));
    }

    public void throwValue(Local<? extends Throwable> toThrow) {
        addInstruction(new ThrowingInsn(Rops.THROW, this.sourcePosition, RegisterSpecList.make(toThrow.spec()), this.catches));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasicBlockList toBasicBlocks() {
        if (!this.localsInitialized) {
            initializeLocals();
        }
        cleanUpLabels();
        BasicBlockList basicBlockList = new BasicBlockList(this.labels.size());
        for (int i2 = 0; i2 < this.labels.size(); i2++) {
            basicBlockList.set(i2, this.labels.get(i2).toBasicBlock());
        }
        return basicBlockList;
    }

    private void addInstruction(Insn insn, Label branch) {
        Label label = this.currentLabel;
        if (label != null && label.marked) {
            label.instructions.add(insn);
            int branchingness = insn.getOpcode().getBranchingness();
            if (branchingness == 1) {
                if (branch == null) {
                    return;
                }
                throw new IllegalArgumentException("unexpected branch: " + branch);
            } else if (branchingness == 2) {
                if (branch == null) {
                    this.currentLabel = null;
                    return;
                }
                throw new IllegalArgumentException("unexpected branch: " + branch);
            } else if (branchingness == 3) {
                if (branch != null) {
                    this.currentLabel.primarySuccessor = branch;
                    this.currentLabel = null;
                    return;
                }
                throw new IllegalArgumentException("branch == null");
            } else if (branchingness == 4) {
                if (branch != null) {
                    splitCurrentLabel(branch, Collections.emptyList());
                    return;
                }
                throw new IllegalArgumentException("branch == null");
            } else if (branchingness != 6) {
                throw new IllegalArgumentException();
            } else {
                if (branch == null) {
                    splitCurrentLabel(null, new ArrayList(this.catchLabels));
                    return;
                }
                throw new IllegalArgumentException("unexpected branch: " + branch);
            }
        }
        throw new IllegalStateException("no current label");
    }

    public <T1, T2> void op(BinaryOp op, Local<T1> target, Local<T1> a4, Local<T2> b4) {
        Rop rop = op.rop(StdTypeList.make(a4.type.ropType, b4.type.ropType));
        RegisterSpecList make = RegisterSpecList.make(a4.spec(), b4.spec());
        if (rop.getBranchingness() == 1) {
            addInstruction(new PlainInsn(rop, this.sourcePosition, target.spec(), make));
            return;
        }
        addInstruction(new ThrowingInsn(rop, this.sourcePosition, make, this.catches));
        moveResult(target, true);
    }
}
