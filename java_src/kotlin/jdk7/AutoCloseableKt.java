package kotlin.jdk7;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: AutoCloseable.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001aJ\u0010\u0005\u001a\u00028\u0001\"\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u0000\"\u0004\b\u0001\u0010\u0002*\u00028\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0018\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000b"}, d2 = {"Ljava/lang/AutoCloseable;", "T", "R", "Lkotlin/Function1;", "block", "use", "(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "cause", "", "closeFinally", "kotlin-stdlib-jdk7"}, k = 2, mv = {1, 5, 1}, pn = "kotlin")
@JvmName(name = "AutoCloseableKt")
/* loaded from: classes5.dex */
public final class AutoCloseableKt {
    @SinceKotlin(version = "1.2")
    @PublishedApi
    public static final void closeFinally(@Nullable AutoCloseable autoCloseable, @Nullable Throwable th) {
        if (autoCloseable == null) {
            return;
        }
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final <T extends AutoCloseable, R> R use(T t3, Function1<? super T, ? extends R> function1) {
        try {
            R invoke = function1.invoke(t3);
            InlineMarker.finallyStart(1);
            closeFinally(t3, null);
            InlineMarker.finallyEnd(1);
            return invoke;
        } finally {
        }
    }
}
