package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Timeout.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\n\b\u0001\u0010\u0002 \u0000*\u00028\u00002\b\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u000f\u0010\t\u001a\u00020\bH\u0010¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/k3;", "U", "T", "Lkotlinx/coroutines/internal/e0;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "run", "", "R0", "()Ljava/lang/String;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "J", "time", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(JLkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class k3<U, T extends U> extends kotlinx.coroutines.internal.e0<T> implements Runnable {
    @JvmField

    /* renamed from: d  reason: collision with root package name */
    public final long f72275d;

    public k3(long j4, @NotNull Continuation<? super U> continuation) {
        super(continuation.getContext(), continuation);
        this.f72275d = j4;
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport
    @NotNull
    public String R0() {
        return super.R0() + "(timeMillis=" + this.f72275d + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        g0(TimeoutKt.a(this.f72275d, this));
    }
}
