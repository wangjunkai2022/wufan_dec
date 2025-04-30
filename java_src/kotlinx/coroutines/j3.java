package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Interruptible.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002#\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0015\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/j3;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "", NoticeTopAnimActivityDialog_.f34402n, "", "b", "(I)Ljava/lang/Void;", com.xinzhu.overmind.utils.helpers.d.f64708a, "()V", "a", ai.aD, "(Ljava/lang/Throwable;)V", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "Ljava/lang/Thread;", "targetThread", "Lkotlinx/coroutines/j1;", "Lkotlinx/coroutines/j1;", "cancelHandle", "Lkotlinx/coroutines/c2;", "Lkotlinx/coroutines/c2;", "job", "<init>", "(Lkotlinx/coroutines/c2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class j3 implements Function1<Throwable, Unit> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72266d = AtomicIntegerFieldUpdater.newUpdater(j3.class, "_state");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final c2 f72267a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private j1 f72269c;
    @NotNull
    private volatile /* synthetic */ int _state = 0;

    /* renamed from: b  reason: collision with root package name */
    private final Thread f72268b = Thread.currentThread();

    public j3(@NotNull c2 c2Var) {
        this.f72267a = c2Var;
    }

    private final Void b(int i2) {
        throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", Integer.valueOf(i2)).toString());
    }

    public final void a() {
        while (true) {
            int i2 = this._state;
            if (i2 != 0) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        b(i2);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f72266d.compareAndSet(this, i2, 1)) {
                j1 j1Var = this.f72269c;
                if (j1Var == null) {
                    return;
                }
                j1Var.dispose();
                return;
            }
        }
    }

    public void c(@Nullable Throwable th) {
        int i2;
        do {
            i2 = this._state;
            if (i2 != 0) {
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    return;
                }
                b(i2);
                throw new KotlinNothingValueException();
            }
        } while (!f72266d.compareAndSet(this, i2, 2));
        this.f72268b.interrupt();
        this._state = 3;
    }

    public final void d() {
        int i2;
        this.f72269c = this.f72267a.k(true, true, this);
        do {
            i2 = this._state;
            if (i2 != 0) {
                if (i2 == 2 || i2 == 3) {
                    return;
                }
                b(i2);
                throw new KotlinNothingValueException();
            }
        } while (!f72266d.compareAndSet(this, i2, 0));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        c(th);
        return Unit.INSTANCE;
    }
}
