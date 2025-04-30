package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlinx.coroutines.channels.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a.\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"E", "Lkotlinx/coroutines/channels/b0;", "element", "", "a", "(Lkotlinx/coroutines/channels/b0;Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/n;", "b", "(Lkotlinx/coroutines/channels/b0;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/channels/ChannelsKt")
/* loaded from: classes.dex */
final /* synthetic */ class ChannelsKt__ChannelsKt {
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    public static final <E> void a(@NotNull b0<? super E> b0Var, E e4) {
        if (n.m(b0Var.B(e4))) {
            return;
        }
        kotlinx.coroutines.j.b(null, new ChannelsKt__ChannelsKt$sendBlocking$1(b0Var, e4, null), 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> Object b(@NotNull b0<? super E> b0Var, E e4) throws InterruptedException {
        Object b4;
        Object B = b0Var.B(e4);
        if (B instanceof n.c) {
            b4 = kotlinx.coroutines.j.b(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(b0Var, e4, null), 1, null);
            return ((n) b4).o();
        }
        Unit unit = (Unit) B;
        return n.f71081b.c(Unit.INSTANCE);
    }
}
