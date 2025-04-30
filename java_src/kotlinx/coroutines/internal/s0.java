package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ThreadContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u001c\u0010\u0006\u001a\u00020\u00052\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007R&\u0010\r\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/internal/s0;", "", "Lkotlinx/coroutines/e3;", "element", "value", "", "a", "Lkotlin/coroutines/CoroutineContext;", "context", "b", "", ai.aD, "[Lkotlinx/coroutines/e3;", "elements", "[Ljava/lang/Object;", "values", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "I", ai.aA, "Lkotlin/coroutines/CoroutineContext;", "n", "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class s0 {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineContext f72219a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f72220b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final e3<Object>[] f72221c;

    /* renamed from: d  reason: collision with root package name */
    private int f72222d;

    public s0(@NotNull CoroutineContext coroutineContext, int i2) {
        this.f72219a = coroutineContext;
        this.f72220b = new Object[i2];
        this.f72221c = new e3[i2];
    }

    public final void a(@NotNull e3<?> e3Var, @Nullable Object obj) {
        Object[] objArr = this.f72220b;
        int i2 = this.f72222d;
        objArr[i2] = obj;
        e3<Object>[] e3VarArr = this.f72221c;
        this.f72222d = i2 + 1;
        e3VarArr[i2] = e3Var;
    }

    public final void b(@NotNull CoroutineContext coroutineContext) {
        int length = this.f72221c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            e3<Object> e3Var = this.f72221c[length];
            Intrinsics.checkNotNull(e3Var);
            e3Var.w(coroutineContext, this.f72220b[length]);
            if (i2 < 0) {
                return;
            }
            length = i2;
        }
    }
}
