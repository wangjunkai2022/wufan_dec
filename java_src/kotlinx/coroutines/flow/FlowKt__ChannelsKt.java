package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.channels.BroadcastKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a1\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a9\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0007\u001a0\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0007\u001a&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"T", "Lkotlinx/coroutines/flow/g;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "channel", "", "f", "(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "consume", com.sdk.a.g.f56552a, "(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/f;", ai.aA, "e", "Lkotlinx/coroutines/channels/h;", "b", "Lkotlinx/coroutines/t0;", "scope", "Lkotlinx/coroutines/CoroutineStart;", "start", ai.aD, "h", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes.dex */
public final /* synthetic */ class FlowKt__ChannelsKt {

    /* compiled from: Channels.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 2;
            iArr[BufferOverflow.DROP_LATEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ChannelsKt$b", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b<T> implements f<T> {

        /* renamed from: a */
        final /* synthetic */ kotlinx.coroutines.channels.h f71295a;

        public b(kotlinx.coroutines.channels.h hVar) {
            this.f71295a = hVar;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object n02 = h.n0(gVar, this.f71295a.v(), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return n02 == coroutine_suspended ? n02 : Unit.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "'BroadcastChannel' is obsolete and all coreresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    @NotNull
    public static final <T> f<T> b(@NotNull kotlinx.coroutines.channels.h<T> hVar) {
        return new b(hVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use shareIn operator and the resulting SharedFlow as a replacement for BroadcastChannel", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, SharingStarted.Lazily, 0)", imports = {}))
    @NotNull
    public static final <T> kotlinx.coroutines.channels.h<T> c(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull CoroutineStart coroutineStart) {
        int m4;
        ChannelFlow b4 = kotlinx.coroutines.flow.internal.d.b(fVar);
        int i2 = a.$EnumSwitchMapping$0[b4.f71946c.ordinal()];
        if (i2 == 1) {
            m4 = b4.m();
        } else if (i2 != 2) {
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            throw new IllegalArgumentException("Broadcast channel does not support BufferOverflow.DROP_LATEST");
        } else {
            m4 = -1;
        }
        return BroadcastKt.c(t0Var, b4.f71944a, m4, coroutineStart, null, new FlowKt__ChannelsKt$broadcastIn$1(fVar, null), 8, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.h d(f fVar, t0 t0Var, CoroutineStart coroutineStart, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        return h.n(fVar, t0Var, coroutineStart);
    }

    @NotNull
    public static final <T> f<T> e(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return new c(receiveChannel, true, null, 0, null, 28, null);
    }

    @Nullable
    public static final <T> Object f(@NotNull g<? super T> gVar, @NotNull ReceiveChannel<? extends T> receiveChannel, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object g4 = g(gVar, receiveChannel, true, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0076 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:68:0x0032, B:83:0x0070, B:85:0x0076, B:91:0x0084, B:92:0x0085, B:73:0x004b), top: B:104:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0085 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:68:0x0032, B:83:0x0070, B:85:0x0076, B:91:0x0084, B:92:0x0085, B:73:0x004b), top: B:104:0x0022 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0095 -> B:69:0x0035). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object g(kotlinx.coroutines.flow.g<? super T> r7, kotlinx.coroutines.channels.ReceiveChannel<? extends T> r8, boolean r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.f71304e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71304e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f71303d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71304e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L57
            if (r2 == r4) goto L41
            if (r2 != r3) goto L39
            boolean r7 = r0.f71302c
            java.lang.Object r8 = r0.f71301b
            kotlinx.coroutines.channels.ReceiveChannel r8 = (kotlinx.coroutines.channels.ReceiveChannel) r8
            java.lang.Object r9 = r0.f71300a
            kotlinx.coroutines.flow.g r9 = (kotlinx.coroutines.flow.g) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L55
        L35:
            r6 = r9
            r9 = r7
            r7 = r6
            goto L5d
        L39:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L41:
            boolean r7 = r0.f71302c
            java.lang.Object r8 = r0.f71301b
            kotlinx.coroutines.channels.ReceiveChannel r8 = (kotlinx.coroutines.channels.ReceiveChannel) r8
            java.lang.Object r9 = r0.f71300a
            kotlinx.coroutines.flow.g r9 = (kotlinx.coroutines.flow.g) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L55
            kotlinx.coroutines.channels.n r10 = (kotlinx.coroutines.channels.n) r10     // Catch: java.lang.Throwable -> L55
            java.lang.Object r10 = r10.o()     // Catch: java.lang.Throwable -> L55
            goto L6f
        L55:
            r9 = move-exception
            goto L9c
        L57:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.h.q0(r7)
        L5d:
            r0.f71300a = r7     // Catch: java.lang.Throwable -> L98
            r0.f71301b = r8     // Catch: java.lang.Throwable -> L98
            r0.f71302c = r9     // Catch: java.lang.Throwable -> L98
            r0.f71304e = r4     // Catch: java.lang.Throwable -> L98
            java.lang.Object r10 = r8.K(r0)     // Catch: java.lang.Throwable -> L98
            if (r10 != r1) goto L6c
            return r1
        L6c:
            r6 = r9
            r9 = r7
            r7 = r6
        L6f:
            r2 = 0
            boolean r5 = kotlinx.coroutines.channels.n.k(r10)     // Catch: java.lang.Throwable -> L55
            if (r5 == 0) goto L85
            java.lang.Throwable r9 = kotlinx.coroutines.channels.n.f(r10)     // Catch: java.lang.Throwable -> L55
            if (r9 != 0) goto L84
            if (r7 == 0) goto L81
            kotlinx.coroutines.channels.o.b(r8, r2)
        L81:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L84:
            throw r9     // Catch: java.lang.Throwable -> L55
        L85:
            java.lang.Object r10 = kotlinx.coroutines.channels.n.i(r10)     // Catch: java.lang.Throwable -> L55
            r0.f71300a = r9     // Catch: java.lang.Throwable -> L55
            r0.f71301b = r8     // Catch: java.lang.Throwable -> L55
            r0.f71302c = r7     // Catch: java.lang.Throwable -> L55
            r0.f71304e = r3     // Catch: java.lang.Throwable -> L55
            java.lang.Object r10 = r9.emit(r10, r0)     // Catch: java.lang.Throwable -> L55
            if (r10 != r1) goto L35
            return r1
        L98:
            r7 = move-exception
            r6 = r9
            r9 = r7
            r7 = r6
        L9c:
            throw r9     // Catch: java.lang.Throwable -> L9d
        L9d:
            r10 = move-exception
            if (r7 == 0) goto La3
            kotlinx.coroutines.channels.o.b(r8, r9)
        La3:
            goto La5
        La4:
            throw r10
        La5:
            goto La4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ChannelsKt.g(kotlinx.coroutines.flow.g, kotlinx.coroutines.channels.ReceiveChannel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @FlowPreview
    @NotNull
    public static final <T> ReceiveChannel<T> h(@NotNull f<? extends T> fVar, @NotNull t0 t0Var) {
        return kotlinx.coroutines.flow.internal.d.b(fVar).n(t0Var);
    }

    @NotNull
    public static final <T> f<T> i(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return new c(receiveChannel, false, null, 0, null, 28, null);
    }
}
