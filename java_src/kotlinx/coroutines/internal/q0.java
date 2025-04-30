package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.lang.Comparable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.r0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadSafeHeap.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007¢\u0006\u0004\b0\u0010\u0012J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082\u0010¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082\u0010¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\fH\u0002¢\u0006\u0004\b\u0007\u0010\rJ\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0015\u0010\u0014J&\u0010\u0019\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0016H\u0086\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ.\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00028\u00002\u0014\u0010\u001e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00170\u0016H\u0086\b¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\u000e\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010!J\u0011\u0010\"\u001a\u0004\u0018\u00018\u0000H\u0001¢\u0006\u0004\b\"\u0010\u0014J\u0017\u0010$\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0006H\u0001¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00028\u0000H\u0001¢\u0006\u0004\b&\u0010\u001dR$\u0010+\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00068F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010)\"\u0004\b*\u0010\nR \u0010&\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010,R\u0013\u0010/\u001a\u00020\u00178F@\u0006¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u00061"}, d2 = {"Lkotlinx/coroutines/internal/q0;", "Lkotlinx/coroutines/internal/r0;", "", "T", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", ai.aA, "", ai.av, "(I)V", "o", "", "()[Lkotlinx/coroutines/internal/r0;", "j", "q", "(II)V", com.xinzhu.overmind.utils.helpers.d.f64708a, "()V", "h", "()Lkotlinx/coroutines/internal/r0;", "m", "Lkotlin/Function1;", "", "predicate", "l", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/r0;", "node", "b", "(Lkotlinx/coroutines/internal/r0;)V", "cond", ai.aD, "(Lkotlinx/coroutines/internal/r0;Lkotlin/jvm/functions/Function1;)Z", "(Lkotlinx/coroutines/internal/r0;)Z", "e", "index", "k", "(I)Lkotlinx/coroutines/internal/r0;", "a", "value", "f", "()I", "n", "size", "[Lkotlinx/coroutines/internal/r0;", com.sdk.a.g.f56552a, "()Z", "isEmpty", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class q0<T extends r0 & Comparable<? super T>> {
    @NotNull
    private volatile /* synthetic */ int _size = 0;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private T[] f72197a;

    private final T[] i() {
        T[] tArr = this.f72197a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new r0[4];
            this.f72197a = tArr2;
            return tArr2;
        } else if (f() >= tArr.length) {
            Object[] copyOf = Arrays.copyOf(tArr, f() * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            T[] tArr3 = (T[]) ((r0[]) copyOf);
            this.f72197a = tArr3;
            return tArr3;
        } else {
            return tArr;
        }
    }

    private final void n(int i2) {
        this._size = i2;
    }

    private final void o(int i2) {
        while (true) {
            int i4 = (i2 * 2) + 1;
            if (i4 >= f()) {
                return;
            }
            T[] tArr = this.f72197a;
            Intrinsics.checkNotNull(tArr);
            int i5 = i4 + 1;
            if (i5 < f()) {
                T t3 = tArr[i5];
                Intrinsics.checkNotNull(t3);
                T t4 = tArr[i4];
                Intrinsics.checkNotNull(t4);
                if (((Comparable) t3).compareTo(t4) < 0) {
                    i4 = i5;
                }
            }
            T t5 = tArr[i2];
            Intrinsics.checkNotNull(t5);
            T t6 = tArr[i4];
            Intrinsics.checkNotNull(t6);
            if (((Comparable) t5).compareTo(t6) <= 0) {
                return;
            }
            q(i2, i4);
            i2 = i4;
        }
    }

    private final void p(int i2) {
        while (i2 > 0) {
            T[] tArr = this.f72197a;
            Intrinsics.checkNotNull(tArr);
            int i4 = (i2 - 1) / 2;
            T t3 = tArr[i4];
            Intrinsics.checkNotNull(t3);
            T t4 = tArr[i2];
            Intrinsics.checkNotNull(t4);
            if (((Comparable) t3).compareTo(t4) <= 0) {
                return;
            }
            q(i2, i4);
            i2 = i4;
        }
    }

    private final void q(int i2, int i4) {
        T[] tArr = this.f72197a;
        Intrinsics.checkNotNull(tArr);
        T t3 = tArr[i4];
        Intrinsics.checkNotNull(t3);
        T t4 = tArr[i2];
        Intrinsics.checkNotNull(t4);
        tArr[i2] = t3;
        tArr[i4] = t4;
        t3.U(i2);
        t4.U(i4);
    }

    @PublishedApi
    public final void a(@NotNull T t3) {
        if (v0.b()) {
            if (!(t3.A() == null)) {
                throw new AssertionError();
            }
        }
        t3.m(this);
        T[] i2 = i();
        int f4 = f();
        n(f4 + 1);
        i2[f4] = t3;
        t3.U(f4);
        p(f4);
    }

    public final void b(@NotNull T t3) {
        synchronized (this) {
            a(t3);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean c(@NotNull T t3, @NotNull Function1<? super T, Boolean> function1) {
        boolean z3;
        synchronized (this) {
            try {
                if (function1.invoke(e()).booleanValue()) {
                    a(t3);
                    z3 = true;
                } else {
                    z3 = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return z3;
    }

    public final void d() {
        synchronized (this) {
            T[] tArr = this.f72197a;
            if (tArr != null) {
                ArraysKt___ArraysJvmKt.fill$default(tArr, (Object) null, 0, 0, 6, (Object) null);
            }
            this._size = 0;
            Unit unit = Unit.INSTANCE;
        }
    }

    @PublishedApi
    @Nullable
    public final T e() {
        T[] tArr = this.f72197a;
        if (tArr == null) {
            return null;
        }
        return tArr[0];
    }

    public final int f() {
        return this._size;
    }

    public final boolean g() {
        return f() == 0;
    }

    @Nullable
    public final T h() {
        T e4;
        synchronized (this) {
            e4 = e();
        }
        return e4;
    }

    public final boolean j(@NotNull T t3) {
        boolean z3;
        synchronized (this) {
            z3 = true;
            if (t3.A() == null) {
                z3 = false;
            } else {
                int index = t3.getIndex();
                if (v0.b()) {
                    if (!(index >= 0)) {
                        throw new AssertionError();
                    }
                }
                k(index);
            }
        }
        return z3;
    }

    @PublishedApi
    @NotNull
    public final T k(int i2) {
        if (v0.b()) {
            if (!(f() > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f72197a;
        Intrinsics.checkNotNull(tArr);
        n(f() - 1);
        if (i2 < f()) {
            q(i2, f());
            int i4 = (i2 - 1) / 2;
            if (i2 > 0) {
                T t3 = tArr[i2];
                Intrinsics.checkNotNull(t3);
                T t4 = tArr[i4];
                Intrinsics.checkNotNull(t4);
                if (((Comparable) t3).compareTo(t4) < 0) {
                    q(i2, i4);
                    p(i4);
                }
            }
            o(i2);
        }
        T t5 = tArr[f()];
        Intrinsics.checkNotNull(t5);
        if (v0.b()) {
            if (!(t5.A() == this)) {
                throw new AssertionError();
            }
        }
        t5.m(null);
        t5.U(-1);
        tArr[f()] = null;
        return t5;
    }

    @Nullable
    public final T l(@NotNull Function1<? super T, Boolean> function1) {
        synchronized (this) {
            try {
                T e4 = e();
                if (e4 == null) {
                    InlineMarker.finallyStart(2);
                    InlineMarker.finallyEnd(2);
                    return null;
                }
                T k4 = function1.invoke(e4).booleanValue() ? k(0) : null;
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return k4;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
    }

    @Nullable
    public final T m() {
        T k4;
        synchronized (this) {
            k4 = f() > 0 ? k(0) : null;
        }
        return k4;
    }
}
