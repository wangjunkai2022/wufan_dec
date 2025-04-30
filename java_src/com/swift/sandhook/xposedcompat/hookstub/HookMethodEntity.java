package com.swift.sandhook.xposedcompat.hookstub;

import com.swift.sandhook.SandHook;
import com.swift.sandhook.utils.ParamWrapper;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* loaded from: classes4.dex */
public class HookMethodEntity {
    public Method backup;
    public Method hook;
    public boolean isStatic;
    public Member origin;
    public Class[] parType;
    public Class retType;

    public HookMethodEntity(Member origin, Method hook, Method backup) {
        this.origin = origin;
        this.hook = hook;
        this.backup = backup;
        this.isStatic = Modifier.isStatic(origin.getModifiers());
    }

    public Object getArg(int index, long address) {
        return ParamWrapper.addressToObject(this.parType[index], address);
    }

    public Object[] getArgs(long... addresses) {
        if (addresses == null || addresses.length == 0) {
            return new Object[0];
        }
        Class[] clsArr = this.parType;
        if (clsArr == null || clsArr.length == 0) {
            return new Object[0];
        }
        int i2 = !this.isStatic ? 1 : 0;
        Object[] objArr = new Object[clsArr.length];
        for (int i4 = i2; i4 < this.parType.length + i2; i4++) {
            int i5 = i4 - i2;
            objArr[i5] = getArg(i5, addresses[i4]);
        }
        return objArr;
    }

    public long[] getArgsAddress(long[] oldAddress, Object... args) {
        long[] jArr;
        int i2 = 0;
        if (oldAddress == null || oldAddress.length == 0) {
            return new long[0];
        }
        int i4 = 1;
        if (!this.isStatic) {
            jArr = new long[oldAddress.length + 1];
            jArr[0] = oldAddress[0];
        } else {
            jArr = new long[oldAddress.length];
            i4 = 0;
        }
        while (true) {
            Class[] clsArr = this.parType;
            if (i2 >= clsArr.length) {
                return jArr;
            }
            jArr[i2 + i4] = ParamWrapper.objectToAddress(clsArr[i2], args[i2]);
            i2++;
        }
    }

    public Object getResult(long address) {
        if (isVoid()) {
            return null;
        }
        return ParamWrapper.addressToObject(this.retType, address);
    }

    public long getResultAddress(Object result) {
        if (isVoid()) {
            return 0L;
        }
        return ParamWrapper.objectToAddress(this.retType, result);
    }

    public Object getThis(long address) {
        if (this.isStatic) {
            return null;
        }
        return SandHook.getObject(address);
    }

    public boolean isConstructor() {
        return this.origin instanceof Constructor;
    }

    public boolean isVoid() {
        Class cls = this.retType;
        return cls == null || Void.TYPE.equals(cls);
    }
}
