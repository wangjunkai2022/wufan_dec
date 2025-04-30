package kotlinx.coroutines;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Exceptions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u0003B!\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0000H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0012\u001a\u00020\u000f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/JobCancellationException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Lkotlinx/coroutines/n0;", "", "fillInStackTrace", "b", "", "toString", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "Lkotlinx/coroutines/c2;", "a", "Lkotlinx/coroutines/c2;", "job", "message", "cause", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class JobCancellationException extends CancellationException implements n0<JobCancellationException> {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final c2 f70721a;

    public JobCancellationException(@NotNull String str, @Nullable Throwable th, @NotNull c2 c2Var) {
        super(str);
        this.f70721a = c2Var;
        if (th != null) {
            initCause(th);
        }
    }

    @Override // kotlinx.coroutines.n0
    @Nullable
    /* renamed from: b */
    public JobCancellationException a() {
        if (v0.d()) {
            String message = getMessage();
            Intrinsics.checkNotNull(message);
            return new JobCancellationException(message, this, this.f70721a);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != this) {
            if (obj instanceof JobCancellationException) {
                JobCancellationException jobCancellationException = (JobCancellationException) obj;
                if (!Intrinsics.areEqual(jobCancellationException.getMessage(), getMessage()) || !Intrinsics.areEqual(jobCancellationException.f70721a, this.f70721a) || !Intrinsics.areEqual(jobCancellationException.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        if (v0.d()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        Intrinsics.checkNotNull(message);
        int hashCode = ((message.hashCode() * 31) + this.f70721a.hashCode()) * 31;
        Throwable cause = getCause();
        return hashCode + (cause == null ? 0 : cause.hashCode());
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return super.toString() + "; job=" + this.f70721a;
    }
}
