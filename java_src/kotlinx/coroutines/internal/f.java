package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConcurrentLinkedList.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u001ao\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000228\u0010\b\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0003\u0012\u0015\u0012\u0013\u0018\u00018\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0082\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\u000e\u001a\u00028\u0000\"\u000e\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\f*\u00028\u0000H\u0000¢\u0006\u0004\b\u000e\u0010\u000f\"\u001c\u0010\u0014\u001a\u00020\u00108\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0011\u0012\u0004\b\u0012\u0010\u0013\"\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/internal/f0;", "S", "", "id", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "prev", "createNewSegment", "Lkotlinx/coroutines/internal/g0;", ai.aD, "(Lkotlinx/coroutines/internal/f0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/g;", "N", "b", "(Lkotlinx/coroutines/internal/g;)Lkotlinx/coroutines/internal/g;", "Lkotlinx/coroutines/internal/i0;", "Lkotlinx/coroutines/internal/i0;", "getCLOSED$annotations", "()V", "CLOSED", "", "a", "I", "POINTERS_SHIFT", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a */
    private static final int f72168a = 16;
    @NotNull

    /* renamed from: b */
    private static final i0 f72169b = new i0("CLOSED");

    public static final /* synthetic */ i0 a() {
        return f72169b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.g] */
    @NotNull
    public static final <N extends g<N>> N b(@NotNull N n4) {
        while (true) {
            Object e4 = n4.e();
            if (e4 == f72169b) {
                return n4;
            }
            ?? r02 = (g) e4;
            if (r02 != 0) {
                n4 = r02;
            } else if (n4.j()) {
                return n4;
            }
        }
    }

    private static final <S extends f0<S>> Object c(S s3, long j4, Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s3.o() < j4 || s3.g()) {
                Object e4 = s3.e();
                if (e4 == f72169b) {
                    return g0.b(f72169b);
                }
                S s4 = (S) ((g) e4);
                if (s4 == null) {
                    s4 = function2.invoke(Long.valueOf(s3.o() + 1), s3);
                    if (s3.m(s4)) {
                        if (s3.g()) {
                            s3.l();
                        }
                    }
                }
                s3 = s4;
            } else {
                return g0.b(s3);
            }
        }
    }

    private static /* synthetic */ void d() {
    }
}
