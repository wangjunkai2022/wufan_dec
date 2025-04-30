package com.xinzhu.overmind.utils.helpers;

import java.util.Arrays;
import java.util.HashSet;
/* compiled from: InterfaceHelper.java */
/* loaded from: classes.dex */
public class e {
    public static Class<?>[] a(Class<?> clazz) {
        if (clazz == null) {
            return new Class[0];
        }
        HashSet hashSet = new HashSet(Arrays.asList(clazz.getInterfaces()));
        while (clazz.getSuperclass() != Object.class && (clazz = clazz.getSuperclass()) != null) {
            hashSet.addAll(Arrays.asList(clazz.getInterfaces()));
        }
        Class<?>[] clsArr = new Class[hashSet.size()];
        hashSet.toArray(clsArr);
        return clsArr;
    }
}
