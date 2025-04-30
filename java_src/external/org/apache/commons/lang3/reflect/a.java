package external.org.apache.commons.lang3.reflect;

import external.org.apache.commons.lang3.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
/* compiled from: MemberUtils.java */
/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f65454a = 7;

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?>[] f65455b = {Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};

    public static int a(Class<?>[] left, Class<?>[] right, Class<?>[] actual) {
        float d4 = d(actual, left);
        float d5 = d(actual, right);
        if (d4 < d5) {
            return -1;
        }
        return d5 < d4 ? 1 : 0;
    }

    private static float b(Class<?> srcClass, Class<?> destClass) {
        if (destClass.isPrimitive()) {
            return c(srcClass, destClass);
        }
        float f4 = 0.0f;
        while (true) {
            if (srcClass != null && !destClass.equals(srcClass)) {
                if (destClass.isInterface() && d.A(srcClass, destClass)) {
                    f4 += 0.25f;
                    break;
                }
                f4 += 1.0f;
                srcClass = srcClass.getSuperclass();
            } else {
                break;
            }
        }
        return srcClass == null ? f4 + 1.5f : f4;
    }

    private static float c(final Class<?> srcClass, final Class<?> destClass) {
        float f4;
        if (srcClass.isPrimitive()) {
            f4 = 0.0f;
        } else {
            srcClass = d.L(srcClass);
            f4 = 0.1f;
        }
        int i2 = 0;
        while (srcClass != destClass) {
            Class<?>[] clsArr = f65455b;
            if (i2 >= clsArr.length) {
                break;
            }
            if (srcClass == clsArr[i2]) {
                f4 += 0.1f;
                if (i2 < clsArr.length - 1) {
                    srcClass = clsArr[i2 + 1];
                }
            }
            i2++;
        }
        return f4;
    }

    private static float d(Class<?>[] srcArgs, Class<?>[] destArgs) {
        float f4 = 0.0f;
        for (int i2 = 0; i2 < srcArgs.length; i2++) {
            f4 += b(srcArgs[i2], destArgs[i2]);
        }
        return f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(Member m4) {
        return (m4 == null || !Modifier.isPublic(m4.getModifiers()) || m4.isSynthetic()) ? false : true;
    }

    static boolean f(int modifiers) {
        return (modifiers & 7) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(AccessibleObject o3) {
        if (o3 == null || o3.isAccessible()) {
            return;
        }
        Member member = (Member) o3;
        if (Modifier.isPublic(member.getModifiers()) && f(member.getDeclaringClass().getModifiers())) {
            try {
                o3.setAccessible(true);
            } catch (SecurityException unused) {
            }
        }
    }
}
