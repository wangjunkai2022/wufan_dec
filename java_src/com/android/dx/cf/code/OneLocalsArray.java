package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
/* loaded from: classes2.dex */
public class OneLocalsArray extends LocalsArray {
    private final TypeBearer[] locals;

    public OneLocalsArray(int i2) {
        super(i2 != 0);
        this.locals = new TypeBearer[i2];
    }

    private static TypeBearer throwSimException(int i2, String str) {
        throw new SimException("local " + Hex.u2(i2) + ": " + str);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void annotate(ExceptionWithContext exceptionWithContext) {
        int i2 = 0;
        while (true) {
            TypeBearer[] typeBearerArr = this.locals;
            if (i2 >= typeBearerArr.length) {
                return;
            }
            TypeBearer typeBearer = typeBearerArr[i2];
            String obj = typeBearer == null ? "<invalid>" : typeBearer.toString();
            exceptionWithContext.addContext("locals[" + Hex.u2(i2) + "]: " + obj);
            i2++;
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer get(int i2) {
        TypeBearer typeBearer = this.locals[i2];
        return typeBearer == null ? throwSimException(i2, "invalid") : typeBearer;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory1(int i2) {
        TypeBearer typeBearer = get(i2);
        Type type = typeBearer.getType();
        if (type.isUninitialized()) {
            return throwSimException(i2, "uninitialized instance");
        }
        return type.isCategory2() ? throwSimException(i2, "category-2") : typeBearer;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory2(int i2) {
        TypeBearer typeBearer = get(i2);
        return typeBearer.getType().isCategory1() ? throwSimException(i2, "category-1") : typeBearer;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public int getMaxLocals() {
        return this.locals.length;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getOrNull(int i2) {
        return this.locals[i2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.dx.cf.code.LocalsArray
    public OneLocalsArray getPrimary() {
        return this;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void invalidate(int i2) {
        throwIfImmutable();
        this.locals[i2] = null;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void makeInitialized(Type type) {
        int length = this.locals.length;
        if (length == 0) {
            return;
        }
        throwIfImmutable();
        Type initializedType = type.getInitializedType();
        for (int i2 = 0; i2 < length; i2++) {
            TypeBearer[] typeBearerArr = this.locals;
            if (typeBearerArr[i2] == type) {
                typeBearerArr[i2] = initializedType;
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArray merge(LocalsArray localsArray) {
        if (localsArray instanceof OneLocalsArray) {
            return merge((OneLocalsArray) localsArray);
        }
        return localsArray.merge(this);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i2) {
        return new LocalsArraySet(getMaxLocals()).mergeWithSubroutineCaller(localsArray, i2);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(int i2, TypeBearer typeBearer) {
        int i4;
        TypeBearer typeBearer2;
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            if (i2 >= 0) {
                if (frameType.getType().isCategory2()) {
                    this.locals[i2 + 1] = null;
                }
                TypeBearer[] typeBearerArr = this.locals;
                typeBearerArr[i2] = frameType;
                if (i2 == 0 || (typeBearer2 = typeBearerArr[i2 - 1]) == null || !typeBearer2.getType().isCategory2()) {
                    return;
                }
                this.locals[i4] = null;
                return;
            }
            throw new IndexOutOfBoundsException("idx < 0");
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            TypeBearer[] typeBearerArr = this.locals;
            if (i2 < typeBearerArr.length) {
                TypeBearer typeBearer = typeBearerArr[i2];
                String obj = typeBearer == null ? "<invalid>" : typeBearer.toString();
                sb.append("locals[" + Hex.u2(i2) + "]: " + obj + "\n");
                i2++;
            } else {
                return sb.toString();
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public OneLocalsArray copy() {
        OneLocalsArray oneLocalsArray = new OneLocalsArray(this.locals.length);
        TypeBearer[] typeBearerArr = this.locals;
        System.arraycopy(typeBearerArr, 0, oneLocalsArray.locals, 0, typeBearerArr.length);
        return oneLocalsArray;
    }

    public OneLocalsArray merge(OneLocalsArray oneLocalsArray) {
        try {
            return Merger.mergeLocals(this, oneLocalsArray);
        } catch (SimException e4) {
            e4.addContext("underlay locals:");
            annotate(e4);
            e4.addContext("overlay locals:");
            oneLocalsArray.annotate(e4);
            throw e4;
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(RegisterSpec registerSpec) {
        set(registerSpec.getReg(), registerSpec);
    }
}
