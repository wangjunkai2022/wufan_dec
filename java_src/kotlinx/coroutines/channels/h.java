package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.channels.b0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BroadcastChannel.kt */
@ObsoleteCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H&J\u001a\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&J\u0014\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\nH'¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/h;", "E", "Lkotlinx/coroutines/channels/b0;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "v", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "b", "", "", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface h<E> extends b0<E> {

    /* compiled from: BroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static /* synthetic */ void a(h hVar, CancellationException cancellationException, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i2 & 1) != 0) {
                cancellationException = null;
            }
            hVar.b(cancellationException);
        }

        public static /* synthetic */ boolean b(h hVar, Throwable th, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    th = null;
                }
                return hVar.a(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull h<E> hVar, E e4) {
            return b0.a.c(hVar, e4);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility only")
    /* synthetic */ boolean a(Throwable th);

    void b(@Nullable CancellationException cancellationException);

    @NotNull
    ReceiveChannel<E> v();
}
