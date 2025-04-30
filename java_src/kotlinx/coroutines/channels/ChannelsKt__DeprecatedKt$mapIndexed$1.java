package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"E", "R", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {344, 345, 345}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$mapIndexed$1<R> extends SuspendLambda implements Function2<w<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70935a;

    /* renamed from: b  reason: collision with root package name */
    Object f70936b;

    /* renamed from: c  reason: collision with root package name */
    int f70937c;

    /* renamed from: d  reason: collision with root package name */
    int f70938d;

    /* renamed from: e  reason: collision with root package name */
    private /* synthetic */ Object f70939e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70940f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Function3<Integer, E, Continuation<? super R>, Object> f70941g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$mapIndexed$1(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super ChannelsKt__DeprecatedKt$mapIndexed$1> continuation) {
        super(2, continuation);
        this.f70940f = receiveChannel;
        this.f70941g = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$mapIndexed$1 channelsKt__DeprecatedKt$mapIndexed$1 = new ChannelsKt__DeprecatedKt$mapIndexed$1(this.f70940f, this.f70941g, continuation);
        channelsKt__DeprecatedKt$mapIndexed$1.f70939e = obj;
        return channelsKt__DeprecatedKt$mapIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super R> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$mapIndexed$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ac  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a8 -> B:14:0x0059). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.f70938d
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L4a
            if (r1 == r4) goto L3b
            if (r1 == r3) goto L28
            if (r1 != r2) goto L20
            int r1 = r11.f70937c
            java.lang.Object r5 = r11.f70935a
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r11.f70939e
            kotlinx.coroutines.channels.w r6 = (kotlinx.coroutines.channels.w) r6
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r6
            goto L58
        L20:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L28:
            int r1 = r11.f70937c
            java.lang.Object r5 = r11.f70936b
            kotlinx.coroutines.channels.w r5 = (kotlinx.coroutines.channels.w) r5
            java.lang.Object r6 = r11.f70935a
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r11.f70939e
            kotlinx.coroutines.channels.w r7 = (kotlinx.coroutines.channels.w) r7
            kotlin.ResultKt.throwOnFailure(r12)
            r8 = r11
            goto L96
        L3b:
            int r1 = r11.f70937c
            java.lang.Object r5 = r11.f70935a
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r11.f70939e
            kotlinx.coroutines.channels.w r6 = (kotlinx.coroutines.channels.w) r6
            kotlin.ResultKt.throwOnFailure(r12)
            r7 = r11
            goto L6c
        L4a:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.f70939e
            kotlinx.coroutines.channels.w r12 = (kotlinx.coroutines.channels.w) r12
            r1 = 0
            kotlinx.coroutines.channels.ReceiveChannel<E> r5 = r11.f70940f
            kotlinx.coroutines.channels.ChannelIterator r5 = r5.iterator()
        L58:
            r6 = r11
        L59:
            r6.f70939e = r12
            r6.f70935a = r5
            r6.f70937c = r1
            r6.f70938d = r4
            java.lang.Object r7 = r5.b(r6)
            if (r7 != r0) goto L68
            return r0
        L68:
            r10 = r6
            r6 = r12
            r12 = r7
            r7 = r10
        L6c:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto Lac
            java.lang.Object r12 = r5.next()
            kotlin.jvm.functions.Function3<java.lang.Integer, E, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r8 = r7.f70941g
            int r9 = r1 + 1
            java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
            r7.f70939e = r6
            r7.f70935a = r5
            r7.f70936b = r6
            r7.f70937c = r9
            r7.f70938d = r3
            java.lang.Object r12 = r8.invoke(r1, r12, r7)
            if (r12 != r0) goto L91
            return r0
        L91:
            r8 = r7
            r1 = r9
            r7 = r6
            r6 = r5
            r5 = r7
        L96:
            r8.f70939e = r7
            r8.f70935a = r6
            r9 = 0
            r8.f70936b = r9
            r8.f70937c = r1
            r8.f70938d = r2
            java.lang.Object r12 = r5.R(r12, r8)
            if (r12 != r0) goto La8
            return r0
        La8:
            r5 = r6
            r12 = r7
            r6 = r8
            goto L59
        Lac:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
