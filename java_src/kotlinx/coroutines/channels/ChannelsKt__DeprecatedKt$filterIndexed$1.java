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
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2}, l = {211, 212, 212}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "e", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$2", "L$0"})
/* loaded from: classes5.dex */
final class ChannelsKt__DeprecatedKt$filterIndexed$1<E> extends SuspendLambda implements Function2<w<? super E>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70869a;

    /* renamed from: b  reason: collision with root package name */
    Object f70870b;

    /* renamed from: c  reason: collision with root package name */
    int f70871c;

    /* renamed from: d  reason: collision with root package name */
    int f70872d;

    /* renamed from: e  reason: collision with root package name */
    private /* synthetic */ Object f70873e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70874f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Function3<Integer, E, Continuation<? super Boolean>, Object> f70875g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$filterIndexed$1(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super ChannelsKt__DeprecatedKt$filterIndexed$1> continuation) {
        super(2, continuation);
        this.f70874f = receiveChannel;
        this.f70875g = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$filterIndexed$1 channelsKt__DeprecatedKt$filterIndexed$1 = new ChannelsKt__DeprecatedKt$filterIndexed$1(this.f70874f, this.f70875g, continuation);
        channelsKt__DeprecatedKt$filterIndexed$1.f70873e = obj;
        return channelsKt__DeprecatedKt$filterIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super E> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$filterIndexed$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00bc -> B:15:0x0062). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
