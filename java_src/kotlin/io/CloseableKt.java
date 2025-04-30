package kotlin.io;

import java.io.Closeable;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: Closeable.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001aM\u0010\u0006\u001a\u00028\u0001\"\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u0000\"\u0004\b\u0001\u0010\u0002*\u00028\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0018\u0010\u000b\u001a\u00020\n*\u0004\u0018\u00010\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0001\u0082\u0002\u000f\n\u0006\b\u0011(\u00050\u0001\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"Ljava/io/Closeable;", "T", "R", "Lkotlin/Function1;", "block", "Requires newer compiler version to be inlined correctly.", "use", "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "cause", "", "closeFinally", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "CloseableKt")
/* loaded from: classes5.dex */
public final class CloseableKt {
    @SinceKotlin(version = "1.1")
    @PublishedApi
    public static final void closeFinally(@Nullable Closeable closeable, @Nullable Throwable th) {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
    }

    @InlineOnly
    private static final <T extends Closeable, R> R use(T t3, Function1<? super T, ? extends R> function1) {
        try {
            R invoke = function1.invoke(t3);
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                closeFinally(t3, null);
            } else if (t3 != null) {
                t3.close();
            }
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                    closeFinally(t3, th);
                } else if (t3 != null) {
                    try {
                        t3.close();
                    } catch (Throwable unused) {
                    }
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }
}
