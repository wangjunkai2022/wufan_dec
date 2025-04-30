package kotlin.jvm.internal;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KCallable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PackageReference.kt */
@SinceKotlin(version = "1.1")
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\u0006\u0010\u0014\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R \u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR \u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lkotlin/jvm/internal/PackageReference;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "members", "Ljava/lang/Class;", "jClass", "Ljava/lang/Class;", "getJClass", "()Ljava/lang/Class;", "moduleName", "Ljava/lang/String;", "<init>", "(Ljava/lang/Class;Ljava/lang/String;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class PackageReference implements ClassBasedDeclarationContainer {
    @NotNull
    private final Class<?> jClass;
    private final String moduleName;

    public PackageReference(@NotNull Class<?> jClass, @NotNull String moduleName) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        this.jClass = jClass;
        this.moduleName = moduleName;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof PackageReference) && Intrinsics.areEqual(getJClass(), ((PackageReference) obj).getJClass());
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    @NotNull
    public Class<?> getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.KDeclarationContainer
    @NotNull
    public Collection<KCallable<?>> getMembers() {
        throw new KotlinReflectionNotSupportedError();
    }

    public int hashCode() {
        return getJClass().hashCode();
    }

    @NotNull
    public String toString() {
        return getJClass().toString() + " (Kotlin reflection is not available)";
    }
}
