package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.q0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Produce.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014R\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/channels/v;", "E", "Lkotlinx/coroutines/channels/l;", "Lkotlinx/coroutines/channels/w;", "", "value", "v1", "(Lkotlin/Unit;)V", "", "cause", "", "handled", "r1", "isActive", "()Z", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/k;", "channel", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class v<E> extends l<E> implements w<E> {
    public v(@NotNull CoroutineContext coroutineContext, @NotNull k<E> kVar) {
        super(coroutineContext, kVar, true, true);
    }

    @Override // kotlinx.coroutines.channels.w
    public /* bridge */ /* synthetic */ b0 getChannel() {
        return getChannel();
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.a
    protected void r1(@NotNull Throwable th, boolean z3) {
        if (u1().P(th) || z3) {
            return;
        }
        q0.b(getContext(), th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* renamed from: v1 */
    public void s1(@NotNull Unit unit) {
        b0.a.a(u1(), null, 1, null);
    }
}
