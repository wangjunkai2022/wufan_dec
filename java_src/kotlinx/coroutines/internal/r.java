package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.PublishedApi;
import org.jetbrains.annotations.NotNull;
/* compiled from: LockFreeLinkedList.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0000H\u0001\"\u001c\u0010\t\u001a\u00020\u00048\u0000@\u0001X\u0081T¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b\"\u001c\u0010\f\u001a\u00020\u00048\u0000@\u0001X\u0081T¢\u0006\f\n\u0004\b\n\u0010\u0006\u0012\u0004\b\u000b\u0010\b\"\"\u0010\u0011\u001a\u00020\u00008\u0000@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u0010\u0010\b\u001a\u0004\b\n\u0010\u000f\"\"\u0010\u0014\u001a\u00020\u00008\u0000@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0012\u0010\u000e\u0012\u0004\b\u0013\u0010\b\u001a\u0004\b\r\u0010\u000f\"\u001c\u0010\u0017\u001a\u00020\u00048\u0000@\u0001X\u0081T¢\u0006\f\n\u0004\b\u0015\u0010\u0006\u0012\u0004\b\u0016\u0010\b*\n\u0010\u0019\"\u00020\u00182\u00020\u0018*\u001c\u0010\u001c\u001a\u0004\b\u0000\u0010\u001a\"\b\u0012\u0004\u0012\u00028\u00000\u001b2\b\u0012\u0004\u0012\u00028\u00000\u001b*\f\b\u0002\u0010\u001d\"\u00020\u00012\u00020\u0001*\n\u0010\u001f\"\u00020\u001e2\u00020\u001e*\u001c\u0010!\u001a\u0004\b\u0000\u0010\u001a\"\b\u0012\u0004\u0012\u00028\u00000 2\b\u0012\u0004\u0012\u00028\u00000 ¨\u0006\""}, d2 = {"", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "h", "", ai.aD, "I", "getFAILURE$annotations", "()V", "FAILURE", "a", "getUNDECIDED$annotations", "UNDECIDED", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "()Ljava/lang/Object;", "getCONDITION_FALSE$annotations", "CONDITION_FALSE", "e", "getLIST_EMPTY$annotations", "LIST_EMPTY", "b", "getSUCCESS$annotations", "SUCCESS", "Lkotlinx/coroutines/internal/s$a;", "AbstractAtomicDesc", "T", "Lkotlinx/coroutines/internal/s$b;", "AddLastDesc", "Node", "Lkotlinx/coroutines/internal/s$d;", "PrepareOp", "Lkotlinx/coroutines/internal/s$e;", "RemoveFirstDesc", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final int f72198a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f72199b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f72200c = 2;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Object f72201d = new i0("CONDITION_FALSE");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object f72202e = new i0("LIST_EMPTY");

    @NotNull
    public static final Object a() {
        return f72201d;
    }

    @PublishedApi
    public static /* synthetic */ void b() {
    }

    @PublishedApi
    public static /* synthetic */ void c() {
    }

    @NotNull
    public static final Object d() {
        return f72202e;
    }

    @PublishedApi
    public static /* synthetic */ void e() {
    }

    @PublishedApi
    public static /* synthetic */ void f() {
    }

    @PublishedApi
    public static /* synthetic */ void g() {
    }

    @PublishedApi
    @NotNull
    public static final s h(@NotNull Object obj) {
        d0 d0Var = obj instanceof d0 ? (d0) obj : null;
        return d0Var == null ? (s) obj : d0Var.f72165a;
    }
}
