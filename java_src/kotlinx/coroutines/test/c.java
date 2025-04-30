package kotlinx.coroutines.test;

import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.internal.r0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TestCoroutineContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u00032\u00020\u0004B'\u0012\n\u0010\u0006\u001a\u00060\u0002j\u0002`\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b#\u0010$J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0011\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0000H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0016\u0010\u000f\u001a\u00020\f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u000eR\u001a\u0010\u0006\u001a\u00060\u0002j\u0002`\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR(\u0010\"\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, d2 = {"Lkotlinx/coroutines/test/c;", "", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Lkotlinx/coroutines/internal/r0;", "", "run", "other", "", "x", "", "toString", "", ai.aD, "J", "time", "e", "I", "getIndex", "()I", "U", "(I)V", "index", "b", "count", "a", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/internal/q0;", d.f64708a, "Lkotlinx/coroutines/internal/q0;", "A", "()Lkotlinx/coroutines/internal/q0;", "m", "(Lkotlinx/coroutines/internal/q0;)V", "heap", "<init>", "(Ljava/lang/Runnable;JJ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class c implements Comparable<c>, Runnable, r0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f72512a;

    /* renamed from: b  reason: collision with root package name */
    private final long f72513b;
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public final long f72514c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private q0<?> f72515d;

    /* renamed from: e  reason: collision with root package name */
    private int f72516e;

    public c(@NotNull Runnable runnable, long j4, long j5) {
        this.f72512a = runnable;
        this.f72513b = j4;
        this.f72514c = j5;
    }

    @Override // kotlinx.coroutines.internal.r0
    @Nullable
    public q0<?> A() {
        return this.f72515d;
    }

    @Override // kotlinx.coroutines.internal.r0
    public void U(int i2) {
        this.f72516e = i2;
    }

    @Override // kotlinx.coroutines.internal.r0
    public int getIndex() {
        return this.f72516e;
    }

    @Override // kotlinx.coroutines.internal.r0
    public void m(@Nullable q0<?> q0Var) {
        this.f72515d = q0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f72512a.run();
    }

    @NotNull
    public String toString() {
        return "TimedRunnable(time=" + this.f72514c + ", run=" + this.f72512a + ')';
    }

    @Override // java.lang.Comparable
    /* renamed from: x */
    public int compareTo(@NotNull c cVar) {
        long j4 = this.f72514c;
        long j5 = cVar.f72514c;
        if (j4 == j5) {
            return Intrinsics.compare(this.f72513b, cVar.f72513b);
        }
        return Intrinsics.compare(j4, j5);
    }

    public /* synthetic */ c(Runnable runnable, long j4, long j5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(runnable, (i2 & 2) != 0 ? 0L : j4, (i2 & 4) != 0 ? 0L : j5);
    }
}
