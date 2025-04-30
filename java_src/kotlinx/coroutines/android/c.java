package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.VisibleForTesting;
import com.sdk.a.g;
import com.xinzhu.overmind.utils.helpers.d;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.p;
import kotlinx.coroutines.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HandlerDispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u001a\u001f\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0014\u0010\t\u001a\u00020\u0000*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0001\u001a\u0013\u0010\u000b\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0016\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0002\u001a\u001e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0002\"\u0016\u0010\u0016\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\"\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u0019\u0010\u001a\"\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroid/os/Handler;", "", "name", "Lkotlinx/coroutines/android/a;", g.f56552a, "(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/a;", "Landroid/os/Looper;", "", "async", d.f64708a, "", "e", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/p;", "cont", "", "l", "Landroid/view/Choreographer;", "choreographer", "j", "a", "J", "MAX_DELAY", "b", "Lkotlinx/coroutines/android/a;", "getMain$annotations", "()V", "Main", "Landroid/view/Choreographer;", "kotlinx-coroutines-android"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f70758a = 4611686018427387903L;
    @JvmField
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public static final kotlinx.coroutines.android.a f70759b;
    @Nullable
    private static volatile Choreographer choreographer;

    /* compiled from: Runnable.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0000H\n¨\u0006\u0001"}, d2 = {"", "kotlinx/coroutines/w2$a", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f70760a;

        public a(p pVar) {
            this.f70760a = pVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.l(this.f70760a);
        }
    }

    static {
        Object m24constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(new HandlerContext(d(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        f70759b = Result.m30isFailureimpl(m24constructorimpl) ? null : m24constructorimpl;
    }

    @VisibleForTesting
    @NotNull
    public static final Handler d(@NotNull Looper looper, boolean z3) {
        int i2;
        if (!z3 || (i2 = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i2 >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            Objects.requireNonNull(invoke, "null cannot be cast to non-null type android.os.Handler");
            return (Handler) invoke;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
            return new Handler(looper);
        }
    }

    @Nullable
    public static final Object e(@NotNull Continuation<? super Long> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Continuation intercepted2;
        Object coroutine_suspended2;
        Choreographer choreographer2 = choreographer;
        if (choreographer2 != null) {
            intercepted2 = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            q qVar = new q(intercepted2, 1);
            qVar.N();
            j(choreographer2, qVar);
            Object x3 = qVar.x();
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (x3 == coroutine_suspended2) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return x3;
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q qVar2 = new q(intercepted, 1);
        qVar2.N();
        g1.e().dispatch(EmptyCoroutineContext.INSTANCE, new a(qVar2));
        Object x4 = qVar2.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x4 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x4;
    }

    @JvmOverloads
    @JvmName(name = "from")
    @NotNull
    public static final kotlinx.coroutines.android.a f(@NotNull Handler handler) {
        return h(handler, null, 1, null);
    }

    @JvmOverloads
    @JvmName(name = "from")
    @NotNull
    public static final kotlinx.coroutines.android.a g(@NotNull Handler handler, @Nullable String str) {
        return new HandlerContext(handler, str);
    }

    public static /* synthetic */ kotlinx.coroutines.android.a h(Handler handler, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        return g(handler, str);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use Dispatchers.Main instead")
    public static /* synthetic */ void i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(Choreographer choreographer2, final p<? super Long> pVar) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() { // from class: kotlinx.coroutines.android.b
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j4) {
                c.k(p.this, j4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(p pVar, long j4) {
        pVar.M(g1.e(), Long.valueOf(j4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(p<? super Long> pVar) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            Intrinsics.checkNotNull(choreographer2);
            choreographer = choreographer2;
        }
        j(choreographer2, pVar);
    }
}
