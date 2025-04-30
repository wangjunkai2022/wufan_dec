package com.android.dx.rop.code;

import com.android.dx.util.Hex;
/* loaded from: classes2.dex */
public final class AccessFlags {
    public static final int ACC_ABSTRACT = 1024;
    public static final int ACC_ANNOTATION = 8192;
    public static final int ACC_BRIDGE = 64;
    public static final int ACC_CONSTRUCTOR = 65536;
    public static final int ACC_DECLARED_SYNCHRONIZED = 131072;
    public static final int ACC_ENUM = 16384;
    public static final int ACC_FINAL = 16;
    public static final int ACC_INTERFACE = 512;
    public static final int ACC_NATIVE = 256;
    public static final int ACC_PRIVATE = 2;
    public static final int ACC_PROTECTED = 4;
    public static final int ACC_PUBLIC = 1;
    public static final int ACC_STATIC = 8;
    public static final int ACC_STRICT = 2048;
    public static final int ACC_SUPER = 32;
    public static final int ACC_SYNCHRONIZED = 32;
    public static final int ACC_SYNTHETIC = 4096;
    public static final int ACC_TRANSIENT = 128;
    public static final int ACC_VARARGS = 128;
    public static final int ACC_VOLATILE = 64;
    public static final int CLASS_FLAGS = 30257;
    private static final int CONV_CLASS = 1;
    private static final int CONV_FIELD = 2;
    private static final int CONV_METHOD = 3;
    public static final int FIELD_FLAGS = 20703;
    public static final int INNER_CLASS_FLAGS = 30239;
    public static final int METHOD_FLAGS = 204287;

    private AccessFlags() {
    }

    public static String classString(int i2) {
        return humanHelper(i2, CLASS_FLAGS, 1);
    }

    public static String fieldString(int i2) {
        return humanHelper(i2, FIELD_FLAGS, 2);
    }

    private static String humanHelper(int i2, int i4, int i5) {
        StringBuilder sb = new StringBuilder(80);
        int i6 = (i4 ^ (-1)) & i2;
        int i7 = i2 & i4;
        if ((i7 & 1) != 0) {
            sb.append("|public");
        }
        if ((i7 & 2) != 0) {
            sb.append("|private");
        }
        if ((i7 & 4) != 0) {
            sb.append("|protected");
        }
        if ((i7 & 8) != 0) {
            sb.append("|static");
        }
        if ((i7 & 16) != 0) {
            sb.append("|final");
        }
        if ((i7 & 32) != 0) {
            if (i5 == 1) {
                sb.append("|super");
            } else {
                sb.append("|synchronized");
            }
        }
        if ((i7 & 64) != 0) {
            if (i5 == 3) {
                sb.append("|bridge");
            } else {
                sb.append("|volatile");
            }
        }
        if ((i7 & 128) != 0) {
            if (i5 == 3) {
                sb.append("|varargs");
            } else {
                sb.append("|transient");
            }
        }
        if ((i7 & 256) != 0) {
            sb.append("|native");
        }
        if ((i7 & 512) != 0) {
            sb.append("|interface");
        }
        if ((i7 & 1024) != 0) {
            sb.append("|abstract");
        }
        if ((i7 & 2048) != 0) {
            sb.append("|strictfp");
        }
        if ((i7 & 4096) != 0) {
            sb.append("|synthetic");
        }
        if ((i7 & 8192) != 0) {
            sb.append("|annotation");
        }
        if ((i7 & 16384) != 0) {
            sb.append("|enum");
        }
        if ((65536 & i7) != 0) {
            sb.append("|constructor");
        }
        if ((i7 & 131072) != 0) {
            sb.append("|declared_synchronized");
        }
        if (i6 != 0 || sb.length() == 0) {
            sb.append('|');
            sb.append(Hex.u2(i6));
        }
        return sb.substring(1);
    }

    public static String innerClassString(int i2) {
        return humanHelper(i2, INNER_CLASS_FLAGS, 1);
    }

    public static boolean isAbstract(int i2) {
        return (i2 & 1024) != 0;
    }

    public static boolean isAnnotation(int i2) {
        return (i2 & 8192) != 0;
    }

    public static boolean isConstructor(int i2) {
        return (i2 & 65536) != 0;
    }

    public static boolean isDeclaredSynchronized(int i2) {
        return (i2 & 131072) != 0;
    }

    public static boolean isEnum(int i2) {
        return (i2 & 16384) != 0;
    }

    public static boolean isInterface(int i2) {
        return (i2 & 512) != 0;
    }

    public static boolean isNative(int i2) {
        return (i2 & 256) != 0;
    }

    public static boolean isPrivate(int i2) {
        return (i2 & 2) != 0;
    }

    public static boolean isProtected(int i2) {
        return (i2 & 4) != 0;
    }

    public static boolean isPublic(int i2) {
        return (i2 & 1) != 0;
    }

    public static boolean isStatic(int i2) {
        return (i2 & 8) != 0;
    }

    public static boolean isSynchronized(int i2) {
        return (i2 & 32) != 0;
    }

    public static String methodString(int i2) {
        return humanHelper(i2, METHOD_FLAGS, 3);
    }
}
