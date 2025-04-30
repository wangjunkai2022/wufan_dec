package kotlin.reflect;

import com.facebook.imagepipeline.producers.l;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KCallable.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J'\u0010\u0006\u001a\u00028\u00002\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003\"\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\n\u001a\u00028\u00002\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00040\bH&¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\f8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0011\u001a\u00020\u00108&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\f8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u000eR\u001c\u0010\u0019\u001a\u00020\u00108&@'X§\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u0019\u0010\u0012R\u001c\u0010\u001b\u001a\u00020\u00108&@'X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001b\u0010\u0012R\u0016\u0010 \u001a\u00020\u001d8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u001e\u0010)\u001a\u0004\u0018\u00010%8&@'X§\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0014\u001a\u0004\b&\u0010'R\u001c\u0010*\u001a\u00020\u00108&@'X§\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0014\u001a\u0004\b*\u0010\u0012¨\u0006,"}, d2 = {"Lkotlin/reflect/KCallable;", "R", "Lkotlin/reflect/KAnnotatedElement;", "", "", "args", "call", "([Ljava/lang/Object;)Ljava/lang/Object;", "", "Lkotlin/reflect/KParameter;", "callBy", "(Ljava/util/Map;)Ljava/lang/Object;", "", "getParameters", "()Ljava/util/List;", "parameters", "", "isOpen", "()Z", "isOpen$annotations", "()V", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "getTypeParameters$annotations", "typeParameters", "isAbstract", "isAbstract$annotations", l.f13110m, "isFinal$annotations", "", "getName", "()Ljava/lang/String;", "name", "Lkotlin/reflect/KType;", "getReturnType", "()Lkotlin/reflect/KType;", "returnType", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "visibility", "isSuspend", "isSuspend$annotations", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface KCallable<R> extends KAnnotatedElement {

    /* compiled from: KCallable.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
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
        public static /* synthetic */ void isFinal$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isOpen$annotations() {
        }

        @SinceKotlin(version = "1.3")
        public static /* synthetic */ void isSuspend$annotations() {
        }
    }

    R call(@NotNull Object... objArr);

    R callBy(@NotNull Map<KParameter, ? extends Object> map);

    @NotNull
    String getName();

    @NotNull
    List<KParameter> getParameters();

    @NotNull
    KType getReturnType();

    @NotNull
    List<KTypeParameter> getTypeParameters();

    @Nullable
    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
