package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeTaskQueue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f\"\u0004\b\u0001\u0010\f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0015\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\u0019\u001a\u00020\u00168F@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/internal/u;", "", "E", "", "b", "()V", "element", "", "a", "(Ljava/lang/Object;)Z", com.sdk.a.g.f56552a, "()Ljava/lang/Object;", "R", "Lkotlin/Function1;", "transform", "", "f", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", com.xinzhu.overmind.utils.helpers.d.f64708a, "()Z", "e", "isEmpty", "", ai.aD, "()I", "size", "singleConsumer", "<init>", "(Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class u<E> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72224a = AtomicReferenceFieldUpdater.newUpdater(u.class, Object.class, "_cur");
    @NotNull
    private volatile /* synthetic */ Object _cur;

    public u(boolean z3) {
        this._cur = new v(8, z3);
    }

    public final boolean a(@NotNull E e4) {
        while (true) {
            v vVar = (v) this._cur;
            int a4 = vVar.a(e4);
            if (a4 == 0) {
                return true;
            }
            if (a4 == 1) {
                f72224a.compareAndSet(this, vVar, vVar.k());
            } else if (a4 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            v vVar = (v) this._cur;
            if (vVar.d()) {
                return;
            }
            f72224a.compareAndSet(this, vVar, vVar.k());
        }
    }

    public final int c() {
        return ((v) this._cur).f();
    }

    public final boolean d() {
        return ((v) this._cur).g();
    }

    public final boolean e() {
        return ((v) this._cur).h();
    }

    @NotNull
    public final <R> List<R> f(@NotNull Function1<? super E, ? extends R> function1) {
        return ((v) this._cur).i(function1);
    }

    @Nullable
    public final E g() {
        while (true) {
            v vVar = (v) this._cur;
            E e4 = (E) vVar.l();
            if (e4 != v.f72240t) {
                return e4;
            }
            f72224a.compareAndSet(this, vVar, vVar.k());
        }
    }
}
