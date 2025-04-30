package kotlinx.coroutines.channels;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {TypedValues.CycleType.TYPE_EASING, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE}, m = "maxWith", n = {"comparator", "iterator", "iterator", SimulatorExitPlayActivity_.G}, s = {"L$0", "L$2", "L$2", "L$3"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$maxWith$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70942a;

    /* renamed from: b  reason: collision with root package name */
    Object f70943b;

    /* renamed from: c  reason: collision with root package name */
    Object f70944c;

    /* renamed from: d  reason: collision with root package name */
    Object f70945d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f70946e;

    /* renamed from: f  reason: collision with root package name */
    int f70947f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$maxWith$1(Continuation<? super ChannelsKt__DeprecatedKt$maxWith$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object M;
        this.f70946e = obj;
        this.f70947f |= Integer.MIN_VALUE;
        M = ChannelsKt__DeprecatedKt.M(null, null, this);
        return M;
    }
}
