package kotlinx.coroutines.selects;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.j1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Select.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0003H&J\u001a\u0010\b\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH&J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H&R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/selects/f;", "R", "", "", "n", "Lkotlinx/coroutines/internal/s$d;", "Lkotlinx/coroutines/internal/PrepareOp;", "otherOp", "k", "Lkotlinx/coroutines/internal/b;", "desc", ai.az, "", "exception", "", net.lingala.zip4j.util.e.f73017f0, "Lkotlinx/coroutines/j1;", "handle", "j", "Lkotlin/coroutines/Continuation;", "o", "()Lkotlin/coroutines/Continuation;", "completion", com.sdk.a.g.f56552a, "()Z", "isSelected", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface f<R> {
    boolean g();

    void j(@NotNull j1 j1Var);

    @Nullable
    Object k(@Nullable s.d dVar);

    boolean n();

    @NotNull
    Continuation<R> o();

    void r(@NotNull Throwable th);

    @Nullable
    Object s(@NotNull kotlinx.coroutines.internal.b bVar);
}
