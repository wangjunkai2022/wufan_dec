package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.m2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainDispatchers.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\b\u0010#\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b$\u0010%J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\t2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0016J\u001e\u0010\u0017\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\t2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00018V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Lkotlinx/coroutines/internal/z;", "Lkotlinx/coroutines/m2;", "Lkotlinx/coroutines/b1;", "", "C", "Lkotlin/coroutines/CoroutineContext;", "context", "", "isDispatchNeeded", "", "time", "v", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/j1;", ai.av, "B", "Lkotlinx/coroutines/p;", "", "continuation", "F", "", "toString", "b", "Ljava/lang/String;", "errorHint", "y", "()Lkotlinx/coroutines/m2;", "immediate", "", "a", "Ljava/lang/Throwable;", "cause", "<init>", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class z extends m2 implements b1 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f72254a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f72255b;

    public /* synthetic */ z(Throwable th, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i2 & 2) != 0 ? null : str);
    }

    private final Void C() {
        String stringPlus;
        if (this.f72254a != null) {
            String str = this.f72255b;
            String str2 = "";
            if (str != null && (stringPlus = Intrinsics.stringPlus(". ", str)) != null) {
                str2 = stringPlus;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Module with the Main dispatcher had failed to initialize", str2), this.f72254a);
        }
        y.e();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* renamed from: B */
    public Void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        C();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    /* renamed from: F */
    public Void g(long j4, @NotNull kotlinx.coroutines.p<? super Unit> pVar) {
        C();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        C();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        C();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.m2, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        Throwable th = this.f72254a;
        sb.append(th != null ? Intrinsics.stringPlus(", cause=", th) : "");
        sb.append(']');
        return sb.toString();
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Object v(long j4, @NotNull Continuation<?> continuation) {
        C();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.m2
    @NotNull
    public m2 y() {
        return this;
    }

    public z(@Nullable Throwable th, @Nullable String str) {
        this.f72254a = th;
        this.f72255b = str;
    }
}
