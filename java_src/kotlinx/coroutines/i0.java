package kotlinx.coroutines;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletionState.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001B4\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0001\u0012!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u000b\u0010\u0002\u001a\u0004\u0018\u00010\u0001HÆ\u0003J$\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J:\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012#\b\u0002\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R1\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0015¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/i0;", "", "a", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "b", "result", "onCancellation", ai.aD, "", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Lkotlin/jvm/functions/Function1;", "Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i0 {
    @JvmField
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Object f72133a;
    @JvmField
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Function1<Throwable, Unit> f72134b;

    /* JADX WARN: Multi-variable type inference failed */
    public i0(@Nullable Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        this.f72133a = obj;
        this.f72134b = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ i0 d(i0 i0Var, Object obj, Function1 function1, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = i0Var.f72133a;
        }
        if ((i2 & 2) != 0) {
            function1 = i0Var.f72134b;
        }
        return i0Var.c(obj, function1);
    }

    @Nullable
    public final Object a() {
        return this.f72133a;
    }

    @NotNull
    public final Function1<Throwable, Unit> b() {
        return this.f72134b;
    }

    @NotNull
    public final i0 c(@Nullable Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        return new i0(obj, function1);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i0) {
            i0 i0Var = (i0) obj;
            return Intrinsics.areEqual(this.f72133a, i0Var.f72133a) && Intrinsics.areEqual(this.f72134b, i0Var.f72134b);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f72133a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f72134b.hashCode();
    }

    @NotNull
    public String toString() {
        return "CompletedWithCancellation(result=" + this.f72133a + ", onCancellation=" + this.f72134b + ')';
    }
}
