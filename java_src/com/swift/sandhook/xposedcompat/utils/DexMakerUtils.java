package com.swift.sandhook.xposedcompat.utils;

import com.android.dx.Code;
import com.android.dx.Local;
import com.android.dx.TypeId;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.type.Type;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class DexMakerUtils {
    private static volatile Method addInstMethod;
    private static volatile Method specMethod;

    public static String MD5(String source) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(source.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(32);
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return source;
        }
    }

    public static void addInstruction(Code code, Insn insn) {
        if (addInstMethod == null) {
            try {
                addInstMethod = Code.class.getDeclaredMethod("addInstruction", Insn.class);
                addInstMethod.setAccessible(true);
            } catch (NoSuchMethodException e4) {
                e4.printStackTrace();
            }
        }
        try {
            addInstMethod.invoke(code, insn);
        } catch (IllegalAccessException | InvocationTargetException e5) {
            e5.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void autoBoxIfNecessary(Code code, Local<Object> target, Local source) {
        TypeId type = source.getType();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        if (type.equals(typeId)) {
            TypeId typeId2 = TypeId.get(Boolean.class);
            code.invokeStatic(typeId2.getMethod(typeId2, "valueOf", typeId), target, source);
            return;
        }
        TypeId<Byte> typeId3 = TypeId.BYTE;
        if (type.equals(typeId3)) {
            TypeId typeId4 = TypeId.get(Byte.class);
            code.invokeStatic(typeId4.getMethod(typeId4, "valueOf", typeId3), target, source);
            return;
        }
        TypeId<Character> typeId5 = TypeId.CHAR;
        if (type.equals(typeId5)) {
            TypeId typeId6 = TypeId.get(Character.class);
            code.invokeStatic(typeId6.getMethod(typeId6, "valueOf", typeId5), target, source);
            return;
        }
        TypeId<Double> typeId7 = TypeId.DOUBLE;
        if (type.equals(typeId7)) {
            TypeId typeId8 = TypeId.get(Double.class);
            code.invokeStatic(typeId8.getMethod(typeId8, "valueOf", typeId7), target, source);
            return;
        }
        TypeId<Float> typeId9 = TypeId.FLOAT;
        if (type.equals(typeId9)) {
            TypeId typeId10 = TypeId.get(Float.class);
            code.invokeStatic(typeId10.getMethod(typeId10, "valueOf", typeId9), target, source);
            return;
        }
        TypeId<Integer> typeId11 = TypeId.INT;
        if (type.equals(typeId11)) {
            TypeId typeId12 = TypeId.get(Integer.class);
            code.invokeStatic(typeId12.getMethod(typeId12, "valueOf", typeId11), target, source);
            return;
        }
        TypeId<Long> typeId13 = TypeId.LONG;
        if (type.equals(typeId13)) {
            TypeId typeId14 = TypeId.get(Long.class);
            code.invokeStatic(typeId14.getMethod(typeId14, "valueOf", typeId13), target, source);
            return;
        }
        TypeId<Short> typeId15 = TypeId.SHORT;
        if (type.equals(typeId15)) {
            TypeId typeId16 = TypeId.get(Short.class);
            code.invokeStatic(typeId16.getMethod(typeId16, "valueOf", typeId15), target, source);
        } else if (type.equals(TypeId.VOID)) {
            code.loadConstant(target, null);
        } else {
            code.move(target, source);
        }
    }

    public static void autoUnboxIfNecessary(Code code, Local target, Local source, Map<TypeId, Local> tmpLocals, boolean castObj) {
        TypeId type = target.getType();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        if (type.equals(typeId)) {
            TypeId typeId2 = TypeId.get("Ljava/lang/Boolean;");
            Local local = tmpLocals.get(typeId2);
            code.cast(local, source);
            code.invokeVirtual(typeId2.getMethod(typeId, "booleanValue", new TypeId[0]), target, local, new Local[0]);
            return;
        }
        TypeId<Byte> typeId3 = TypeId.BYTE;
        if (type.equals(typeId3)) {
            TypeId typeId4 = TypeId.get("Ljava/lang/Byte;");
            Local local2 = tmpLocals.get(typeId4);
            code.cast(local2, source);
            code.invokeVirtual(typeId4.getMethod(typeId3, "byteValue", new TypeId[0]), target, local2, new Local[0]);
            return;
        }
        TypeId<Character> typeId5 = TypeId.CHAR;
        if (type.equals(typeId5)) {
            TypeId typeId6 = TypeId.get("Ljava/lang/Character;");
            Local local3 = tmpLocals.get(typeId6);
            code.cast(local3, source);
            code.invokeVirtual(typeId6.getMethod(typeId5, "charValue", new TypeId[0]), target, local3, new Local[0]);
            return;
        }
        TypeId<Double> typeId7 = TypeId.DOUBLE;
        if (type.equals(typeId7)) {
            TypeId typeId8 = TypeId.get("Ljava/lang/Double;");
            Local local4 = tmpLocals.get(typeId8);
            code.cast(local4, source);
            code.invokeVirtual(typeId8.getMethod(typeId7, "doubleValue", new TypeId[0]), target, local4, new Local[0]);
            return;
        }
        TypeId<Float> typeId9 = TypeId.FLOAT;
        if (type.equals(typeId9)) {
            TypeId typeId10 = TypeId.get("Ljava/lang/Float;");
            Local local5 = tmpLocals.get(typeId10);
            code.cast(local5, source);
            code.invokeVirtual(typeId10.getMethod(typeId9, "floatValue", new TypeId[0]), target, local5, new Local[0]);
            return;
        }
        TypeId<Integer> typeId11 = TypeId.INT;
        if (type.equals(typeId11)) {
            TypeId typeId12 = TypeId.get("Ljava/lang/Integer;");
            Local local6 = tmpLocals.get(typeId12);
            code.cast(local6, source);
            code.invokeVirtual(typeId12.getMethod(typeId11, "intValue", new TypeId[0]), target, local6, new Local[0]);
            return;
        }
        TypeId<Long> typeId13 = TypeId.LONG;
        if (type.equals(typeId13)) {
            TypeId typeId14 = TypeId.get("Ljava/lang/Long;");
            Local local7 = tmpLocals.get(typeId14);
            code.cast(local7, source);
            code.invokeVirtual(typeId14.getMethod(typeId13, "longValue", new TypeId[0]), target, local7, new Local[0]);
            return;
        }
        TypeId<Short> typeId15 = TypeId.SHORT;
        if (type.equals(typeId15)) {
            TypeId typeId16 = TypeId.get("Ljava/lang/Short;");
            Local local8 = tmpLocals.get(typeId16);
            code.cast(local8, source);
            code.invokeVirtual(typeId16.getMethod(typeId15, "shortValue", new TypeId[0]), target, local8, new Local[0]);
        } else if (type.equals(TypeId.VOID)) {
            code.loadConstant(target, null);
        } else if (castObj) {
            code.cast(target, source);
        } else {
            code.move(target, source);
        }
    }

    public static Map<TypeId, Local> createResultLocals(Code code) {
        HashMap hashMap = new HashMap();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        Local newLocal = code.newLocal(typeId);
        TypeId<Byte> typeId2 = TypeId.BYTE;
        Local newLocal2 = code.newLocal(typeId2);
        TypeId<Character> typeId3 = TypeId.CHAR;
        Local newLocal3 = code.newLocal(typeId3);
        TypeId<Double> typeId4 = TypeId.DOUBLE;
        Local newLocal4 = code.newLocal(typeId4);
        TypeId<Float> typeId5 = TypeId.FLOAT;
        Local newLocal5 = code.newLocal(typeId5);
        TypeId<Integer> typeId6 = TypeId.INT;
        Local newLocal6 = code.newLocal(typeId6);
        TypeId<Long> typeId7 = TypeId.LONG;
        Local newLocal7 = code.newLocal(typeId7);
        TypeId<Short> typeId8 = TypeId.SHORT;
        Local newLocal8 = code.newLocal(typeId8);
        TypeId<Void> typeId9 = TypeId.VOID;
        Local newLocal9 = code.newLocal(typeId9);
        TypeId<Object> typeId10 = TypeId.OBJECT;
        Local newLocal10 = code.newLocal(typeId10);
        Local newLocal11 = code.newLocal(TypeId.get("Ljava/lang/Boolean;"));
        Local newLocal12 = code.newLocal(TypeId.get("Ljava/lang/Byte;"));
        Local newLocal13 = code.newLocal(TypeId.get("Ljava/lang/Character;"));
        Local newLocal14 = code.newLocal(TypeId.get("Ljava/lang/Double;"));
        Local newLocal15 = code.newLocal(TypeId.get("Ljava/lang/Float;"));
        Local newLocal16 = code.newLocal(TypeId.get("Ljava/lang/Integer;"));
        Local newLocal17 = code.newLocal(TypeId.get("Ljava/lang/Long;"));
        Local newLocal18 = code.newLocal(TypeId.get("Ljava/lang/Short;"));
        Local newLocal19 = code.newLocal(TypeId.get("Ljava/lang/Void;"));
        code.loadConstant(newLocal, Boolean.FALSE);
        code.loadConstant(newLocal2, (byte) 0);
        code.loadConstant(newLocal3, (char) 0);
        code.loadConstant(newLocal4, Double.valueOf(0.0d));
        code.loadConstant(newLocal5, Float.valueOf(0.0f));
        code.loadConstant(newLocal6, 0);
        code.loadConstant(newLocal7, 0L);
        code.loadConstant(newLocal8, (short) 0);
        code.loadConstant(newLocal9, null);
        code.loadConstant(newLocal10, null);
        code.loadConstant(newLocal11, null);
        code.loadConstant(newLocal12, null);
        code.loadConstant(newLocal13, null);
        code.loadConstant(newLocal14, null);
        code.loadConstant(newLocal15, null);
        code.loadConstant(newLocal16, null);
        code.loadConstant(newLocal17, null);
        code.loadConstant(newLocal18, null);
        code.loadConstant(newLocal19, null);
        hashMap.put(typeId, newLocal);
        hashMap.put(typeId2, newLocal2);
        hashMap.put(typeId3, newLocal3);
        hashMap.put(typeId4, newLocal4);
        hashMap.put(typeId5, newLocal5);
        hashMap.put(typeId6, newLocal6);
        hashMap.put(typeId7, newLocal7);
        hashMap.put(typeId8, newLocal8);
        hashMap.put(typeId9, newLocal9);
        hashMap.put(typeId10, newLocal10);
        hashMap.put(TypeId.get("Ljava/lang/Boolean;"), newLocal11);
        hashMap.put(TypeId.get("Ljava/lang/Byte;"), newLocal12);
        hashMap.put(TypeId.get("Ljava/lang/Character;"), newLocal13);
        hashMap.put(TypeId.get("Ljava/lang/Double;"), newLocal14);
        hashMap.put(TypeId.get("Ljava/lang/Float;"), newLocal15);
        hashMap.put(TypeId.get("Ljava/lang/Integer;"), newLocal16);
        hashMap.put(TypeId.get("Ljava/lang/Long;"), newLocal17);
        hashMap.put(TypeId.get("Ljava/lang/Short;"), newLocal18);
        hashMap.put(TypeId.get("Ljava/lang/Void;"), newLocal19);
        return hashMap;
    }

    public static TypeId getObjTypeIdIfPrimitive(TypeId typeId) {
        if (typeId.equals(TypeId.BOOLEAN)) {
            return TypeId.get("Ljava/lang/Boolean;");
        }
        if (typeId.equals(TypeId.BYTE)) {
            return TypeId.get("Ljava/lang/Byte;");
        }
        if (typeId.equals(TypeId.CHAR)) {
            return TypeId.get("Ljava/lang/Character;");
        }
        if (typeId.equals(TypeId.DOUBLE)) {
            return TypeId.get("Ljava/lang/Double;");
        }
        if (typeId.equals(TypeId.FLOAT)) {
            return TypeId.get("Ljava/lang/Float;");
        }
        if (typeId.equals(TypeId.INT)) {
            return TypeId.get("Ljava/lang/Integer;");
        }
        if (typeId.equals(TypeId.LONG)) {
            return TypeId.get("Ljava/lang/Long;");
        }
        if (typeId.equals(TypeId.SHORT)) {
            return TypeId.get("Ljava/lang/Short;");
        }
        return typeId.equals(TypeId.VOID) ? TypeId.get("Ljava/lang/Void;") : typeId;
    }

    public static void moveException(Code code, Local<?> result) {
        addInstruction(code, new PlainInsn(Rops.opMoveException(Type.THROWABLE), SourcePosition.NO_INFO, spec(result), RegisterSpecList.EMPTY));
    }

    public static void returnRightValue(Code code, Class<?> returnType, Map<Class, Local> resultLocals) {
        code.returnValue(resultLocals.get(returnType));
    }

    public static RegisterSpec spec(Local<?> result) {
        if (specMethod == null) {
            try {
                specMethod = Local.class.getDeclaredMethod("spec", new Class[0]);
                specMethod.setAccessible(true);
            } catch (NoSuchMethodException e4) {
                e4.printStackTrace();
            }
        }
        try {
            return (RegisterSpec) specMethod.invoke(result, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e5) {
            e5.printStackTrace();
            return null;
        }
    }
}
