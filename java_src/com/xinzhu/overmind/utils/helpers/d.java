package com.xinzhu.overmind.utils.helpers;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
/* compiled from: DefaultNegativeResultHelper.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64708a = "d";

    public static <T> Object a(Class<T> returnType) {
        String str = f64708a;
        com.xinzhu.overmind.b.c(str, "test class " + returnType + " " + returnType.isArray());
        String name = returnType.getName();
        if (name.equals("java.lang.Void") || name.equals("void")) {
            return null;
        }
        if (!name.equals("java.lang.Boolean") && !name.equals("boolean")) {
            if (!Number.class.isAssignableFrom(returnType) && !name.equals(MethodReflectParams.BYTE) && !name.equals(MethodReflectParams.SHORT) && !name.equals(MethodReflectParams.INT) && !name.equals(MethodReflectParams.LONG) && !name.equals("float") && !name.equals(MethodReflectParams.DOUBLE)) {
                if (returnType.isArray()) {
                    return Array.newInstance(returnType.getComponentType(), 0);
                }
                return null;
            }
            return 0;
        }
        return Boolean.FALSE;
    }
}
