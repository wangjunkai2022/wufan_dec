package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Broadcast.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2", f = "Broadcast.kt", i = {0, 1}, l = {53, 54}, m = "invokeSuspend", n = {"$this$broadcast", "$this$broadcast"}, s = {"L$0", "L$0"})
/* loaded from: classes5.dex */
public final class BroadcastKt$broadcast$2<E> extends SuspendLambda implements Function2<w<? super E>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70790a;

    /* renamed from: b  reason: collision with root package name */
    int f70791b;

    /* renamed from: c  reason: collision with root package name */
    private /* synthetic */ Object f70792c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70793d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastKt$broadcast$2(ReceiveChannel<? extends E> receiveChannel, Continuation<? super BroadcastKt$broadcast$2> continuation) {
        super(2, continuation);
        this.f70793d = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        BroadcastKt$broadcast$2 broadcastKt$broadcast$2 = new BroadcastKt$broadcast$2(this.f70793d, continuation);
        broadcastKt$broadcast$2.f70792c = obj;
        return broadcastKt$broadcast$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super E> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((BroadcastKt$broadcast$2) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0068 -> B:12:0x003e). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f70791b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r7.f70790a
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r7.f70792c
            kotlinx.coroutines.channels.w r4 = (kotlinx.coroutines.channels.w) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r4
            goto L3d
        L1b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L23:
            java.lang.Object r1 = r7.f70790a
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r7.f70792c
            kotlinx.coroutines.channels.w r4 = (kotlinx.coroutines.channels.w) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r5 = r7
            goto L4f
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.f70792c
            kotlinx.coroutines.channels.w r8 = (kotlinx.coroutines.channels.w) r8
            kotlinx.coroutines.channels.ReceiveChannel<E> r1 = r7.f70793d
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
        L3d:
            r4 = r7
        L3e:
            r4.f70792c = r8
            r4.f70790a = r1
            r4.f70791b = r3
            java.lang.Object r5 = r1.b(r4)
            if (r5 != r0) goto L4b
            return r0
        L4b:
            r6 = r4
            r4 = r8
            r8 = r5
            r5 = r6
        L4f:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L6b
            java.lang.Object r8 = r1.next()
            r5.f70792c = r4
            r5.f70790a = r1
            r5.f70791b = r2
            java.lang.Object r8 = r4.R(r8, r5)
            if (r8 != r0) goto L68
            return r0
        L68:
            r8 = r4
            r4 = r5
            goto L3e
        L6b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastKt$broadcast$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
