package kotlinx.coroutines.flow;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", i = {0}, l = {TTAdConstant.IMAGE_LIST_SIZE_CODE, TTAdConstant.VIDEO_URL_CODE}, m = "onSubscription", n = {"safeCollector"}, s = {"L$1"})
/* loaded from: classes5.dex */
public final class SubscribedFlowCollector$onSubscription$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71925a;

    /* renamed from: b  reason: collision with root package name */
    Object f71926b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71927c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ SubscribedFlowCollector<T> f71928d;

    /* renamed from: e  reason: collision with root package name */
    int f71929e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribedFlowCollector$onSubscription$1(SubscribedFlowCollector<T> subscribedFlowCollector, Continuation<? super SubscribedFlowCollector$onSubscription$1> continuation) {
        super(continuation);
        this.f71928d = subscribedFlowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71927c = obj;
        this.f71929e |= Integer.MIN_VALUE;
        return this.f71928d.a(this);
    }
}
