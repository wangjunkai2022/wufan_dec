package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.internal.k0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \u0004*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/k;", "E", "Lkotlinx/coroutines/channels/b0;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "R", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface k<E> extends b0<E>, ReceiveChannel<E> {
    @NotNull
    public static final b R = b.f71072a;
    public static final int S = Integer.MAX_VALUE;
    public static final int T = 0;
    public static final int U = -1;
    public static final int V = -2;
    public static final int W = -3;
    @NotNull
    public static final String X = "kotlinx.coroutines.channels.defaultBuffer";

    /* compiled from: Channel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        @NotNull
        public static <E> kotlinx.coroutines.selects.d<E> b(@NotNull k<E> kVar) {
            return ReceiveChannel.DefaultImpls.d(kVar);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull k<E> kVar, E e4) {
            return b0.a.c(kVar, e4);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E d(@NotNull k<E> kVar) {
            return (E) ReceiveChannel.DefaultImpls.h(kVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @Nullable
        public static <E> Object e(@NotNull k<E> kVar, @NotNull Continuation<? super E> continuation) {
            return ReceiveChannel.DefaultImpls.i(kVar, continuation);
        }
    }

    /* compiled from: Channel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u001c\u0010\r\u001a\u00020\u00028\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0016\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0016\u0010\u0015\u001a\u00020\u00128\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"kotlinx/coroutines/channels/k$b", "", "", ai.aD, "I", "RENDEZVOUS", "f", "OPTIONAL_CHANNEL", "b", "UNLIMITED", "h", "a", "()I", "CHANNEL_DEFAULT_CAPACITY", com.xinzhu.overmind.utils.helpers.d.f64708a, "CONFLATED", "e", "BUFFERED", "", com.sdk.a.g.f56552a, "Ljava/lang/String;", "DEFAULT_BUFFER_PROPERTY_NAME", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        public static final int f71073b = Integer.MAX_VALUE;

        /* renamed from: c  reason: collision with root package name */
        public static final int f71074c = 0;

        /* renamed from: d  reason: collision with root package name */
        public static final int f71075d = -1;

        /* renamed from: e  reason: collision with root package name */
        public static final int f71076e = -2;

        /* renamed from: f  reason: collision with root package name */
        public static final int f71077f = -3;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        public static final String f71078g = "kotlinx.coroutines.channels.defaultBuffer";

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f71072a = new b();

        /* renamed from: h  reason: collision with root package name */
        private static final int f71079h = k0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private b() {
        }

        public final int a() {
            return f71079h;
        }
    }
}
