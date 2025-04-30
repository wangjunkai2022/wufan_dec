package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebugCoroutineInfoImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B#\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0019\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010/\u001a\u00020-¢\u0006\u0004\b3\u00104J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J'\u0010\t\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00030\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0082Pø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J#\u0010\u000f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0011\u001a\u00020\fH\u0016R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR(\u0010$\u001a\u0004\u0018\u00010\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u00068@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0015\u0010'\u001a\u0004\u0018\u00010\u00198F@\u0006¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0013\u0010\r\u001a\u00020\f8F@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010*8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b \u0010+R\u0016\u0010/\u001a\u00020-8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010.R\u0019\u00101\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u001c\u00100R\u001e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "", "", "Ljava/lang/StackTraceElement;", "b", "Lkotlin/sequences/SequenceScope;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", TypedValues.AttributesType.S_FRAME, "", "j", "(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", com.sdk.a.g.f56552a, "", NoticeTopAnimActivityDialog_.f34402n, "Lkotlin/coroutines/Continuation;", ai.aA, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V", "toString", "Lkotlinx/coroutines/debug/internal/h;", "a", "Lkotlinx/coroutines/debug/internal/h;", ai.aD, "()Lkotlinx/coroutines/debug/internal/h;", "creationStackBottom", "Ljava/lang/ref/WeakReference;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/ref/WeakReference;", "_context", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/String;", "_state", "value", "e", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "h", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "lastObservedFrame", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "f", "()Ljava/lang/String;", "Ljava/lang/Thread;", "Ljava/lang/Thread;", "lastObservedThread", "", "J", "sequenceNumber", "()Ljava/util/List;", "creationStackTrace", "_lastObservedFrame", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/debug/internal/h;J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DebugCoroutineInfoImpl {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final h f71130a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final long f71131b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<CoroutineContext> f71132c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private String f71133d = c.f71184a;
    @JvmField
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public Thread f71134e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<CoroutineStackFrame> f71135f;

    public DebugCoroutineInfoImpl(@Nullable CoroutineContext coroutineContext, @Nullable h hVar, long j4) {
        this.f71130a = hVar;
        this.f71131b = j4;
        this.f71132c = new WeakReference<>(coroutineContext);
    }

    private final List<StackTraceElement> b() {
        Sequence sequence;
        List<StackTraceElement> list;
        List<StackTraceElement> emptyList;
        h hVar = this.f71130a;
        if (hVar == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        sequence = SequencesKt__SequenceBuilderKt.sequence(new DebugCoroutineInfoImpl$creationStackTrace$1(this, hVar, null));
        list = SequencesKt___SequencesKt.toList(sequence);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x004a -> B:26:0x0062). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005c -> B:25:0x005f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(kotlin.sequences.SequenceScope<? super java.lang.StackTraceElement> r6, kotlin.coroutines.jvm.internal.CoroutineStackFrame r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1 r0 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1) r0
            int r1 = r0.f71145f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71145f = r1
            goto L18
        L13:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1 r0 = new kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f71143d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71145f
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r6 = r0.f71142c
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r6 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r6
            java.lang.Object r7 = r0.f71141b
            kotlin.sequences.SequenceScope r7 = (kotlin.sequences.SequenceScope) r7
            java.lang.Object r2 = r0.f71140a
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r2 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5f
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r5
        L41:
            if (r7 != 0) goto L46
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L46:
            java.lang.StackTraceElement r8 = r7.getStackTraceElement()
            if (r8 != 0) goto L4d
            goto L62
        L4d:
            r0.f71140a = r2
            r0.f71141b = r6
            r0.f71142c = r7
            r0.f71145f = r3
            java.lang.Object r8 = r6.yield(r8, r0)
            if (r8 != r1) goto L5c
            return r1
        L5c:
            r4 = r7
            r7 = r6
            r6 = r4
        L5f:
            r4 = r7
            r7 = r6
            r6 = r4
        L62:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = r7.getCallerFrame()
            if (r7 == 0) goto L69
            goto L41
        L69:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl.j(kotlin.sequences.SequenceScope, kotlin.coroutines.jvm.internal.CoroutineStackFrame, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Nullable
    public final h c() {
        return this.f71130a;
    }

    @NotNull
    public final List<StackTraceElement> d() {
        return b();
    }

    @Nullable
    public final CoroutineStackFrame e() {
        WeakReference<CoroutineStackFrame> weakReference = this.f71135f;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @NotNull
    public final String f() {
        return this.f71133d;
    }

    @NotNull
    public final List<StackTraceElement> g() {
        List<StackTraceElement> emptyList;
        CoroutineStackFrame e4 = e();
        if (e4 == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        while (e4 != null) {
            StackTraceElement stackTraceElement = e4.getStackTraceElement();
            if (stackTraceElement != null) {
                arrayList.add(stackTraceElement);
            }
            e4 = e4.getCallerFrame();
        }
        return arrayList;
    }

    @Nullable
    public final CoroutineContext getContext() {
        return this.f71132c.get();
    }

    public final void h(@Nullable CoroutineStackFrame coroutineStackFrame) {
        this.f71135f = coroutineStackFrame == null ? null : new WeakReference<>(coroutineStackFrame);
    }

    public final void i(@NotNull String str, @NotNull Continuation<?> continuation) {
        if (Intrinsics.areEqual(this.f71133d, str) && Intrinsics.areEqual(str, c.f71186c) && e() != null) {
            return;
        }
        this.f71133d = str;
        h(continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null);
        this.f71134e = Intrinsics.areEqual(str, c.f71185b) ? Thread.currentThread() : null;
    }

    @NotNull
    public String toString() {
        return "DebugCoroutineInfo(state=" + f() + ",context=" + getContext() + ')';
    }
}
