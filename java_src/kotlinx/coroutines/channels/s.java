package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Actor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003BO\u0012\u0006\u0010#\u001a\u00020\"\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000$\u0012-\u0010\u0019\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000&\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0016¢\u0006\u0002\b'ø\u0001\u0000¢\u0006\u0004\b(\u0010)J\b\u0010\u0006\u001a\u00020\u0005H\u0014J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0012\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016JX\u0010\u001a\u001a\u00020\u0005\"\u0004\b\u0001\u0010\b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00010\u00132\u0006\u0010\u0015\u001a\u00028\u00002(\u0010\u0019\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0016H\u0016ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bR(\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 \u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006*"}, d2 = {"Lkotlinx/coroutines/channels/s;", "E", "Lkotlinx/coroutines/channels/c;", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/b0;", "", "Y0", "element", "R", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/n;", "B", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "cause", "P", "Lkotlinx/coroutines/selects/f;", "select", com.alipay.sdk.authjs.a.f9678l, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "C", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", net.lingala.zip4j.util.e.f73017f0, "()Lkotlinx/coroutines/selects/e;", "onSend", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/coroutines/Continuation;", "continuation", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/k;", "channel", "Lkotlinx/coroutines/channels/e;", "Lkotlin/ExtensionFunctionType;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class s<E> extends c<E> implements kotlinx.coroutines.selects.e<E, b0<? super E>> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Continuation<? super Unit> f71101d;

    public s(@NotNull CoroutineContext coroutineContext, @NotNull k<E> kVar, @NotNull Function2<? super e<E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, kVar, false);
        Continuation<Unit> createCoroutineUnintercepted;
        createCoroutineUnintercepted = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
        this.f71101d = createCoroutineUnintercepted;
    }

    @Override // kotlinx.coroutines.channels.l, kotlinx.coroutines.channels.b0
    @NotNull
    public Object B(E e4) {
        start();
        return super.B(e4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.e
    public <R> void C(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, E e4, @NotNull Function2<? super b0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        start();
        super.r().C(fVar, e4, function2);
    }

    @Override // kotlinx.coroutines.channels.l, kotlinx.coroutines.channels.b0
    public boolean P(@Nullable Throwable th) {
        boolean P = super.P(th);
        start();
        return P;
    }

    @Override // kotlinx.coroutines.channels.l, kotlinx.coroutines.channels.b0
    @Nullable
    public Object R(E e4, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        start();
        Object R = super.R(e4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return R == coroutine_suspended ? R : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void Y0() {
        b3.a.d(this.f71101d, this);
    }

    @Override // kotlinx.coroutines.channels.l, kotlinx.coroutines.channels.b0
    public boolean offer(E e4) {
        start();
        return super.offer(e4);
    }

    @Override // kotlinx.coroutines.channels.l, kotlinx.coroutines.channels.b0
    @NotNull
    public kotlinx.coroutines.selects.e<E, b0<E>> r() {
        return this;
    }
}
