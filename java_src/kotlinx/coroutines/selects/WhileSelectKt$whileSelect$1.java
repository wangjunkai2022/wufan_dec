package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WhileSelect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.selects.WhileSelectKt", f = "WhileSelect.kt", i = {0}, l = {37}, m = "whileSelect", n = {"builder"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class WhileSelectKt$whileSelect$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f72416a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f72417b;

    /* renamed from: c  reason: collision with root package name */
    int f72418c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WhileSelectKt$whileSelect$1(Continuation<? super WhileSelectKt$whileSelect$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f72417b = obj;
        this.f72418c |= Integer.MIN_VALUE;
        return WhileSelectKt.a(null, this);
    }
}
