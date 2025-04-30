package kotlin.jvm;

import com.swift.sandhook.annotation.MethodReflectParams;
import com.uc.crashsdk.export.LogType;
import java.lang.annotation.Annotation;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JvmClassMapping.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u001b\n\u0002\b\u0006\u001a!\u0010\u0004\u001a\u00020\u0003\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005\"/\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00068F@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\t\"=\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00068Ç\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000b\u0010\t\"(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u00008Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\"-\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00068F@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\t\"-\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00078G@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014\")\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0016*\u00028\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018\"/\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00068G@\u0006¢\u0006\f\u0012\u0004\b\u001a\u0010\r\u001a\u0004\b\u000f\u0010\t¨\u0006\u001c"}, d2 = {"", "T", "", "", "isArrayOf", "([Ljava/lang/Object;)Z", "Lkotlin/reflect/KClass;", "Ljava/lang/Class;", "getJavaPrimitiveType", "(Lkotlin/reflect/KClass;)Ljava/lang/Class;", "javaPrimitiveType", "getRuntimeClassOfKClassInstance", "getRuntimeClassOfKClassInstance$annotations", "(Lkotlin/reflect/KClass;)V", "javaClass", "getJavaClass", "(Ljava/lang/Object;)Ljava/lang/Class;", "getJavaObjectType", "javaObjectType", "getKotlinClass", "(Ljava/lang/Class;)Lkotlin/reflect/KClass;", "kotlin", "", "getAnnotationClass", "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;", "annotationClass", "getJavaClass$annotations", LogType.JAVA_TYPE, "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "JvmClassMappingKt")
/* loaded from: classes.dex */
public final class JvmClassMappingKt {
    @NotNull
    public static final <T extends Annotation> KClass<? extends T> getAnnotationClass(@NotNull T annotationClass) {
        Intrinsics.checkNotNullParameter(annotationClass, "$this$annotationClass");
        Class<? extends Annotation> annotationType = annotationClass.annotationType();
        Intrinsics.checkNotNullExpressionValue(annotationType, "(this as java.lang.annot…otation).annotationType()");
        KClass<? extends T> kotlinClass = getKotlinClass(annotationType);
        Objects.requireNonNull(kotlinClass, "null cannot be cast to non-null type kotlin.reflect.KClass<out T>");
        return kotlinClass;
    }

    @JvmName(name = "getJavaClass")
    @NotNull
    public static final <T> Class<T> getJavaClass(@NotNull KClass<T> java) {
        Intrinsics.checkNotNullParameter(java, "$this$java");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) java).getJClass();
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
        return cls;
    }

    public static /* synthetic */ void getJavaClass$annotations(KClass kClass) {
    }

    @NotNull
    public static final <T> Class<T> getJavaObjectType(@NotNull KClass<T> javaObjectType) {
        Intrinsics.checkNotNullParameter(javaObjectType, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) javaObjectType).getJClass();
        if (cls.isPrimitive()) {
            String name = cls.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    return name.equals(MethodReflectParams.DOUBLE) ? Double.class : cls;
                case 104431:
                    return name.equals(MethodReflectParams.INT) ? Integer.class : cls;
                case 3039496:
                    return name.equals(MethodReflectParams.BYTE) ? Byte.class : cls;
                case 3052374:
                    return name.equals(MethodReflectParams.CHAR) ? Character.class : cls;
                case 3327612:
                    return name.equals(MethodReflectParams.LONG) ? Long.class : cls;
                case 3625364:
                    return name.equals("void") ? Void.class : cls;
                case 64711720:
                    return name.equals("boolean") ? Boolean.class : cls;
                case 97526364:
                    return name.equals("float") ? Float.class : cls;
                case 109413500:
                    return name.equals(MethodReflectParams.SHORT) ? Short.class : cls;
                default:
                    return cls;
            }
        }
        return cls;
    }

    @Nullable
    public static final <T> Class<T> getJavaPrimitiveType(@NotNull KClass<T> javaPrimitiveType) {
        Intrinsics.checkNotNullParameter(javaPrimitiveType, "$this$javaPrimitiveType");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) javaPrimitiveType).getJClass();
        if (cls.isPrimitive()) {
            return cls;
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                break;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                break;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                break;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                break;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                break;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                break;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                break;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                break;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                break;
        }
        return null;
    }

    @JvmName(name = "getKotlinClass")
    @NotNull
    public static final <T> KClass<T> getKotlinClass(@NotNull Class<T> kotlin2) {
        Intrinsics.checkNotNullParameter(kotlin2, "$this$kotlin");
        return Reflection.getOrCreateKotlinClass(kotlin2);
    }

    @JvmName(name = "getRuntimeClassOfKClassInstance")
    @NotNull
    public static final <T> Class<KClass<T>> getRuntimeClassOfKClassInstance(@NotNull KClass<T> javaClass) {
        Intrinsics.checkNotNullParameter(javaClass, "$this$javaClass");
        return (Class<KClass<T>>) javaClass.getClass();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'java' property to get Java class corresponding to this Kotlin class or cast this instance to Any if you really want to get the runtime Java class of this implementation of KClass.", replaceWith = @ReplaceWith(expression = "(this as Any).javaClass", imports = {}))
    public static /* synthetic */ void getRuntimeClassOfKClassInstance$annotations(KClass kClass) {
    }

    public static final /* synthetic */ <T> boolean isArrayOf(Object[] isArrayOf) {
        Intrinsics.checkNotNullParameter(isArrayOf, "$this$isArrayOf");
        Intrinsics.reifiedOperationMarker(4, "T");
        return Object.class.isAssignableFrom(isArrayOf.getClass().getComponentType());
    }

    @NotNull
    public static final <T> Class<T> getJavaClass(@NotNull T javaClass) {
        Intrinsics.checkNotNullParameter(javaClass, "$this$javaClass");
        return (Class<T>) javaClass.getClass();
    }
}
