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
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {198, 199, 199}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$filter$1<E> extends SuspendLambda implements Function2<w<? super E>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70863a;

    /* renamed from: b  reason: collision with root package name */
    Object f70864b;

    /* renamed from: c  reason: collision with root package name */
    int f70865c;

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ Object f70866d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70867e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> f70868f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$filter$1(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super ChannelsKt__DeprecatedKt$filter$1> continuation) {
        super(2, continuation);
        this.f70867e = receiveChannel;
        this.f70868f = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$filter$1 channelsKt__DeprecatedKt$filter$1 = new ChannelsKt__DeprecatedKt$filter$1(this.f70867e, this.f70868f, continuation);
        channelsKt__DeprecatedKt$filter$1.f70866d = obj;
        return channelsKt__DeprecatedKt$filter$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super E> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$filter$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a4 -> B:14:0x0057). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.f70865c
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L48
            if (r1 == r5) goto L38
            if (r1 == r4) goto L26
            if (r1 != r3) goto L1e
            java.lang.Object r1 = r10.f70863a
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r6 = r10.f70866d
            kotlinx.coroutines.channels.w r6 = (kotlinx.coroutines.channels.w) r6
            kotlin.ResultKt.throwOnFailure(r11)
            goto L56
        L1e:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L26:
            java.lang.Object r1 = r10.f70864b
            java.lang.Object r6 = r10.f70863a
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r10.f70866d
            kotlinx.coroutines.channels.w r7 = (kotlinx.coroutines.channels.w) r7
            kotlin.ResultKt.throwOnFailure(r11)
            r8 = r7
            r7 = r1
            r1 = r0
            r0 = r10
            goto L8d
        L38:
            java.lang.Object r1 = r10.f70863a
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r6 = r10.f70866d
            kotlinx.coroutines.channels.w r6 = (kotlinx.coroutines.channels.w) r6
            kotlin.ResultKt.throwOnFailure(r11)
            r7 = r6
            r6 = r1
            r1 = r0
            r0 = r10
            goto L6c
        L48:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r10.f70866d
            kotlinx.coroutines.channels.w r11 = (kotlinx.coroutines.channels.w) r11
            kotlinx.coroutines.channels.ReceiveChannel<E> r1 = r10.f70867e
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r6 = r11
        L56:
            r11 = r10
        L57:
            r11.f70866d = r6
            r11.f70863a = r1
            r11.f70864b = r2
            r11.f70865c = r5
            java.lang.Object r7 = r1.b(r11)
            if (r7 != r0) goto L66
            return r0
        L66:
            r9 = r0
            r0 = r11
            r11 = r7
            r7 = r6
            r6 = r1
            r1 = r9
        L6c:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto La9
            java.lang.Object r11 = r6.next()
            kotlin.jvm.functions.Function2<E, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r8 = r0.f70868f
            r0.f70866d = r7
            r0.f70863a = r6
            r0.f70864b = r11
            r0.f70865c = r4
            java.lang.Object r8 = r8.invoke(r11, r0)
            if (r8 != r1) goto L89
            return r1
        L89:
            r9 = r7
            r7 = r11
            r11 = r8
            r8 = r9
        L8d:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto La4
            r0.f70866d = r8
            r0.f70863a = r6
            r0.f70864b = r2
            r0.f70865c = r3
            java.lang.Object r11 = r8.R(r7, r0)
            if (r11 != r1) goto La4
            return r1
        La4:
            r11 = r0
            r0 = r1
            r1 = r6
            r6 = r8
            goto L57
        La9:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
