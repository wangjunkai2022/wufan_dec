package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Timeout.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", i = {0}, l = {101}, m = "withTimeoutOrNull", n = {"coroutine"}, s = {"L$1"})
/* loaded from: classes5.dex */
public final class TimeoutKt$withTimeoutOrNull$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    long f70738a;

    /* renamed from: b  reason: collision with root package name */
    Object f70739b;

    /* renamed from: c  reason: collision with root package name */
    Object f70740c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70741d;

    /* renamed from: e  reason: collision with root package name */
    int f70742e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeoutKt$withTimeoutOrNull$1(Continuation<? super TimeoutKt$withTimeoutOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70741d = obj;
        this.f70742e |= Integer.MIN_VALUE;
        return TimeoutKt.e(0L, null, this);
    }
}
