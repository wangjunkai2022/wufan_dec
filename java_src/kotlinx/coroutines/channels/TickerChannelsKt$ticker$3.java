package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TickerChannels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", f = "TickerChannels.kt", i = {}, l = {72, 73}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class TickerChannelsKt$ticker$3 extends SuspendLambda implements Function2<w<? super Unit>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71032a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71033b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ TickerMode f71034c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f71035d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ long f71036e;

    /* compiled from: TickerChannels.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TickerMode.values().length];
            iArr[TickerMode.FIXED_PERIOD.ordinal()] = 1;
            iArr[TickerMode.FIXED_DELAY.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickerChannelsKt$ticker$3(TickerMode tickerMode, long j4, long j5, Continuation<? super TickerChannelsKt$ticker$3> continuation) {
        super(2, continuation);
        this.f71034c = tickerMode;
        this.f71035d = j4;
        this.f71036e = j5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        TickerChannelsKt$ticker$3 tickerChannelsKt$ticker$3 = new TickerChannelsKt$ticker$3(this.f71034c, this.f71035d, this.f71036e, continuation);
        tickerChannelsKt$ticker$3.f71033b = obj;
        return tickerChannelsKt$ticker$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<? super Unit> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((TickerChannelsKt$ticker$3) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object d4;
        Object c4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71032a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            w wVar = (w) this.f71033b;
            int i4 = a.$EnumSwitchMapping$0[this.f71034c.ordinal()];
            if (i4 == 1) {
                long j4 = this.f71035d;
                long j5 = this.f71036e;
                b0 channel = wVar.getChannel();
                this.f71032a = 1;
                d4 = TickerChannelsKt.d(j4, j5, channel, this);
                if (d4 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 == 2) {
                long j6 = this.f71035d;
                long j7 = this.f71036e;
                b0 channel2 = wVar.getChannel();
                this.f71032a = 2;
                c4 = TickerChannelsKt.c(j6, j7, channel2, this);
                if (c4 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else if (i2 != 1 && i2 != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
