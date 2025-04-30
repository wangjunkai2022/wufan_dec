package kotlinx.coroutines.sync;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Mutex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H&J\u001f\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H¦@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H&J\u0014\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H&R$\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00000\n8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/sync/c;", "", "owner", "", "a", "", ai.aD, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/selects/e;", "f", "()Lkotlinx/coroutines/selects/e;", "onLock", "b", "()Z", "isLocked", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface c {

    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        public static /* synthetic */ Object a(c cVar, Object obj, Continuation continuation, int i2, Object obj2) {
            if (obj2 == null) {
                if ((i2 & 1) != 0) {
                    obj = null;
                }
                return cVar.c(obj, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lock");
        }

        public static /* synthetic */ boolean b(c cVar, Object obj, int i2, Object obj2) {
            if (obj2 == null) {
                if ((i2 & 1) != 0) {
                    obj = null;
                }
                return cVar.a(obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryLock");
        }

        public static /* synthetic */ void c(c cVar, Object obj, int i2, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
            }
            if ((i2 & 1) != 0) {
                obj = null;
            }
            cVar.d(obj);
        }
    }

    boolean a(@Nullable Object obj);

    boolean b();

    @Nullable
    Object c(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation);

    void d(@Nullable Object obj);

    boolean e(@NotNull Object obj);

    @NotNull
    kotlinx.coroutines.selects.e<Object, c> f();
}
