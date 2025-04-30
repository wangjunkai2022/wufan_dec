package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MainCoroutineDispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0005R\u0016\u0010\u0007\u001a\u00020\u00008&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/m2;", "Lkotlinx/coroutines/CoroutineDispatcher;", "", "toString", ai.aB, "y", "()Lkotlinx/coroutines/m2;", "immediate", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class m2 extends CoroutineDispatcher {
    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String z3 = z();
        if (z3 == null) {
            return w0.a(this) + '@' + w0.b(this);
        }
        return z3;
    }

    @NotNull
    public abstract m2 y();

    /* JADX INFO: Access modifiers changed from: protected */
    @InternalCoroutinesApi
    @Nullable
    public final String z() {
        m2 m2Var;
        m2 e4 = g1.e();
        if (this == e4) {
            return "Dispatchers.Main";
        }
        try {
            m2Var = e4.y();
        } catch (UnsupportedOperationException unused) {
            m2Var = null;
        }
        if (this == m2Var) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }
}
