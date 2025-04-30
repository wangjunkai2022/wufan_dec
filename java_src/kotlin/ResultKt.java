package kotlin;

import kotlin.Result;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Result.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0001\u001a\u001a\u0010\u0006\u001a\u00020\u0005*\u0006\u0012\u0002\b\u00030\u0004H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a0\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u001aE\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\b*\u00028\u00002\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0002\b\u000fH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u0010\u001a#\u0010\u0011\u001a\u00028\u0000\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a`\u0010\u0016\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b\"\b\b\u0001\u0010\r*\u00028\u0000*\b\u0012\u0004\u0012\u00028\u00010\u00042!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0001\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u0016\u0010\u0010\u001a5\u0010\u0018\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b\"\b\b\u0001\u0010\r*\u00028\u0000*\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0017\u001a\u00028\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0089\u0001\u0010\u001c\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u00028\u00010\u00042!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00028\u00000\u000e2!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0001\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\u0014\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001ab\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u00028\u00010\u00042!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u001f\u0010\u0010\u001aU\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u00028\u00010\u00042!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b \u0010\u0010\u001af\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\b\"\b\b\u0001\u0010\r*\u00028\u0000*\b\u0012\u0004\u0012\u00028\u00010\u00042!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0001\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b!\u0010\u0010\u001aY\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\b\"\b\b\u0001\u0010\r*\u00028\u0000*\b\u0012\u0004\u0012\u00028\u00010\u00042!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0001\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u0010\u001a\\\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00042!\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0001\u0012\u0004\u0012\u00020\u00050\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u0015\u0010\u0010\u001a\\\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00042!\u0010#\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00050\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u001b\u0010\u0010\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"", "exception", "", "createFailure", "Lkotlin/Result;", "", "throwOnFailure", "(Ljava/lang/Object;)V", "R", "Lkotlin/Function0;", "block", "runCatching", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "T", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "getOrThrow", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/ParameterName;", "name", "onFailure", "getOrElse", "defaultValue", "getOrDefault", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "value", "onSuccess", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "transform", "map", "mapCatching", "recover", "recoverCatching", "action", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ResultKt {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Object createFailure(@NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        return new Result.Failure(exception);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> R fold(Object obj, Function1<? super T, ? extends R> function1, Function1<? super Throwable, ? extends R> function12) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl == null) {
            return function1.invoke(obj);
        }
        return function12.invoke(m27exceptionOrNullimpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> R getOrDefault(Object obj, R r3) {
        return Result.m30isFailureimpl(obj) ? r3 : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> R getOrElse(Object obj, Function1<? super Throwable, ? extends R> function1) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        return m27exceptionOrNullimpl == null ? obj : function1.invoke(m27exceptionOrNullimpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> T getOrThrow(Object obj) {
        throwOnFailure(obj);
        return obj;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object map(Object obj, Function1<? super T, ? extends R> function1) {
        if (Result.m31isSuccessimpl(obj)) {
            Result.Companion companion = Result.Companion;
            return Result.m24constructorimpl(function1.invoke(obj));
        }
        return Result.m24constructorimpl(obj);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object mapCatching(Object obj, Function1<? super T, ? extends R> function1) {
        if (Result.m31isSuccessimpl(obj)) {
            try {
                Result.Companion companion = Result.Companion;
                return Result.m24constructorimpl(function1.invoke(obj));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                return Result.m24constructorimpl(createFailure(th));
            }
        }
        return Result.m24constructorimpl(obj);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> Object onFailure(Object obj, Function1<? super Throwable, Unit> function1) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl != null) {
            function1.invoke(m27exceptionOrNullimpl);
        }
        return obj;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> Object onSuccess(Object obj, Function1<? super T, Unit> function1) {
        if (Result.m31isSuccessimpl(obj)) {
            function1.invoke(obj);
        }
        return obj;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> Object recover(Object obj, Function1<? super Throwable, ? extends R> function1) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl == null) {
            return obj;
        }
        Result.Companion companion = Result.Companion;
        return Result.m24constructorimpl(function1.invoke(m27exceptionOrNullimpl));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> Object recoverCatching(Object obj, Function1<? super Throwable, ? extends R> function1) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl == null) {
            return obj;
        }
        try {
            Result.Companion companion = Result.Companion;
            return Result.m24constructorimpl(function1.invoke(m27exceptionOrNullimpl));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m24constructorimpl(createFailure(th));
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R> Object runCatching(Function0<? extends R> function0) {
        try {
            Result.Companion companion = Result.Companion;
            return Result.m24constructorimpl(function0.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m24constructorimpl(createFailure(th));
        }
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final void throwOnFailure(@NotNull Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T, R> Object runCatching(T t3, Function1<? super T, ? extends R> function1) {
        try {
            Result.Companion companion = Result.Companion;
            return Result.m24constructorimpl(function1.invoke(t3));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m24constructorimpl(createFailure(th));
        }
    }
}
