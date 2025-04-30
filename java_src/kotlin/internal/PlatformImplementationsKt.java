package kotlin.internal;

import external.org.apache.commons.lang3.d;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.internal.jdk7.JDK7PlatformImplementations;
import kotlin.internal.jdk8.JDK8PlatformImplementations;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformImplementations.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a$\u0010\u0003\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0083\b¢\u0006\u0004\b\u0003\u0010\u0004\u001a\b\u0010\u0006\u001a\u00020\u0005H\u0002\u001a \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0001\"\u0016\u0010\r\u001a\u00020\f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"", "T", "instance", "castToBaseType", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "getJavaVersion", "major", "minor", "patch", "", "apiVersionIsAtLeast", "Lkotlin/internal/PlatformImplementations;", "IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PlatformImplementationsKt {
    @JvmField
    @NotNull
    public static final PlatformImplementations IMPLEMENTATIONS;

    static {
        PlatformImplementations platformImplementations;
        Object newInstance;
        Object newInstance2;
        int javaVersion = getJavaVersion();
        if (javaVersion >= 65544) {
            try {
                newInstance = JDK8PlatformImplementations.class.newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    try {
                    } catch (ClassCastException e4) {
                        ClassLoader classLoader = newInstance.getClass().getClassLoader();
                        ClassLoader classLoader2 = PlatformImplementations.class.getClassLoader();
                        Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e4);
                        Intrinsics.checkNotNullExpressionValue(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause;
                    }
                } catch (ClassNotFoundException unused) {
                }
            } catch (ClassNotFoundException unused2) {
                Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    if (newInstance3 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    platformImplementations = (PlatformImplementations) newInstance3;
                } catch (ClassCastException e5) {
                    ClassLoader classLoader3 = newInstance3.getClass().getClassLoader();
                    ClassLoader classLoader4 = PlatformImplementations.class.getClassLoader();
                    Throwable initCause2 = new ClassCastException("Instance classloader: " + classLoader3 + ", base type classloader: " + classLoader4).initCause(e5);
                    Intrinsics.checkNotNullExpressionValue(initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause2;
                }
            }
            if (newInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            }
            platformImplementations = (PlatformImplementations) newInstance;
            IMPLEMENTATIONS = platformImplementations;
        }
        if (javaVersion >= 65543) {
            try {
                newInstance2 = JDK7PlatformImplementations.class.newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                } catch (ClassCastException e6) {
                    ClassLoader classLoader5 = newInstance2.getClass().getClassLoader();
                    ClassLoader classLoader6 = PlatformImplementations.class.getClassLoader();
                    Throwable initCause3 = new ClassCastException("Instance classloader: " + classLoader5 + ", base type classloader: " + classLoader6).initCause(e6);
                    Intrinsics.checkNotNullExpressionValue(initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause3;
                }
            } catch (ClassNotFoundException unused3) {
                Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                Intrinsics.checkNotNullExpressionValue(newInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    if (newInstance4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    platformImplementations = (PlatformImplementations) newInstance4;
                } catch (ClassCastException e7) {
                    ClassLoader classLoader7 = newInstance4.getClass().getClassLoader();
                    ClassLoader classLoader8 = PlatformImplementations.class.getClassLoader();
                    Throwable initCause4 = new ClassCastException("Instance classloader: " + classLoader7 + ", base type classloader: " + classLoader8).initCause(e7);
                    Intrinsics.checkNotNullExpressionValue(initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause4;
                }
            }
            if (newInstance2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            }
            platformImplementations = (PlatformImplementations) newInstance2;
            IMPLEMENTATIONS = platformImplementations;
        }
        platformImplementations = new PlatformImplementations();
        IMPLEMENTATIONS = platformImplementations;
    }

    @SinceKotlin(version = "1.2")
    @PublishedApi
    public static final boolean apiVersionIsAtLeast(int i2, int i4, int i5) {
        return KotlinVersion.CURRENT.isAtLeast(i2, i4, i5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final /* synthetic */ <T> T castToBaseType(Object obj) {
        try {
            Intrinsics.reifiedOperationMarker(1, "T");
            return obj;
        } catch (ClassCastException e4) {
            ClassLoader classLoader = obj.getClass().getClassLoader();
            Intrinsics.reifiedOperationMarker(4, "T");
            ClassLoader classLoader2 = Object.class.getClassLoader();
            Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e4);
            Intrinsics.checkNotNullExpressionValue(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
            throw initCause;
        }
    }

    private static final int getJavaVersion() {
        int indexOf$default;
        int indexOf$default2;
        String property = System.getProperty("java.specification.version");
        if (property != null) {
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) property, (char) d.f65364a, 0, false, 6, (Object) null);
            if (indexOf$default < 0) {
                try {
                    return Integer.parseInt(property) * 65536;
                } catch (NumberFormatException unused) {
                    return 65542;
                }
            }
            int i2 = indexOf$default + 1;
            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) property, (char) d.f65364a, i2, false, 4, (Object) null);
            if (indexOf$default2 < 0) {
                indexOf$default2 = property.length();
            }
            String substring = property.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String substring2 = property.substring(i2, indexOf$default2);
            Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            try {
                return (Integer.parseInt(substring) * 65536) + Integer.parseInt(substring2);
            } catch (NumberFormatException unused2) {
                return 65542;
            }
        }
        return 65542;
    }
}
