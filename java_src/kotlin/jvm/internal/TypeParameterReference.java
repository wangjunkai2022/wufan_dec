package kotlin.jvm.internal;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.List;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeParameterReference.kt */
@SinceKotlin(version = "1.4")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B)\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b#\u0010$J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0013\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u001c\u0010\u000f\u001a\u00020\t8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\r8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028V@\u0016X\u0096\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001d\u001a\u00020\u001c8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference;", "Lkotlin/reflect/KTypeParameter;", "", "Lkotlin/reflect/KType;", "upperBounds", "", "setUpperBounds", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "isReified", "Z", "()Z", "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "container", "Ljava/lang/Object;", "getUpperBounds", "()Ljava/util/List;", "getUpperBounds$annotations", "()V", "Lkotlin/reflect/KVariance;", "variance", "Lkotlin/reflect/KVariance;", "getVariance", "()Lkotlin/reflect/KVariance;", "bounds", "Ljava/util/List;", "<init>", "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class TypeParameterReference implements KTypeParameter {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private volatile List<? extends KType> bounds;
    private final Object container;
    private final boolean isReified;
    @NotNull
    private final String name;
    @NotNull
    private final KVariance variance;

    /* compiled from: TypeParameterReference.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\b"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference$Companion;", "", "Lkotlin/reflect/KTypeParameter;", "typeParameter", "", "toString", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {

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

        private Companion() {
        }

        @NotNull
        public final String toString(@NotNull KTypeParameter typeParameter) {
            Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
            StringBuilder sb = new StringBuilder();
            int i2 = WhenMappings.$EnumSwitchMapping$0[typeParameter.getVariance().ordinal()];
            if (i2 == 2) {
                sb.append("in ");
            } else if (i2 == 3) {
                sb.append("out ");
            }
            sb.append(typeParameter.getName());
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public TypeParameterReference(@Nullable Object obj, @NotNull String name, @NotNull KVariance variance, boolean z3) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(variance, "variance");
        this.container = obj;
        this.name = name;
        this.variance = variance;
        this.isReified = z3;
    }

    public static /* synthetic */ void getUpperBounds$annotations() {
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeParameterReference) {
            TypeParameterReference typeParameterReference = (TypeParameterReference) obj;
            if (Intrinsics.areEqual(this.container, typeParameterReference.container) && Intrinsics.areEqual(getName(), typeParameterReference.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KTypeParameter
    @NotNull
    public String getName() {
        return this.name;
    }

    @Override // kotlin.reflect.KTypeParameter
    @NotNull
    public List<KType> getUpperBounds() {
        List<KType> listOf;
        List list = this.bounds;
        if (list != null) {
            return list;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Reflection.nullableTypeOf(Object.class));
        this.bounds = listOf;
        return listOf;
    }

    @Override // kotlin.reflect.KTypeParameter
    @NotNull
    public KVariance getVariance() {
        return this.variance;
    }

    public int hashCode() {
        Object obj = this.container;
        return ((obj != null ? obj.hashCode() : 0) * 31) + getName().hashCode();
    }

    @Override // kotlin.reflect.KTypeParameter
    public boolean isReified() {
        return this.isReified;
    }

    public final void setUpperBounds(@NotNull List<? extends KType> upperBounds) {
        Intrinsics.checkNotNullParameter(upperBounds, "upperBounds");
        if (this.bounds == null) {
            this.bounds = upperBounds;
            return;
        }
        throw new IllegalStateException(("Upper bounds of type parameter '" + this + "' have already been initialized.").toString());
    }

    @NotNull
    public String toString() {
        return Companion.toString(this);
    }
}
