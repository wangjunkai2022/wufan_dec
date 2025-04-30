package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.h0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0003\u001a\u00028\u0000H&ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH&J-\u0010\u0012\u001a\u00020\u00042#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00040\u000eH'J\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00028\u0000H\u0017¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0019\u001a\u00020\f8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R(\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u001a8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/channels/b0;", "E", "", "element", "", "R", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/n;", "B", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "cause", "", "P", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "handler", ai.aB, "offer", "(Ljava/lang/Object;)Z", "S", "()Z", "isClosedForSend$annotations", "()V", "isClosedForSend", "Lkotlinx/coroutines/selects/e;", net.lingala.zip4j.util.e.f73017f0, "()Lkotlinx/coroutines/selects/e;", "onSend", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface b0<E> {

    /* compiled from: Channel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static /* synthetic */ boolean a(b0 b0Var, Throwable th, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    th = null;
                }
                return b0Var.P(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull b0<? super E> b0Var, E e4) {
            Object B = b0Var.B(e4);
            if (n.m(B)) {
                return true;
            }
            Throwable f4 = n.f(B);
            if (f4 == null) {
                return false;
            }
            throw h0.p(f4);
        }
    }

    @NotNull
    Object B(E e4);

    boolean P(@Nullable Throwable th);

    @Nullable
    Object R(E e4, @NotNull Continuation<? super Unit> continuation);

    boolean S();

    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    boolean offer(E e4);

    @NotNull
    kotlinx.coroutines.selects.e<E, b0<E>> r();

    @ExperimentalCoroutinesApi
    void z(@NotNull Function1<? super Throwable, Unit> function1);
}
