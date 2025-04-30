package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dispatchers.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u0012\u0004\b\f\u0010\b\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\u0012\u001a\u00020\u000e8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\b\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0012\n\u0004\b\u000b\u0010\u0004\u0012\u0004\b\u0014\u0010\b\u001a\u0004\b\u0013\u0010\u0006¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/g1;", "", "Lkotlinx/coroutines/CoroutineDispatcher;", "b", "Lkotlinx/coroutines/CoroutineDispatcher;", "a", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getDefault$annotations", "()V", "Default", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "getIO$annotations", "IO", "Lkotlinx/coroutines/m2;", "e", "()Lkotlinx/coroutines/m2;", "getMain$annotations", "Main", com.sdk.a.g.f56552a, "getUnconfined$annotations", "Unconfined", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class g1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g1 f72119a = new g1();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final CoroutineDispatcher f72120b = o0.a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final CoroutineDispatcher f72121c = l3.f72279a;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final CoroutineDispatcher f72122d = kotlinx.coroutines.scheduling.b.f72362g.K();

    private g1() {
    }

    @NotNull
    public static final CoroutineDispatcher a() {
        return f72120b;
    }

    @JvmStatic
    public static /* synthetic */ void b() {
    }

    @NotNull
    public static final CoroutineDispatcher c() {
        return f72122d;
    }

    @JvmStatic
    public static /* synthetic */ void d() {
    }

    @NotNull
    public static final m2 e() {
        return kotlinx.coroutines.internal.x.f72251c;
    }

    @JvmStatic
    public static /* synthetic */ void f() {
    }

    @NotNull
    public static final CoroutineDispatcher g() {
        return f72121c;
    }

    @JvmStatic
    public static /* synthetic */ void h() {
    }
}
