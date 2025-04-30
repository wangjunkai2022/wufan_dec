package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a%\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u0004\u0018\u00010\u0001H\u0082\bø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a'\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u0005H\u0082\bø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\"\u001c\u0010\r\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u0012\u0004\b\u000b\u0010\f\"\u0016\u0010\u0011\u001a\u00020\u000e8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\"\u001c\u0010\u0014\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0012\u0010\n\u0012\u0004\b\u0013\u0010\f\"\u001c\u0010\u0016\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0003\u0010\n\u0012\u0004\b\u0015\u0010\f\"\u001c\u0010\u0019\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0017\u0010\n\u0012\u0004\b\u0018\u0010\f\"\u001c\u0010\u001c\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u001a\u0010\n\u0012\u0004\b\u001b\u0010\f\"\u001c\u0010\u001e\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0006\u0010\n\u0012\u0004\b\u001d\u0010\f\"\u0016\u0010 \u001a\u00020\u000e8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0010*(\b\u0000\u0010$\"\u0010\u0012\u0006\u0012\u0004\u0018\u00010\"\u0012\u0004\u0012\u00020#0!2\u0010\u0012\u0006\u0012\u0004\u0018\u00010\"\u0012\u0004\u0012\u00020#0!\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"E", "", "Lkotlinx/coroutines/channels/n;", com.sdk.a.g.f56552a, "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/p;", "h", "(Lkotlinx/coroutines/channels/p;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/i0;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/internal/i0;", "getOFFER_SUCCESS$annotations", "()V", "OFFER_SUCCESS", "", "b", "I", "RECEIVE_RESULT", ai.aD, "getEMPTY$annotations", "EMPTY", "getENQUEUE_FAILED$annotations", "ENQUEUE_FAILED", "e", "getOFFER_FAILED$annotations", "OFFER_FAILED", "f", "getPOLL_FAILED$annotations", "POLL_FAILED", "getHANDLER_INVOKED$annotations", "HANDLER_INVOKED", "a", "RECEIVE_THROWS_ON_CLOSE", "Lkotlin/Function1;", "", "", "Handler", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f71037a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f71038b = 1;
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final i0 f71039c = new i0("EMPTY");
    @JvmField
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final i0 f71040d = new i0("OFFER_SUCCESS");
    @JvmField
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final i0 f71041e = new i0("OFFER_FAILED");
    @JvmField
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final i0 f71042f = new i0("POLL_FAILED");
    @JvmField
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final i0 f71043g = new i0("ENQUEUE_FAILED");
    @JvmField
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final i0 f71044h = new i0("ON_CLOSE_HANDLER_INVOKED");

    public static /* synthetic */ void a() {
    }

    public static /* synthetic */ void b() {
    }

    public static /* synthetic */ void c() {
    }

    public static /* synthetic */ void d() {
    }

    public static /* synthetic */ void e() {
    }

    public static /* synthetic */ void f() {
    }

    private static final <E> Object g(Object obj) {
        return obj instanceof p ? n.f71081b.a(((p) obj).f71086d) : n.f71081b.c(obj);
    }

    private static final <E> Object h(p<?> pVar) {
        return n.f71081b.a(pVar.f71086d);
    }
}
