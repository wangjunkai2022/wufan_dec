package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0004aWijB)\u0012 \u0010c\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u000109j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001``¢\u0006\u0004\bh\u0010=J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ+\u0010\u000f\u001a\u00020\u000b*\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u0014\u0010\u0015JX\u0010\u001c\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00172\u0006\u0010\b\u001a\u00028\u00002(\u0010\u001b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00028\u0000H\u0014¢\u0006\u0004\b!\u0010\"J#\u0010#\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0014¢\u0006\u0004\b#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0004¢\u0006\u0004\b&\u0010'J\u001d\u0010)\u001a\b\u0012\u0002\b\u0003\u0018\u00010(2\u0006\u0010\b\u001a\u00028\u0000H\u0004¢\u0006\u0004\b)\u0010*J#\u0010-\u001a\u000e\u0012\u0002\b\u00030+j\u0006\u0012\u0002\b\u0003`,2\u0006\u0010\b\u001a\u00028\u0000H\u0004¢\u0006\u0004\b-\u0010.J\u001b\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\rJ\u0017\u00100\u001a\u00020/2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b0\u00101J$\u00103\u001a\b\u0012\u0004\u0012\u00020\u000b022\u0006\u0010\b\u001a\u00028\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b3\u0010\"J\u0019\u00105\u001a\u0004\u0018\u00010\u001a2\u0006\u00104\u001a\u00020%H\u0014¢\u0006\u0004\b5\u00106J\u0019\u00107\u001a\u00020/2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b7\u00108J)\u0010<\u001a\u00020\u000b2\u0018\u0010;\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000b09j\u0002`:H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010\u0001\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020>H\u0014¢\u0006\u0004\b\u0001\u0010?J\u0017\u0010@\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010(H\u0014¢\u0006\u0004\b@\u0010AJ\u001d\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010\b\u001a\u00028\u0000H\u0004¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bF\u0010GR\u0016\u0010J\u001a\u00020/8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0013\u0010L\u001a\u00020/8F@\u0006¢\u0006\u0006\u001a\u0004\bK\u0010IR%\u0010P\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020M8F@\u0006¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020E8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010GR\u001c\u0010U\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00038D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bS\u0010TR\u001c\u0010[\u001a\u00020V8\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u001c\u0010]\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00038D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010TR\u0016\u0010_\u001a\u00020/8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b^\u0010IR0\u0010c\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u000109j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001``8\u0004@\u0005X\u0085\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020E8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bd\u0010GR\u0016\u0010g\u001a\u00020/8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bf\u0010I\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006k"}, d2 = {"Lkotlinx/coroutines/channels/b;", "E", "Lkotlinx/coroutines/channels/b0;", "Lkotlinx/coroutines/channels/p;", "closed", "", ai.aF, "(Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;", "element", ai.az, "(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)Ljava/lang/Throwable;", "", "N", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", ai.aE, "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V", "cause", "w", "(Ljava/lang/Throwable;)V", "q", "(Lkotlinx/coroutines/channels/p;)V", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "", "block", "L", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "h", "()I", "C", "(Ljava/lang/Object;)Ljava/lang/Object;", "D", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/a0;", "T", "()Lkotlinx/coroutines/channels/a0;", "Lkotlinx/coroutines/channels/y;", "M", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/y;", "Lkotlinx/coroutines/internal/s$b;", "Lkotlinx/coroutines/internal/AddLastDesc;", ai.aA, "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s$b;", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/n;", "B", "send", "k", "(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;", "P", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", ai.aB, "(Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/s;", "(Lkotlinx/coroutines/internal/s;)V", "Q", "()Lkotlinx/coroutines/channels/y;", "Lkotlinx/coroutines/channels/b$d;", "j", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/b$d;", "", "toString", "()Ljava/lang/String;", "y", "()Z", "isBufferFull", "S", "isClosedForSend", "Lkotlinx/coroutines/selects/e;", net.lingala.zip4j.util.e.f73017f0, "()Lkotlinx/coroutines/selects/e;", "onSend", ai.av, "queueDebugStateString", "n", "()Lkotlinx/coroutines/channels/p;", "closedForSend", "Lkotlinx/coroutines/internal/q;", "b", "Lkotlinx/coroutines/internal/q;", "o", "()Lkotlinx/coroutines/internal/q;", "queue", "m", "closedForReceive", "x", "isBufferAlwaysFull", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "a", "Lkotlin/jvm/functions/Function1;", "onUndeliveredElement", "l", "bufferDebugString", "A", "isFullImpl", "<init>", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class b<E> implements b0<E> {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f71045c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "onCloseHandler");
    @JvmField
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    protected final Function1<E, Unit> f71046a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final kotlinx.coroutines.internal.q f71047b = new kotlinx.coroutines.internal.q();
    @NotNull
    private volatile /* synthetic */ Object onCloseHandler = null;

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0010\u001a\u00028\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0016\u0010\u0010\u001a\u00028\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"kotlinx/coroutines/channels/b$a", "E", "Lkotlinx/coroutines/channels/a0;", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", "h0", "", "e0", "Lkotlinx/coroutines/channels/p;", "closed", "g0", "", "toString", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "element", "", "f0", "()Ljava/lang/Object;", "pollResult", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<E> extends a0 {
        @JvmField

        /* renamed from: d  reason: collision with root package name */
        public final E f71048d;

        public a(E e4) {
            this.f71048d = e4;
        }

        @Override // kotlinx.coroutines.channels.a0
        public void e0() {
        }

        @Override // kotlinx.coroutines.channels.a0
        @Nullable
        public Object f0() {
            return this.f71048d;
        }

        @Override // kotlinx.coroutines.channels.a0
        public void g0(@NotNull p<?> pVar) {
            if (v0.b()) {
                throw new AssertionError();
            }
        }

        @Override // kotlinx.coroutines.channels.a0
        @Nullable
        public i0 h0(@Nullable s.d dVar) {
            i0 i0Var = kotlinx.coroutines.r.f72315d;
            if (dVar != null) {
                dVar.d();
            }
            return i0Var;
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "SendBuffered@" + w0.b(this) + '(' + this.f71048d + ')';
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u0000*\u0004\b\u0001\u0010\u00012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00028\u0001¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/channels/b$b", "E", "Lkotlinx/coroutines/internal/s$b;", "Lkotlinx/coroutines/channels/b$a;", "Lkotlinx/coroutines/internal/AddLastDesc;", "Lkotlinx/coroutines/internal/s;", "affected", "", "e", "Lkotlinx/coroutines/internal/q;", "queue", "element", "<init>", "(Lkotlinx/coroutines/internal/q;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlinx.coroutines.channels.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static class C0474b<E> extends s.b<a<? extends E>> {
        public C0474b(@NotNull kotlinx.coroutines.internal.q qVar, E e4) {
            super(qVar, new a(e4));
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        protected Object e(@NotNull kotlinx.coroutines.internal.s sVar) {
            if (sVar instanceof p) {
                return sVar;
            }
            if (sVar instanceof y) {
                return kotlinx.coroutines.channels.a.f71041e;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u00032\u00020\u0004BX\u0012\u0006\u0010\u0016\u001a\u00028\u0001\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00020\"\u0012(\u0010!\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001bø\u0001\u0000¢\u0006\u0004\b&\u0010'J\u0014\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\u0014\u0010\u000e\u001a\u00020\t2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0016\u001a\u00028\u00018\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u00178\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R;\u0010!\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b8\u0006@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00020\"8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, d2 = {"kotlinx/coroutines/channels/b$c", "E", "R", "Lkotlinx/coroutines/channels/a0;", "Lkotlinx/coroutines/j1;", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", "h0", "", "e0", "dispose", "Lkotlinx/coroutines/channels/p;", "closed", "g0", "i0", "", "toString", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "f0", "()Ljava/lang/Object;", "pollResult", "Lkotlinx/coroutines/channels/b;", "e", "Lkotlinx/coroutines/channels/b;", "channel", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/b0;", "Lkotlin/coroutines/Continuation;", "", com.sdk.a.g.f56552a, "Lkotlin/jvm/functions/Function2;", "block", "Lkotlinx/coroutines/selects/f;", "f", "Lkotlinx/coroutines/selects/f;", "select", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c<E, R> extends a0 implements j1 {

        /* renamed from: d  reason: collision with root package name */
        private final E f71049d;
        @JvmField
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public final b<E> f71050e;
        @JvmField
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f71051f;
        @JvmField
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        public final Function2<b0<? super E>, Continuation<? super R>, Object> f71052g;

        /* JADX WARN: Multi-variable type inference failed */
        public c(E e4, @NotNull b<E> bVar, @NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super b0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f71049d = e4;
            this.f71050e = bVar;
            this.f71051f = fVar;
            this.f71052g = function2;
        }

        @Override // kotlinx.coroutines.j1
        public void dispose() {
            if (X()) {
                i0();
            }
        }

        @Override // kotlinx.coroutines.channels.a0
        public void e0() {
            b3.a.g(this.f71052g, this.f71050e, this.f71051f.o(), null, 4, null);
        }

        @Override // kotlinx.coroutines.channels.a0
        public E f0() {
            return this.f71049d;
        }

        @Override // kotlinx.coroutines.channels.a0
        public void g0(@NotNull p<?> pVar) {
            if (this.f71051f.n()) {
                this.f71051f.r(pVar.m0());
            }
        }

        @Override // kotlinx.coroutines.channels.a0
        @Nullable
        public i0 h0(@Nullable s.d dVar) {
            return (i0) this.f71051f.k(dVar);
        }

        @Override // kotlinx.coroutines.channels.a0
        public void i0() {
            Function1<E, Unit> function1 = this.f71050e.f71046a;
            if (function1 == null) {
                return;
            }
            OnUndeliveredElementKt.b(function1, f0(), this.f71051f.o().getContext());
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "SendSelect@" + w0.b(this) + '(' + f0() + ")[" + this.f71050e + ", " + this.f71051f + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\u000e\u001a\u00028\u0001\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0016\u0010\f\u001a\u0004\u0018\u00010\u00072\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016R\u0016\u0010\u000e\u001a\u00028\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u0013"}, d2 = {"kotlinx/coroutines/channels/b$d", "E", "Lkotlinx/coroutines/internal/s$e;", "Lkotlinx/coroutines/channels/y;", "Lkotlinx/coroutines/internal/RemoveFirstDesc;", "Lkotlinx/coroutines/internal/s;", "affected", "", "e", "Lkotlinx/coroutines/internal/s$d;", "Lkotlinx/coroutines/internal/PrepareOp;", "prepareOp", "j", "Ljava/lang/Object;", "element", "Lkotlinx/coroutines/internal/q;", "queue", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class d<E> extends s.e<y<? super E>> {
        @JvmField

        /* renamed from: e  reason: collision with root package name */
        public final E f71053e;

        public d(E e4, @NotNull kotlinx.coroutines.internal.q qVar) {
            super(qVar);
            this.f71053e = e4;
        }

        @Override // kotlinx.coroutines.internal.s.e, kotlinx.coroutines.internal.s.a
        @Nullable
        protected Object e(@NotNull kotlinx.coroutines.internal.s sVar) {
            if (sVar instanceof p) {
                return sVar;
            }
            if (sVar instanceof y) {
                return null;
            }
            return kotlinx.coroutines.channels.a.f71041e;
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        public Object j(@NotNull s.d dVar) {
            i0 t3 = ((y) dVar.f72211a).t(this.f71053e, dVar);
            if (t3 == null) {
                return kotlinx.coroutines.internal.t.f72223a;
            }
            Object obj = kotlinx.coroutines.internal.c.f72163b;
            if (t3 == obj) {
                return obj;
            }
            if (v0.b()) {
                if (t3 == kotlinx.coroutines.r.f72315d) {
                    return null;
                }
                throw new AssertionError();
            }
            return null;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/channels/b$e", "Lkotlinx/coroutines/internal/s$c;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core", "kotlinx/coroutines/internal/s$f"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class e extends s.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.internal.s f71054d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ b f71055e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(kotlinx.coroutines.internal.s sVar, b bVar) {
            super(sVar);
            this.f71054d = sVar;
            this.f71055e = bVar;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull kotlinx.coroutines.internal.s sVar) {
            if (this.f71055e.y()) {
                return null;
            }
            return kotlinx.coroutines.internal.r.a();
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001JX\u0010\f\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0006\u001a\u00028\u00002(\u0010\n\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0016ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/channels/b$f", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/b0;", "R", "Lkotlinx/coroutines/selects/f;", "select", com.alipay.sdk.authjs.a.f9678l, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "C", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class f implements kotlinx.coroutines.selects.e<E, b0<? super E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b<E> f71056a;

        f(b<E> bVar) {
            this.f71056a = bVar;
        }

        @Override // kotlinx.coroutines.selects.e
        public <R> void C(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, E e4, @NotNull Function2<? super b0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f71056a.L(fVar, e4, function2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@Nullable Function1<? super E, Unit> function1) {
        this.f71046a = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A() {
        return !(this.f71047b.P() instanceof y) && y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void L(kotlinx.coroutines.selects.f<? super R> fVar, E e4, Function2<? super b0<? super E>, ? super Continuation<? super R>, ? extends Object> function2) {
        while (!fVar.g()) {
            if (A()) {
                c cVar = new c(e4, this, fVar, function2);
                Object k4 = k(cVar);
                if (k4 == null) {
                    fVar.j(cVar);
                    return;
                } else if (!(k4 instanceof p)) {
                    if (k4 != kotlinx.coroutines.channels.a.f71043g && !(k4 instanceof x)) {
                        throw new IllegalStateException(("enqueueSend returned " + k4 + ' ').toString());
                    }
                } else {
                    throw h0.p(s(e4, (p) k4));
                }
            }
            Object D = D(e4, fVar);
            if (D == kotlinx.coroutines.selects.g.d()) {
                return;
            }
            if (D != kotlinx.coroutines.channels.a.f71041e && D != kotlinx.coroutines.internal.c.f72163b) {
                if (D == kotlinx.coroutines.channels.a.f71040d) {
                    b3.b.d(function2, this, fVar.o());
                    return;
                } else if (!(D instanceof p)) {
                    throw new IllegalStateException(Intrinsics.stringPlus("offerSelectInternal returned ", D).toString());
                } else {
                    throw h0.p(s(e4, (p) D));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006f, code lost:
        r4 = r0.x();
        r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        if (r4 != r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
        kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        r5 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
        if (r4 != r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
        return kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object N(E r4, kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r3 = this;
            kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r5)
            kotlinx.coroutines.q r0 = kotlinx.coroutines.s.b(r0)
        L8:
            boolean r1 = d(r3)
            if (r1 == 0) goto L4d
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r1 = r3.f71046a
            if (r1 != 0) goto L18
            kotlinx.coroutines.channels.c0 r1 = new kotlinx.coroutines.channels.c0
            r1.<init>(r4, r0)
            goto L1f
        L18:
            kotlinx.coroutines.channels.d0 r1 = new kotlinx.coroutines.channels.d0
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r2 = r3.f71046a
            r1.<init>(r4, r0, r2)
        L1f:
            java.lang.Object r2 = r3.k(r1)
            if (r2 != 0) goto L29
            kotlinx.coroutines.s.c(r0, r1)
            goto L6f
        L29:
            boolean r1 = r2 instanceof kotlinx.coroutines.channels.p
            if (r1 == 0) goto L33
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            c(r3, r0, r4, r2)
            goto L6f
        L33:
            kotlinx.coroutines.internal.i0 r1 = kotlinx.coroutines.channels.a.f71043g
            if (r2 != r1) goto L38
            goto L4d
        L38:
            boolean r1 = r2 instanceof kotlinx.coroutines.channels.x
            if (r1 == 0) goto L3d
            goto L4d
        L3d:
            java.lang.String r4 = "enqueueSend returned "
            java.lang.String r4 = kotlin.jvm.internal.Intrinsics.stringPlus(r4, r2)
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r4 = r4.toString()
            r5.<init>(r4)
            throw r5
        L4d:
            java.lang.Object r1 = r3.C(r4)
            kotlinx.coroutines.internal.i0 r2 = kotlinx.coroutines.channels.a.f71040d
            if (r1 != r2) goto L61
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            kotlin.Result$Companion r1 = kotlin.Result.Companion
            java.lang.Object r4 = kotlin.Result.m24constructorimpl(r4)
            r0.resumeWith(r4)
            goto L6f
        L61:
            kotlinx.coroutines.internal.i0 r2 = kotlinx.coroutines.channels.a.f71041e
            if (r1 != r2) goto L66
            goto L8
        L66:
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.p
            if (r2 == 0) goto L86
            kotlinx.coroutines.channels.p r1 = (kotlinx.coroutines.channels.p) r1
            c(r3, r0, r4, r1)
        L6f:
            java.lang.Object r4 = r0.x()
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r0) goto L7c
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r5)
        L7c:
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r5) goto L83
            return r4
        L83:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L86:
            java.lang.String r4 = "offerInternal returned "
            java.lang.String r4 = kotlin.jvm.internal.Intrinsics.stringPlus(r4, r1)
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r4 = r4.toString()
            r5.<init>(r4)
            goto L97
        L96:
            throw r5
        L97:
            goto L96
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.b.N(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final int h() {
        kotlinx.coroutines.internal.q qVar = this.f71047b;
        int i2 = 0;
        for (kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) qVar.O(); !Intrinsics.areEqual(sVar, qVar); sVar = sVar.P()) {
            if (sVar instanceof kotlinx.coroutines.internal.s) {
                i2++;
            }
        }
        return i2;
    }

    private final String p() {
        String stringPlus;
        kotlinx.coroutines.internal.s P = this.f71047b.P();
        if (P == this.f71047b) {
            return "EmptyQueue";
        }
        if (P instanceof p) {
            stringPlus = P.toString();
        } else if (P instanceof x) {
            stringPlus = "ReceiveQueued";
        } else {
            stringPlus = P instanceof a0 ? "SendQueued" : Intrinsics.stringPlus("UNEXPECTED:", P);
        }
        kotlinx.coroutines.internal.s Q = this.f71047b.Q();
        if (Q != P) {
            String str = stringPlus + ",queueSize=" + h();
            if (Q instanceof p) {
                return str + ",closedForSend=" + Q;
            }
            return str;
        }
        return stringPlus;
    }

    private final void q(p<?> pVar) {
        Object c4 = kotlinx.coroutines.internal.n.c(null, 1, null);
        while (true) {
            kotlinx.coroutines.internal.s Q = pVar.Q();
            x xVar = Q instanceof x ? (x) Q : null;
            if (xVar == null) {
                break;
            } else if (!xVar.X()) {
                xVar.R();
            } else {
                c4 = kotlinx.coroutines.internal.n.h(c4, xVar);
            }
        }
        if (c4 != null) {
            if (!(c4 instanceof ArrayList)) {
                ((x) c4).g0(pVar);
            } else {
                ArrayList arrayList = (ArrayList) c4;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i2 = size - 1;
                        ((x) arrayList.get(size)).g0(pVar);
                        if (i2 < 0) {
                            break;
                        }
                        size = i2;
                    }
                }
            }
        }
        E(pVar);
    }

    private final Throwable s(E e4, p<?> pVar) {
        UndeliveredElementException d4;
        q(pVar);
        Function1<E, Unit> function1 = this.f71046a;
        if (function1 == null || (d4 = OnUndeliveredElementKt.d(function1, e4, null, 2, null)) == null) {
            return pVar.m0();
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(d4, pVar.m0());
        throw d4;
    }

    private final Throwable t(p<?> pVar) {
        q(pVar);
        return pVar.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(Continuation<?> continuation, E e4, p<?> pVar) {
        UndeliveredElementException d4;
        q(pVar);
        Throwable m02 = pVar.m0();
        Function1<E, Unit> function1 = this.f71046a;
        if (function1 == null || (d4 = OnUndeliveredElementKt.d(function1, e4, null, 2, null)) == null) {
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m02)));
            return;
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(d4, m02);
        Result.Companion companion2 = Result.Companion;
        continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(d4)));
    }

    private final void w(Throwable th) {
        i0 i0Var;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (i0Var = kotlinx.coroutines.channels.a.f71044h) || !f71045c.compareAndSet(this, obj, i0Var)) {
            return;
        }
        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1)).invoke(th);
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public final Object B(E e4) {
        Object C = C(e4);
        if (C == kotlinx.coroutines.channels.a.f71040d) {
            return n.f71081b.c(Unit.INSTANCE);
        }
        if (C == kotlinx.coroutines.channels.a.f71041e) {
            p<?> n4 = n();
            return n4 == null ? n.f71081b.b() : n.f71081b.a(t(n4));
        } else if (C instanceof p) {
            return n.f71081b.a(t((p) C));
        } else {
            throw new IllegalStateException(Intrinsics.stringPlus("trySend returned ", C).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Object C(E e4) {
        y<E> Q;
        i0 t3;
        do {
            Q = Q();
            if (Q == null) {
                return kotlinx.coroutines.channels.a.f71041e;
            }
            t3 = Q.t(e4, null);
        } while (t3 == null);
        if (v0.b()) {
            if (!(t3 == kotlinx.coroutines.r.f72315d)) {
                throw new AssertionError();
            }
        }
        Q.i(e4);
        return Q.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Object D(E e4, @NotNull kotlinx.coroutines.selects.f<?> fVar) {
        d<E> j4 = j(e4);
        Object s3 = fVar.s(j4);
        if (s3 != null) {
            return s3;
        }
        y<? super E> o3 = j4.o();
        o3.i(e4);
        return o3.d();
    }

    protected void E(@NotNull kotlinx.coroutines.internal.s sVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final y<?> M(E e4) {
        kotlinx.coroutines.internal.s Q;
        kotlinx.coroutines.internal.s sVar = this.f71047b;
        a aVar = new a(e4);
        do {
            Q = sVar.Q();
            if (Q instanceof y) {
                return (y) Q;
            }
        } while (!Q.E(aVar, sVar));
        return null;
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean P(@Nullable Throwable th) {
        boolean z3;
        p<?> pVar = new p<>(th);
        kotlinx.coroutines.internal.s sVar = this.f71047b;
        while (true) {
            kotlinx.coroutines.internal.s Q = sVar.Q();
            z3 = true;
            if (!(!(Q instanceof p))) {
                z3 = false;
                break;
            } else if (Q.E(pVar, sVar)) {
                break;
            }
        }
        if (!z3) {
            pVar = (p) this.f71047b.Q();
        }
        q(pVar);
        if (z3) {
            w(th);
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public y<E> Q() {
        kotlinx.coroutines.internal.s sVar;
        kotlinx.coroutines.internal.s a02;
        kotlinx.coroutines.internal.q qVar = this.f71047b;
        while (true) {
            sVar = (kotlinx.coroutines.internal.s) qVar.O();
            if (sVar != qVar && (sVar instanceof y)) {
                if (((((y) sVar) instanceof p) && !sVar.T()) || (a02 = sVar.a0()) == null) {
                    break;
                }
                a02.S();
            }
        }
        sVar = null;
        return (y) sVar;
    }

    @Override // kotlinx.coroutines.channels.b0
    @Nullable
    public final Object R(E e4, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (C(e4) == kotlinx.coroutines.channels.a.f71040d) {
            return Unit.INSTANCE;
        }
        Object N = N(e4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return N == coroutine_suspended ? N : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.b0
    public final boolean S() {
        return n() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final a0 T() {
        kotlinx.coroutines.internal.s sVar;
        kotlinx.coroutines.internal.s a02;
        kotlinx.coroutines.internal.q qVar = this.f71047b;
        while (true) {
            sVar = (kotlinx.coroutines.internal.s) qVar.O();
            if (sVar != qVar && (sVar instanceof a0)) {
                if (((((a0) sVar) instanceof p) && !sVar.T()) || (a02 = sVar.a0()) == null) {
                    break;
                }
                a02.S();
            }
        }
        sVar = null;
        return (a0) sVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final s.b<?> i(E e4) {
        return new C0474b(this.f71047b, e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final d<E> j(E e4) {
        return new d<>(e4, this.f71047b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Object k(@NotNull a0 a0Var) {
        boolean z3;
        kotlinx.coroutines.internal.s Q;
        if (x()) {
            kotlinx.coroutines.internal.s sVar = this.f71047b;
            do {
                Q = sVar.Q();
                if (Q instanceof y) {
                    return Q;
                }
            } while (!Q.E(a0Var, sVar));
            return null;
        }
        kotlinx.coroutines.internal.s sVar2 = this.f71047b;
        e eVar = new e(a0Var, this);
        while (true) {
            kotlinx.coroutines.internal.s Q2 = sVar2.Q();
            if (!(Q2 instanceof y)) {
                int c02 = Q2.c0(a0Var, sVar2, eVar);
                z3 = true;
                if (c02 != 1) {
                    if (c02 == 2) {
                        z3 = false;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                return Q2;
            }
        }
        if (z3) {
            return null;
        }
        return kotlinx.coroutines.channels.a.f71043g;
    }

    @NotNull
    protected String l() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final p<?> m() {
        kotlinx.coroutines.internal.s P = this.f71047b.P();
        p<?> pVar = P instanceof p ? (p) P : null;
        if (pVar == null) {
            return null;
        }
        q(pVar);
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final p<?> n() {
        kotlinx.coroutines.internal.s Q = this.f71047b.Q();
        p<?> pVar = Q instanceof p ? (p) Q : null;
        if (pVar == null) {
            return null;
        }
        q(pVar);
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final kotlinx.coroutines.internal.q o() {
        return this.f71047b;
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean offer(E e4) {
        UndeliveredElementException d4;
        try {
            return b0.a.c(this, e4);
        } catch (Throwable th) {
            Function1<E, Unit> function1 = this.f71046a;
            if (function1 != null && (d4 = OnUndeliveredElementKt.d(function1, e4, null, 2, null)) != null) {
                ExceptionsKt__ExceptionsKt.addSuppressed(d4, th);
                throw d4;
            }
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public final kotlinx.coroutines.selects.e<E, b0<E>> r() {
        return new f(this);
    }

    @NotNull
    public String toString() {
        return w0.a(this) + '@' + w0.b(this) + '{' + p() + '}' + l();
    }

    protected abstract boolean x();

    protected abstract boolean y();

    @Override // kotlinx.coroutines.channels.b0
    public void z(@NotNull Function1<? super Throwable, Unit> function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f71045c;
        if (!atomicReferenceFieldUpdater.compareAndSet(this, null, function1)) {
            Object obj = this.onCloseHandler;
            if (obj == kotlinx.coroutines.channels.a.f71044h) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Another handler was already registered: ", obj));
        }
        p<?> n4 = n();
        if (n4 == null || !atomicReferenceFieldUpdater.compareAndSet(this, function1, kotlinx.coroutines.channels.a.f71044h)) {
            return;
        }
        function1.invoke(n4.f71086d);
    }
}
