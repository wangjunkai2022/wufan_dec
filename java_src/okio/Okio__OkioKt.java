package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Okio.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0002\u001a\u00020\u0004*\u00020\u0003\u001a\u000f\u0010\u0007\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lokio/Source;", "Lokio/BufferedSource;", "buffer", "Lokio/Sink;", "Lokio/BufferedSink;", "blackhole", "()Lokio/Sink;", "blackholeSink", "okio"}, k = 5, mv = {1, 4, 0}, xs = "okio/Okio")
/* loaded from: classes5.dex */
public final /* synthetic */ class Okio__OkioKt {
    @JvmName(name = "blackhole")
    @NotNull
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    @NotNull
    public static final BufferedSource buffer(@NotNull Source buffer) {
        Intrinsics.checkNotNullParameter(buffer, "$this$buffer");
        return new RealBufferedSource(buffer);
    }

    @NotNull
    public static final BufferedSink buffer(@NotNull Sink buffer) {
        Intrinsics.checkNotNullParameter(buffer, "$this$buffer");
        return new RealBufferedSink(buffer);
    }
}
