package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompletionState.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\u0004R\u0016\u0010\f\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/h0;", "", "", "b", "()Z", "", "toString", "()Ljava/lang/String;", "a", "handled", "", "Ljava/lang/Throwable;", "cause", "<init>", "(Ljava/lang/Throwable;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class h0 {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72126b = AtomicIntegerFieldUpdater.newUpdater(h0.class, "_handled");
    @NotNull
    private volatile /* synthetic */ int _handled;
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f72127a;

    public h0(@NotNull Throwable th, boolean z3) {
        this.f72127a = th;
        this._handled = z3 ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return f72126b.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return w0.a(this) + '[' + this.f72127a + ']';
    }

    public /* synthetic */ h0(Throwable th, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i2 & 2) != 0 ? false : z3);
    }
}
