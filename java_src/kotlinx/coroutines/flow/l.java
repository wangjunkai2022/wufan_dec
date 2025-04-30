package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u001f\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0097Aø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00158\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/flow/l;", "T", "Lkotlinx/coroutines/flow/o;", "Lkotlinx/coroutines/flow/a;", "Lkotlinx/coroutines/flow/internal/j;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/f;", "a", "Lkotlinx/coroutines/c2;", "Lkotlinx/coroutines/c2;", "job", "", ai.aD, "()Ljava/util/List;", "replayCache", "flow", "<init>", "(Lkotlinx/coroutines/flow/o;Lkotlinx/coroutines/c2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class l<T> implements o<T>, a<T>, kotlinx.coroutines.flow.internal.j<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final c2 f72090a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ o<T> f72091b;

    /* JADX WARN: Multi-variable type inference failed */
    public l(@NotNull o<? extends T> oVar, @Nullable c2 c2Var) {
        this.f72090a = c2Var;
        this.f72091b = oVar;
    }

    @Override // kotlinx.coroutines.flow.internal.j
    @NotNull
    public f<T> a(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return p.e(this, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.o
    @NotNull
    public List<T> c() {
        return this.f72091b.c();
    }

    @Override // kotlinx.coroutines.flow.f
    @InternalCoroutinesApi
    @Nullable
    public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        return this.f72091b.e(gVar, continuation);
    }
}
