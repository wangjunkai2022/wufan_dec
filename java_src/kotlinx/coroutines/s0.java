package kotlinx.coroutines;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineName.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\rB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "", "toString", "y", "name", ai.aB, "", TTDownloadField.TT_HASHCODE, "", "other", "", "equals", "a", "Ljava/lang/String;", "C", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class s0 extends AbstractCoroutineContextElement {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f72326b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f72327a;

    /* compiled from: CoroutineName.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlinx/coroutines/s0$a", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/s0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements CoroutineContext.Key<s0> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public s0(@NotNull String str) {
        super(f72326b);
        this.f72327a = str;
    }

    public static /* synthetic */ s0 B(s0 s0Var, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = s0Var.f72327a;
        }
        return s0Var.z(str);
    }

    @NotNull
    public final String C() {
        return this.f72327a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s0) && Intrinsics.areEqual(this.f72327a, ((s0) obj).f72327a);
    }

    public int hashCode() {
        return this.f72327a.hashCode();
    }

    @NotNull
    public String toString() {
        return "CoroutineName(" + this.f72327a + ')';
    }

    @NotNull
    public final String y() {
        return this.f72327a;
    }

    @NotNull
    public final s0 z(@NotNull String str) {
        return new s0(str);
    }
}
