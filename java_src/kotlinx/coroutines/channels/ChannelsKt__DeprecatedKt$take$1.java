package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 1}, l = {254, 255}, m = "invokeSuspend", n = {"remaining", "remaining"}, s = {"I$0", "I$0"})
/* loaded from: classes5.dex */
final class ChannelsKt__DeprecatedKt$take$1<E> extends SuspendLambda implements Function2<w<? super E>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70968a;

    /* renamed from: b  reason: collision with root package name */
    int f70969b;

    /* renamed from: c  reason: collision with root package name */
    int f70970c;

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ Object f70971d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f70972e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70973f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$take$1(int i2, ReceiveChannel<? extends E> receiveChannel, Continuation<? super ChannelsKt__DeprecatedKt$take$1> continuation) {
        super(2, continuation);
        this.f70972e = i2;
        this.f70973f = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$take$1 channelsKt__DeprecatedKt$take$1 = new ChannelsKt__DeprecatedKt$take$1(this.f70972e, this.f70973f, continuation);
        channelsKt__DeprecatedKt$take$1.f70971d = obj;
        return channelsKt__DeprecatedKt$take$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super E> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$take$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0080 -> B:29:0x0082). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.f70970c
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L36
            if (r1 == r3) goto L27
            if (r1 != r2) goto L1f
            int r1 = r8.f70969b
            java.lang.Object r4 = r8.f70968a
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r8.f70971d
            kotlinx.coroutines.channels.w r5 = (kotlinx.coroutines.channels.w) r5
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r5
            r5 = r8
            goto L82
        L1f:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L27:
            int r1 = r8.f70969b
            java.lang.Object r4 = r8.f70968a
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r8.f70971d
            kotlinx.coroutines.channels.w r5 = (kotlinx.coroutines.channels.w) r5
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r8
            goto L65
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.f70971d
            kotlinx.coroutines.channels.w r9 = (kotlinx.coroutines.channels.w) r9
            int r1 = r8.f70972e
            if (r1 != 0) goto L44
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L44:
            if (r1 < 0) goto L48
            r4 = 1
            goto L49
        L48:
            r4 = 0
        L49:
            if (r4 == 0) goto L8c
            kotlinx.coroutines.channels.ReceiveChannel<E> r4 = r8.f70973f
            kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
            r5 = r8
        L52:
            r5.f70971d = r9
            r5.f70968a = r4
            r5.f70969b = r1
            r5.f70970c = r3
            java.lang.Object r6 = r4.b(r5)
            if (r6 != r0) goto L61
            return r0
        L61:
            r7 = r5
            r5 = r9
            r9 = r6
            r6 = r7
        L65:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L89
            java.lang.Object r9 = r4.next()
            r6.f70971d = r5
            r6.f70968a = r4
            r6.f70969b = r1
            r6.f70970c = r2
            java.lang.Object r9 = r5.R(r9, r6)
            if (r9 != r0) goto L80
            return r0
        L80:
            r9 = r5
            r5 = r6
        L82:
            int r1 = r1 + (-1)
            if (r1 != 0) goto L52
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L89:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L8c:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "Requested element count "
            r9.append(r0)
            r9.append(r1)
            java.lang.String r0 = " is less than zero."
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r0.<init>(r9)
            goto Lad
        Lac:
            throw r0
        Lad:
            goto Lac
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
