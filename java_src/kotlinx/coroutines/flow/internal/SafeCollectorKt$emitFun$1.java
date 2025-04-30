package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
/* synthetic */ class SafeCollectorKt$emitFun$1 extends FunctionReferenceImpl implements Function3<kotlinx.coroutines.flow.g<? super Object>, Object, Unit>, SuspendFunction {

    /* renamed from: a  reason: collision with root package name */
    public static final SafeCollectorKt$emitFun$1 f72061a = new SafeCollectorKt$emitFun$1();

    SafeCollectorKt$emitFun$1() {
        super(3, kotlinx.coroutines.flow.g.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: a */
    public final Object invoke(@NotNull kotlinx.coroutines.flow.g<Object> gVar, @Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        return gVar.emit(obj, continuation);
    }
}
