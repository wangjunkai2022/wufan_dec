package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R \u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00068\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/flow/internal/f;", "Lkotlin/coroutines/CoroutineContext$Element;", "", "a", "Ljava/lang/Throwable;", "e", "Lkotlin/coroutines/CoroutineContext$Key;", "b", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "<init>", "(Ljava/lang/Throwable;)V", ai.aD, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class f implements CoroutineContext.Element {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f72078c = new a(null);
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f72079a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext.Key<?> f72080b = f72078c;

    /* compiled from: SafeCollector.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlinx/coroutines/flow/internal/f$a", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/flow/internal/f;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements CoroutineContext.Key<f> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public f(@NotNull Throwable th) {
        this.f72079a = th;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) CoroutineContext.Element.DefaultImpls.fold(this, r3, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) CoroutineContext.Element.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.Key<?> getKey() {
        return this.f72080b;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
    }
}
