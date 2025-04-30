package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u001a\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u001a%\u0010\f\u001a\u00020\u000b2\u001a\b\u0004\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\tH\u0086\b¨\u0006\r"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "exception", "", "b", "originalException", "thrownException", ai.aD, "Lkotlin/Function2;", "handler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class q0 {

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t"}, d2 = {"kotlinx/coroutines/q0$a", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "exception", "", "handleException", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2<CoroutineContext, Throwable, Unit> f72311a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(Function2<? super CoroutineContext, ? super Throwable, Unit> function2, CoroutineExceptionHandler.b bVar) {
            super(bVar);
            this.f72311a = function2;
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
            this.f72311a.invoke(coroutineContext, th);
        }
    }

    @NotNull
    public static final CoroutineExceptionHandler a(@NotNull Function2<? super CoroutineContext, ? super Throwable, Unit> function2) {
        return new a(function2, CoroutineExceptionHandler.P);
    }

    @InternalCoroutinesApi
    public static final void b(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.get(CoroutineExceptionHandler.P);
            if (coroutineExceptionHandler == null) {
                p0.a(coroutineContext, th);
            } else {
                coroutineExceptionHandler.handleException(coroutineContext, th);
            }
        } catch (Throwable th2) {
            p0.a(coroutineContext, c(th, th2));
        }
    }

    @NotNull
    public static final Throwable c(@NotNull Throwable th, @NotNull Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        ExceptionsKt__ExceptionsKt.addSuppressed(runtimeException, th);
        return runtimeException;
    }
}
