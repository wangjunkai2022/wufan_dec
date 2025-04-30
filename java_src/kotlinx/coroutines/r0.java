package kotlinx.coroutines;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0080\b\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0015B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002H\u0016J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u000bHÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003R\u0019\u0010\r\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/r0;", "Lkotlinx/coroutines/e3;", "", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "toString", "Lkotlin/coroutines/CoroutineContext;", "context", "G", "oldState", "", "F", "", "y", "id", ai.aB, "", TTDownloadField.TT_HASHCODE, "", "other", "", "equals", "a", "J", "C", "()J", "<init>", "(J)V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class r0 extends AbstractCoroutineContextElement implements e3<String> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f72316b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f72317a;

    /* compiled from: CoroutineContext.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlinx/coroutines/r0$a", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/r0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements CoroutineContext.Key<r0> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public r0(long j4) {
        super(f72316b);
        this.f72317a = j4;
    }

    public static /* synthetic */ r0 B(r0 r0Var, long j4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = r0Var.f72317a;
        }
        return r0Var.z(j4);
    }

    public final long C() {
        return this.f72317a;
    }

    @Override // kotlinx.coroutines.e3
    /* renamed from: F */
    public void w(@NotNull CoroutineContext coroutineContext, @NotNull String str) {
        Thread.currentThread().setName(str);
    }

    @Override // kotlinx.coroutines.e3
    @NotNull
    /* renamed from: G */
    public String T(@NotNull CoroutineContext coroutineContext) {
        int lastIndexOf$default;
        String C;
        s0 s0Var = (s0) coroutineContext.get(s0.f72326b);
        String str = "coroutine";
        if (s0Var != null && (C = s0Var.C()) != null) {
            str = C;
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, " @", 0, false, 6, (Object) null);
        if (lastIndexOf$default < 0) {
            lastIndexOf$default = name.length();
        }
        StringBuilder sb = new StringBuilder(str.length() + lastIndexOf$default + 10);
        Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
        String substring = name.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(substring);
        sb.append(" @");
        sb.append(str);
        sb.append('#');
        sb.append(C());
        Unit unit = Unit.INSTANCE;
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        currentThread.setName(sb2);
        return name;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r0) && this.f72317a == ((r0) obj).f72317a;
    }

    public int hashCode() {
        return f2.a.a(this.f72317a);
    }

    @NotNull
    public String toString() {
        return "CoroutineId(" + this.f72317a + ')';
    }

    public final long y() {
        return this.f72317a;
    }

    @NotNull
    public final r0 z(long j4) {
        return new r0(j4);
    }
}
