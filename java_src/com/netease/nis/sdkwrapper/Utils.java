package com.netease.nis.sdkwrapper;

import android.content.Context;
import android.os.Looper;
import android.widget.Toast;
import com.join.mgps.Util.g0;
import com.swift.sandhook.annotation.MethodReflectParams;
import external.org.apache.commons.lang3.d;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class Utils {
    static {
        System.loadLibrary("secsdk");
    }

    private static String doTypeShort(String str) {
        if (str.startsWith("[")) {
            return str.replace(g0.f27568a, e.F0);
        }
        if (str.equals(MethodReflectParams.INT)) {
            return "I";
        }
        if (str.equals("float")) {
            return "F";
        }
        if (str.equals(MethodReflectParams.LONG)) {
            return "J";
        }
        if (str.equals(MethodReflectParams.DOUBLE)) {
            return "D";
        }
        if (str.equals(MethodReflectParams.SHORT)) {
            return "S";
        }
        if (str.equals(MethodReflectParams.CHAR)) {
            return "C";
        }
        if (str.equals("boolean")) {
            return "Z";
        }
        if (str.equals(MethodReflectParams.BYTE)) {
            return "B";
        }
        return ("L" + str + ";").replace(g0.f27568a, e.F0);
    }

    public static String getFieldSCDesc(Class cls, String str, String str2) {
        while (cls != null) {
            String vGetFieldSCDesc = vGetFieldSCDesc(cls, str, str2);
            if (vGetFieldSCDesc != "") {
                return vGetFieldSCDesc;
            }
            cls = cls.getSuperclass();
        }
        return "";
    }

    public static Object getStaticFO(String str, String str2) {
        try {
            Field field = Class.forName(str.replace('/', d.f65364a)).getField(str2);
            Class<?> type = field.getType();
            if (type == Integer.TYPE) {
                return Integer.valueOf(field.getInt(null));
            }
            if (type == Float.TYPE) {
                return Float.valueOf(field.getFloat(null));
            }
            if (type == Long.TYPE) {
                return Long.valueOf(field.getLong(null));
            }
            if (type == Double.TYPE) {
                return Double.valueOf(field.getDouble(null));
            }
            if (type == Short.TYPE) {
                return Short.valueOf(field.getShort(null));
            }
            if (type == Character.TYPE) {
                return Character.valueOf(field.getChar(null));
            }
            if (type == Boolean.TYPE) {
                return Boolean.valueOf(field.getBoolean(null));
            }
            if (type == Byte.TYPE) {
                return Byte.valueOf(field.getByte(null));
            }
            return field.get(null);
        } catch (Exception e4) {
            e4.toString();
            return null;
        }
    }

    public static native Object rL(Object[] objArr);

    public static void showRiskMessage(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Toast.makeText(context, str, 0).show();
            return;
        }
        Looper.prepare();
        Toast.makeText(context, str, 0).show();
        Looper.loop();
    }

    private static String vGetFieldSCDesc(Class cls, String str, String str2) {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            Field.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                String replace = field.getType().toString().replace("class ", "").replace("interface ", "");
                if (Modifier.isStatic(field.getModifiers()) && field.getName().equals(str) && str2.equals(doTypeShort(replace))) {
                    return field.getDeclaringClass().getName().replace(g0.f27568a, e.F0);
                }
            }
            return "";
        } catch (NoClassDefFoundError unused) {
            return "NoClassDefFoundError";
        }
    }
}
