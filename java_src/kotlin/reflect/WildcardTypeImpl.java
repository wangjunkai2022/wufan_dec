package kotlin.reflect;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypesJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0003\u0018\u0000 \u00162\u00020\u00012\u00020\u0002:\u0001\u0016B\u001b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\b\u0010\t\u001a\u00020\bH\u0016J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\bH\u0016R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012¨\u0006\u0017"}, d2 = {"Lkotlin/reflect/WildcardTypeImpl;", "Ljava/lang/reflect/WildcardType;", "Lkotlin/reflect/TypeImpl;", "", "Ljava/lang/reflect/Type;", "getUpperBounds", "()[Ljava/lang/reflect/Type;", "getLowerBounds", "", "getTypeName", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "toString", "lowerBound", "Ljava/lang/reflect/Type;", "upperBound", "<init>", "(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalStdlibApi
/* loaded from: classes5.dex */
public final class WildcardTypeImpl implements WildcardType, TypeImpl {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final WildcardTypeImpl STAR = new WildcardTypeImpl(null, null);
    private final Type lowerBound;
    private final Type upperBound;

    /* compiled from: TypesJVM.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/reflect/WildcardTypeImpl$Companion;", "", "Lkotlin/reflect/WildcardTypeImpl;", "STAR", "Lkotlin/reflect/WildcardTypeImpl;", "getSTAR", "()Lkotlin/reflect/WildcardTypeImpl;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final WildcardTypeImpl getSTAR() {
            return WildcardTypeImpl.STAR;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public WildcardTypeImpl(@Nullable Type type, @Nullable Type type2) {
        this.upperBound = type;
        this.lowerBound = type2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) obj;
            if (Arrays.equals(getUpperBounds(), wildcardType.getUpperBounds()) && Arrays.equals(getLowerBounds(), wildcardType.getLowerBounds())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.WildcardType
    @NotNull
    public Type[] getLowerBounds() {
        Type type = this.lowerBound;
        return type == null ? new Type[0] : new Type[]{type};
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @NotNull
    public String getTypeName() {
        String typeToString;
        String typeToString2;
        if (this.lowerBound != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("? super ");
            typeToString2 = TypesJVMKt.typeToString(this.lowerBound);
            sb.append(typeToString2);
            return sb.toString();
        }
        Type type = this.upperBound;
        if (type == null || !(!Intrinsics.areEqual(type, Object.class))) {
            return "?";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("? extends ");
        typeToString = TypesJVMKt.typeToString(this.upperBound);
        sb2.append(typeToString);
        return sb2.toString();
    }

    @Override // java.lang.reflect.WildcardType
    @NotNull
    public Type[] getUpperBounds() {
        Type[] typeArr = new Type[1];
        Type type = this.upperBound;
        if (type == null) {
            type = Object.class;
        }
        typeArr[0] = type;
        return typeArr;
    }

    public int hashCode() {
        return Arrays.hashCode(getUpperBounds()) ^ Arrays.hashCode(getLowerBounds());
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
