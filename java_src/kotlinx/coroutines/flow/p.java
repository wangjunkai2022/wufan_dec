package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharedFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a0\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a%\u0010\f\u001a\u0004\u0018\u00010\t*\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\r\u001a-\u0010\u0010\u001a\u00020\u000f*\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a6\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\"\u001c\u0010\u001c\u001a\u00020\u00188\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0019\u0012\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"T", "", "replay", "extraBufferCapacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/j;", "a", "", "", "", "index", "f", "([Ljava/lang/Object;J)Ljava/lang/Object;", "item", "", "h", "([Ljava/lang/Object;JLjava/lang/Object;)V", "Lkotlinx/coroutines/flow/o;", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/flow/f;", "e", "Lkotlinx/coroutines/internal/i0;", "Lkotlinx/coroutines/internal/i0;", "getNO_VALUE$annotations", "()V", "NO_VALUE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class p {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i0 f72095a = new i0("NO_VALUE");

    @NotNull
    public static final <T> j<T> a(int i2, int i4, @NotNull BufferOverflow bufferOverflow) {
        boolean z3 = true;
        if (i2 >= 0) {
            if (i4 >= 0) {
                if (i2 <= 0 && i4 <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
                    z3 = false;
                }
                if (z3) {
                    int i5 = i4 + i2;
                    if (i5 < 0) {
                        i5 = Integer.MAX_VALUE;
                    }
                    return new SharedFlowImpl(i2, i5, bufferOverflow);
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ", bufferOverflow).toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("extraBufferCapacity cannot be negative, but was ", Integer.valueOf(i4)).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("replay cannot be negative, but was ", Integer.valueOf(i2)).toString());
    }

    public static /* synthetic */ j b(int i2, int i4, BufferOverflow bufferOverflow, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = 0;
        }
        if ((i5 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return a(i2, i4, bufferOverflow);
    }

    @NotNull
    public static final <T> f<T> e(@NotNull o<? extends T> oVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return ((i2 == 0 || i2 == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? oVar : new kotlinx.coroutines.flow.internal.e(oVar, coroutineContext, i2, bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(Object[] objArr, long j4) {
        return objArr[(objArr.length - 1) & ((int) j4)];
    }

    public static /* synthetic */ void g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Object[] objArr, long j4, Object obj) {
        objArr[(objArr.length - 1) & ((int) j4)] = obj;
    }
}
