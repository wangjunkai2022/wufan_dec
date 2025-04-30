package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/channels/w;", "Lkotlin/collections/IndexedValue;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1}, l = {370, 371}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce"}, s = {"L$0", "I$0", "L$0"})
/* loaded from: classes5.dex */
final class ChannelsKt__DeprecatedKt$withIndex$1<E> extends SuspendLambda implements Function2<w<? super IndexedValue<? extends E>>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70995a;

    /* renamed from: b  reason: collision with root package name */
    int f70996b;

    /* renamed from: c  reason: collision with root package name */
    int f70997c;

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ Object f70998d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70999e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$withIndex$1(ReceiveChannel<? extends E> receiveChannel, Continuation<? super ChannelsKt__DeprecatedKt$withIndex$1> continuation) {
        super(2, continuation);
        this.f70999e = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$withIndex$1 channelsKt__DeprecatedKt$withIndex$1 = new ChannelsKt__DeprecatedKt$withIndex$1(this.f70999e, continuation);
        channelsKt__DeprecatedKt$withIndex$1.f70998d = obj;
        return channelsKt__DeprecatedKt$withIndex$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super IndexedValue<? extends E>> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$withIndex$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0078 -> B:12:0x0043). Please submit an issue!!! */
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
            int r1 = r10.f70997c
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            int r1 = r10.f70996b
            java.lang.Object r4 = r10.f70995a
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r10.f70998d
            kotlinx.coroutines.channels.w r5 = (kotlinx.coroutines.channels.w) r5
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r5
            goto L42
        L1d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L25:
            int r1 = r10.f70996b
            java.lang.Object r4 = r10.f70995a
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r10.f70998d
            kotlinx.coroutines.channels.w r5 = (kotlinx.coroutines.channels.w) r5
            kotlin.ResultKt.throwOnFailure(r11)
            r6 = r10
            goto L56
        L34:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r10.f70998d
            kotlinx.coroutines.channels.w r11 = (kotlinx.coroutines.channels.w) r11
            r1 = 0
            kotlinx.coroutines.channels.ReceiveChannel<E> r4 = r10.f70999e
            kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
        L42:
            r5 = r10
        L43:
            r5.f70998d = r11
            r5.f70995a = r4
            r5.f70996b = r1
            r5.f70997c = r3
            java.lang.Object r6 = r4.b(r5)
            if (r6 != r0) goto L52
            return r0
        L52:
            r9 = r5
            r5 = r11
            r11 = r6
            r6 = r9
        L56:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L7c
            java.lang.Object r11 = r4.next()
            kotlin.collections.IndexedValue r7 = new kotlin.collections.IndexedValue
            int r8 = r1 + 1
            r7.<init>(r1, r11)
            r6.f70998d = r5
            r6.f70995a = r4
            r6.f70996b = r8
            r6.f70997c = r2
            java.lang.Object r11 = r5.R(r7, r6)
            if (r11 != r0) goto L78
            return r0
        L78:
            r11 = r5
            r5 = r6
            r1 = r8
            goto L43
        L7c:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
