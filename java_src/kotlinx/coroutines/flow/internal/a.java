package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.c;
import kotlinx.coroutines.flow.v;
import kotlinx.coroutines.flow.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractSharedFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00060\u0003j\u0002`\u0004B\u0007¢\u0006\u0004\b*\u0010#J\u000f\u0010\u0005\u001a\u00028\u0000H$¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\t2\u0006\u0010\b\u001a\u00020\u0007H$¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e0\u0011H\u0084\bR$\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00078\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR>\u0010$\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\t2\u0010\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\t8\u0004@BX\u0084\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!R\u0019\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070%8F@\u0006¢\u0006\u0006\u001a\u0004\b\u001b\u0010&R\u0016\u0010)\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u0016¨\u0006+"}, d2 = {"Lkotlinx/coroutines/flow/internal/a;", "Lkotlinx/coroutines/flow/internal/c;", "S", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "j", "()Lkotlinx/coroutines/flow/internal/c;", "", "size", "", "k", "(I)[Lkotlinx/coroutines/flow/internal/c;", ai.aA, "slot", "", "m", "(Lkotlinx/coroutines/flow/internal/c;)V", "Lkotlin/Function1;", "block", "l", "<set-?>", "b", "I", "n", "()I", "nCollectors", "Lkotlinx/coroutines/flow/k;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/flow/k;", "_subscriptionCount", "a", "[Lkotlinx/coroutines/flow/internal/c;", "o", "()[Lkotlinx/coroutines/flow/internal/c;", "getSlots$annotations", "()V", "slots", "Lkotlinx/coroutines/flow/v;", "()Lkotlinx/coroutines/flow/v;", "subscriptionCount", ai.aD, "nextIndex", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class a<S extends c<?>> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private S[] f72073a;

    /* renamed from: b  reason: collision with root package name */
    private int f72074b;

    /* renamed from: c  reason: collision with root package name */
    private int f72075c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private kotlinx.coroutines.flow.k<Integer> f72076d;

    protected static /* synthetic */ void p() {
    }

    @NotNull
    public final v<Integer> d() {
        kotlinx.coroutines.flow.k<Integer> kVar;
        synchronized (this) {
            kVar = this.f72076d;
            if (kVar == null) {
                kVar = w.a(Integer.valueOf(n()));
                this.f72076d = kVar;
            }
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final S i() {
        S s3;
        kotlinx.coroutines.flow.k<Integer> kVar;
        synchronized (this) {
            S[] o3 = o();
            if (o3 == null) {
                o3 = k(2);
                this.f72073a = o3;
            } else if (n() >= o3.length) {
                Object[] copyOf = Arrays.copyOf(o3, o3.length * 2);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                this.f72073a = (S[]) ((c[]) copyOf);
                o3 = (S[]) ((c[]) copyOf);
            }
            int i2 = this.f72075c;
            do {
                s3 = o3[i2];
                if (s3 == null) {
                    s3 = j();
                    o3[i2] = s3;
                }
                i2++;
                if (i2 >= o3.length) {
                    i2 = 0;
                }
            } while (!s3.a(this));
            this.f72075c = i2;
            this.f72074b = n() + 1;
            kVar = this.f72076d;
        }
        if (kVar != null) {
            w.h(kVar, 1);
        }
        return s3;
    }

    @NotNull
    protected abstract S j();

    @NotNull
    protected abstract S[] k(int i2);

    protected final void l(@NotNull Function1<? super S, Unit> function1) {
        c[] cVarArr;
        if (this.f72074b == 0 || (cVarArr = this.f72073a) == null) {
            return;
        }
        for (c cVar : cVarArr) {
            if (cVar != null) {
                function1.invoke(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m(@NotNull S s3) {
        kotlinx.coroutines.flow.k<Integer> kVar;
        int i2;
        Continuation<Unit>[] b4;
        synchronized (this) {
            this.f72074b = n() - 1;
            kVar = this.f72076d;
            i2 = 0;
            if (n() == 0) {
                this.f72075c = 0;
            }
            b4 = s3.b(this);
        }
        int length = b4.length;
        while (i2 < length) {
            Continuation<Unit> continuation = b4[i2];
            i2++;
            if (continuation != null) {
                Unit unit = Unit.INSTANCE;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m24constructorimpl(unit));
            }
        }
        if (kVar == null) {
            return;
        }
        w.h(kVar, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int n() {
        return this.f72074b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final S[] o() {
        return this.f72073a;
    }
}
