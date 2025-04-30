package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.ChannelIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelIterator$DefaultImpls", f = "Channel.kt", i = {0}, l = {585}, m = "next", n = {"this"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class ChannelIterator$next0$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70794a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f70795b;

    /* renamed from: c  reason: collision with root package name */
    int f70796c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelIterator$next0$1(Continuation<? super ChannelIterator$next0$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70795b = obj;
        this.f70796c |= Integer.MIN_VALUE;
        return ChannelIterator.DefaultImpls.a(null, this);
    }
}
