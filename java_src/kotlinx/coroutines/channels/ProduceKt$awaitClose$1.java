package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Produce.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", i = {}, l = {157}, m = "awaitClose", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ProduceKt$awaitClose$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71011a;

    /* renamed from: b  reason: collision with root package name */
    Object f71012b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71013c;

    /* renamed from: d  reason: collision with root package name */
    int f71014d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProduceKt$awaitClose$1(Continuation<? super ProduceKt$awaitClose$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71013c = obj;
        this.f71014d |= Integer.MIN_VALUE;
        return ProduceKt.a(null, null, this);
    }
}
