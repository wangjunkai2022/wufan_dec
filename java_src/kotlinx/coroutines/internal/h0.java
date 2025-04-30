package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StackTraceRecovery.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\u001a!\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001d\u0010\u0005\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0004\u001a.\u0010\b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0080\b¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\f\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0007\u001a\u00060\nj\u0002`\u000bH\u0002¢\u0006\u0004\b\f\u0010\r\u001a#\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u0004\u001a;\u0010\u0015\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00002\u0010\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a3\u0010\u0019\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00180\u0017\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0002¢\u0006\u0004\b\u0019\u0010\u001a\u001a3\u0010\u001d\u001a\u00020\u001c2\u0010\u0010\u001b\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00182\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001b\u0010 \u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u0000H\u0080Hø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\"\u0010\"\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\"\u0010\u0004\u001a!\u0010#\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b#\u0010\u0004\u001a\u001e\u0010$\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00112\n\u0010\u0007\u001a\u00060\nj\u0002`\u000bH\u0002\u001a\u0014\u0010'\u001a\u00060\u0012j\u0002`\u00132\u0006\u0010&\u001a\u00020%H\u0007\u001a\u0010\u0010)\u001a\u00020(*\u00060\u0012j\u0002`\u0013H\u0000\u001a%\u0010,\u001a\u00020+*\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00182\u0006\u0010*\u001a\u00020%H\u0002¢\u0006\u0004\b,\u0010-\u001a\u001c\u0010.\u001a\u00020(*\u00060\u0012j\u0002`\u00132\n\u0010\u0019\u001a\u00060\u0012j\u0002`\u0013H\u0002\u001a\u0014\u0010/\u001a\u00020\u001c*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0000\"\u0016\u00102\u001a\u00020%8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u00101\"\u001e\u00104\u001a\n 3*\u0004\u0018\u00010%0%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00101\"\u0016\u00106\u001a\u00020%8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u00101\"\u001e\u00108\u001a\n 3*\u0004\u0018\u00010%0%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00101*\f\b\u0000\u00109\"\u00020\n2\u00020\n*\f\b\u0000\u0010:\"\u00020\u00122\u00020\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006;"}, d2 = {"", "E", "exception", ai.av, "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", net.lingala.zip4j.util.e.f73017f0, "Lkotlin/coroutines/Continuation;", "continuation", "q", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "o", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", ai.az, "cause", "result", "Ljava/util/ArrayDeque;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "resultStackTrace", "f", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "Lkotlin/Pair;", "", "e", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "recoveredStacktrace", "", "l", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "", "m", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ai.aF, ai.aE, com.sdk.a.g.f56552a, "", "message", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "k", "methodName", "", ai.aA, "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "h", "j", "a", "Ljava/lang/String;", "baseContinuationImplClass", "kotlin.jvm.PlatformType", "stackTraceRecoveryClassName", "b", "stackTraceRecoveryClass", ai.aD, "baseContinuationImplClassName", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final String f72175a = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f72176b = "kotlinx.coroutines.internal.StackTraceRecoveryKt";

    /* renamed from: c  reason: collision with root package name */
    private static final String f72177c;

    /* renamed from: d  reason: collision with root package name */
    private static final String f72178d;

    static {
        Object m24constructorimpl;
        Object m24constructorimpl2;
        try {
            Result.Companion companion = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(Class.forName(f72175a).getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m27exceptionOrNullimpl(m24constructorimpl) != null) {
            m24constructorimpl = f72175a;
        }
        f72177c = (String) m24constructorimpl;
        try {
            Result.Companion companion3 = Result.Companion;
            m24constructorimpl2 = Result.m24constructorimpl(h0.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            m24constructorimpl2 = Result.m24constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m27exceptionOrNullimpl(m24constructorimpl2) != null) {
            m24constructorimpl2 = f72176b;
        }
        f72178d = (String) m24constructorimpl2;
    }

    public static /* synthetic */ void a() {
    }

    public static /* synthetic */ void b() {
    }

    @InternalCoroutinesApi
    @NotNull
    public static final StackTraceElement d(@NotNull String str) {
        return new StackTraceElement(Intrinsics.stringPlus("\b\b\b(", str), "\b", "\b", -1);
    }

    private static final <E extends Throwable> Pair<E, StackTraceElement[]> e(E e4) {
        boolean z3;
        Throwable cause = e4.getCause();
        if (cause != null && Intrinsics.areEqual(cause.getClass(), e4.getClass())) {
            StackTraceElement[] stackTrace = e4.getStackTrace();
            int length = stackTrace.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z3 = false;
                    break;
                } else if (k(stackTrace[i2])) {
                    z3 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z3) {
                return TuplesKt.to(cause, stackTrace);
            }
            return TuplesKt.to(e4, new StackTraceElement[0]);
        }
        return TuplesKt.to(e4, new StackTraceElement[0]);
    }

    private static final <E extends Throwable> E f(E e4, E e5, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(d("Coroutine boundary"));
        StackTraceElement[] stackTrace = e4.getStackTrace();
        int i2 = i(stackTrace, f72177c);
        int i4 = 0;
        if (i2 == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            e5.setStackTrace((StackTraceElement[]) array);
            return e5;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + i2];
        if (i2 > 0) {
            int i5 = 0;
            while (true) {
                int i6 = i5 + 1;
                stackTraceElementArr[i5] = stackTrace[i5];
                if (i6 >= i2) {
                    break;
                }
                i5 = i6;
            }
        }
        Iterator<StackTraceElement> it2 = arrayDeque.iterator();
        while (it2.hasNext()) {
            int i7 = i4 + 1;
            stackTraceElementArr[i4 + i2] = it2.next();
            i4 = i7;
        }
        e5.setStackTrace(stackTraceElementArr);
        return e5;
    }

    private static final ArrayDeque<StackTraceElement> g(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    private static final boolean h(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int i(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (Intrinsics.areEqual(str, stackTraceElementArr[i2].getClassName())) {
                return i2;
            }
        }
        return -1;
    }

    public static final void j(@NotNull Throwable th, @NotNull Throwable th2) {
        th.initCause(th2);
    }

    public static final boolean k(@NotNull StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
        return startsWith$default;
    }

    private static final void l(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (k(stackTraceElementArr[i2])) {
                break;
            } else {
                i2++;
            }
        }
        int i4 = i2 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i4 > length2) {
            return;
        }
        while (true) {
            int i5 = length2 - 1;
            if (h(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i4) {
                return;
            }
            length2 = i5;
        }
    }

    @Nullable
    public static final Object m(@NotNull Throwable th, @NotNull Continuation<?> continuation) {
        if (v0.e()) {
            if (continuation instanceof CoroutineStackFrame) {
                throw o(th, (CoroutineStackFrame) continuation);
            }
            throw th;
        }
        throw th;
    }

    private static final Object n(Throwable th, Continuation<?> continuation) {
        if (v0.e()) {
            InlineMarker.mark(0);
            if (continuation instanceof CoroutineStackFrame) {
                throw o(th, (CoroutineStackFrame) continuation);
            }
            throw th;
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E o(E e4, CoroutineStackFrame coroutineStackFrame) {
        Pair e5 = e(e4);
        Throwable th = (Throwable) e5.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) e5.component2();
        Throwable s3 = s(th);
        if (s3 == null) {
            return e4;
        }
        ArrayDeque<StackTraceElement> g4 = g(coroutineStackFrame);
        if (g4.isEmpty()) {
            return e4;
        }
        if (th != e4) {
            l(stackTraceElementArr, g4);
        }
        return (E) f(th, s3, g4);
    }

    @NotNull
    public static final <E extends Throwable> E p(@NotNull E e4) {
        Throwable s3;
        return (v0.e() && (s3 = s(e4)) != null) ? (E) r(s3) : e4;
    }

    @NotNull
    public static final <E extends Throwable> E q(@NotNull E e4, @NotNull Continuation<?> continuation) {
        return (v0.e() && (continuation instanceof CoroutineStackFrame)) ? (E) o(e4, (CoroutineStackFrame) continuation) : e4;
    }

    private static final <E extends Throwable> E r(E e4) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = e4.getStackTrace();
        int length = stackTrace.length;
        int i2 = i(stackTrace, f72178d);
        int i4 = i2 + 1;
        int i5 = i(stackTrace, f72177c);
        int i6 = (length - i2) - (i5 == -1 ? 0 : length - i5);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            if (i7 == 0) {
                stackTraceElement = d("Coroutine boundary");
            } else {
                stackTraceElement = stackTrace[(i4 + i7) - 1];
            }
            stackTraceElementArr[i7] = stackTraceElement;
        }
        e4.setStackTrace(stackTraceElementArr);
        return e4;
    }

    private static final <E extends Throwable> E s(E e4) {
        E e5 = (E) ExceptionsConstuctorKt.f(e4);
        if (e5 == null) {
            return null;
        }
        if ((e4 instanceof kotlinx.coroutines.n0) || Intrinsics.areEqual(e5.getMessage(), e4.getMessage())) {
            return e5;
        }
        return null;
    }

    @NotNull
    public static final <E extends Throwable> E t(@NotNull E e4) {
        return !v0.e() ? e4 : (E) u(e4);
    }

    @NotNull
    public static final <E extends Throwable> E u(@NotNull E e4) {
        E e5 = (E) e4.getCause();
        if (e5 != null && Intrinsics.areEqual(e5.getClass(), e4.getClass())) {
            StackTraceElement[] stackTrace = e4.getStackTrace();
            int length = stackTrace.length;
            boolean z3 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                } else if (k(stackTrace[i2])) {
                    z3 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z3) {
                return e5;
            }
        }
        return e4;
    }
}
