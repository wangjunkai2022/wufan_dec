package kotlinx.coroutines.debug;

import android.annotation.SuppressLint;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sun.misc.Signal;
import sun.misc.SignalHandler;
/* compiled from: AgentPremain.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u00020\u0006H\u0002R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\"\u0010\u0011\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u000b\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/debug/b;", "", "", "args", "Ljava/lang/instrument/Instrumentation;", "instrumentation", "", "e", "b", "", ai.aD, "Z", "enableCreationStackTraces", d.f64708a, "()Z", "f", "(Z)V", "isInstalledStatically", "<init>", "()V", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@SuppressLint({"all"})
/* loaded from: classes5.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f71106a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71107b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f71108c;

    /* compiled from: AgentPremain.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ:\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000f"}, d2 = {"kotlinx/coroutines/debug/b$a", "Ljava/lang/instrument/ClassFileTransformer;", "Ljava/lang/ClassLoader;", "loader", "", "className", "Ljava/lang/Class;", "classBeingRedefined", "Ljava/security/ProtectionDomain;", "protectionDomain", "", "classfileBuffer", "a", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements ClassFileTransformer {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f71109a = new a();

        private a() {
        }

        @Nullable
        public byte[] a(@NotNull ClassLoader classLoader, @NotNull String str, @Nullable Class<?> cls, @NotNull ProtectionDomain protectionDomain, @Nullable byte[] bArr) {
            if (Intrinsics.areEqual(str, "kotlin/coroutines/jvm/internal/DebugProbesKt")) {
                b.f71106a.f(true);
                return ByteStreamsKt.readBytes(classLoader.getResourceAsStream("DebugProbesKt.bin"));
            }
            return null;
        }
    }

    static {
        Object m24constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
            m24constructorimpl = Result.m24constructorimpl(property == null ? null : Boolean.valueOf(Boolean.parseBoolean(property)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = Result.m30isFailureimpl(m24constructorimpl) ? null : m24constructorimpl;
        f71108c = bool == null ? DebugProbesImpl.f71146a.u() : bool.booleanValue();
    }

    private b() {
    }

    private final void b() {
        try {
            Signal.handle(new Signal("TRAP"), new SignalHandler() { // from class: kotlinx.coroutines.debug.a
                public final void a(Signal signal) {
                    b.c(signal);
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Signal signal) {
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f71146a;
        if (debugProbesImpl.z()) {
            debugProbesImpl.h(System.out);
        } else {
            System.out.println((Object) "Cannot perform coroutines dump, debug probes are disabled");
        }
    }

    @JvmStatic
    public static final void e(@Nullable String str, @NotNull Instrumentation instrumentation) {
        b bVar = f71106a;
        f71107b = true;
        instrumentation.addTransformer(a.f71109a);
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f71146a;
        debugProbesImpl.K(f71108c);
        debugProbesImpl.x();
        bVar.b();
    }

    public final boolean d() {
        return f71107b;
    }

    public final void f(boolean z3) {
        f71107b = z3;
    }
}
