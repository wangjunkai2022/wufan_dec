package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ReceiveChannel$DefaultImpls", f = "Channel.kt", i = {}, l = {355}, m = "receiveOrNull", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ReceiveChannel$receiveOrNull$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    /* synthetic */ Object f71021a;

    /* renamed from: b  reason: collision with root package name */
    int f71022b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReceiveChannel$receiveOrNull$1(Continuation<? super ReceiveChannel$receiveOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71021a = obj;
        this.f71022b |= Integer.MIN_VALUE;
        return ReceiveChannel.DefaultImpls.i(null, this);
    }
}
