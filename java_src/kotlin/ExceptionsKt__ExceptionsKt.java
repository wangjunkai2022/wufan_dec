package kotlin;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Objects;
import kotlin.internal.HidesMembers;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Exceptions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\f\u0010\b\u001a\u00020\u0007*\u00020\u0000H\u0007\u001a\u0014\u0010\n\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0007\"#\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b*\u00020\u00008F@\u0006¢\u0006\f\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e\"&\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00000\u0012*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"", "", "printStackTrace", "Ljava/io/PrintWriter;", "writer", "Ljava/io/PrintStream;", "stream", "", "stackTraceToString", "exception", "addSuppressed", "", "Ljava/lang/StackTraceElement;", "getStackTrace", "(Ljava/lang/Throwable;)[Ljava/lang/StackTraceElement;", "getStackTrace$annotations", "(Ljava/lang/Throwable;)V", "stackTrace", "", "getSuppressedExceptions", "(Ljava/lang/Throwable;)Ljava/util/List;", "getSuppressedExceptions$annotations", "suppressedExceptions", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ExceptionsKt")
/* loaded from: classes5.dex */
public class ExceptionsKt__ExceptionsKt {
    @SinceKotlin(version = "1.1")
    @HidesMembers
    public static void addSuppressed(@NotNull Throwable addSuppressed, @NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(addSuppressed, "$this$addSuppressed");
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (addSuppressed != exception) {
            PlatformImplementationsKt.IMPLEMENTATIONS.addSuppressed(addSuppressed, exception);
        }
    }

    @NotNull
    public static final StackTraceElement[] getStackTrace(@NotNull Throwable stackTrace) {
        Intrinsics.checkNotNullParameter(stackTrace, "$this$stackTrace");
        StackTraceElement[] stackTrace2 = stackTrace.getStackTrace();
        Intrinsics.checkNotNull(stackTrace2);
        return stackTrace2;
    }

    public static /* synthetic */ void getStackTrace$annotations(Throwable th) {
    }

    @NotNull
    public static final List<Throwable> getSuppressedExceptions(@NotNull Throwable suppressedExceptions) {
        Intrinsics.checkNotNullParameter(suppressedExceptions, "$this$suppressedExceptions");
        return PlatformImplementationsKt.IMPLEMENTATIONS.getSuppressed(suppressedExceptions);
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getSuppressedExceptions$annotations(Throwable th) {
    }

    @InlineOnly
    private static final void printStackTrace(Throwable th) {
        Objects.requireNonNull(th, "null cannot be cast to non-null type java.lang.Throwable");
        th.printStackTrace();
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final String stackTraceToString(@NotNull Throwable stackTraceToString) {
        Intrinsics.checkNotNullParameter(stackTraceToString, "$this$stackTraceToString");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        stackTraceToString.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(stringWriter2, "sw.toString()");
        return stringWriter2;
    }

    @InlineOnly
    private static final void printStackTrace(Throwable th, PrintWriter printWriter) {
        Objects.requireNonNull(th, "null cannot be cast to non-null type java.lang.Throwable");
        th.printStackTrace(printWriter);
    }

    @InlineOnly
    private static final void printStackTrace(Throwable th, PrintStream printStream) {
        Objects.requireNonNull(th, "null cannot be cast to non-null type java.lang.Throwable");
        th.printStackTrace(printStream);
    }
}
