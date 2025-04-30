package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import com.android.dx.util.MutabilityControl;
/* loaded from: classes2.dex */
public final class ExecutionStack extends MutabilityControl {
    private final boolean[] local;
    private final TypeBearer[] stack;
    private int stackPtr;

    public ExecutionStack(int i2) {
        super(i2 != 0);
        this.stack = new TypeBearer[i2];
        this.local = new boolean[i2];
        this.stackPtr = 0;
    }

    private static String stackElementString(TypeBearer typeBearer) {
        return typeBearer == null ? "<invalid>" : typeBearer.toString();
    }

    private static TypeBearer throwSimException(String str) {
        throw new SimException("stack: " + str);
    }

    public void annotate(ExceptionWithContext exceptionWithContext) {
        int i2 = this.stackPtr - 1;
        int i4 = 0;
        while (i4 <= i2) {
            exceptionWithContext.addContext("stack[" + (i4 == i2 ? "top0" : Hex.u2(i2 - i4)) + "]: " + stackElementString(this.stack[i4]));
            i4++;
        }
    }

    public void change(int i2, TypeBearer typeBearer) {
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            int i4 = (this.stackPtr - i2) - 1;
            TypeBearer typeBearer2 = this.stack[i4];
            if (typeBearer2 == null || typeBearer2.getType().getCategory() != frameType.getType().getCategory()) {
                throwSimException("incompatible substitution: " + stackElementString(typeBearer2) + " -> " + stackElementString(frameType));
            }
            this.stack[i4] = frameType;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    public void clear() {
        throwIfImmutable();
        for (int i2 = 0; i2 < this.stackPtr; i2++) {
            this.stack[i2] = null;
            this.local[i2] = false;
        }
        this.stackPtr = 0;
    }

    public ExecutionStack copy() {
        ExecutionStack executionStack = new ExecutionStack(this.stack.length);
        TypeBearer[] typeBearerArr = this.stack;
        System.arraycopy(typeBearerArr, 0, executionStack.stack, 0, typeBearerArr.length);
        boolean[] zArr = this.local;
        System.arraycopy(zArr, 0, executionStack.local, 0, zArr.length);
        executionStack.stackPtr = this.stackPtr;
        return executionStack;
    }

    public int getMaxStack() {
        return this.stack.length;
    }

    public void makeInitialized(Type type) {
        if (this.stackPtr == 0) {
            return;
        }
        throwIfImmutable();
        Type initializedType = type.getInitializedType();
        for (int i2 = 0; i2 < this.stackPtr; i2++) {
            TypeBearer[] typeBearerArr = this.stack;
            if (typeBearerArr[i2] == type) {
                typeBearerArr[i2] = initializedType;
            }
        }
    }

    public ExecutionStack merge(ExecutionStack executionStack) {
        try {
            return Merger.mergeStack(this, executionStack);
        } catch (SimException e4) {
            e4.addContext("underlay stack:");
            annotate(e4);
            e4.addContext("overlay stack:");
            executionStack.annotate(e4);
            throw e4;
        }
    }

    public TypeBearer peek(int i2) {
        if (i2 >= 0) {
            int i4 = this.stackPtr;
            if (i2 >= i4) {
                return throwSimException("underflow");
            }
            return this.stack[(i4 - i2) - 1];
        }
        throw new IllegalArgumentException("n < 0");
    }

    public boolean peekLocal(int i2) {
        if (i2 >= 0) {
            int i4 = this.stackPtr;
            if (i2 < i4) {
                return this.local[(i4 - i2) - 1];
            }
            throw new SimException("stack: underflow");
        }
        throw new IllegalArgumentException("n < 0");
    }

    public Type peekType(int i2) {
        return peek(i2).getType();
    }

    public TypeBearer pop() {
        throwIfImmutable();
        TypeBearer peek = peek(0);
        TypeBearer[] typeBearerArr = this.stack;
        int i2 = this.stackPtr;
        typeBearerArr[i2 - 1] = null;
        this.local[i2 - 1] = false;
        this.stackPtr = i2 - peek.getType().getCategory();
        return peek;
    }

    public void push(TypeBearer typeBearer) {
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            int category = frameType.getType().getCategory();
            int i2 = this.stackPtr;
            int i4 = i2 + category;
            TypeBearer[] typeBearerArr = this.stack;
            if (i4 > typeBearerArr.length) {
                throwSimException("overflow");
                return;
            }
            if (category == 2) {
                typeBearerArr[i2] = null;
                this.stackPtr = i2 + 1;
            }
            int i5 = this.stackPtr;
            typeBearerArr[i5] = frameType;
            this.stackPtr = i5 + 1;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    public void setLocal() {
        throwIfImmutable();
        this.local[this.stackPtr] = true;
    }

    public int size() {
        return this.stackPtr;
    }
}
