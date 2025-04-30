package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
/* compiled from: ChannelFlow.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J,\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007H&¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/flow/internal/j;", "T", "Lkotlinx/coroutines/flow/f;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface j<T> extends kotlinx.coroutines.flow.f<T> {

    /* compiled from: ChannelFlow.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        public static /* synthetic */ kotlinx.coroutines.flow.f a(j jVar, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    coroutineContext = EmptyCoroutineContext.INSTANCE;
                }
                if ((i4 & 2) != 0) {
                    i2 = -3;
                }
                if ((i4 & 4) != 0) {
                    bufferOverflow = BufferOverflow.SUSPEND;
                }
                return jVar.a(coroutineContext, i2, bufferOverflow);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
        }
    }

    @NotNull
    kotlinx.coroutines.flow.f<T> a(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow);
}
