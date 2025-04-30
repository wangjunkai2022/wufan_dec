package kotlinx.coroutines.selects;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
/* compiled from: Select.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002J5\u0010\b\u001a\u00020\u0007*\u00020\u00032\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H¦\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJG\u0010\r\u001a\u00020\u0007\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u00028\u00010\u000b2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\fH¦\u0002ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ[\u0010\u0012\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u000f\"\u0004\b\u0002\u0010\n*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\fH¦\u0002ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013JU\u0010\u0014\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u000f\"\u0004\b\u0002\u0010\n*\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00028\u00020\u00102\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\fH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J8\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H'ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/selects/a;", "R", "", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "", "b", "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/d;", "Lkotlin/Function2;", ai.aE, "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/e;", com.alipay.sdk.authjs.a.f9678l, "f", "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "m", "(Lkotlinx/coroutines/selects/e;Lkotlin/jvm/functions/Function2;)V", "", "timeMillis", "h", "(JLkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface a<R> {

    /* compiled from: Select.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlinx.coroutines.selects.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0476a {
        /* JADX WARN: Multi-variable type inference failed */
        public static <R, P, Q> void a(@NotNull a<? super R> aVar, @NotNull e<? super P, ? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
            aVar.f(eVar, null, function2);
        }
    }

    void b(@NotNull c cVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1);

    <P, Q> void f(@NotNull e<? super P, ? extends Q> eVar, P p3, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);

    @ExperimentalCoroutinesApi
    void h(long j4, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1);

    <P, Q> void m(@NotNull e<? super P, ? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);

    <Q> void u(@NotNull d<? extends Q> dVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);
}
