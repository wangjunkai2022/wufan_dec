package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.h0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H¦@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H&ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH¦\u0002J\u001a\u0010\u000f\u001a\u00020\u000e2\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH&J\b\u0010\u0010\u001a\u00020\u000eH\u0017J\u0014\u0010\u0013\u001a\u00020\u00122\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0011H'J\u0011\u0010\u0014\u001a\u0004\u0018\u00018\u0000H\u0017¢\u0006\u0004\b\u0014\u0010\bJ\u0015\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0004R\u001c\u0010\u001a\u001a\u00020\u00128&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0017R%\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u001b8&@&X¦\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001dR\u001c\u0010!\u001a\u00020\u00128&@'X§\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0019\u001a\u0004\b!\u0010\u0017R$\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001b8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0019\u001a\u0004\b#\u0010\u001d\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006&"}, d2 = {"Lkotlinx/coroutines/channels/ReceiveChannel;", "E", "", "O", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/n;", "K", "I", "()Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "b", "cancel", "", "", "a", "poll", "J", com.sdk.a.g.f56552a, "()Z", "isClosedForReceive$annotations", "()V", "isClosedForReceive", "Lkotlinx/coroutines/selects/d;", "G", "()Lkotlinx/coroutines/selects/d;", "onReceiveCatching", "F", "onReceive", "isEmpty", "isEmpty$annotations", "H", "getOnReceiveOrNull$annotations", "onReceiveOrNull", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface ReceiveChannel<E> {

    /* compiled from: Channel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void b(ReceiveChannel receiveChannel, CancellationException cancellationException, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i2 & 1) != 0) {
                cancellationException = null;
            }
            receiveChannel.b(cancellationException);
        }

        public static /* synthetic */ boolean c(ReceiveChannel receiveChannel, Throwable th, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    th = null;
                }
                return receiveChannel.a(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        @NotNull
        public static <E> kotlinx.coroutines.selects.d<E> d(@NotNull final ReceiveChannel<? extends E> receiveChannel) {
            return new kotlinx.coroutines.selects.d<E>() { // from class: kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1
                @Override // kotlinx.coroutines.selects.d
                @InternalCoroutinesApi
                public <R> void f(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
                    receiveChannel.G().f(fVar, new ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1(function2, null));
                }
            };
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of onReceiveCatching extension", replaceWith = @ReplaceWith(expression = "onReceiveCatching", imports = {}))
        public static /* synthetic */ void e() {
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void f() {
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void g() {
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E h(@NotNull ReceiveChannel<? extends E> receiveChannel) {
            Object I = receiveChannel.I();
            if (n.m(I)) {
                return (E) n.i(I);
            }
            Throwable f4 = n.f(I);
            if (f4 == null) {
                return null;
            }
            throw h0.p(f4);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
        @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @kotlin.ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @kotlin.internal.LowPriorityInOverloadResolution
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static <E> java.lang.Object i(@org.jetbrains.annotations.NotNull kotlinx.coroutines.channels.ReceiveChannel<? extends E> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super E> r5) {
            /*
                boolean r0 = r5 instanceof kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1
                if (r0 == 0) goto L13
                r0 = r5
                kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1 r0 = (kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1) r0
                int r1 = r0.f71022b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f71022b = r1
                goto L18
            L13:
                kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1 r0 = new kotlinx.coroutines.channels.ReceiveChannel$receiveOrNull$1
                r0.<init>(r5)
            L18:
                java.lang.Object r5 = r0.f71021a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f71022b
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                kotlin.ResultKt.throwOnFailure(r5)
                kotlinx.coroutines.channels.n r5 = (kotlinx.coroutines.channels.n) r5
                java.lang.Object r4 = r5.o()
                goto L43
            L2f:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r5)
                throw r4
            L37:
                kotlin.ResultKt.throwOnFailure(r5)
                r0.f71022b = r3
                java.lang.Object r4 = r4.K(r0)
                if (r4 != r1) goto L43
                return r1
            L43:
                java.lang.Object r4 = kotlinx.coroutines.channels.n.h(r4)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ReceiveChannel.DefaultImpls.i(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @NotNull
    kotlinx.coroutines.selects.d<E> F();

    @NotNull
    kotlinx.coroutines.selects.d<n<E>> G();

    @NotNull
    kotlinx.coroutines.selects.d<E> H();

    @NotNull
    Object I();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    Object J(@NotNull Continuation<? super E> continuation);

    @Nullable
    Object K(@NotNull Continuation<? super n<? extends E>> continuation);

    @Nullable
    Object O(@NotNull Continuation<? super E> continuation);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ boolean a(Throwable th);

    void b(@Nullable CancellationException cancellationException);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ void cancel();

    boolean g();

    boolean isEmpty();

    @NotNull
    ChannelIterator<E> iterator();

    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    E poll();
}
