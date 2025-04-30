package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Broadcast.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BO\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012-\u0010\u0013\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f¢\u0006\u0002\b\u0012ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0014R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/channels/t;", "E", "Lkotlinx/coroutines/channels/j;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "v", "", "Y0", "Lkotlin/coroutines/Continuation;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/coroutines/Continuation;", "continuation", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/h;", "channel", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/w;", "", "Lkotlin/ExtensionFunctionType;", "block", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class t<E> extends j<E> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Continuation<Unit> f71102d;

    public t(@NotNull CoroutineContext coroutineContext, @NotNull h<E> hVar, @NotNull Function2<? super w<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, hVar, false);
        Continuation<Unit> createCoroutineUnintercepted;
        createCoroutineUnintercepted = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
        this.f71102d = createCoroutineUnintercepted;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void Y0() {
        b3.a.d(this.f71102d, this);
    }

    @Override // kotlinx.coroutines.channels.j, kotlinx.coroutines.channels.h
    @NotNull
    public ReceiveChannel<E> v() {
        ReceiveChannel<E> v3 = u1().v();
        start();
        return v3;
    }
}
