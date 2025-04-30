package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.coroutines.f2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0016\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010+\u001a\u00020\f¢\u0006\u0004\b1\u00102J'\u0010\n\u001a\u0004\u0018\u00010\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\"\u0010\u0018\u001a\u00020\t2\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0016H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u001a\u001a\u00020\u0006H\u0016J\u001b\u0010\u001b\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001d8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010!R\u0016\u0010%\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*R\u001c\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b.\u0010/\u0082\u0002\u0004\n\u0002\b\u0019¨\u00063"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", "T", "Lkotlinx/coroutines/flow/g;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "", "uCont", "value", "", com.sdk.a.g.f56552a, "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "previousContext", "e", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "Lkotlinx/coroutines/flow/internal/f;", "exception", "h", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/Result;", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", ai.aD, "I", "collectContextSize", "Lkotlin/coroutines/Continuation;", "completion", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "b", "Lkotlin/coroutines/CoroutineContext;", "collectContext", com.xinzhu.overmind.utils.helpers.d.f64708a, "lastEmissionContext", "a", "Lkotlinx/coroutines/flow/g;", "collector", "<init>", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SafeCollector<T> extends ContinuationImpl implements kotlinx.coroutines.flow.g<T>, CoroutineStackFrame {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final kotlinx.coroutines.flow.g<T> f72054a;
    @JvmField
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final CoroutineContext f72055b;
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public final int f72056c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CoroutineContext f72057d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Continuation<? super Unit> f72058e;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @NotNull CoroutineContext coroutineContext) {
        super(k.f72081a, EmptyCoroutineContext.INSTANCE);
        this.f72054a = gVar;
        this.f72055b = coroutineContext;
        this.f72056c = ((Number) coroutineContext.fold(0, new Function2<Integer, CoroutineContext.Element, Integer>() { // from class: kotlinx.coroutines.flow.internal.SafeCollector$collectContextSize$1
            public final int a(int i2, @NotNull CoroutineContext.Element element) {
                return i2 + 1;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.Element element) {
                return Integer.valueOf(a(num.intValue(), element));
            }
        })).intValue();
    }

    private final void e(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, T t3) {
        if (coroutineContext2 instanceof f) {
            h((f) coroutineContext2, t3);
        }
        SafeCollector_commonKt.a(this, coroutineContext);
        this.f72057d = coroutineContext;
    }

    private final Object g(Continuation<? super Unit> continuation, T t3) {
        CoroutineContext context = continuation.getContext();
        f2.A(context);
        CoroutineContext coroutineContext = this.f72057d;
        if (coroutineContext != context) {
            e(context, coroutineContext, t3);
        }
        this.f72058e = continuation;
        return SafeCollectorKt.a().invoke(this.f72054a, t3, this);
    }

    private final void h(f fVar, Object obj) {
        String trimIndent;
        trimIndent = StringsKt__IndentKt.trimIndent("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + fVar.f72079a + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ");
        throw new IllegalStateException(trimIndent.toString());
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        try {
            Object g4 = g(continuation, t3);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (g4 == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return g4 == coroutine_suspended2 ? g4 : Unit.INSTANCE;
        } catch (Throwable th) {
            this.f72057d = new f(th);
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<? super Unit> continuation = this.f72058e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        Continuation<? super Unit> continuation = this.f72058e;
        CoroutineContext context = continuation == null ? null : continuation.getContext();
        return context == null ? EmptyCoroutineContext.INSTANCE : context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl != null) {
            this.f72057d = new f(m27exceptionOrNullimpl);
        }
        Continuation<? super Unit> continuation = this.f72058e;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutine_suspended;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
