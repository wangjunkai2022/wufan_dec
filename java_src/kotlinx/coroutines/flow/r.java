package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B-\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/flow/r;", "T", "", "Lkotlinx/coroutines/channels/BufferOverflow;", ai.aD, "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/f;", "a", "Lkotlinx/coroutines/flow/f;", "upstream", "Lkotlin/coroutines/CoroutineContext;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/coroutines/CoroutineContext;", "context", "", "b", "I", "extraBufferCapacity", "<init>", "(Lkotlinx/coroutines/flow/f;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class r<T> {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final f<T> f72098a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final int f72099b;
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final BufferOverflow f72100c;
    @JvmField
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final CoroutineContext f72101d;

    /* JADX WARN: Multi-variable type inference failed */
    public r(@NotNull f<? extends T> fVar, int i2, @NotNull BufferOverflow bufferOverflow, @NotNull CoroutineContext coroutineContext) {
        this.f72098a = fVar;
        this.f72099b = i2;
        this.f72100c = bufferOverflow;
        this.f72101d = coroutineContext;
    }
}
