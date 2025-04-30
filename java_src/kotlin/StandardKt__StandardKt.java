package kotlin;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
/* compiled from: Standard.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u001a\t\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a4\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0007\u0010\b\u001aI\u0010\u0007\u001a\u00028\u0001\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\u0004*\u00028\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0007\u0010\f\u001aM\u0010\u000e\u001a\u00028\u0001\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\u00042\u0006\u0010\r\u001a\u00028\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u000e\u0010\f\u001aC\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\t*\u00028\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\n¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0010\u0010\f\u001a>\u0010\u0011\u001a\u00028\u0000\"\u0004\b\u0000\u0010\t*\u00028\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\nH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0011\u0010\f\u001aD\u0010\u0012\u001a\u00028\u0001\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\u0004*\u00028\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0012\u0010\f\u001a@\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\t*\u00028\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130\nH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0015\u0010\f\u001a@\u0010\u0016\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\t*\u00028\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130\nH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0016\u0010\f\u001a3\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\nH\u0087\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"", "TODO", "", "reason", "R", "Lkotlin/Function0;", "block", "run", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "T", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "receiver", JsonPOJOBuilder.DEFAULT_WITH_PREFIX, "", "apply", "also", "let", "", "predicate", "takeIf", "takeUnless", "", "times", "action", "repeat", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/StandardKt")
/* loaded from: classes5.dex */
class StandardKt__StandardKt {
    @InlineOnly
    private static final Void TODO() {
        throw new NotImplementedError(null, 1, null);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> T also(T t3, Function1<? super T, Unit> function1) {
        function1.invoke(t3);
        return t3;
    }

    @InlineOnly
    private static final <T> T apply(T t3, Function1<? super T, Unit> function1) {
        function1.invoke(t3);
        return t3;
    }

    @InlineOnly
    private static final <T, R> R let(T t3, Function1<? super T, ? extends R> function1) {
        return function1.invoke(t3);
    }

    @InlineOnly
    private static final void repeat(int i2, Function1<? super Integer, Unit> function1) {
        for (int i4 = 0; i4 < i2; i4++) {
            function1.invoke(Integer.valueOf(i4));
        }
    }

    @InlineOnly
    private static final <R> R run(Function0<? extends R> function0) {
        return function0.invoke();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> T takeIf(T t3, Function1<? super T, Boolean> function1) {
        if (function1.invoke(t3).booleanValue()) {
            return t3;
        }
        return null;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> T takeUnless(T t3, Function1<? super T, Boolean> function1) {
        if (function1.invoke(t3).booleanValue()) {
            return null;
        }
        return t3;
    }

    @InlineOnly
    private static final <T, R> R with(T t3, Function1<? super T, ? extends R> function1) {
        return function1.invoke(t3);
    }

    @InlineOnly
    private static final Void TODO(String str) {
        throw new NotImplementedError("An operation is not implemented: " + str);
    }

    @InlineOnly
    private static final <T, R> R run(T t3, Function1<? super T, ? extends R> function1) {
        return function1.invoke(t3);
    }
}
