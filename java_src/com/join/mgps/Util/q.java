package com.join.mgps.Util;

import android.bluetooth.BluetoothProfile;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
/* compiled from: ClassUtil.java */
/* loaded from: classes3.dex */
public class q {
    public static int a() {
        Field[] fields = BluetoothProfile.class.getFields();
        int length = fields.length;
        for (int i2 = 0; i2 < length; i2++) {
            Field field = fields[i2];
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers) && Modifier.isFinal(modifiers)) {
                try {
                    if (field.getName().equals("INPUT_DEVICE")) {
                        return field.getInt(null);
                    }
                    continue;
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return -1;
    }

    public static Object b(Class cls, String str, Class[] clsArr, Object... objArr) {
        try {
            return cls.getDeclaredMethod(str, clsArr).invoke(cls.newInstance(), objArr);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Object c(Object obj, String str, Class[] clsArr, Object... objArr) {
        try {
            return obj.getClass().getDeclaredMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Object d(String str, String str2, Class[] clsArr, Object... objArr) {
        try {
            return b(Class.forName(str), str2, clsArr, objArr);
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void e(Class cls, String str, Object obj) {
        try {
            Field field = cls.getField(str);
            field.setAccessible(true);
            Field declaredField = Field.class.getDeclaredField("modifiers");
            declaredField.setAccessible(true);
            declaredField.setInt(field, field.getModifiers() & (-17));
            field.set(null, obj);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
