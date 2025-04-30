package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.channels.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ChannelFlowMerge$collectTo$$inlined$collect$1<T> implements kotlinx.coroutines.flow.g<kotlinx.coroutines.flow.f<? extends T>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c2 f71956a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.sync.d f71957b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ w f71958c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ n f71959d;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1", f = "Merge.kt", i = {0, 0}, l = {136}, m = "emit", n = {"this", ai.as}, s = {"L$0", "L$1"})
    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71960a;

        /* renamed from: b  reason: collision with root package name */
        int f71961b;

        /* renamed from: d  reason: collision with root package name */
        Object f71963d;

        /* renamed from: e  reason: collision with root package name */
        Object f71964e;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71960a = obj;
            this.f71961b |= Integer.MIN_VALUE;
            return ChannelFlowMerge$collectTo$$inlined$collect$1.this.emit(null, this);
        }
    }

    public ChannelFlowMerge$collectTo$$inlined$collect$1(c2 c2Var, kotlinx.coroutines.sync.d dVar, w wVar, n nVar) {
        this.f71956a = c2Var;
        this.f71957b = dVar;
        this.f71958c = wVar;
        this.f71959d = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @Override // kotlinx.coroutines.flow.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(kotlinx.coroutines.flow.f<? extends T> r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1.AnonymousClass1) r0
            int r1 = r0.f71961b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71961b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1$1 r0 = new kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f71960a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71961b
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.f71964e
            kotlinx.coroutines.flow.f r8 = (kotlinx.coroutines.flow.f) r8
            java.lang.Object r0 = r0.f71963d
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L56
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.flow.f r8 = (kotlinx.coroutines.flow.f) r8
            kotlinx.coroutines.c2 r9 = r7.f71956a
            if (r9 != 0) goto L43
            goto L46
        L43:
            kotlinx.coroutines.f2.B(r9)
        L46:
            kotlinx.coroutines.sync.d r9 = r7.f71957b
            r0.f71963d = r7
            r0.f71964e = r8
            r0.f71961b = r3
            java.lang.Object r9 = r9.c(r0)
            if (r9 != r1) goto L55
            return r1
        L55:
            r0 = r7
        L56:
            kotlinx.coroutines.channels.w r1 = r0.f71958c
            r2 = 0
            r3 = 0
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1 r4 = new kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1
            kotlinx.coroutines.flow.internal.n r9 = r0.f71959d
            kotlinx.coroutines.sync.d r0 = r0.f71957b
            r5 = 0
            r4.<init>(r8, r9, r0, r5)
            r5 = 3
            r6 = 0
            kotlinx.coroutines.i.e(r1, r2, r3, r4, r5, r6)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
