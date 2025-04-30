package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeLinkedList.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\fJ-\u0010\u0007\u001a\u00020\u0005\"\u000e\b\u0000\u0010\u0003\u0018\u0001*\u00060\u0001j\u0002`\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\bJ\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\n\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u0002H\u0014J\u000f\u0010\u000b\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u000b\u0010\fR\u0013\u0010\u000f\u001a\u00020\b8F@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/q;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "T", "Lkotlin/Function1;", "", "block", "e0", "", "X", "W", "g0", "()V", "f0", "()Z", "isEmpty", "isRemoved", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class q extends s {
    @Override // kotlinx.coroutines.internal.s
    public boolean T() {
        return false;
    }

    @Override // kotlinx.coroutines.internal.s
    @Nullable
    protected s W() {
        return null;
    }

    @Override // kotlinx.coroutines.internal.s
    public final boolean X() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    public final /* synthetic */ <T extends s> void e0(Function1<? super T, Unit> function1) {
        for (s sVar = (s) O(); !Intrinsics.areEqual(sVar, this); sVar = sVar.P()) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (sVar instanceof s) {
                function1.invoke(sVar);
            }
        }
    }

    public final boolean f0() {
        return O() == this;
    }

    public final void g0() {
        s sVar = (s) O();
        s sVar2 = this;
        while (!Intrinsics.areEqual(sVar, this)) {
            s P = sVar.P();
            sVar.d0(sVar2, P);
            sVar2 = sVar;
            sVar = P;
        }
        d0(sVar2, (s) O());
    }
}
