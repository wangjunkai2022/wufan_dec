package com.android.dx.rop.type;

import com.android.dx.util.Hex;
import com.join.mgps.Util.g0;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import net.lingala.zip4j.util.e;
/* loaded from: classes2.dex */
public final class Type implements TypeBearer, Comparable<Type> {
    public static final Type BOOLEAN_ARRAY;
    public static final int BT_ADDR = 10;
    public static final int BT_BOOLEAN = 1;
    public static final int BT_BYTE = 2;
    public static final int BT_CHAR = 3;
    public static final int BT_COUNT = 11;
    public static final int BT_DOUBLE = 4;
    public static final int BT_FLOAT = 5;
    public static final int BT_INT = 6;
    public static final int BT_LONG = 7;
    public static final int BT_OBJECT = 9;
    public static final int BT_SHORT = 8;
    public static final int BT_VOID = 0;
    public static final Type BYTE_ARRAY;
    public static final Type CHAR_ARRAY;
    public static final Type DOUBLE_ARRAY;
    public static final Type FLOAT_ARRAY;
    public static final Type INT_ARRAY;
    public static final Type LONG_ARRAY;
    public static final Type OBJECT_ARRAY;
    public static final Type SHORT_ARRAY;
    private static final ConcurrentMap<String, Type> internTable = new ConcurrentHashMap(10000, 0.75f);
    private Type arrayType;
    private final int basicType;
    private String className;
    private Type componentType;
    private final String descriptor;
    private Type initializedType;
    private final int newAt;
    public static final Type BOOLEAN = new Type("Z", 1);
    public static final Type BYTE = new Type("B", 2);
    public static final Type CHAR = new Type("C", 3);
    public static final Type DOUBLE = new Type("D", 4);
    public static final Type FLOAT = new Type("F", 5);
    public static final Type INT = new Type("I", 6);
    public static final Type LONG = new Type("J", 7);
    public static final Type SHORT = new Type("S", 8);
    public static final Type VOID = new Type("V", 0);
    public static final Type KNOWN_NULL = new Type("<null>", 9);
    public static final Type RETURN_ADDRESS = new Type("<addr>", 10);
    public static final Type ANNOTATION = new Type("Ljava/lang/annotation/Annotation;", 9);
    public static final Type CLASS = new Type("Ljava/lang/Class;", 9);
    public static final Type CLONEABLE = new Type("Ljava/lang/Cloneable;", 9);
    public static final Type METHOD_HANDLE = new Type("Ljava/lang/invoke/MethodHandle;", 9);
    public static final Type METHOD_TYPE = new Type("Ljava/lang/invoke/MethodType;", 9);
    public static final Type VAR_HANDLE = new Type("Ljava/lang/invoke/VarHandle;", 9);
    public static final Type OBJECT = new Type("Ljava/lang/Object;", 9);
    public static final Type SERIALIZABLE = new Type("Ljava/io/Serializable;", 9);
    public static final Type STRING = new Type("Ljava/lang/String;", 9);
    public static final Type THROWABLE = new Type("Ljava/lang/Throwable;", 9);
    public static final Type BOOLEAN_CLASS = new Type("Ljava/lang/Boolean;", 9);
    public static final Type BYTE_CLASS = new Type("Ljava/lang/Byte;", 9);
    public static final Type CHARACTER_CLASS = new Type("Ljava/lang/Character;", 9);
    public static final Type DOUBLE_CLASS = new Type("Ljava/lang/Double;", 9);
    public static final Type FLOAT_CLASS = new Type("Ljava/lang/Float;", 9);
    public static final Type INTEGER_CLASS = new Type("Ljava/lang/Integer;", 9);
    public static final Type LONG_CLASS = new Type("Ljava/lang/Long;", 9);
    public static final Type SHORT_CLASS = new Type("Ljava/lang/Short;", 9);
    public static final Type VOID_CLASS = new Type("Ljava/lang/Void;", 9);

    static {
        Type type;
        Type type2;
        Type type3;
        Type type4;
        Type type5;
        Type type6;
        Type type7;
        Type type8;
        Type type9;
        BOOLEAN_ARRAY = new Type("[" + type.descriptor, 9);
        BYTE_ARRAY = new Type("[" + type2.descriptor, 9);
        CHAR_ARRAY = new Type("[" + type3.descriptor, 9);
        DOUBLE_ARRAY = new Type("[" + type4.descriptor, 9);
        FLOAT_ARRAY = new Type("[" + type5.descriptor, 9);
        INT_ARRAY = new Type("[" + type6.descriptor, 9);
        LONG_ARRAY = new Type("[" + type7.descriptor, 9);
        OBJECT_ARRAY = new Type("[" + type9.descriptor, 9);
        SHORT_ARRAY = new Type("[" + type8.descriptor, 9);
        initInterns();
    }

    private Type(String str, int i2, int i4) {
        Objects.requireNonNull(str, "descriptor == null");
        if (i2 < 0 || i2 >= 11) {
            throw new IllegalArgumentException("bad basicType");
        }
        if (i4 >= -1) {
            this.descriptor = str;
            this.basicType = i2;
            this.newAt = i4;
            this.arrayType = null;
            this.componentType = null;
            this.initializedType = null;
            return;
        }
        throw new IllegalArgumentException("newAt < -1");
    }

    public static void clearInternTable() {
        internTable.clear();
        initInterns();
    }

    private static void initInterns() {
        putIntern(BOOLEAN);
        putIntern(BYTE);
        putIntern(CHAR);
        putIntern(DOUBLE);
        putIntern(FLOAT);
        putIntern(INT);
        putIntern(LONG);
        putIntern(SHORT);
        putIntern(ANNOTATION);
        putIntern(CLASS);
        putIntern(CLONEABLE);
        putIntern(METHOD_HANDLE);
        putIntern(VAR_HANDLE);
        putIntern(OBJECT);
        putIntern(SERIALIZABLE);
        putIntern(STRING);
        putIntern(THROWABLE);
        putIntern(BOOLEAN_CLASS);
        putIntern(BYTE_CLASS);
        putIntern(CHARACTER_CLASS);
        putIntern(DOUBLE_CLASS);
        putIntern(FLOAT_CLASS);
        putIntern(INTEGER_CLASS);
        putIntern(LONG_CLASS);
        putIntern(SHORT_CLASS);
        putIntern(VOID_CLASS);
        putIntern(BOOLEAN_ARRAY);
        putIntern(BYTE_ARRAY);
        putIntern(CHAR_ARRAY);
        putIntern(DOUBLE_ARRAY);
        putIntern(FLOAT_ARRAY);
        putIntern(INT_ARRAY);
        putIntern(LONG_ARRAY);
        putIntern(OBJECT_ARRAY);
        putIntern(SHORT_ARRAY);
    }

    public static Type intern(String str) {
        Type type = internTable.get(str);
        if (type != null) {
            return type;
        }
        try {
            char charAt = str.charAt(0);
            if (charAt == '[') {
                return intern(str.substring(1)).getArrayType();
            }
            int length = str.length();
            if (charAt == 'L') {
                int i2 = length - 1;
                if (str.charAt(i2) == ';') {
                    for (int i4 = 1; i4 < i2; i4++) {
                        char charAt2 = str.charAt(i4);
                        if (charAt2 != '(' && charAt2 != ')' && charAt2 != '.') {
                            if (charAt2 != '/') {
                                if (charAt2 != ';' && charAt2 != '[') {
                                }
                            } else if (i4 == 1 || i4 == i2 || str.charAt(i4 - 1) == '/') {
                                throw new IllegalArgumentException("bad descriptor: " + str);
                            }
                        }
                        throw new IllegalArgumentException("bad descriptor: " + str);
                    }
                    return putIntern(new Type(str, 9));
                }
            }
            throw new IllegalArgumentException("bad descriptor: " + str);
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("descriptor is empty");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("descriptor == null");
        }
    }

    public static Type internClassName(String str) {
        Objects.requireNonNull(str, "name == null");
        if (str.startsWith("[")) {
            return intern(str);
        }
        return intern('L' + str + ';');
    }

    public static Type internReturnType(String str) {
        try {
            if (str.equals("V")) {
                return VOID;
            }
            return intern(str);
        } catch (NullPointerException unused) {
            throw new NullPointerException("descriptor == null");
        }
    }

    private static Type putIntern(Type type) {
        Type putIfAbsent = internTable.putIfAbsent(type.getDescriptor(), type);
        return putIfAbsent != null ? putIfAbsent : type;
    }

    public Type asUninitialized(int i2) {
        if (i2 >= 0) {
            if (isReference()) {
                if (!isUninitialized()) {
                    Type type = new Type('N' + Hex.u2(i2) + this.descriptor, 9, i2);
                    type.initializedType = this;
                    return putIntern(type);
                }
                throw new IllegalArgumentException("already uninitialized: " + this.descriptor);
            }
            throw new IllegalArgumentException("not a reference type: " + this.descriptor);
        }
        throw new IllegalArgumentException("newAt < 0");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Type) {
            return this.descriptor.equals(((Type) obj).descriptor);
        }
        return false;
    }

    public Type getArrayType() {
        if (this.arrayType == null) {
            this.arrayType = putIntern(new Type('[' + this.descriptor, 9));
        }
        return this.arrayType;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicFrameType() {
        int i2 = this.basicType;
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 6 || i2 == 8) {
            return 6;
        }
        return i2;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public int getBasicType() {
        return this.basicType;
    }

    public int getCategory() {
        int i2 = this.basicType;
        return (i2 == 4 || i2 == 7) ? 2 : 1;
    }

    public String getClassName() {
        if (this.className == null) {
            if (isReference()) {
                if (this.descriptor.charAt(0) == '[') {
                    this.className = this.descriptor;
                } else {
                    String str = this.descriptor;
                    this.className = str.substring(1, str.length() - 1);
                }
            } else {
                throw new IllegalArgumentException("not an object type: " + this.descriptor);
            }
        }
        return this.className;
    }

    public Type getComponentType() {
        if (this.componentType == null) {
            if (this.descriptor.charAt(0) == '[') {
                this.componentType = intern(this.descriptor.substring(1));
            } else {
                throw new IllegalArgumentException("not an array type: " + this.descriptor);
            }
        }
        return this.componentType;
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    public Type getInitializedType() {
        Type type = this.initializedType;
        if (type != null) {
            return type;
        }
        throw new IllegalArgumentException("initialized type: " + this.descriptor);
    }

    public int getNewAt() {
        return this.newAt;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return this;
    }

    public int hashCode() {
        return this.descriptor.hashCode();
    }

    public boolean isArray() {
        return this.descriptor.charAt(0) == '[';
    }

    public boolean isArrayOrKnownNull() {
        return isArray() || equals(KNOWN_NULL);
    }

    public boolean isCategory1() {
        int i2 = this.basicType;
        return (i2 == 4 || i2 == 7) ? false : true;
    }

    public boolean isCategory2() {
        int i2 = this.basicType;
        return i2 == 4 || i2 == 7;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public boolean isConstant() {
        return false;
    }

    public boolean isIntlike() {
        int i2 = this.basicType;
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 6 || i2 == 8;
    }

    public boolean isPrimitive() {
        switch (this.basicType) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public boolean isReference() {
        return this.basicType == 9;
    }

    public boolean isUninitialized() {
        return this.newAt >= 0;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        switch (this.basicType) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return MethodReflectParams.BYTE;
            case 3:
                return MethodReflectParams.CHAR;
            case 4:
                return MethodReflectParams.DOUBLE;
            case 5:
                return "float";
            case 6:
                return MethodReflectParams.INT;
            case 7:
                return MethodReflectParams.LONG;
            case 8:
                return MethodReflectParams.SHORT;
            case 9:
                if (isArray()) {
                    return getComponentType().toHuman() + "[]";
                }
                return getClassName().replace(e.F0, g0.f27568a);
            default:
                return this.descriptor;
        }
    }

    public String toString() {
        return this.descriptor;
    }

    @Override // java.lang.Comparable
    public int compareTo(Type type) {
        return this.descriptor.compareTo(type.descriptor);
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getFrameType() {
        int i2 = this.basicType;
        return (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 6 || i2 == 8) ? INT : this;
    }

    private Type(String str, int i2) {
        this(str, i2, -1);
    }
}
