package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Symbol.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/internal/i0;", "", "", "toString", "T", "value", "b", "(Ljava/lang/Object;)Ljava/lang/Object;", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "symbol", "<init>", "(Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f72180a;

    public i0(@NotNull String str) {
        this.f72180a = str;
    }

    @NotNull
    public final String a() {
        return this.f72180a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T b(@Nullable Object obj) {
        if (obj == this) {
            return null;
        }
        return obj;
    }

    @NotNull
    public String toString() {
        return Typography.less + this.f72180a + Typography.greater;
    }
}
