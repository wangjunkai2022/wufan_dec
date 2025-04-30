package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016J)\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\t\u0010\nR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/flow/q;", "Lkotlinx/coroutines/flow/internal/c;", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "flow", "", ai.aD, "", "Lkotlin/coroutines/Continuation;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lkotlin/coroutines/Continuation;", "b", "Lkotlin/coroutines/Continuation;", "cont", "", "a", "J", "index", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class q extends kotlinx.coroutines.flow.internal.c<SharedFlowImpl<?>> {
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public long f72096a = -1;
    @JvmField
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public Continuation<? super Unit> f72097b;

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: c */
    public boolean a(@NotNull SharedFlowImpl<?> sharedFlowImpl) {
        if (this.f72096a >= 0) {
            return false;
        }
        this.f72096a = sharedFlowImpl.Z();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    @NotNull
    /* renamed from: d */
    public Continuation<Unit>[] b(@NotNull SharedFlowImpl<?> sharedFlowImpl) {
        if (v0.b()) {
            if (!(this.f72096a >= 0)) {
                throw new AssertionError();
            }
        }
        long j4 = this.f72096a;
        this.f72096a = -1L;
        this.f72097b = null;
        return sharedFlowImpl.Y(j4);
    }
}
