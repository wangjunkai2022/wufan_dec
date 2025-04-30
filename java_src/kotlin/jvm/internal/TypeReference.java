package kotlin.jvm.internal;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeReference.kt */
@SinceKotlin(version = "1.4")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0007¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\f\u0010\u0003\u001a\u00020\u0002*\u00020\u0004H\u0002J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\u0002H\u0016R\u001c\u0010\r\u001a\u00020\f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00118\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018R\u001e\u0010\u001c\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u00198B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00118V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0015¨\u0006\""}, d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "", "asString", "Lkotlin/reflect/KTypeProjection;", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "toString", "Lkotlin/reflect/KClassifier;", "classifier", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "", "arguments", "Ljava/util/List;", "getArguments", "()Ljava/util/List;", "isMarkedNullable", "Z", "()Z", "Ljava/lang/Class;", "getArrayClassName", "(Ljava/lang/Class;)Ljava/lang/String;", "arrayClassName", "", "getAnnotations", "annotations", "<init>", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class TypeReference implements KType {
    @NotNull
    private final List<KTypeProjection> arguments;
    @NotNull
    private final KClassifier classifier;
    private final boolean isMarkedNullable;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KVariance.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[KVariance.INVARIANT.ordinal()] = 1;
            iArr[KVariance.IN.ordinal()] = 2;
            iArr[KVariance.OUT.ordinal()] = 3;
        }
    }

    public TypeReference(@NotNull KClassifier classifier, @NotNull List<KTypeProjection> arguments, boolean z3) {
        Intrinsics.checkNotNullParameter(classifier, "classifier");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        this.classifier = classifier;
        this.arguments = arguments;
        this.isMarkedNullable = z3;
    }

    private final String asString() {
        String arrayClassName;
        KClassifier classifier = getClassifier();
        if (!(classifier instanceof KClass)) {
            classifier = null;
        }
        KClass kClass = (KClass) classifier;
        Class<?> javaClass = kClass != null ? JvmClassMappingKt.getJavaClass(kClass) : null;
        if (javaClass == null) {
            arrayClassName = getClassifier().toString();
        } else {
            arrayClassName = javaClass.isArray() ? getArrayClassName(javaClass) : javaClass.getName();
        }
        return arrayClassName + (getArguments().isEmpty() ? "" : CollectionsKt___CollectionsKt.joinToString$default(getArguments(), ", ", SimpleComparison.LESS_THAN_OPERATION, SimpleComparison.GREATER_THAN_OPERATION, 0, null, new Function1<KTypeProjection, CharSequence>() { // from class: kotlin.jvm.internal.TypeReference$asString$args$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(@NotNull KTypeProjection it2) {
                String asString;
                Intrinsics.checkNotNullParameter(it2, "it");
                asString = TypeReference.this.asString(it2);
                return asString;
            }
        }, 24, null)) + (isMarkedNullable() ? "?" : "");
    }

    private final String getArrayClassName(Class<?> cls) {
        return Intrinsics.areEqual(cls, boolean[].class) ? "kotlin.BooleanArray" : Intrinsics.areEqual(cls, char[].class) ? "kotlin.CharArray" : Intrinsics.areEqual(cls, byte[].class) ? "kotlin.ByteArray" : Intrinsics.areEqual(cls, short[].class) ? "kotlin.ShortArray" : Intrinsics.areEqual(cls, int[].class) ? "kotlin.IntArray" : Intrinsics.areEqual(cls, float[].class) ? "kotlin.FloatArray" : Intrinsics.areEqual(cls, long[].class) ? "kotlin.LongArray" : Intrinsics.areEqual(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeReference) {
            TypeReference typeReference = (TypeReference) obj;
            if (Intrinsics.areEqual(getClassifier(), typeReference.getClassifier()) && Intrinsics.areEqual(getArguments(), typeReference.getArguments()) && isMarkedNullable() == typeReference.isMarkedNullable()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        List<Annotation> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public List<KTypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public KClassifier getClassifier() {
        return this.classifier;
    }

    public int hashCode() {
        return (((getClassifier().hashCode() * 31) + getArguments().hashCode()) * 31) + Boolean.valueOf(isMarkedNullable()).hashCode();
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @NotNull
    public String toString() {
        return asString() + " (Kotlin reflection is not available)";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String asString(KTypeProjection kTypeProjection) {
        String valueOf;
        if (kTypeProjection.getVariance() == null) {
            return WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
        }
        KType type = kTypeProjection.getType();
        if (!(type instanceof TypeReference)) {
            type = null;
        }
        TypeReference typeReference = (TypeReference) type;
        if (typeReference == null || (valueOf = typeReference.asString()) == null) {
            valueOf = String.valueOf(kTypeProjection.getType());
        }
        KVariance variance = kTypeProjection.getVariance();
        if (variance != null) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
            if (i2 == 1) {
                return valueOf;
            }
            if (i2 == 2) {
                return "in " + valueOf;
            } else if (i2 == 3) {
                return "out " + valueOf;
            }
        }
        throw new NoWhenBranchMatchedException();
    }
}
