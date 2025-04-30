package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.channels.h;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConflatedBroadcastChannel.kt */
@ObsoleteCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u0000 **\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0004*-CDB\u0007¢\u0006\u0004\bA\u0010?B\u0011\b\u0016\u0012\u0006\u0010@\u001a\u00028\u0000¢\u0006\u0004\bA\u0010BJ\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J?\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\b2\u0014\u0010\t\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0018\u00010\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002¢\u0006\u0004\b\n\u0010\u000bJ?\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0018\u00010\b2\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0014JX\u0010\u001d\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00162\u0006\u0010\u0011\u001a\u00028\u00002(\u0010\u001c\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0018H\u0002ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010#\u001a\u00020\"2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b#\u0010$J)\u0010(\u001a\u00020\u00052\u0018\u0010'\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u00050%j\u0002`&H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010*\u001a\u00020\"2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017¢\u0006\u0004\b*\u0010$J\u001f\u0010-\u001a\u00020\u00052\u000e\u0010\u000e\u001a\n\u0018\u00010+j\u0004\u0018\u0001`,H\u0016¢\u0006\u0004\b-\u0010.J\u001b\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010/J&\u00101\u001a\b\u0012\u0004\u0012\u00020\u0005002\u0006\u0010\u0011\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b1\u00102R\u0015\u00105\u001a\u0004\u0018\u00018\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b3\u00104R(\u00109\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0019068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\u0016\u0010<\u001a\u00020\"8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0019\u0010@\u001a\u00028\u00008F@\u0006¢\u0006\f\u0012\u0004\b>\u0010?\u001a\u0004\b=\u00104\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006E"}, d2 = {"Lkotlinx/coroutines/channels/q;", "E", "Lkotlinx/coroutines/channels/h;", "Lkotlinx/coroutines/channels/q$d;", "subscriber", "", "f", "(Lkotlinx/coroutines/channels/q$d;)V", "", "list", "e", "([Lkotlinx/coroutines/channels/q$d;Lkotlinx/coroutines/channels/q$d;)[Lkotlinx/coroutines/channels/q$d;", "m", "", "cause", "j", "(Ljava/lang/Throwable;)V", "element", "Lkotlinx/coroutines/channels/q$a;", "k", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/q$a;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/b0;", "Lkotlin/coroutines/Continuation;", "", "block", "l", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "v", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "", "P", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", ai.aB, "(Lkotlin/jvm/functions/Function1;)V", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "b", "(Ljava/util/concurrent/CancellationException;)V", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/n;", "B", "(Ljava/lang/Object;)Ljava/lang/Object;", ai.aA, "()Ljava/lang/Object;", "valueOrNull", "Lkotlinx/coroutines/selects/e;", net.lingala.zip4j.util.e.f73017f0, "()Lkotlinx/coroutines/selects/e;", "onSend", "S", "()Z", "isClosedForSend", com.sdk.a.g.f56552a, "getValue$annotations", "()V", "value", "<init>", "(Ljava/lang/Object;)V", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class q<E> implements h<E> {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f71088b;

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f71089c;

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f71090d;
    @Deprecated
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final i0 f71092f;
    @Deprecated
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final c<Object> f71093g;
    @NotNull
    private volatile /* synthetic */ Object _state;
    @NotNull
    private volatile /* synthetic */ int _updating;
    @NotNull
    private volatile /* synthetic */ Object onCloseHandler;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final b f71087a = new b(null);
    @Deprecated
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final a f71091e = new a(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0013\u0010\b\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0007¨\u0006\f"}, d2 = {"kotlinx/coroutines/channels/q$a", "", "", "a", "Ljava/lang/Throwable;", "closeCause", "b", "()Ljava/lang/Throwable;", "valueException", "sendException", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        @JvmField
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f71094a;

        public a(@Nullable Throwable th) {
            this.f71094a = th;
        }

        @NotNull
        public final Throwable a() {
            Throwable th = this.f71094a;
            return th == null ? new ClosedSendChannelException(o.f71085a) : th;
        }

        @NotNull
        public final Throwable b() {
            Throwable th = this.f71094a;
            return th == null ? new IllegalStateException(o.f71085a) : th;
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"kotlinx/coroutines/channels/q$b", "", "Lkotlinx/coroutines/channels/q$a;", "CLOSED", "Lkotlinx/coroutines/channels/q$a;", "Lkotlinx/coroutines/channels/q$c;", "INITIAL_STATE", "Lkotlinx/coroutines/channels/q$c;", "Lkotlinx/coroutines/internal/i0;", "UNDEFINED", "Lkotlinx/coroutines/internal/i0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B'\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\n\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0018\u00010\u0006¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R$\u0010\n\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0018\u00010\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"kotlinx/coroutines/channels/q$c", "E", "", "a", "Ljava/lang/Object;", "value", "", "Lkotlinx/coroutines/channels/q$d;", "b", "[Lkotlinx/coroutines/channels/q$d;", "subscribers", "<init>", "(Ljava/lang/Object;[Lkotlinx/coroutines/channels/q$d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c<E> {
        @JvmField
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Object f71095a;
        @JvmField
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final d<E>[] f71096b;

        public c(@Nullable Object obj, @Nullable d<E>[] dVarArr) {
            this.f71095a = obj;
            this.f71096b = dVarArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"kotlinx/coroutines/channels/q$d", "E", "Lkotlinx/coroutines/channels/r;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "wasClosed", "", "h0", "element", "", "C", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/q;", "f", "Lkotlinx/coroutines/channels/q;", "broadcastChannel", "<init>", "(Lkotlinx/coroutines/channels/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class d<E> extends r<E> implements ReceiveChannel<E> {
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final q<E> f71097f;

        public d(@NotNull q<E> qVar) {
            super(null);
            this.f71097f = qVar;
        }

        @Override // kotlinx.coroutines.channels.r, kotlinx.coroutines.channels.b
        @NotNull
        public Object C(E e4) {
            return super.C(e4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlinx.coroutines.channels.r, kotlinx.coroutines.channels.AbstractChannel
        public void h0(boolean z3) {
            if (z3) {
                this.f71097f.f(this);
            }
        }
    }

    /* compiled from: ConflatedBroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001JX\u0010\f\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0006\u001a\u00028\u00002(\u0010\n\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0016ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/channels/q$e", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/b0;", "R", "Lkotlinx/coroutines/selects/f;", "select", com.alipay.sdk.authjs.a.f9678l, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "C", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class e implements kotlinx.coroutines.selects.e<E, b0<? super E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q<E> f71098a;

        e(q<E> qVar) {
            this.f71098a = qVar;
        }

        @Override // kotlinx.coroutines.selects.e
        public <R> void C(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, E e4, @NotNull Function2<? super b0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f71098a.l(fVar, e4, function2);
        }
    }

    static {
        i0 i0Var = new i0("UNDEFINED");
        f71092f = i0Var;
        f71093g = new c<>(i0Var, null);
        f71088b = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_state");
        f71089c = AtomicIntegerFieldUpdater.newUpdater(q.class, "_updating");
        f71090d = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "onCloseHandler");
    }

    public q() {
        this._state = f71093g;
        this._updating = 0;
        this.onCloseHandler = null;
    }

    private final d<E>[] e(d<E>[] dVarArr, d<E> dVar) {
        if (dVarArr == null) {
            d<E>[] dVarArr2 = new d[1];
            for (int i2 = 0; i2 < 1; i2++) {
                dVarArr2[i2] = dVar;
            }
            return dVarArr2;
        }
        return (d[]) ArraysKt.plus(dVarArr, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(d<E> dVar) {
        Object obj;
        Object obj2;
        d<E>[] dVarArr;
        do {
            obj = this._state;
            if (obj instanceof a) {
                return;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                obj2 = cVar.f71095a;
                dVarArr = cVar.f71096b;
                Intrinsics.checkNotNull(dVarArr);
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
            }
        } while (!f71088b.compareAndSet(this, obj, new c(obj2, m(dVarArr, dVar))));
    }

    public static /* synthetic */ void h() {
    }

    private final void j(Throwable th) {
        i0 i0Var;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (i0Var = kotlinx.coroutines.channels.a.f71044h) || !f71090d.compareAndSet(this, obj, i0Var)) {
            return;
        }
        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1)).invoke(th);
    }

    private final a k(E e4) {
        Object obj;
        if (f71089c.compareAndSet(this, 0, 1)) {
            do {
                try {
                    obj = this._state;
                    if (obj instanceof a) {
                        return (a) obj;
                    }
                    if (!(obj instanceof c)) {
                        throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
                    }
                } finally {
                    this._updating = 0;
                }
            } while (!f71088b.compareAndSet(this, obj, new c(e4, ((c) obj).f71096b)));
            d<E>[] dVarArr = ((c) obj).f71096b;
            if (dVarArr != null) {
                for (d<E> dVar : dVarArr) {
                    dVar.C(e4);
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void l(kotlinx.coroutines.selects.f<? super R> fVar, E e4, Function2<? super b0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        if (fVar.n()) {
            a k4 = k(e4);
            if (k4 == null) {
                b3.b.d(function2, this, fVar.o());
            } else {
                fVar.r(k4.a());
            }
        }
    }

    private final d<E>[] m(d<E>[] dVarArr, d<E> dVar) {
        int indexOf;
        int length = dVarArr.length;
        indexOf = ArraysKt___ArraysKt.indexOf(dVarArr, dVar);
        if (v0.b()) {
            if (!(indexOf >= 0)) {
                throw new AssertionError();
            }
        }
        if (length == 1) {
            return null;
        }
        d<E>[] dVarArr2 = new d[length - 1];
        ArraysKt___ArraysJvmKt.copyInto$default(dVarArr, dVarArr2, 0, 0, indexOf, 6, (Object) null);
        ArraysKt___ArraysJvmKt.copyInto$default(dVarArr, dVarArr2, indexOf, indexOf + 1, 0, 8, (Object) null);
        return dVarArr2;
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public Object B(E e4) {
        a k4 = k(e4);
        if (k4 == null) {
            return n.f71081b.c(Unit.INSTANCE);
        }
        return n.f71081b.a(k4.a());
    }

    @Override // kotlinx.coroutines.channels.h
    /* renamed from: P */
    public boolean a(@Nullable Throwable th) {
        Object obj;
        int i2;
        do {
            obj = this._state;
            if (obj instanceof a) {
                return false;
            }
            if (!(obj instanceof c)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
            }
        } while (!f71088b.compareAndSet(this, obj, th == null ? f71091e : new a(th)));
        d<E>[] dVarArr = ((c) obj).f71096b;
        if (dVarArr != null) {
            for (d<E> dVar : dVarArr) {
                dVar.P(th);
            }
        }
        j(th);
        return true;
    }

    @Override // kotlinx.coroutines.channels.b0
    @Nullable
    public Object R(E e4, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        a k4 = k(e4);
        if (k4 == null) {
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (coroutine_suspended == null) {
                return null;
            }
            return Unit.INSTANCE;
        }
        throw k4.a();
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean S() {
        return this._state instanceof a;
    }

    @Override // kotlinx.coroutines.channels.h
    public void b(@Nullable CancellationException cancellationException) {
        a(cancellationException);
    }

    public final E g() {
        Object obj = this._state;
        if (!(obj instanceof a)) {
            if (obj instanceof c) {
                E e4 = (E) ((c) obj).f71095a;
                if (e4 != f71092f) {
                    return e4;
                }
                throw new IllegalStateException("No value");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
        }
        throw ((a) obj).b();
    }

    @Nullable
    public final E i() {
        Object obj = this._state;
        if (obj instanceof a) {
            return null;
        }
        if (obj instanceof c) {
            i0 i0Var = f71092f;
            E e4 = (E) ((c) obj).f71095a;
            if (e4 == i0Var) {
                return null;
            }
            return e4;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
    }

    @Override // kotlinx.coroutines.channels.b0
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e4) {
        return h.a.c(this, e4);
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public kotlinx.coroutines.selects.e<E, b0<E>> r() {
        return new e(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.h
    @NotNull
    public ReceiveChannel<E> v() {
        Object obj;
        c cVar;
        d dVar = new d(this);
        do {
            obj = this._state;
            if (obj instanceof a) {
                dVar.P(((a) obj).f71094a);
                return dVar;
            } else if (obj instanceof c) {
                cVar = (c) obj;
                Object obj2 = cVar.f71095a;
                if (obj2 != f71092f) {
                    dVar.C(obj2);
                }
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid state ", obj).toString());
            }
        } while (!f71088b.compareAndSet(this, obj, new c(cVar.f71095a, e(cVar.f71096b, dVar))));
        return dVar;
    }

    @Override // kotlinx.coroutines.channels.b0
    public void z(@NotNull Function1<? super Throwable, Unit> function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f71090d;
        if (!atomicReferenceFieldUpdater.compareAndSet(this, null, function1)) {
            Object obj = this.onCloseHandler;
            if (obj == kotlinx.coroutines.channels.a.f71044h) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Another handler was already registered: ", obj));
        }
        Object obj2 = this._state;
        if ((obj2 instanceof a) && atomicReferenceFieldUpdater.compareAndSet(this, function1, kotlinx.coroutines.channels.a.f71044h)) {
            function1.invoke(((a) obj2).f71094a);
        }
    }

    public q(E e4) {
        this();
        f71088b.lazySet(this, new c(e4, null));
    }
}
