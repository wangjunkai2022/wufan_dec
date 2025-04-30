package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.p;
import kotlinx.coroutines.p2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HandlerDispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B#\b\u0002\u0012\u0006\u0010&\u001a\u00020#\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u001d\u001a\u00020\n¢\u0006\u0004\b+\u0010,B\u001d\b\u0016\u0012\u0006\u0010&\u001a\u00020#\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b+\u0010-J\u001c\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u001c\u0010\f\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000fH\u0016J$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\u0013\u0010\u0018\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0016R\u0016\u0010\u001d\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\"\u001a\u00020\u00008\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010*\u001a\u0004\u0018\u00010\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001f¨\u0006."}, d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/android/a;", "Lkotlinx/coroutines/b1;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "F", "", "isDispatchNeeded", "dispatch", "", "timeMillis", "Lkotlinx/coroutines/p;", "continuation", g.f56552a, "Lkotlinx/coroutines/j1;", ai.av, "", "toString", "", "other", "equals", "", TTDownloadField.TT_HASHCODE, ai.aD, "Z", "invokeImmediately", d.f64708a, "Lkotlinx/coroutines/android/HandlerContext;", "G", "()Lkotlinx/coroutines/android/HandlerContext;", "immediate", "Landroid/os/Handler;", "a", "Landroid/os/Handler;", "handler", "b", "Ljava/lang/String;", "name", "_immediate", "<init>", "(Landroid/os/Handler;Ljava/lang/String;Z)V", "(Landroid/os/Handler;Ljava/lang/String;)V", "kotlinx-coroutines-android"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class HandlerContext extends kotlinx.coroutines.android.a implements b1 {
    @Nullable
    private volatile HandlerContext _immediate;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Handler f70747a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f70748b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f70749c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final HandlerContext f70750d;

    /* compiled from: Job.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlinx/coroutines/android/HandlerContext$a", "Lkotlinx/coroutines/j1;", "", "dispose", "kotlinx-coroutines-core", "kotlinx/coroutines/h2$a"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements j1 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f70752b;

        public a(Runnable runnable) {
            this.f70752b = runnable;
        }

        @Override // kotlinx.coroutines.j1
        public void dispose() {
            HandlerContext.this.f70747a.removeCallbacks(this.f70752b);
        }
    }

    /* compiled from: Runnable.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0000H\n¨\u0006\u0001"}, d2 = {"", "kotlinx/coroutines/w2$a", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f70753a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ HandlerContext f70754b;

        public b(p pVar, HandlerContext handlerContext) {
            this.f70753a = pVar;
            this.f70754b = handlerContext;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f70753a.M(this.f70754b, Unit.INSTANCE);
        }
    }

    private HandlerContext(Handler handler, String str, boolean z3) {
        super(null);
        this.f70747a = handler;
        this.f70748b = str;
        this.f70749c = z3;
        this._immediate = z3 ? this : null;
        HandlerContext handlerContext = this._immediate;
        if (handlerContext == null) {
            handlerContext = new HandlerContext(handler, str, true);
            this._immediate = handlerContext;
            Unit unit = Unit.INSTANCE;
        }
        this.f70750d = handlerContext;
    }

    private final void F(CoroutineContext coroutineContext, Runnable runnable) {
        f2.g(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        g1.c().dispatch(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.m2
    @NotNull
    /* renamed from: G */
    public HandlerContext y() {
        return this.f70750d;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        if (this.f70747a.post(runnable)) {
            return;
        }
        F(coroutineContext, runnable);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HandlerContext) && ((HandlerContext) obj).f70747a == this.f70747a;
    }

    @Override // kotlinx.coroutines.b1
    public void g(long j4, @NotNull p<? super Unit> pVar) {
        long coerceAtMost;
        final b bVar = new b(pVar, this);
        Handler handler = this.f70747a;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(j4, (long) DurationKt.MAX_MILLIS);
        if (handler.postDelayed(bVar, coerceAtMost)) {
            pVar.l(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    HandlerContext.this.f70747a.removeCallbacks(bVar);
                }
            });
        } else {
            F(pVar.getContext(), bVar);
        }
    }

    public int hashCode() {
        return System.identityHashCode(this.f70747a);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        return (this.f70749c && Intrinsics.areEqual(Looper.myLooper(), this.f70747a.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.android.a, kotlinx.coroutines.b1
    @NotNull
    public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        long coerceAtMost;
        Handler handler = this.f70747a;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(j4, (long) DurationKt.MAX_MILLIS);
        if (handler.postDelayed(runnable, coerceAtMost)) {
            return new a(runnable);
        }
        F(coroutineContext, runnable);
        return p2.f72305a;
    }

    @Override // kotlinx.coroutines.m2, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String z3 = z();
        if (z3 == null) {
            String str = this.f70748b;
            if (str == null) {
                str = this.f70747a.toString();
            }
            return this.f70749c ? Intrinsics.stringPlus(str, ".immediate") : str;
        }
        return z3;
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i2 & 2) != 0 ? null : str);
    }

    public HandlerContext(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }
}
