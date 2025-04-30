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
/* JADX INFO: Add missing generic type declarations: [V] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@"}, d2 = {"E", "R", "V", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {487, 469, 471}, m = "invokeSuspend", n = {"$this$produce", "otherIterator", "$this$consume$iv$iv", "$this$produce", "otherIterator", "$this$consume$iv$iv", "element1"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$5"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$zip$2<V> extends SuspendLambda implements Function2<w<? super V>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f71001a;

    /* renamed from: b  reason: collision with root package name */
    Object f71002b;

    /* renamed from: c  reason: collision with root package name */
    Object f71003c;

    /* renamed from: d  reason: collision with root package name */
    Object f71004d;

    /* renamed from: e  reason: collision with root package name */
    Object f71005e;

    /* renamed from: f  reason: collision with root package name */
    int f71006f;

    /* renamed from: g  reason: collision with root package name */
    private /* synthetic */ Object f71007g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<R> f71008h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f71009i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function2<E, R, V> f71010j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$zip$2(ReceiveChannel<? extends R> receiveChannel, ReceiveChannel<? extends E> receiveChannel2, Function2<? super E, ? super R, ? extends V> function2, Continuation<? super ChannelsKt__DeprecatedKt$zip$2> continuation) {
        super(2, continuation);
        this.f71008h = receiveChannel;
        this.f71009i = receiveChannel2;
        this.f71010j = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$zip$2 channelsKt__DeprecatedKt$zip$2 = new ChannelsKt__DeprecatedKt$zip$2(this.f71008h, this.f71009i, this.f71010j, continuation);
        channelsKt__DeprecatedKt$zip$2.f71007g = obj;
        return channelsKt__DeprecatedKt$zip$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super V> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$zip$2) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #2 {all -> 0x0056, blocks: (B:26:0x00b1, B:28:0x00b9, B:40:0x0109, B:13:0x004a), top: B:53:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9 A[Catch: all -> 0x0106, TRY_LEAVE, TryCatch #1 {all -> 0x0106, blocks: (B:32:0x00d9, B:35:0x00e9), top: B:51:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0109 A[Catch: all -> 0x0056, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0056, blocks: (B:26:0x00b1, B:28:0x00b9, B:40:0x0109, B:13:0x004a), top: B:53:0x004a }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00e1 -> B:22:0x0093). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
