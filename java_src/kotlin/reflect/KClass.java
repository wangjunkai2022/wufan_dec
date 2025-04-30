package kotlin.reflect;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.facebook.imagepipeline.producers.l;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KClass.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H'J\u0013\u0010\n\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0001H¦\u0002J\b\u0010\f\u001a\u00020\u000bH&R\u001c\u0010\r\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00118&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0010\u001a\u0004\b\u0018\u0010\u0014R\u001c\u0010\u001b\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0010\u001a\u0004\b\u001b\u0010\u000eR\u001c\u0010\u001d\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0010\u001a\u0004\b\u001d\u0010\u000eR\u001c\u0010\u001f\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b \u0010\u0010\u001a\u0004\b\u001f\u0010\u000eR \u0010$\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00000!8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u001c\u0010%\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b&\u0010\u0010\u001a\u0004\b%\u0010\u000eR\u0018\u0010*\u001a\u0004\u0018\u00010'8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\"\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000+0!8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b,\u0010#R\u001e\u00102\u001a\u0004\u0018\u00010.8&@'X§\u0004¢\u0006\f\u0012\u0004\b1\u0010\u0010\u001a\u0004\b/\u00100R\u001c\u00103\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b4\u0010\u0010\u001a\u0004\b3\u0010\u000eR\u001c\u00105\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b6\u0010\u0010\u001a\u0004\b5\u0010\u000eR\u001c\u00107\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b8\u0010\u0010\u001a\u0004\b7\u0010\u000eR*\u0010;\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00000\u00118&@'X§\u0004¢\u0006\f\u0012\u0004\b:\u0010\u0010\u001a\u0004\b9\u0010\u0014R \u0010>\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030<0!8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b=\u0010#R\u0018\u0010@\u001a\u0004\u0018\u00010'8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b?\u0010)R\u001c\u0010A\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\bB\u0010\u0010\u001a\u0004\bA\u0010\u000eR\u0018\u0010E\u001a\u0004\u0018\u00018\u00008&@&X¦\u0004¢\u0006\u0006\u001a\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lkotlin/reflect/KClass;", "", "T", "Lkotlin/reflect/KDeclarationContainer;", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/reflect/KClassifier;", "value", "", "isInstance", "other", "equals", "", TTDownloadField.TT_HASHCODE, "isSealed", "()Z", "isSealed$annotations", "()V", "", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "()Ljava/util/List;", "getTypeParameters$annotations", "typeParameters", "Lkotlin/reflect/KType;", "getSupertypes", "getSupertypes$annotations", "supertypes", "isValue", "isValue$annotations", "isData", "isData$annotations", l.f13110m, "isFinal$annotations", "", "getNestedClasses", "()Ljava/util/Collection;", "nestedClasses", "isAbstract", "isAbstract$annotations", "", "getSimpleName", "()Ljava/lang/String;", "simpleName", "Lkotlin/reflect/KFunction;", "getConstructors", "constructors", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "visibility", "isCompanion", "isCompanion$annotations", "isFun", "isFun$annotations", "isOpen", "isOpen$annotations", "getSealedSubclasses", "getSealedSubclasses$annotations", "sealedSubclasses", "Lkotlin/reflect/KCallable;", "getMembers", "members", "getQualifiedName", "qualifiedName", "isInner", "isInner$annotations", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface KClass<T> extends KDeclarationContainer, KAnnotatedElement, KClassifier {

    /* compiled from: KClass.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
        @SinceKotlin(version = "1.3")
        public static /* synthetic */ void getSealedSubclasses$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void getSupertypes$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void getTypeParameters$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void getVisibility$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isAbstract$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isCompanion$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isData$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isFinal$annotations() {
        }

        @SinceKotlin(version = "1.4")
        public static /* synthetic */ void isFun$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isInner$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isOpen$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isSealed$annotations() {
        }

        @SinceKotlin(version = "1.5")
        public static /* synthetic */ void isValue$annotations() {
        }
    }

    boolean equals(@Nullable Object obj);

    @NotNull
    Collection<KFunction<T>> getConstructors();

    @Override // kotlin.reflect.KDeclarationContainer
    @NotNull
    Collection<KCallable<?>> getMembers();

    @NotNull
    Collection<KClass<?>> getNestedClasses();

    @Nullable
    T getObjectInstance();

    @Nullable
    String getQualifiedName();

    @NotNull
    List<KClass<? extends T>> getSealedSubclasses();

    @Nullable
    String getSimpleName();

    @NotNull
    List<KType> getSupertypes();

    @NotNull
    List<KTypeParameter> getTypeParameters();

    @Nullable
    KVisibility getVisibility();

    int hashCode();

    boolean isAbstract();

    boolean isCompanion();

    boolean isData();

    boolean isFinal();

    boolean isFun();

    boolean isInner();

    @SinceKotlin(version = "1.1")
    boolean isInstance(@Nullable Object obj);

    boolean isOpen();

    boolean isSealed();

    boolean isValue();
}
