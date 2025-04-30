package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Mutex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.sync.MutexKt", f = "Mutex.kt", i = {}, l = {114}, m = "withLock", n = {}, s = {})
/* loaded from: classes5.dex */
public final class MutexKt$withLock$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f72469a;

    /* renamed from: b  reason: collision with root package name */
    Object f72470b;

    /* renamed from: c  reason: collision with root package name */
    Object f72471c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f72472d;

    /* renamed from: e  reason: collision with root package name */
    int f72473e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutexKt$withLock$1(Continuation<? super MutexKt$withLock$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f72472d = obj;
        this.f72473e |= Integer.MIN_VALUE;
        return MutexKt.q(null, null, null, this);
    }
}
