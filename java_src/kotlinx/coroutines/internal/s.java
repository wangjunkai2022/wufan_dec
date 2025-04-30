package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeLinkedList.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0017\u0018\u00002\u00020\u0001:\u0005IJKLMB\u0007¢\u0006\u0004\bH\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0007\u001a\u00060\u0000j\u0002`\u00052\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0005H\u0082\u0010¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\"\u0010\u000f\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0082\u0010¢\u0006\u0004\b\u000f\u0010\u0010J,\u0010\u0016\u001a\u00020\u00152\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\b\u0004\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0081\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\n2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005¢\u0006\u0004\b\u001a\u0010\fJ)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\"\f\b\u0000\u0010\u001b*\u00060\u0000j\u0002`\u00052\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ,\u0010\u001f\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\b\u0004\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\b¢\u0006\u0004\b\u001f\u0010 J4\u0010#\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\b\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!H\u0086\b¢\u0006\u0004\b#\u0010$JD\u0010%\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\b\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!2\u000e\b\u0004\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\b¢\u0006\u0004\b%\u0010&J'\u0010'\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0001¢\u0006\u0004\b'\u0010(J/\u0010+\u001a\u00020*2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u00052\u0006\u0010)\u001a\u00020\u0015H\u0001¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0013H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0001¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\n¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\nH\u0001¢\u0006\u0004\b3\u00102J\u0015\u00104\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005¢\u0006\u0004\b4\u00100J\u0017\u00106\u001a\f\u0012\b\u0012\u00060\u0000j\u0002`\u000505¢\u0006\u0004\b6\u00107J.\u00108\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u001b\u0018\u00012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130!H\u0086\b¢\u0006\u0004\b8\u00109J\u0017\u0010:\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0014¢\u0006\u0004\b:\u00100J'\u0010<\u001a\u00020\n2\n\u0010;\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0000¢\u0006\u0004\b<\u0010=J\u000f\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b?\u0010@R\u0017\u0010B\u001a\u00060\u0000j\u0002`\u00058F@\u0006¢\u0006\u0006\u001a\u0004\bA\u00100R\u0017\u0010D\u001a\u00060\u0000j\u0002`\u00058F@\u0006¢\u0006\u0006\u001a\u0004\bC\u00100R\u0016\u0010E\u001a\u00020\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010.R\u0013\u0010\t\u001a\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\bF\u0010G¨\u0006N"}, d2 = {"Lkotlinx/coroutines/internal/s;", "", "Lkotlinx/coroutines/internal/d0;", "b0", "()Lkotlinx/coroutines/internal/d0;", "Lkotlinx/coroutines/internal/Node;", "current", "J", "(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/internal/s;", "next", "", "K", "(Lkotlinx/coroutines/internal/s;)V", "Lkotlinx/coroutines/internal/b0;", "op", "G", "(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/s;", "node", "Lkotlin/Function0;", "", "condition", "Lkotlinx/coroutines/internal/s$c;", "U", "(Lkotlinx/coroutines/internal/s;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/s$c;", "F", "(Lkotlinx/coroutines/internal/s;)Z", "A", "T", "Lkotlinx/coroutines/internal/s$b;", "H", "(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/internal/s$b;", "B", "(Lkotlinx/coroutines/internal/s;Lkotlin/jvm/functions/Function0;)Z", "Lkotlin/Function1;", "predicate", "C", "(Lkotlinx/coroutines/internal/s;Lkotlin/jvm/functions/Function1;)Z", "D", "(Lkotlinx/coroutines/internal/s;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z", "E", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)Z", "condAdd", "", "c0", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s$c;)I", "X", "()Z", "a0", "()Lkotlinx/coroutines/internal/s;", "R", "()V", "S", "Z", "Lkotlinx/coroutines/internal/s$e;", "I", "()Lkotlinx/coroutines/internal/s$e;", "Y", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "W", "prev", "d0", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)V", "", "toString", "()Ljava/lang/String;", "Q", "prevNode", "P", "nextNode", "isRemoved", "O", "()Ljava/lang/Object;", "<init>", "a", "b", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f72203a = AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "_next");

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f72204b = AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "_prev");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72205c = AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "_removedRef");
    @NotNull
    volatile /* synthetic */ Object _next = this;
    @NotNull
    volatile /* synthetic */ Object _prev = this;
    @NotNull
    private volatile /* synthetic */ Object _removedRef = null;

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\t\u001a\u0004\u0018\u00010\b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005H\u0014J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\n\u001a\u00020\bH\u0014J \u0010\u000e\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\n\u0010\n\u001a\u00060\u0004j\u0002`\u0005H$J \u0010\u000f\u001a\u00020\b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\n\u0010\n\u001a\u00060\u0004j\u0002`\u0005H&J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0014\u0010\u0014\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\b2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0015J\u001c\u0010\u0018\u001a\u00020\r2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\bR\u001e\u0010\u001b\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001d\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001a¨\u0006 "}, d2 = {"kotlinx/coroutines/internal/s$a", "Lkotlinx/coroutines/internal/b;", "Lkotlinx/coroutines/internal/b0;", "op", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "m", "affected", "", "e", "next", "", "l", "", "f", "n", "Lkotlinx/coroutines/internal/s$d;", "prepareOp", com.sdk.a.g.f56552a, "j", "k", "Lkotlinx/coroutines/internal/d;", ai.aD, "failure", "a", "h", "()Lkotlinx/coroutines/internal/s;", "affectedNode", ai.aA, "originalNext", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static abstract class a extends kotlinx.coroutines.internal.b {
        @Override // kotlinx.coroutines.internal.b
        public final void a(@NotNull kotlinx.coroutines.internal.d<?> dVar, @Nullable Object obj) {
            boolean z3 = obj == null;
            s h4 = h();
            if (h4 == null) {
                if (v0.b() && !(!z3)) {
                    throw new AssertionError();
                }
                return;
            }
            s i2 = i();
            if (i2 == null) {
                if (v0.b() && !(!z3)) {
                    throw new AssertionError();
                }
                return;
            }
            if (s.f72203a.compareAndSet(h4, dVar, z3 ? n(h4, i2) : i2) && z3) {
                f(h4, i2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0054, code lost:
            if (kotlinx.coroutines.v0.b() == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0056, code lost:
            if (r4 != null) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0058, code lost:
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x005a, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x005b, code lost:
            if (r7 == false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0063, code lost:
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0064, code lost:
            return null;
         */
        @Override // kotlinx.coroutines.internal.b
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object c(@org.jetbrains.annotations.NotNull kotlinx.coroutines.internal.d<?> r7) {
            /*
                r6 = this;
            L0:
                kotlinx.coroutines.internal.s r0 = r6.m(r7)
                if (r0 != 0) goto L9
                java.lang.Object r7 = kotlinx.coroutines.internal.c.f72163b
                return r7
            L9:
                java.lang.Object r1 = r0._next
                r2 = 0
                if (r1 != r7) goto Lf
                return r2
            Lf:
                boolean r3 = r7.h()
                if (r3 == 0) goto L16
                return r2
            L16:
                boolean r3 = r1 instanceof kotlinx.coroutines.internal.b0
                if (r3 == 0) goto L29
                kotlinx.coroutines.internal.b0 r1 = (kotlinx.coroutines.internal.b0) r1
                boolean r2 = r7.b(r1)
                if (r2 == 0) goto L25
                java.lang.Object r7 = kotlinx.coroutines.internal.c.f72163b
                return r7
            L25:
                r1.c(r0)
                goto L0
            L29:
                java.lang.Object r3 = r6.e(r0)
                if (r3 == 0) goto L30
                return r3
            L30:
                boolean r3 = r6.l(r0, r1)
                if (r3 == 0) goto L37
                goto L0
            L37:
                kotlinx.coroutines.internal.s$d r3 = new kotlinx.coroutines.internal.s$d
                r4 = r1
                kotlinx.coroutines.internal.s r4 = (kotlinx.coroutines.internal.s) r4
                r3.<init>(r0, r4, r6)
                java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = kotlinx.coroutines.internal.s.f72203a
                boolean r4 = r4.compareAndSet(r0, r1, r3)
                if (r4 == 0) goto L0
                java.lang.Object r4 = r3.c(r0)     // Catch: java.lang.Throwable -> L65
                java.lang.Object r5 = kotlinx.coroutines.internal.t.f72223a     // Catch: java.lang.Throwable -> L65
                if (r4 != r5) goto L50
                goto L0
            L50:
                boolean r7 = kotlinx.coroutines.v0.b()     // Catch: java.lang.Throwable -> L65
                if (r7 == 0) goto L64
                if (r4 != 0) goto L5a
                r7 = 1
                goto L5b
            L5a:
                r7 = 0
            L5b:
                if (r7 == 0) goto L5e
                goto L64
            L5e:
                java.lang.AssertionError r7 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L65
                r7.<init>()     // Catch: java.lang.Throwable -> L65
                throw r7     // Catch: java.lang.Throwable -> L65
            L64:
                return r2
            L65:
                r7 = move-exception
                java.util.concurrent.atomic.AtomicReferenceFieldUpdater r2 = kotlinx.coroutines.internal.s.f72203a
                r2.compareAndSet(r0, r3, r1)
                goto L6d
            L6c:
                throw r7
            L6d:
                goto L6c
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.s.a.c(kotlinx.coroutines.internal.d):java.lang.Object");
        }

        @Nullable
        protected Object e(@NotNull s sVar) {
            return null;
        }

        protected abstract void f(@NotNull s sVar, @NotNull s sVar2);

        public abstract void g(@NotNull d dVar);

        @Nullable
        protected abstract s h();

        @Nullable
        protected abstract s i();

        @Nullable
        public Object j(@NotNull d dVar) {
            g(dVar);
            return null;
        }

        public void k(@NotNull s sVar) {
        }

        protected boolean l(@NotNull s sVar, @NotNull Object obj) {
            return false;
        }

        @Nullable
        protected s m(@NotNull b0 b0Var) {
            s h4 = h();
            Intrinsics.checkNotNull(h4);
            return h4;
        }

        @NotNull
        public abstract Object n(@NotNull s sVar, @NotNull s sVar2);
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0012\b\u0016\u0018\u0000*\f\b\u0000\u0010\u0003*\u00060\u0001j\u0002`\u00022\u00020\u0004B\u001b\u0012\n\u0010\u001c\u001a\u00060\u0001j\u0002`\u0002\u0012\u0006\u0010\u001a\u001a\u00028\u0000¢\u0006\u0004\b\"\u0010\u0017J\u001f\u0010\u0007\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0004¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\r\u001a\u00020\f2\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0014\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0016\u001a\u00020\u00112\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00028\u00008\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001c\u001a\u00060\u0001j\u0002`\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u001a\u0010\u001f\u001a\u00060\u0001j\u0002`\u00028D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010!\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00028D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001e¨\u0006#"}, d2 = {"kotlinx/coroutines/internal/s$b", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "T", "Lkotlinx/coroutines/internal/s$a;", "Lkotlinx/coroutines/internal/b0;", "op", "m", "(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/s;", "affected", "", "next", "", "l", "(Lkotlinx/coroutines/internal/s;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/s$d;", "prepareOp", "", com.sdk.a.g.f56552a, "(Lkotlinx/coroutines/internal/s$d;)V", "n", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;", "f", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)V", ai.aD, "Lkotlinx/coroutines/internal/s;", "node", "b", "queue", ai.aA, "()Lkotlinx/coroutines/internal/s;", "originalNext", "h", "affectedNode", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class b<T extends s> extends a {

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f72206d = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_affectedNode");
        @NotNull
        private volatile /* synthetic */ Object _affectedNode;
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final s f72207b;
        @JvmField
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final T f72208c;

        public b(@NotNull s sVar, @NotNull T t3) {
            this.f72207b = sVar;
            this.f72208c = t3;
            if (v0.b()) {
                if (!(t3._next == t3 && t3._prev == t3)) {
                    throw new AssertionError();
                }
            }
            this._affectedNode = null;
        }

        @Override // kotlinx.coroutines.internal.s.a
        protected void f(@NotNull s sVar, @NotNull s sVar2) {
            this.f72208c.K(this.f72207b);
        }

        @Override // kotlinx.coroutines.internal.s.a
        public void g(@NotNull d dVar) {
            f72206d.compareAndSet(this, null, dVar.f72211a);
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected final s h() {
            return (s) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.s.a
        @NotNull
        protected final s i() {
            return this.f72207b;
        }

        @Override // kotlinx.coroutines.internal.s.a
        protected boolean l(@NotNull s sVar, @NotNull Object obj) {
            return obj != this.f72207b;
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected final s m(@NotNull b0 b0Var) {
            return this.f72207b.G(b0Var);
        }

        @Override // kotlinx.coroutines.internal.s.a
        @NotNull
        public Object n(@NotNull s sVar, @NotNull s sVar2) {
            T t3 = this.f72208c;
            s.f72204b.compareAndSet(t3, t3, sVar);
            T t4 = this.f72208c;
            s.f72203a.compareAndSet(t4, t4, this.f72207b);
            return this.f72208c;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b!\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0013\u0012\n\u0010\r\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u001e\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R\u001e\u0010\u000b\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\r\u001a\u00060\u0002j\u0002`\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u0010"}, d2 = {"kotlinx/coroutines/internal/s$c", "Lkotlinx/coroutines/internal/d;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "failure", "", "j", ai.aD, "Lkotlinx/coroutines/internal/s;", "oldNext", "b", "newNode", "<init>", "(Lkotlinx/coroutines/internal/s;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    @PublishedApi
    /* loaded from: classes5.dex */
    public static abstract class c extends kotlinx.coroutines.internal.d<s> {
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final s f72209b;
        @JvmField
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public s f72210c;

        public c(@NotNull s sVar) {
            this.f72209b = sVar;
        }

        @Override // kotlinx.coroutines.internal.d
        /* renamed from: j */
        public void d(@NotNull s sVar, @Nullable Object obj) {
            boolean z3 = obj == null;
            s sVar2 = z3 ? this.f72209b : this.f72210c;
            if (sVar2 != null && s.f72203a.compareAndSet(sVar, this, sVar2) && z3) {
                s sVar3 = this.f72209b;
                s sVar4 = this.f72210c;
                Intrinsics.checkNotNull(sVar4);
                sVar3.K(sVar4);
            }
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\u0012\n\u0010\u0003\u001a\u00060\tj\u0002`\n\u0012\n\u0010\r\u001a\u00060\tj\u0002`\n\u0012\u0006\u0010\u0014\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0007H\u0016R\u001a\u0010\r\u001a\u00060\tj\u0002`\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u000e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00060\tj\u0002`\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\fR\u0016\u0010\u0014\u001a\u00020\u00128\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0013¨\u0006\u0017"}, d2 = {"kotlinx/coroutines/internal/s$d", "Lkotlinx/coroutines/internal/b0;", "", "affected", ai.aD, "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "toString", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "b", "Lkotlinx/coroutines/internal/s;", "next", "Lkotlinx/coroutines/internal/d;", "a", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "Lkotlinx/coroutines/internal/s$a;", "Lkotlinx/coroutines/internal/s$a;", "desc", "<init>", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s$a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class d extends b0 {
        @JvmField
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final s f72211a;
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final s f72212b;
        @JvmField
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final a f72213c;

        public d(@NotNull s sVar, @NotNull s sVar2, @NotNull a aVar) {
            this.f72211a = sVar;
            this.f72212b = sVar2;
            this.f72213c = aVar;
        }

        @Override // kotlinx.coroutines.internal.b0
        @NotNull
        public kotlinx.coroutines.internal.d<?> a() {
            return this.f72213c.b();
        }

        @Override // kotlinx.coroutines.internal.b0
        @Nullable
        public Object c(@Nullable Object obj) {
            Object f4;
            Object obj2;
            if (v0.b()) {
                if (!(obj == this.f72211a)) {
                    throw new AssertionError();
                }
            }
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            s sVar = (s) obj;
            Object j4 = this.f72213c.j(this);
            Object obj3 = t.f72223a;
            if (j4 == obj3) {
                s sVar2 = this.f72212b;
                if (s.f72203a.compareAndSet(sVar, this, sVar2.b0())) {
                    this.f72213c.k(sVar);
                    sVar2.G(null);
                }
                return obj3;
            }
            if (j4 != null) {
                f4 = a().e(j4);
            } else {
                f4 = a().f();
            }
            if (f4 == kotlinx.coroutines.internal.c.f72162a) {
                obj2 = a();
            } else if (f4 == null) {
                obj2 = this.f72213c.n(sVar, this.f72212b);
            } else {
                obj2 = this.f72212b;
            }
            s.f72203a.compareAndSet(sVar, this, obj2);
            return null;
        }

        public final void d() {
            this.f72213c.g(this);
        }

        @Override // kotlinx.coroutines.internal.b0
        @NotNull
        public String toString() {
            return "PrepareOp(op=" + a() + ')';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0016\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\n\u0010\u001f\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b'\u0010(J\u001f\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0010\t\u001a\u00060\u0005j\u0002`\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000f\u001a\u00020\u000e2\n\u0010\t\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\r\u001a\u00020\nH\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0016\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0005j\u0002`\u00062\n\u0010\r\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u00020\u00132\n\u0010\t\u001a\u00060\u0005j\u0002`\u00062\n\u0010\r\u001a\u00060\u0005j\u0002`\u0006H\u0004¢\u0006\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001c\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u00068D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00060\u0005j\u0002`\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001e\u0010!\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u00068D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001bR\u0019\u0010&\u001a\u00028\u00008F@\u0006¢\u0006\f\u0012\u0004\b$\u0010%\u001a\u0004\b\"\u0010#¨\u0006)"}, d2 = {"kotlinx/coroutines/internal/s$e", "T", "Lkotlinx/coroutines/internal/s$a;", "Lkotlinx/coroutines/internal/b0;", "op", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "m", "(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/s;", "affected", "", "e", "(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;", "next", "", "l", "(Lkotlinx/coroutines/internal/s;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/s$d;", "prepareOp", "", com.sdk.a.g.f56552a, "(Lkotlinx/coroutines/internal/s$d;)V", "n", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;", "f", "(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)V", ai.aA, "()Lkotlinx/coroutines/internal/s;", "originalNext", "b", "Lkotlinx/coroutines/internal/s;", "queue", "h", "affectedNode", "o", "()Ljava/lang/Object;", "getResult$annotations", "()V", "result", "<init>", "(Lkotlinx/coroutines/internal/s;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class e<T> extends a {

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f72214c = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_affectedNode");

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f72215d = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_originalNext");
        @NotNull
        private volatile /* synthetic */ Object _affectedNode = null;
        @NotNull
        private volatile /* synthetic */ Object _originalNext = null;
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final s f72216b;

        public e(@NotNull s sVar) {
            this.f72216b = sVar;
        }

        public static /* synthetic */ void p() {
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected Object e(@NotNull s sVar) {
            if (sVar == this.f72216b) {
                return r.d();
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.s.a
        protected final void f(@NotNull s sVar, @NotNull s sVar2) {
            sVar2.G(null);
        }

        @Override // kotlinx.coroutines.internal.s.a
        public void g(@NotNull d dVar) {
            f72214c.compareAndSet(this, null, dVar.f72211a);
            f72215d.compareAndSet(this, null, dVar.f72212b);
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected final s h() {
            return (s) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected final s i() {
            return (s) this._originalNext;
        }

        @Override // kotlinx.coroutines.internal.s.a
        protected final boolean l(@NotNull s sVar, @NotNull Object obj) {
            if (obj instanceof d0) {
                ((d0) obj).f72165a.S();
                return true;
            }
            return false;
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected final s m(@NotNull b0 b0Var) {
            s sVar = this.f72216b;
            while (true) {
                Object obj = sVar._next;
                if (obj instanceof b0) {
                    b0 b0Var2 = (b0) obj;
                    if (b0Var.b(b0Var2)) {
                        return null;
                    }
                    b0Var2.c(this.f72216b);
                } else {
                    return (s) obj;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.s.a
        @NotNull
        public final Object n(@NotNull s sVar, @NotNull s sVar2) {
            return sVar2.b0();
        }

        public final T o() {
            T t3 = (T) h();
            Intrinsics.checkNotNull(t3);
            return t3;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/internal/s$f", "Lkotlinx/coroutines/internal/s$c;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class f extends c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<Boolean> f72217d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ s f72218e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Function0<Boolean> function0, s sVar) {
            super(sVar);
            this.f72217d = function0;
            this.f72218e = sVar;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull s sVar) {
            if (this.f72217d.invoke().booleanValue()) {
                return null;
            }
            return r.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0048, code lost:
        if (kotlinx.coroutines.internal.s.f72203a.compareAndSet(r3, r2, ((kotlinx.coroutines.internal.d0) r4).f72165a) != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.s G(kotlinx.coroutines.internal.b0 r8) {
        /*
            r7 = this;
        L0:
            java.lang.Object r0 = r7._prev
            kotlinx.coroutines.internal.s r0 = (kotlinx.coroutines.internal.s) r0
            r1 = 0
            r2 = r0
        L6:
            r3 = r1
        L7:
            java.lang.Object r4 = r2._next
            if (r4 != r7) goto L18
            if (r0 != r2) goto Le
            return r2
        Le:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.internal.s.f72204b
            boolean r0 = r1.compareAndSet(r7, r0, r2)
            if (r0 != 0) goto L17
            goto L0
        L17:
            return r2
        L18:
            boolean r5 = r7.T()
            if (r5 == 0) goto L1f
            return r1
        L1f:
            if (r4 != r8) goto L22
            return r2
        L22:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.b0
            if (r5 == 0) goto L38
            if (r8 == 0) goto L32
            r0 = r4
            kotlinx.coroutines.internal.b0 r0 = (kotlinx.coroutines.internal.b0) r0
            boolean r0 = r8.b(r0)
            if (r0 == 0) goto L32
            return r1
        L32:
            kotlinx.coroutines.internal.b0 r4 = (kotlinx.coroutines.internal.b0) r4
            r4.c(r2)
            goto L0
        L38:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.d0
            if (r5 == 0) goto L52
            if (r3 == 0) goto L4d
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.internal.s.f72203a
            kotlinx.coroutines.internal.d0 r4 = (kotlinx.coroutines.internal.d0) r4
            kotlinx.coroutines.internal.s r4 = r4.f72165a
            boolean r2 = r5.compareAndSet(r3, r2, r4)
            if (r2 != 0) goto L4b
            goto L0
        L4b:
            r2 = r3
            goto L6
        L4d:
            java.lang.Object r2 = r2._prev
            kotlinx.coroutines.internal.s r2 = (kotlinx.coroutines.internal.s) r2
            goto L7
        L52:
            r3 = r4
            kotlinx.coroutines.internal.s r3 = (kotlinx.coroutines.internal.s) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.s.G(kotlinx.coroutines.internal.b0):kotlinx.coroutines.internal.s");
    }

    private final s J(s sVar) {
        while (sVar.T()) {
            sVar = (s) sVar._prev;
        }
        return sVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(s sVar) {
        s sVar2;
        do {
            sVar2 = (s) sVar._prev;
            if (O() != sVar) {
                return;
            }
        } while (!f72204b.compareAndSet(sVar, sVar2, this));
        if (T()) {
            sVar.G(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final d0 b0() {
        d0 d0Var = (d0) this._removedRef;
        if (d0Var == null) {
            d0 d0Var2 = new d0(this);
            f72205c.lazySet(this, d0Var2);
            return d0Var2;
        }
        return d0Var;
    }

    public final void A(@NotNull s sVar) {
        do {
        } while (!Q().E(sVar, this));
    }

    public final boolean B(@NotNull s sVar, @NotNull Function0<Boolean> function0) {
        int c02;
        f fVar = new f(function0, sVar);
        do {
            c02 = Q().c0(sVar, this, fVar);
            if (c02 == 1) {
                return true;
            }
        } while (c02 != 2);
        return false;
    }

    public final boolean C(@NotNull s sVar, @NotNull Function1<? super s, Boolean> function1) {
        s Q;
        do {
            Q = Q();
            if (!function1.invoke(Q).booleanValue()) {
                return false;
            }
        } while (!Q.E(sVar, this));
        return true;
    }

    public final boolean D(@NotNull s sVar, @NotNull Function1<? super s, Boolean> function1, @NotNull Function0<Boolean> function0) {
        int c02;
        f fVar = new f(function0, sVar);
        do {
            s Q = Q();
            if (!function1.invoke(Q).booleanValue()) {
                return false;
            }
            c02 = Q.c0(sVar, this, fVar);
            if (c02 == 1) {
                return true;
            }
        } while (c02 != 2);
        return false;
    }

    @PublishedApi
    public final boolean E(@NotNull s sVar, @NotNull s sVar2) {
        f72204b.lazySet(sVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72203a;
        atomicReferenceFieldUpdater.lazySet(sVar, sVar2);
        if (atomicReferenceFieldUpdater.compareAndSet(this, sVar2, sVar)) {
            sVar.K(sVar2);
            return true;
        }
        return false;
    }

    public final boolean F(@NotNull s sVar) {
        f72204b.lazySet(sVar, this);
        f72203a.lazySet(sVar, this);
        while (O() == this) {
            if (f72203a.compareAndSet(this, this, sVar)) {
                sVar.K(this);
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final <T extends s> b<T> H(@NotNull T t3) {
        return new b<>(this, t3);
    }

    @NotNull
    public final e<s> I() {
        return new e<>(this);
    }

    @NotNull
    public final Object O() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof b0)) {
                return obj;
            }
            ((b0) obj).c(this);
        }
    }

    @NotNull
    public final s P() {
        return r.h(O());
    }

    @NotNull
    public final s Q() {
        s G = G(null);
        return G == null ? J((s) this._prev) : G;
    }

    public final void R() {
        ((d0) O()).f72165a.G(null);
    }

    @PublishedApi
    public final void S() {
        s sVar = this;
        while (true) {
            Object O = sVar.O();
            if (!(O instanceof d0)) {
                sVar.G(null);
                return;
            }
            sVar = ((d0) O).f72165a;
        }
    }

    public boolean T() {
        return O() instanceof d0;
    }

    @PublishedApi
    @NotNull
    public final c U(@NotNull s sVar, @NotNull Function0<Boolean> function0) {
        return new f(function0, sVar);
    }

    @Nullable
    protected s W() {
        Object O = O();
        d0 d0Var = O instanceof d0 ? (d0) O : null;
        if (d0Var == null) {
            return null;
        }
        return d0Var.f72165a;
    }

    public boolean X() {
        return a0() == null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.s, T, java.lang.Object] */
    public final /* synthetic */ <T> T Y(Function1<? super T, Boolean> function1) {
        s a02;
        while (true) {
            s sVar = (s) O();
            if (sVar == this) {
                return null;
            }
            Intrinsics.reifiedOperationMarker(3, "T");
            if (!(sVar instanceof Object)) {
                return null;
            }
            if ((function1.invoke(sVar).booleanValue() && !sVar.T()) || (a02 = sVar.a0()) == null) {
                return sVar;
            }
            a02.S();
        }
    }

    @Nullable
    public final s Z() {
        while (true) {
            s sVar = (s) O();
            if (sVar == this) {
                return null;
            }
            if (sVar.X()) {
                return sVar;
            }
            sVar.R();
        }
    }

    @PublishedApi
    @Nullable
    public final s a0() {
        Object O;
        s sVar;
        do {
            O = O();
            if (O instanceof d0) {
                return ((d0) O).f72165a;
            }
            if (O == this) {
                return (s) O;
            }
            sVar = (s) O;
        } while (!f72203a.compareAndSet(this, O, sVar.b0()));
        sVar.G(null);
        return null;
    }

    @PublishedApi
    public final int c0(@NotNull s sVar, @NotNull s sVar2, @NotNull c cVar) {
        f72204b.lazySet(sVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72203a;
        atomicReferenceFieldUpdater.lazySet(sVar, sVar2);
        cVar.f72210c = sVar2;
        if (atomicReferenceFieldUpdater.compareAndSet(this, sVar2, cVar)) {
            return cVar.c(this) == null ? 1 : 2;
        }
        return 0;
    }

    public final void d0(@NotNull s sVar, @NotNull s sVar2) {
        if (v0.b()) {
            if (!(sVar == this._prev)) {
                throw new AssertionError();
            }
        }
        if (v0.b()) {
            if (!(sVar2 == this._next)) {
                throw new AssertionError();
            }
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((Object) getClass().getSimpleName());
        sb.append('@');
        sb.append((Object) Integer.toHexString(System.identityHashCode(this)));
        return sb.toString();
    }
}
