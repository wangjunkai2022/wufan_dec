package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Standard.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/NotImplementedError;", "Ljava/lang/Error;", "Lkotlin/Error;", "", "message", "<init>", "(Ljava/lang/String;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class NotImplementedError extends Error {
    public NotImplementedError() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotImplementedError(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    public /* synthetic */ NotImplementedError(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "An operation is not implemented." : str);
    }
}
