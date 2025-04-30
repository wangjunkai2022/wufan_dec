package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.AbstractChannel", f = "AbstractChannel.kt", i = {}, l = {632}, m = "receiveCatching-JP2dKIU", n = {}, s = {})
/* loaded from: classes5.dex */
public final class AbstractChannel$receiveCatching$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    /* synthetic */ Object f70786a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AbstractChannel<E> f70787b;

    /* renamed from: c  reason: collision with root package name */
    int f70788c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractChannel$receiveCatching$1(AbstractChannel<E> abstractChannel, Continuation<? super AbstractChannel$receiveCatching$1> continuation) {
        super(continuation);
        this.f70787b = abstractChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        this.f70786a = obj;
        this.f70788c |= Integer.MIN_VALUE;
        Object K = this.f70787b.K(this);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return K == coroutine_suspended ? K : n.b(K);
    }
}
