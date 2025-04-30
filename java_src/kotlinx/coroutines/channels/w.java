package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Produce.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/channels/w;", "E", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/channels/b0;", "getChannel", "()Lkotlinx/coroutines/channels/b0;", "channel", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@ExperimentalCoroutinesApi
/* loaded from: classes5.dex */
public interface w<E> extends t0, b0<E> {

    /* compiled from: Produce.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean a(@NotNull w<? super E> wVar, E e4) {
            return b0.a.c(wVar, e4);
        }
    }

    @NotNull
    b0<E> getChannel();
}
