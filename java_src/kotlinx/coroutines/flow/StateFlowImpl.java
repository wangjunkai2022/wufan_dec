package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StateFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006B\u000f\u0012\u0006\u00106\u001a\u00020\u0007¢\u0006\u0004\b7\u0010.J!\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001a\u001a\u00020\u00132\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030 2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014¢\u0006\u0004\b!\u0010\"J-\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000(2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b)\u0010*R*\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00008V@VX\u0096\u000e¢\u0006\u0012\u0012\u0004\b/\u0010\u0017\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u00100R\u001c\u00105\u001a\b\u0012\u0004\u0012\u00028\u0000028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u00104\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lkotlinx/coroutines/flow/StateFlowImpl;", "T", "Lkotlinx/coroutines/flow/internal/a;", "Lkotlinx/coroutines/flow/x;", "Lkotlinx/coroutines/flow/k;", "Lkotlinx/coroutines/flow/a;", "Lkotlinx/coroutines/flow/internal/j;", "", "expectedState", "newState", "", ai.aF, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "expect", "update", "compareAndSet", "value", "b", "(Ljava/lang/Object;)Z", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "()V", "Lkotlinx/coroutines/flow/g;", "collector", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "q", "()Lkotlinx/coroutines/flow/x;", "", "size", "", net.lingala.zip4j.util.e.f73017f0, "(I)[Lkotlinx/coroutines/flow/x;", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/f;", "a", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "getValue$annotations", "I", "sequence", "", ai.aD, "()Ljava/util/List;", "replayCache", "initialState", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class StateFlowImpl<T> extends kotlinx.coroutines.flow.internal.a<x> implements k<T>, a<T>, kotlinx.coroutines.flow.internal.j<T> {
    @NotNull
    private volatile /* synthetic */ Object _state;

    /* renamed from: e  reason: collision with root package name */
    private int f71914e;

    public StateFlowImpl(@NotNull Object obj) {
        this._state = obj;
    }

    public static /* synthetic */ void s() {
    }

    private final boolean t(Object obj, Object obj2) {
        int i2;
        x[] o3;
        o();
        synchronized (this) {
            Object obj3 = this._state;
            if (obj != null && !Intrinsics.areEqual(obj3, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(obj3, obj2)) {
                return true;
            }
            this._state = obj2;
            int i4 = this.f71914e;
            if ((i4 & 1) == 0) {
                int i5 = i4 + 1;
                this.f71914e = i5;
                x[] o4 = o();
                Unit unit = Unit.INSTANCE;
                while (true) {
                    x[] xVarArr = o4;
                    if (xVarArr != null) {
                        for (x xVar : xVarArr) {
                            if (xVar != null) {
                                xVar.f();
                            }
                        }
                    }
                    synchronized (this) {
                        i2 = this.f71914e;
                        if (i2 == i5) {
                            this.f71914e = i5 + 1;
                            return true;
                        }
                        o3 = o();
                        Unit unit2 = Unit.INSTANCE;
                    }
                    o4 = o3;
                    i5 = i2;
                }
            } else {
                this.f71914e = i4 + 2;
                return true;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.j
    @NotNull
    public f<T> a(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return w.d(this, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.j
    public boolean b(T t3) {
        setValue(t3);
        return true;
    }

    @Override // kotlinx.coroutines.flow.o
    @NotNull
    public List<T> c() {
        List<T> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getValue());
        return listOf;
    }

    @Override // kotlinx.coroutines.flow.k
    public boolean compareAndSet(T t3, T t4) {
        if (t3 == null) {
            t3 = (T) kotlinx.coroutines.flow.internal.m.f72084a;
        }
        if (t4 == null) {
            t4 = (T) kotlinx.coroutines.flow.internal.m.f72084a;
        }
        return t(t3, t4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r11, r12) == false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ab A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:39:0x00b0, B:49:0x00d1, B:51:0x00d7, B:41:0x00b6, B:45:0x00bd, B:37:0x00ab, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:59:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:39:0x00b0, B:49:0x00d1, B:51:0x00d7, B:41:0x00b6, B:45:0x00bd, B:37:0x00ab, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:59:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:39:0x00b0, B:49:0x00d1, B:51:0x00d7, B:41:0x00b6, B:45:0x00bd, B:37:0x00ab, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:59:0x0024 }] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00d5 -> B:34:0x00a6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00e7 -> B:34:0x00a6). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.j, kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
        setValue(t3);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.j
    public void f() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.k, kotlinx.coroutines.flow.v
    public T getValue() {
        i0 i0Var = kotlinx.coroutines.flow.internal.m.f72084a;
        T t3 = (T) this._state;
        if (t3 == i0Var) {
            return null;
        }
        return t3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @NotNull
    /* renamed from: q */
    public x j() {
        return new x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @NotNull
    /* renamed from: r */
    public x[] k(int i2) {
        return new x[i2];
    }

    @Override // kotlinx.coroutines.flow.k
    public void setValue(T t3) {
        if (t3 == null) {
            t3 = (T) kotlinx.coroutines.flow.internal.m.f72084a;
        }
        t(null, t3);
    }
}
