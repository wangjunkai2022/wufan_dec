package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletionHandler.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a8\u0010\u0007\u001a\u00020\u0005*#\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u00062\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0080\b\"<\u0010\u000b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u0006*\u00020\b8À\u0002@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\"<\u0010\u000b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u0006*\u00020\f8À\u0002@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", ai.aD, "Lkotlinx/coroutines/o;", "a", "(Lkotlinx/coroutines/o;)Lkotlin/jvm/functions/Function1;", "asHandler", "Lkotlinx/coroutines/j0;", "b", "(Lkotlinx/coroutines/j0;)Lkotlin/jvm/functions/Function1;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class k0 {
    @NotNull
    public static final Function1<Throwable, Unit> a(@NotNull o oVar) {
        return oVar;
    }

    @NotNull
    public static final Function1<Throwable, Unit> b(@NotNull j0 j0Var) {
        return j0Var;
    }

    public static final void c(@NotNull Function1<? super Throwable, Unit> function1, @Nullable Throwable th) {
        function1.invoke(th);
    }
}
