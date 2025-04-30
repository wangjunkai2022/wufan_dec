package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.k;
import kotlinx.coroutines.channels.n;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.p;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0007),WXYZNB)\u0012 \u0010T\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0013\u0018\u00010Rj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`S¢\u0006\u0004\bU\u0010VJ!\u0010\u0007\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002JT\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0001\u0010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052$\u0010\u0012\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015JZ\u0010\u0017\u001a\u00020\u0013\"\u0004\b\u0001\u0010\u0004* \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018JT\u0010\u0019\u001a\u00020\u000b\"\u0004\b\u0001\u0010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2$\u0010\u0012\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ \u0010\u001d\u001a\u00020\u00132\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001b2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0002J\n\u0010\u001e\u001a\u0004\u0018\u00010\u0010H\u0014J\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00102\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0014J\u0013\u0010 \u001a\u00028\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b \u0010!J\u0016\u0010\"\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0014J\"\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0086@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b$\u0010!J\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000#ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b%\u0010&J\u0012\u0010)\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010'H\u0007J\u0016\u0010,\u001a\u00020\u00132\u000e\u0010(\u001a\n\u0018\u00010*j\u0004\u0018\u0001`+J\u0019\u0010-\u001a\u00020\u000b2\b\u0010(\u001a\u0004\u0018\u00010'H\u0000¢\u0006\u0004\b-\u0010.J\u0010\u00100\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u000bH\u0014J/\u00106\u001a\u00020\u00132\f\u00103\u001a\b\u0012\u0004\u0012\u000202012\n\u00105\u001a\u0006\u0012\u0002\b\u000304H\u0014ø\u0001\u0000ø\u0001\u0002¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\b\u0012\u0004\u0012\u00028\u000008H\u0086\u0002J\u000e\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0004J\u0010\u0010=\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010<H\u0014J\b\u0010>\u001a\u00020\u0013H\u0014J\b\u0010?\u001a\u00020\u0013H\u0014R\u0019\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000@8F@\u0006¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0016\u0010D\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\"\u0010G\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000#0@8F@\u0006ø\u0001\u0000¢\u0006\u0006\u001a\u0004\bF\u0010BR\u0016\u0010I\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bH\u0010ER\u0016\u0010K\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010ER\u0016\u0010M\u001a\u00020\u000b8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bL\u0010ER\u0016\u0010O\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u0010ER\u0016\u0010Q\u001a\u00020\u000b8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bP\u0010E\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006["}, d2 = {"Lkotlinx/coroutines/channels/AbstractChannel;", "E", "Lkotlinx/coroutines/channels/b;", "Lkotlinx/coroutines/channels/k;", "R", "", "receiveMode", "n0", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/x;", "receive", "", "a0", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "block", "", "o0", "(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/functions/Function2;)V", "value", "q0", "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V", "c0", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)Z", "Lkotlinx/coroutines/p;", "cont", "p0", "l0", "m0", "O", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b0", "Lkotlinx/coroutines/channels/n;", "K", "I", "()Ljava/lang/Object;", "", "cause", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "b", "Y", "(Ljava/lang/Throwable;)Z", "wasClosed", "h0", "Lkotlinx/coroutines/internal/n;", "Lkotlinx/coroutines/channels/a0;", "list", "Lkotlinx/coroutines/channels/p;", "closed", "i0", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "Lkotlinx/coroutines/channels/AbstractChannel$g;", "Z", "Lkotlinx/coroutines/channels/y;", "Q", "k0", "j0", "Lkotlinx/coroutines/selects/d;", "F", "()Lkotlinx/coroutines/selects/d;", "onReceive", "isEmpty", "()Z", "G", "onReceiveCatching", "g0", "isEmptyImpl", "d0", "hasReceiveOrClosed", "f0", "isBufferEmpty", com.sdk.a.g.f56552a, "isClosedForReceive", "e0", "isBufferAlwaysEmpty", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "f", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class AbstractChannel<E> extends kotlinx.coroutines.channels.b<E> implements k<E> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0013\u0010\u0007\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\t\u001a\u00020\u0005H\u0096Bø\u0001\u0000¢\u0006\u0004\b\t\u0010\bJ\u0010\u0010\n\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\f\u001a\u0004\b\r\u0010\u000b\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u00108\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$a", "E", "Lkotlinx/coroutines/channels/ChannelIterator;", "", "result", "", "e", "f", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "next", "()Ljava/lang/Object;", "Ljava/lang/Object;", com.xinzhu.overmind.utils.helpers.d.f64708a, "setResult", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/AbstractChannel;", "a", "Lkotlinx/coroutines/channels/AbstractChannel;", "channel", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a<E> implements ChannelIterator<E> {
        @JvmField
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final AbstractChannel<E> f70769a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f70770b = kotlinx.coroutines.channels.a.f71042f;

        public a(@NotNull AbstractChannel<E> abstractChannel) {
            this.f70769a = abstractChannel;
        }

        private final boolean e(Object obj) {
            if (obj instanceof p) {
                p pVar = (p) obj;
                if (pVar.f71086d == null) {
                    return false;
                }
                throw h0.p(pVar.l0());
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object f(Continuation<? super Boolean> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            kotlinx.coroutines.q b4 = kotlinx.coroutines.s.b(intercepted);
            d dVar = new d(this, b4);
            while (true) {
                if (this.f70769a.a0(dVar)) {
                    this.f70769a.p0(b4, dVar);
                    break;
                }
                Object l02 = this.f70769a.l0();
                setResult(l02);
                if (l02 instanceof p) {
                    p pVar = (p) l02;
                    if (pVar.f71086d == null) {
                        Boolean boxBoolean = Boxing.boxBoolean(false);
                        Result.Companion companion = Result.Companion;
                        b4.resumeWith(Result.m24constructorimpl(boxBoolean));
                    } else {
                        Throwable l03 = pVar.l0();
                        Result.Companion companion2 = Result.Companion;
                        b4.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(l03)));
                    }
                } else if (l02 != kotlinx.coroutines.channels.a.f71042f) {
                    Boolean boxBoolean2 = Boxing.boxBoolean(true);
                    Function1<E, Unit> function1 = this.f70769a.f71046a;
                    b4.y(boxBoolean2, function1 == null ? null : OnUndeliveredElementKt.a(function1, l02, b4.getContext()));
                }
            }
            Object x3 = b4.x();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (x3 == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return x3;
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        public /* synthetic */ Object a(Continuation continuation) {
            return ChannelIterator.DefaultImpls.a(this, continuation);
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Nullable
        public Object b(@NotNull Continuation<? super Boolean> continuation) {
            Object d4 = d();
            i0 i0Var = kotlinx.coroutines.channels.a.f71042f;
            if (d4 != i0Var) {
                return Boxing.boxBoolean(e(d()));
            }
            setResult(this.f70769a.l0());
            return d() != i0Var ? Boxing.boxBoolean(e(d())) : f(continuation);
        }

        @Nullable
        public final Object d() {
            return this.f70770b;
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() {
            E e4 = (E) this.f70770b;
            if (!(e4 instanceof p)) {
                i0 i0Var = kotlinx.coroutines.channels.a.f71042f;
                if (e4 != i0Var) {
                    this.f70770b = i0Var;
                    return e4;
                }
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            throw h0.p(((p) e4).l0());
        }

        public final void setResult(@Nullable Object obj) {
            this.f70770b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0012\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001f\u0012\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00028\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0011\u001a\u00020\f2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u001e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00148\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$b", "E", "Lkotlinx/coroutines/channels/x;", "value", "", "h0", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", ai.aF, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/s$d;)Lkotlinx/coroutines/internal/i0;", "", ai.aA, "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/p;", "closed", "g0", "", "toString", "Lkotlinx/coroutines/p;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/p;", "cont", "", "e", "I", "receiveMode", "<init>", "(Lkotlinx/coroutines/p;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class b<E> extends x<E> {
        @JvmField
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final kotlinx.coroutines.p<Object> f70771d;
        @JvmField

        /* renamed from: e  reason: collision with root package name */
        public final int f70772e;

        public b(@NotNull kotlinx.coroutines.p<Object> pVar, int i2) {
            this.f70771d = pVar;
            this.f70772e = i2;
        }

        @Override // kotlinx.coroutines.channels.x
        public void g0(@NotNull p<?> pVar) {
            if (this.f70772e == 1) {
                kotlinx.coroutines.p<Object> pVar2 = this.f70771d;
                n b4 = n.b(n.f71081b.a(pVar.f71086d));
                Result.Companion companion = Result.Companion;
                pVar2.resumeWith(Result.m24constructorimpl(b4));
                return;
            }
            kotlinx.coroutines.p<Object> pVar3 = this.f70771d;
            Throwable l02 = pVar.l0();
            Result.Companion companion2 = Result.Companion;
            pVar3.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(l02)));
        }

        @Nullable
        public final Object h0(E e4) {
            return this.f70772e == 1 ? n.b(n.f71081b.c(e4)) : e4;
        }

        @Override // kotlinx.coroutines.channels.y
        public void i(E e4) {
            this.f70771d.V(kotlinx.coroutines.r.f72315d);
        }

        @Override // kotlinx.coroutines.channels.y
        @Nullable
        public i0 t(E e4, @Nullable s.d dVar) {
            Object L = this.f70771d.L(h0(e4), dVar == null ? null : dVar.f72213c, f0(e4));
            if (L == null) {
                return null;
            }
            if (v0.b()) {
                if (!(L == kotlinx.coroutines.r.f72315d)) {
                    throw new AssertionError();
                }
            }
            if (dVar != null) {
                dVar.d();
            }
            return kotlinx.coroutines.r.f72315d;
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "ReceiveElement@" + w0.b(this) + "[receiveMode=" + this.f70772e + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00010\u0002B=\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00060\u0004j\b\u0012\u0004\u0012\u00028\u0001`\t¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0007\u0010\bR,\u0010\f\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00060\u0004j\b\u0012\u0004\u0012\u00028\u0001`\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$c", "E", "Lkotlinx/coroutines/channels/AbstractChannel$b;", "value", "Lkotlin/Function1;", "", "", "f0", "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "f", "Lkotlin/jvm/functions/Function1;", "onUndeliveredElement", "Lkotlinx/coroutines/p;", "", "cont", "", "receiveMode", "<init>", "(Lkotlinx/coroutines/p;ILkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c<E> extends b<E> {
        @JvmField
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public final Function1<E, Unit> f70773f;

        /* JADX WARN: Multi-variable type inference failed */
        public c(@NotNull kotlinx.coroutines.p<Object> pVar, int i2, @NotNull Function1<? super E, Unit> function1) {
            super(pVar, i2);
            this.f70773f = function1;
        }

        @Override // kotlinx.coroutines.channels.x
        @Nullable
        public Function1<Throwable, Unit> f0(E e4) {
            return OnUndeliveredElementKt.a(this.f70773f, e4, this.f70771d.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0012\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B#\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0015\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0004\b\u001e\u0010\u001fJ#\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00028\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u000e\u001a\u00020\t2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0016J%\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u000f2\u0006\u0010\u0003\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0014\u001a\u00020\u0013H\u0016R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00158\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$d", "E", "Lkotlinx/coroutines/channels/x;", "value", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", ai.aF, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/s$d;)Lkotlinx/coroutines/internal/i0;", "", ai.aA, "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/p;", "closed", "g0", "Lkotlin/Function1;", "", "f0", "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;", "", "toString", "Lkotlinx/coroutines/channels/AbstractChannel$a;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/channels/AbstractChannel$a;", "iterator", "Lkotlinx/coroutines/p;", "", "e", "Lkotlinx/coroutines/p;", "cont", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel$a;Lkotlinx/coroutines/p;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class d<E> extends x<E> {
        @JvmField
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final a<E> f70774d;
        @JvmField
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public final kotlinx.coroutines.p<Boolean> f70775e;

        /* JADX WARN: Multi-variable type inference failed */
        public d(@NotNull a<E> aVar, @NotNull kotlinx.coroutines.p<? super Boolean> pVar) {
            this.f70774d = aVar;
            this.f70775e = pVar;
        }

        @Override // kotlinx.coroutines.channels.x
        @Nullable
        public Function1<Throwable, Unit> f0(E e4) {
            Function1<E, Unit> function1 = this.f70774d.f70769a.f71046a;
            if (function1 == null) {
                return null;
            }
            return OnUndeliveredElementKt.a(function1, e4, this.f70775e.getContext());
        }

        @Override // kotlinx.coroutines.channels.x
        public void g0(@NotNull p<?> pVar) {
            Object p3;
            if (pVar.f71086d == null) {
                p3 = p.a.b(this.f70775e, Boolean.FALSE, null, 2, null);
            } else {
                p3 = this.f70775e.p(pVar.l0());
            }
            if (p3 != null) {
                this.f70774d.setResult(pVar);
                this.f70775e.V(p3);
            }
        }

        @Override // kotlinx.coroutines.channels.y
        public void i(E e4) {
            this.f70774d.setResult(e4);
            this.f70775e.V(kotlinx.coroutines.r.f72315d);
        }

        @Override // kotlinx.coroutines.channels.y
        @Nullable
        public i0 t(E e4, @Nullable s.d dVar) {
            Object L = this.f70775e.L(Boolean.TRUE, dVar == null ? null : dVar.f72213c, f0(e4));
            if (L == null) {
                return null;
            }
            if (v0.b()) {
                if (!(L == kotlinx.coroutines.r.f72315d)) {
                    throw new AssertionError();
                }
            }
            if (dVar != null) {
                dVar.d();
            }
            return kotlinx.coroutines.r.f72315d;
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return Intrinsics.stringPlus("ReceiveHasNext@", w0.b(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\b\u0012\u0004\u0012\u00028\u00020\u00032\u00020\u0004BT\u0012\f\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00020&\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018\u0012$\u0010%\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010!0 \u0012\u0006\u0010\u001f\u001a\u00020\u001cø\u0001\u0000¢\u0006\u0004\b*\u0010+J#\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00028\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0014\u0010\u0010\u001a\u00020\u000b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J%\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0017\u001a\u00020\u0016H\u0016R\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00188\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR7\u0010%\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010!0 8\u0006@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00020&8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$e", "R", "E", "Lkotlinx/coroutines/channels/x;", "Lkotlinx/coroutines/j1;", "value", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", ai.aF, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/s$d;)Lkotlinx/coroutines/internal/i0;", "", ai.aA, "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/p;", "closed", "g0", "dispose", "Lkotlin/Function1;", "", "f0", "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;", "", "toString", "Lkotlinx/coroutines/selects/f;", "e", "Lkotlinx/coroutines/selects/f;", "select", "", com.sdk.a.g.f56552a, "I", "receiveMode", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "f", "Lkotlin/jvm/functions/Function2;", "block", "Lkotlinx/coroutines/channels/AbstractChannel;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/channels/AbstractChannel;", "channel", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class e<R, E> extends x<E> implements j1 {
        @JvmField
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final AbstractChannel<E> f70776d;
        @JvmField
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f70777e;
        @JvmField
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public final Function2<Object, Continuation<? super R>, Object> f70778f;
        @JvmField

        /* renamed from: g  reason: collision with root package name */
        public final int f70779g;

        /* JADX WARN: Multi-variable type inference failed */
        public e(@NotNull AbstractChannel<E> abstractChannel, @NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i2) {
            this.f70776d = abstractChannel;
            this.f70777e = fVar;
            this.f70778f = function2;
            this.f70779g = i2;
        }

        @Override // kotlinx.coroutines.j1
        public void dispose() {
            if (X()) {
                this.f70776d.j0();
            }
        }

        @Override // kotlinx.coroutines.channels.x
        @Nullable
        public Function1<Throwable, Unit> f0(E e4) {
            Function1<E, Unit> function1 = this.f70776d.f71046a;
            if (function1 == null) {
                return null;
            }
            return OnUndeliveredElementKt.a(function1, e4, this.f70777e.o().getContext());
        }

        @Override // kotlinx.coroutines.channels.x
        public void g0(@NotNull p<?> pVar) {
            if (this.f70777e.n()) {
                int i2 = this.f70779g;
                if (i2 == 0) {
                    this.f70777e.r(pVar.l0());
                } else if (i2 != 1) {
                } else {
                    b3.a.g(this.f70778f, n.b(n.f71081b.a(pVar.f71086d)), this.f70777e.o(), null, 4, null);
                }
            }
        }

        @Override // kotlinx.coroutines.channels.y
        public void i(E e4) {
            b3.a.f(this.f70778f, this.f70779g == 1 ? n.b(n.f71081b.c(e4)) : e4, this.f70777e.o(), f0(e4));
        }

        @Override // kotlinx.coroutines.channels.y
        @Nullable
        public i0 t(E e4, @Nullable s.d dVar) {
            return (i0) this.f70777e.k(dVar);
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "ReceiveSelect@" + w0.b(this) + '[' + this.f70777e + ",receiveMode=" + this.f70779g + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\b¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u001a\u0010\n\u001a\u0006\u0012\u0002\b\u00030\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\t¨\u0006\r"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$f", "Lkotlinx/coroutines/f;", "", "cause", "", "a", "", "toString", "Lkotlinx/coroutines/channels/x;", "Lkotlinx/coroutines/channels/x;", "receive", "<init>", "(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/x;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class f extends kotlinx.coroutines.f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final x<?> f70780a;

        public f(@NotNull x<?> xVar) {
            this.f70780a = xVar;
        }

        @Override // kotlinx.coroutines.o
        public void a(@Nullable Throwable th) {
            if (this.f70780a.X()) {
                AbstractChannel.this.j0();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            a(th);
            return Unit.INSTANCE;
        }

        @NotNull
        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f70780a + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0004B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0016\u0010\f\u001a\u0004\u0018\u00010\u00072\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0013"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$g", "E", "Lkotlinx/coroutines/internal/s$e;", "Lkotlinx/coroutines/channels/a0;", "Lkotlinx/coroutines/internal/RemoveFirstDesc;", "Lkotlinx/coroutines/internal/s;", "affected", "", "e", "Lkotlinx/coroutines/internal/s$d;", "Lkotlinx/coroutines/internal/PrepareOp;", "prepareOp", "j", "", "k", "Lkotlinx/coroutines/internal/q;", "queue", "<init>", "(Lkotlinx/coroutines/internal/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class g<E> extends s.e<a0> {
        public g(@NotNull kotlinx.coroutines.internal.q qVar) {
            super(qVar);
        }

        @Override // kotlinx.coroutines.internal.s.e, kotlinx.coroutines.internal.s.a
        @Nullable
        protected Object e(@NotNull kotlinx.coroutines.internal.s sVar) {
            if (sVar instanceof p) {
                return sVar;
            }
            if (sVar instanceof a0) {
                return null;
            }
            return kotlinx.coroutines.channels.a.f71042f;
        }

        @Override // kotlinx.coroutines.internal.s.a
        @Nullable
        public Object j(@NotNull s.d dVar) {
            i0 h02 = ((a0) dVar.f72211a).h0(dVar);
            if (h02 == null) {
                return kotlinx.coroutines.internal.t.f72223a;
            }
            Object obj = kotlinx.coroutines.internal.c.f72163b;
            if (h02 == obj) {
                return obj;
            }
            if (v0.b()) {
                if (h02 == kotlinx.coroutines.r.f72315d) {
                    return null;
                }
                throw new AssertionError();
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.s.a
        public void k(@NotNull kotlinx.coroutines.internal.s sVar) {
            ((a0) sVar).i0();
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$h", "Lkotlinx/coroutines/internal/s$c;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core", "kotlinx/coroutines/internal/s$f"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class h extends s.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.internal.s f70782d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ AbstractChannel f70783e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(kotlinx.coroutines.internal.s sVar, AbstractChannel abstractChannel) {
            super(sVar);
            this.f70782d = sVar;
            this.f70783e = abstractChannel;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull kotlinx.coroutines.internal.s sVar) {
            if (this.f70783e.f0()) {
                return null;
            }
            return kotlinx.coroutines.internal.r.a();
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001JJ\u0010\n\u001a\u00020\t\"\u0004\b\u0001\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0016ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$i", "Lkotlinx/coroutines/selects/d;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "f", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class i implements kotlinx.coroutines.selects.d<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbstractChannel<E> f70784a;

        i(AbstractChannel<E> abstractChannel) {
            this.f70784a = abstractChannel;
        }

        @Override // kotlinx.coroutines.selects.d
        public <R> void f(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f70784a.o0(fVar, 0, function2);
        }
    }

    /* compiled from: AbstractChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001JS\u0010\u000b\u001a\u00020\n\"\u0004\b\u0001\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042(\u0010\t\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006H\u0016ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$j", "Lkotlinx/coroutines/selects/d;", "Lkotlinx/coroutines/channels/n;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "f", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class j implements kotlinx.coroutines.selects.d<n<? extends E>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbstractChannel<E> f70785a;

        j(AbstractChannel<E> abstractChannel) {
            this.f70785a = abstractChannel;
        }

        @Override // kotlinx.coroutines.selects.d
        public <R> void f(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super n<? extends E>, ? super Continuation<? super R>, ? extends Object> function2) {
            this.f70785a.o0(fVar, 1, function2);
        }
    }

    public AbstractChannel(@Nullable Function1<? super E, Unit> function1) {
        super(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a0(x<? super E> xVar) {
        boolean b02 = b0(xVar);
        if (b02) {
            k0();
        }
        return b02;
    }

    private final <R> boolean c0(kotlinx.coroutines.selects.f<? super R> fVar, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i2) {
        e eVar = new e(this, fVar, function2, i2);
        boolean a02 = a0(eVar);
        if (a02) {
            fVar.j(eVar);
        }
        return a02;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.channels.AbstractChannel$b] */
    public final <R> Object n0(int i2, Continuation<? super R> continuation) {
        Continuation intercepted;
        c cVar;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.q b4 = kotlinx.coroutines.s.b(intercepted);
        if (this.f71046a == null) {
            cVar = new b(b4, i2);
        } else {
            cVar = new c(b4, i2, this.f71046a);
        }
        while (true) {
            if (a0(cVar)) {
                p0(b4, cVar);
                break;
            }
            Object l02 = l0();
            if (l02 instanceof p) {
                cVar.g0((p) l02);
                break;
            } else if (l02 != kotlinx.coroutines.channels.a.f71042f) {
                b4.y(cVar.h0(l02), cVar.f0(l02));
                break;
            }
        }
        Object x3 = b4.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void o0(kotlinx.coroutines.selects.f<? super R> fVar, int i2, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2) {
        while (!fVar.g()) {
            if (g0()) {
                if (c0(fVar, function2, i2)) {
                    return;
                }
            } else {
                Object m02 = m0(fVar);
                if (m02 == kotlinx.coroutines.selects.g.d()) {
                    return;
                }
                if (m02 != kotlinx.coroutines.channels.a.f71042f && m02 != kotlinx.coroutines.internal.c.f72163b) {
                    q0(function2, fVar, i2, m02);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0(kotlinx.coroutines.p<?> pVar, x<?> xVar) {
        pVar.l(new f(xVar));
    }

    private final <R> void q0(Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, kotlinx.coroutines.selects.f<? super R> fVar, int i2, Object obj) {
        boolean z3 = obj instanceof p;
        if (!z3) {
            if (i2 == 1) {
                n.b bVar = n.f71081b;
                b3.b.d(function2, n.b(z3 ? bVar.a(((p) obj).f71086d) : bVar.c(obj)), fVar.o());
                return;
            }
            b3.b.d(function2, obj, fVar.o());
        } else if (i2 != 0) {
            if (i2 == 1 && fVar.n()) {
                b3.b.d(function2, n.b(n.f71081b.a(((p) obj).f71086d)), fVar.o());
            }
        } else {
            throw h0.p(((p) obj).l0());
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public final kotlinx.coroutines.selects.d<E> F() {
        return new i(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public final kotlinx.coroutines.selects.d<n<E>> G() {
        return new j(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.d<E> H() {
        return k.a.b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public final Object I() {
        Object l02 = l0();
        return l02 == kotlinx.coroutines.channels.a.f71042f ? n.f71081b.b() : l02 instanceof p ? n.f71081b.a(((p) l02).f71086d) : n.f71081b.c(l02);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object J(@NotNull Continuation<? super E> continuation) {
        return k.a.e(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object K(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.n<? extends E>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1) r0
            int r1 = r0.f70788c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f70788c = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f70786a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f70788c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5b
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.Object r5 = r4.l0()
            kotlinx.coroutines.internal.i0 r2 = kotlinx.coroutines.channels.a.f71042f
            if (r5 == r2) goto L52
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.p
            if (r0 == 0) goto L4b
            kotlinx.coroutines.channels.n$b r0 = kotlinx.coroutines.channels.n.f71081b
            kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) r5
            java.lang.Throwable r5 = r5.f71086d
            java.lang.Object r5 = r0.a(r5)
            goto L51
        L4b:
            kotlinx.coroutines.channels.n$b r0 = kotlinx.coroutines.channels.n.f71081b
            java.lang.Object r5 = r0.c(r5)
        L51:
            return r5
        L52:
            r0.f70788c = r3
            java.lang.Object r5 = r4.n0(r3, r0)
            if (r5 != r1) goto L5b
            return r1
        L5b:
            kotlinx.coroutines.channels.n r5 = (kotlinx.coroutines.channels.n) r5
            java.lang.Object r5 = r5.o()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractChannel.K(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public final Object O(@NotNull Continuation<? super E> continuation) {
        Object l02 = l0();
        return (l02 == kotlinx.coroutines.channels.a.f71042f || (l02 instanceof p)) ? n0(0, continuation) : l02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @Nullable
    public y<E> Q() {
        y<E> Q = super.Q();
        if (Q != null && !(Q instanceof p)) {
            j0();
        }
        return Q;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: Y */
    public final boolean a(@Nullable Throwable th) {
        boolean P = P(th);
        h0(P);
        return P;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final g<E> Z() {
        return new g<>(o());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void b(@Nullable CancellationException cancellationException) {
        if (g()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new CancellationException(Intrinsics.stringPlus(w0.a(this), " was cancelled"));
        }
        a(cancellationException);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b0(@NotNull x<? super E> xVar) {
        int c02;
        kotlinx.coroutines.internal.s Q;
        if (e0()) {
            kotlinx.coroutines.internal.s o3 = o();
            do {
                Q = o3.Q();
                if (!(!(Q instanceof a0))) {
                    return false;
                }
            } while (!Q.E(xVar, o3));
        } else {
            kotlinx.coroutines.internal.s o4 = o();
            h hVar = new h(xVar, this);
            do {
                kotlinx.coroutines.internal.s Q2 = o4.Q();
                if (!(!(Q2 instanceof a0))) {
                    return false;
                }
                c02 = Q2.c0(xVar, o4, hVar);
                if (c02 != 1) {
                }
            } while (c02 != 2);
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        b(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d0() {
        return o().P() instanceof y;
    }

    protected abstract boolean e0();

    protected abstract boolean f0();

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean g() {
        return m() != null && f0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean g0() {
        return !(o().P() instanceof a0) && f0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h0(boolean z3) {
        p<?> n4 = n();
        if (n4 != null) {
            Object c4 = kotlinx.coroutines.internal.n.c(null, 1, null);
            while (true) {
                kotlinx.coroutines.internal.s Q = n4.Q();
                if (Q instanceof kotlinx.coroutines.internal.q) {
                    i0(c4, n4);
                    return;
                } else if (v0.b() && !(Q instanceof a0)) {
                    throw new AssertionError();
                } else {
                    if (!Q.X()) {
                        Q.R();
                    } else {
                        c4 = kotlinx.coroutines.internal.n.h(c4, (a0) Q);
                    }
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen".toString());
        }
    }

    protected void i0(@NotNull Object obj, @NotNull p<?> pVar) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            ((a0) obj).g0(pVar);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = size - 1;
            ((a0) arrayList.get(size)).g0(pVar);
            if (i2 < 0) {
                return;
            }
            size = i2;
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        return g0();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public final ChannelIterator<E> iterator() {
        return new a(this);
    }

    protected void j0() {
    }

    protected void k0() {
    }

    @Nullable
    protected Object l0() {
        while (true) {
            a0 T = T();
            if (T == null) {
                return kotlinx.coroutines.channels.a.f71042f;
            }
            i0 h02 = T.h0(null);
            if (h02 != null) {
                if (v0.b()) {
                    if (!(h02 == kotlinx.coroutines.r.f72315d)) {
                        throw new AssertionError();
                    }
                }
                T.e0();
                return T.f0();
            }
            T.i0();
        }
    }

    @Nullable
    protected Object m0(@NotNull kotlinx.coroutines.selects.f<?> fVar) {
        g<E> Z = Z();
        Object s3 = fVar.s(Z);
        if (s3 != null) {
            return s3;
        }
        Z.o().e0();
        return Z.o().f0();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) k.a.d(this);
    }
}
