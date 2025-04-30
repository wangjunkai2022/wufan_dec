package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/i2;", "Lkotlinx/coroutines/j0;", "Lkotlinx/coroutines/j1;", "Lkotlinx/coroutines/x1;", "", "dispose", "", "toString", "Lkotlinx/coroutines/n2;", "e", "()Lkotlinx/coroutines/n2;", "list", "", "isActive", "()Z", "Lkotlinx/coroutines/JobSupport;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/JobSupport;", "f0", "()Lkotlinx/coroutines/JobSupport;", "g0", "(Lkotlinx/coroutines/JobSupport;)V", "job", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class i2 extends j0 implements j1, x1 {

    /* renamed from: d  reason: collision with root package name */
    public JobSupport f72136d;

    @Override // kotlinx.coroutines.j1
    public void dispose() {
        f0().c1(this);
    }

    @Override // kotlinx.coroutines.x1
    @Nullable
    public n2 e() {
        return null;
    }

    @NotNull
    public final JobSupport f0() {
        JobSupport jobSupport = this.f72136d;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        throw null;
    }

    public final void g0(@NotNull JobSupport jobSupport) {
        this.f72136d = jobSupport;
    }

    @Override // kotlinx.coroutines.x1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.s
    @NotNull
    public String toString() {
        return w0.a(this) + '@' + w0.b(this) + "[job@" + w0.b(f0()) + ']';
    }
}
