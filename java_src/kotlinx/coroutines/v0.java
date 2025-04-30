package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Debug.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u0017\u0010\u0005\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0081\b\"\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\b\"\u0016\u0010\u000b\u001a\u00020\u00068\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\b\"\u0016\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\b\"\u0016\u0010\u000e\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\b\"\u001c\u0010\u0012\u001a\u00020\u00038\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0007\u0010\u0011\"\u0016\u0010\u0014\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\b\"\u001c\u0010\u0015\u001a\u00020\u00038\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0010\u001a\u0004\b\n\u0010\u0011\"\u001c\u0010\u001a\u001a\u00020\u00168\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\r\u0010\u0019\"\u001c\u0010\u001c\u001a\u00020\u00038\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0010\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u001d"}, d2 = {"", "f", "Lkotlin/Function0;", "", "value", "a", "", "e", "Ljava/lang/String;", "DEBUG_PROPERTY_VALUE_OFF", "b", "STACKTRACE_RECOVERY_PROPERTY_NAME", "DEBUG_PROPERTY_NAME", ai.aD, "DEBUG_PROPERTY_VALUE_AUTO", "h", "Z", "()Z", "RECOVER_STACK_TRACES", com.xinzhu.overmind.utils.helpers.d.f64708a, "DEBUG_PROPERTY_VALUE_ON", "ASSERTIONS_ENABLED", "Ljava/util/concurrent/atomic/AtomicLong;", ai.aA, "Ljava/util/concurrent/atomic/AtomicLong;", "()Ljava/util/concurrent/atomic/AtomicLong;", "COROUTINE_ID", com.sdk.a.g.f56552a, "DEBUG", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class v0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f72519a = "kotlinx.coroutines.debug";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final String f72520b = "kotlinx.coroutines.stacktrace.recovery";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final String f72521c = "auto";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final String f72522d = "on";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final String f72523e = "off";

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f72524f = false;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f72525g;

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f72526h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final AtomicLong f72527i;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
        if (r0.equals(kotlinx.coroutines.v0.f72521c) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
        if (r0.equals(kotlinx.coroutines.v0.f72522d) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
        if (r0.equals("") != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
        r0 = true;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.k0.d(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L64
            int r3 = r0.hashCode()
            if (r3 == 0) goto L3a
            r4 = 3551(0xddf, float:4.976E-42)
            if (r3 == r4) goto L31
            r4 = 109935(0x1ad6f, float:1.54052E-40)
            if (r3 == r4) goto L27
            r4 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r3 != r4) goto L44
            java.lang.String r3 = "auto"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L44
            goto L64
        L27:
            java.lang.String r3 = "off"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L44
            r0 = 0
            goto L68
        L31:
            java.lang.String r3 = "on"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L44
            goto L42
        L3a:
            java.lang.String r3 = ""
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L44
        L42:
            r0 = 1
            goto L68
        L44:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
            r1.append(r2)
            r1.append(r0)
            r0 = 39
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L64:
            boolean r0 = b()
        L68:
            kotlinx.coroutines.v0.f72525g = r0
            if (r0 == 0) goto L75
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            boolean r0 = kotlinx.coroutines.internal.k0.e(r0, r2)
            if (r0 == 0) goto L75
            r1 = 1
        L75:
            kotlinx.coroutines.v0.f72526h = r1
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r1 = 0
            r0.<init>(r1)
            kotlinx.coroutines.v0.f72527i = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.v0.<clinit>():void");
    }

    @InlineOnly
    private static final void a(Function0<Boolean> function0) {
        if (b() && !function0.invoke().booleanValue()) {
            throw new AssertionError();
        }
    }

    public static final boolean b() {
        return f72524f;
    }

    @NotNull
    public static final AtomicLong c() {
        return f72527i;
    }

    public static final boolean d() {
        return f72525g;
    }

    public static final boolean e() {
        return f72526h;
    }

    public static final void f() {
        f72527i.set(0L);
    }
}
