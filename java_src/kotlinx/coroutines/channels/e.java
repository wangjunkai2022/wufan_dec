package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Actor.kt */
@ObsoleteCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/channels/e;", "E", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/channels/k;", "getChannel", "()Lkotlinx/coroutines/channels/k;", "channel", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface e<E> extends t0, ReceiveChannel<E> {

    /* compiled from: Actor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        @NotNull
        public static <E> kotlinx.coroutines.selects.d<E> b(@NotNull e<E> eVar) {
            return ReceiveChannel.DefaultImpls.d(eVar);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E c(@NotNull e<E> eVar) {
            return (E) ReceiveChannel.DefaultImpls.h(eVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @Nullable
        public static <E> Object d(@NotNull e<E> eVar, @NotNull Continuation<? super E> continuation) {
            return ReceiveChannel.DefaultImpls.i(eVar, continuation);
        }
    }

    @NotNull
    k<E> getChannel();
}
