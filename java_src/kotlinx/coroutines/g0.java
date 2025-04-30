package kotlinx.coroutines;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuationImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0082\b\u0018\u00002\u00020\u0001B\\\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012%\b\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b%\u0010&J\u001a\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003J&\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0004HÆ\u0003J`\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2%\b\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0019HÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001eR3\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001fR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010 R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010!R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001eR\u0013\u0010$\u001a\u00020\u001c8F@\u0006¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lkotlinx/coroutines/g0;", "", "Lkotlinx/coroutines/q;", "cont", "", "cause", "", ai.aA, "a", "Lkotlinx/coroutines/n;", "b", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "result", "cancelHandler", "onCancellation", "idempotentResume", "cancelCause", "f", "", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/Object;", "Lkotlin/jvm/functions/Function1;", "Ljava/lang/Throwable;", "Lkotlinx/coroutines/n;", "h", "()Z", "cancelled", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/n;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class g0 {
    @JvmField
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Object f72114a;
    @JvmField
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final n f72115b;
    @JvmField
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Function1<Throwable, Unit> f72116c;
    @JvmField
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Object f72117d;
    @JvmField
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Throwable f72118e;

    /* JADX WARN: Multi-variable type inference failed */
    public g0(@Nullable Object obj, @Nullable n nVar, @Nullable Function1<? super Throwable, Unit> function1, @Nullable Object obj2, @Nullable Throwable th) {
        this.f72114a = obj;
        this.f72115b = nVar;
        this.f72116c = function1;
        this.f72117d = obj2;
        this.f72118e = th;
    }

    public static /* synthetic */ g0 g(g0 g0Var, Object obj, n nVar, Function1 function1, Object obj2, Throwable th, int i2, Object obj3) {
        if ((i2 & 1) != 0) {
            obj = g0Var.f72114a;
        }
        if ((i2 & 2) != 0) {
            nVar = g0Var.f72115b;
        }
        n nVar2 = nVar;
        Function1<Throwable, Unit> function12 = function1;
        if ((i2 & 4) != 0) {
            function12 = g0Var.f72116c;
        }
        Function1 function13 = function12;
        if ((i2 & 8) != 0) {
            obj2 = g0Var.f72117d;
        }
        Object obj4 = obj2;
        if ((i2 & 16) != 0) {
            th = g0Var.f72118e;
        }
        return g0Var.f(obj, nVar2, function13, obj4, th);
    }

    @Nullable
    public final Object a() {
        return this.f72114a;
    }

    @Nullable
    public final n b() {
        return this.f72115b;
    }

    @Nullable
    public final Function1<Throwable, Unit> c() {
        return this.f72116c;
    }

    @Nullable
    public final Object d() {
        return this.f72117d;
    }

    @Nullable
    public final Throwable e() {
        return this.f72118e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g0) {
            g0 g0Var = (g0) obj;
            return Intrinsics.areEqual(this.f72114a, g0Var.f72114a) && Intrinsics.areEqual(this.f72115b, g0Var.f72115b) && Intrinsics.areEqual(this.f72116c, g0Var.f72116c) && Intrinsics.areEqual(this.f72117d, g0Var.f72117d) && Intrinsics.areEqual(this.f72118e, g0Var.f72118e);
        }
        return false;
    }

    @NotNull
    public final g0 f(@Nullable Object obj, @Nullable n nVar, @Nullable Function1<? super Throwable, Unit> function1, @Nullable Object obj2, @Nullable Throwable th) {
        return new g0(obj, nVar, function1, obj2, th);
    }

    public final boolean h() {
        return this.f72118e != null;
    }

    public int hashCode() {
        Object obj = this.f72114a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        n nVar = this.f72115b;
        int hashCode2 = (hashCode + (nVar == null ? 0 : nVar.hashCode())) * 31;
        Function1<Throwable, Unit> function1 = this.f72116c;
        int hashCode3 = (hashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.f72117d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f72118e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final void i(@NotNull q<?> qVar, @NotNull Throwable th) {
        n nVar = this.f72115b;
        if (nVar != null) {
            qVar.m(nVar, th);
        }
        Function1<Throwable, Unit> function1 = this.f72116c;
        if (function1 == null) {
            return;
        }
        qVar.o(function1, th);
    }

    @NotNull
    public String toString() {
        return "CompletedContinuation(result=" + this.f72114a + ", cancelHandler=" + this.f72115b + ", onCancellation=" + this.f72116c + ", idempotentResume=" + this.f72117d + ", cancelCause=" + this.f72118e + ')';
    }

    public /* synthetic */ g0(Object obj, n nVar, Function1 function1, Object obj2, Throwable th, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i2 & 2) != 0 ? null : nVar, (i2 & 4) != 0 ? null : function1, (i2 & 8) != 0 ? null : obj2, (i2 & 16) != 0 ? null : th);
    }
}
