package com.xinzhu.jnihook;

import androidx.annotation.Keep;
import com.join.mgps.Util.g0;
import java.lang.reflect.Method;
import net.lingala.zip4j.util.e;
@Keep
/* loaded from: classes3.dex */
public class MethodUtils {
    public static String getDeclaringClass(final Method method) {
        return method.getDeclaringClass().getName().replace(g0.f27568a, e.F0);
    }

    public static String getDesc(final Method method) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(");
        for (Class<?> cls : method.getParameterTypes()) {
            stringBuffer.append(getDesc(cls));
        }
        stringBuffer.append(")");
        stringBuffer.append(getDesc(method.getReturnType()));
        return stringBuffer.toString();
    }

    public static String getMethodName(final Method method) {
        return method.getName();
    }

    private static String getPrimitiveLetter(final Class<?> type) {
        if (Integer.TYPE.equals(type)) {
            return "I";
        }
        if (Void.TYPE.equals(type)) {
            return "V";
        }
        if (Boolean.TYPE.equals(type)) {
            return "Z";
        }
        if (Character.TYPE.equals(type)) {
            return "C";
        }
        if (Byte.TYPE.equals(type)) {
            return "B";
        }
        if (Short.TYPE.equals(type)) {
            return "S";
        }
        if (Float.TYPE.equals(type)) {
            return "F";
        }
        if (Long.TYPE.equals(type)) {
            return "J";
        }
        if (Double.TYPE.equals(type)) {
            return "D";
        }
        throw new IllegalStateException("Type: " + type.getCanonicalName() + " is not a primitive type");
    }

    private static String getType(final Class<?> parameterType) {
        if (parameterType.isArray()) {
            return "[" + getDesc(parameterType.getComponentType());
        } else if (!parameterType.isPrimitive()) {
            return parameterType.getName().replaceAll("\\.", e.F0);
        } else {
            return getPrimitiveLetter(parameterType);
        }
    }

    private static String getDesc(final Class<?> returnType) {
        if (returnType.isPrimitive()) {
            return getPrimitiveLetter(returnType);
        }
        if (returnType.isArray()) {
            return "[" + getDesc(returnType.getComponentType());
        }
        return "L" + getType(returnType) + ";";
    }
}
