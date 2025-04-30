package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeBase;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypesJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\u001a\u0016\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0003\u001a\"\u0010\n\u001a\u00020\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0003\u001a\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002\" \u0010\u0012\u001a\u00020\u0003*\u00020\b8B@\u0003X\u0083\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f\" \u0010\u0012\u001a\u00020\u0003*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0014\u001a\u0004\b\u000e\u0010\u0013¨\u0006\u0015"}, d2 = {"Lkotlin/reflect/KType;", "", "forceWrapper", "Ljava/lang/reflect/Type;", "computeJavaType", "Ljava/lang/Class;", "jClass", "", "Lkotlin/reflect/KTypeProjection;", "arguments", "createPossiblyInnerType", "type", "", "typeToString", "getJavaType", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "getJavaType$annotations", "(Lkotlin/reflect/KTypeProjection;)V", "javaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "(Lkotlin/reflect/KType;)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class TypesJVMKt {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[KVariance.values().length];
            $EnumSwitchMapping$0 = iArr;
            KVariance kVariance = KVariance.IN;
            iArr[kVariance.ordinal()] = 1;
            KVariance kVariance2 = KVariance.INVARIANT;
            iArr[kVariance2.ordinal()] = 2;
            KVariance kVariance3 = KVariance.OUT;
            iArr[kVariance3.ordinal()] = 3;
            int[] iArr2 = new int[KVariance.values().length];
            $EnumSwitchMapping$1 = iArr2;
            iArr2[kVariance2.ordinal()] = 1;
            iArr2[kVariance.ordinal()] = 2;
            iArr2[kVariance3.ordinal()] = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalStdlibApi
    public static final Type computeJavaType(KType kType, boolean z3) {
        int i2;
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KTypeParameter) {
            return new TypeVariableImpl((KTypeParameter) classifier);
        }
        if (classifier instanceof KClass) {
            KClass kClass = (KClass) classifier;
            Class javaObjectType = z3 ? JvmClassMappingKt.getJavaObjectType(kClass) : JvmClassMappingKt.getJavaClass(kClass);
            List<KTypeProjection> arguments = kType.getArguments();
            if (arguments.isEmpty()) {
                return javaObjectType;
            }
            if (javaObjectType.isArray()) {
                Class<?> componentType = javaObjectType.getComponentType();
                Intrinsics.checkNotNullExpressionValue(componentType, "jClass.componentType");
                if (componentType.isPrimitive()) {
                    return javaObjectType;
                }
                KTypeProjection kTypeProjection = (KTypeProjection) CollectionsKt.singleOrNull((List<? extends Object>) arguments);
                if (kTypeProjection != null) {
                    KVariance component1 = kTypeProjection.component1();
                    KType component2 = kTypeProjection.component2();
                    if (component1 == null || (i2 = WhenMappings.$EnumSwitchMapping$0[component1.ordinal()]) == 1) {
                        return javaObjectType;
                    }
                    if (i2 != 2 && i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Intrinsics.checkNotNull(component2);
                    Type computeJavaType$default = computeJavaType$default(component2, false, 1, null);
                    return computeJavaType$default instanceof Class ? javaObjectType : new GenericArrayTypeImpl(computeJavaType$default);
                }
                throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
            }
            return createPossiblyInnerType(javaObjectType, arguments);
        }
        throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
    }

    static /* synthetic */ Type computeJavaType$default(KType kType, boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z3 = false;
        }
        return computeJavaType(kType, z3);
    }

    @ExperimentalStdlibApi
    private static final Type createPossiblyInnerType(Class<?> cls, List<KTypeProjection> list) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass != null) {
            if (Modifier.isStatic(cls.getModifiers())) {
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault3);
                for (KTypeProjection kTypeProjection : list) {
                    arrayList.add(getJavaType(kTypeProjection));
                }
                return new ParameterizedTypeImpl(cls, declaringClass, arrayList);
            }
            int length = cls.getTypeParameters().length;
            Type createPossiblyInnerType = createPossiblyInnerType(declaringClass, list.subList(length, list.size()));
            List<KTypeProjection> subList = list.subList(0, length);
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(subList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (KTypeProjection kTypeProjection2 : subList) {
                arrayList2.add(getJavaType(kTypeProjection2));
            }
            return new ParameterizedTypeImpl(cls, createPossiblyInnerType, arrayList2);
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (KTypeProjection kTypeProjection3 : list) {
            arrayList3.add(getJavaType(kTypeProjection3));
        }
        return new ParameterizedTypeImpl(cls, null, arrayList3);
    }

    @NotNull
    public static final Type getJavaType(@NotNull KType javaType) {
        Type javaType2;
        Intrinsics.checkNotNullParameter(javaType, "$this$javaType");
        return (!(javaType instanceof KTypeBase) || (javaType2 = ((KTypeBase) javaType).getJavaType()) == null) ? computeJavaType$default(javaType, false, 1, null) : javaType2;
    }

    @LowPriorityInOverloadResolution
    @SinceKotlin(version = "1.4")
    @ExperimentalStdlibApi
    public static /* synthetic */ void getJavaType$annotations(KType kType) {
    }

    @ExperimentalStdlibApi
    private static /* synthetic */ void getJavaType$annotations(KTypeProjection kTypeProjection) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String typeToString(Type type) {
        String name;
        Sequence generateSequence;
        int count;
        String repeat;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                generateSequence = SequencesKt__SequencesKt.generateSequence(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
                StringBuilder sb = new StringBuilder();
                sb.append(((Class) SequencesKt.last(generateSequence)).getName());
                count = SequencesKt___SequencesKt.count(generateSequence);
                repeat = StringsKt__StringsJVMKt.repeat("[]", count);
                sb.append(repeat);
                name = sb.toString();
            } else {
                name = cls.getName();
            }
            Intrinsics.checkNotNullExpressionValue(name, "if (type.isArray) {\n    …\n        } else type.name");
            return name;
        }
        return type.toString();
    }

    private static final Type getJavaType(KTypeProjection kTypeProjection) {
        KVariance variance = kTypeProjection.getVariance();
        if (variance != null) {
            KType type = kTypeProjection.getType();
            Intrinsics.checkNotNull(type);
            int i2 = WhenMappings.$EnumSwitchMapping$1[variance.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        return new WildcardTypeImpl(computeJavaType(type, true), null);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return new WildcardTypeImpl(null, computeJavaType(type, true));
            }
            return computeJavaType(type, true);
        }
        return WildcardTypeImpl.Companion.getSTAR();
    }
}
