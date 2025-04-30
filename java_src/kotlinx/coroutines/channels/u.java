package kotlinx.coroutines.channels;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.b;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LinkedListChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010\u001f\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001dj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u001e¢\u0006\u0004\b \u0010!J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u00002\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ/\u0010\u0011\u001a\u00020\u00102\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00138D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00138D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0016\u0010\u001c\u001a\u00020\u00138D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0015\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\""}, d2 = {"Lkotlinx/coroutines/channels/u;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "element", "", "C", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "D", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/n;", "Lkotlinx/coroutines/channels/a0;", "list", "Lkotlinx/coroutines/channels/p;", "closed", "", "i0", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/p;)V", "", "e0", "()Z", "isBufferAlwaysEmpty", "x", "isBufferAlwaysFull", "f0", "isBufferEmpty", "y", "isBufferFull", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class u<E> extends AbstractChannel<E> {
    public u(@Nullable Function1<? super E, Unit> function1) {
        super(function1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @NotNull
    public Object C(E e4) {
        y<?> M;
        do {
            Object C = super.C(e4);
            i0 i0Var = a.f71040d;
            if (C == i0Var) {
                return i0Var;
            }
            if (C == a.f71041e) {
                M = M(e4);
                if (M == null) {
                    return i0Var;
                }
            } else if (C instanceof p) {
                return C;
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid offerInternal result ", C).toString());
            }
        } while (!(M instanceof p));
        return M;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @NotNull
    public Object D(E e4, @NotNull kotlinx.coroutines.selects.f<?> fVar) {
        Object s3;
        while (true) {
            if (d0()) {
                s3 = super.D(e4, fVar);
            } else {
                s3 = fVar.s(i(e4));
                if (s3 == null) {
                    s3 = a.f71040d;
                }
            }
            if (s3 == kotlinx.coroutines.selects.g.d()) {
                return kotlinx.coroutines.selects.g.d();
            }
            i0 i0Var = a.f71040d;
            if (s3 == i0Var) {
                return i0Var;
            }
            if (s3 != a.f71041e && s3 != kotlinx.coroutines.internal.c.f72163b) {
                if (s3 instanceof p) {
                    return s3;
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Invalid result ", s3).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean e0() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean f0() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected void i0(@NotNull Object obj, @NotNull p<?> pVar) {
        UndeliveredElementException undeliveredElementException = null;
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                a0 a0Var = (a0) obj;
                if (a0Var instanceof b.a) {
                    Function1<E, Unit> function1 = this.f71046a;
                    if (function1 != null) {
                        undeliveredElementException = OnUndeliveredElementKt.c(function1, ((b.a) a0Var).f71048d, null);
                    }
                } else {
                    a0Var.g0(pVar);
                }
            } else {
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    UndeliveredElementException undeliveredElementException2 = null;
                    while (true) {
                        int i2 = size - 1;
                        a0 a0Var2 = (a0) arrayList.get(size);
                        if (a0Var2 instanceof b.a) {
                            Function1<E, Unit> function12 = this.f71046a;
                            undeliveredElementException2 = function12 == null ? null : OnUndeliveredElementKt.c(function12, ((b.a) a0Var2).f71048d, undeliveredElementException2);
                        } else {
                            a0Var2.g0(pVar);
                        }
                        if (i2 < 0) {
                            break;
                        }
                        size = i2;
                    }
                    undeliveredElementException = undeliveredElementException2;
                }
            }
        }
        if (undeliveredElementException != null) {
            throw undeliveredElementException;
        }
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean x() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean y() {
        return false;
    }
}
