package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0004\u001a\u00020\u0003H\u0003J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u001c\u0010\r\u001a\u00020\u00038\u0010@\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00038P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\f¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/e2;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/f0;", "", "p1", "complete", "", "exception", com.xinzhu.overmind.utils.helpers.d.f64708a, "b", "Z", "z0", "()Z", "handlesException", "A0", "onCancelComplete", "Lkotlinx/coroutines/c2;", "parent", "<init>", "(Lkotlinx/coroutines/c2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class e2 extends JobSupport implements f0 {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f71203b;

    public e2(@Nullable c2 c2Var) {
        super(true);
        G0(c2Var);
        this.f71203b = p1();
    }

    private final boolean p1() {
        v C0 = C0();
        w wVar = C0 instanceof w ? (w) C0 : null;
        if (wVar == null) {
            return false;
        }
        JobSupport f02 = wVar.f0();
        while (!f02.z0()) {
            v C02 = f02.C0();
            w wVar2 = C02 instanceof w ? (w) C02 : null;
            if (wVar2 == null) {
                return false;
            }
            f02 = wVar2.f0();
        }
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean A0() {
        return true;
    }

    @Override // kotlinx.coroutines.f0
    public boolean complete() {
        return O0(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.f0
    public boolean d(@NotNull Throwable th) {
        return O0(new h0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean z0() {
        return this.f71203b;
    }
}
