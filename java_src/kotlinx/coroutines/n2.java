package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\b\u0010\u0006\u001a\u00020\u0003H\u0016R\u0016\u0010\t\u001a\u00020\u00008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/n2;", "Lkotlinx/coroutines/internal/q;", "Lkotlinx/coroutines/x1;", "", NoticeTopAnimActivityDialog_.f34402n, "h0", "toString", "e", "()Lkotlinx/coroutines/n2;", "list", "", "isActive", "()Z", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class n2 extends kotlinx.coroutines.internal.q implements x1 {
    @Override // kotlinx.coroutines.x1
    @NotNull
    public n2 e() {
        return this;
    }

    @NotNull
    public final String h0(@NotNull String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        boolean z3 = true;
        for (kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) O(); !Intrinsics.areEqual(sVar, this); sVar = sVar.P()) {
            if (sVar instanceof i2) {
                i2 i2Var = (i2) sVar;
                if (z3) {
                    z3 = false;
                } else {
                    sb.append(", ");
                }
                sb.append(i2Var);
            }
        }
        sb.append("]");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlinx.coroutines.x1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.s
    @NotNull
    public String toString() {
        return v0.d() ? h0("Active") : super.toString();
    }
}
