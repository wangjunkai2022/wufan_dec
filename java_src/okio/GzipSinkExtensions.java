package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GzipSink.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086\b¨\u0006\u0003"}, d2 = {"Lokio/Sink;", "Lokio/GzipSink;", "gzip", "okio"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "-GzipSinkExtensions")
/* renamed from: okio.-GzipSinkExtensions  reason: invalid class name */
/* loaded from: classes5.dex */
public final class GzipSinkExtensions {
    @NotNull
    public static final GzipSink gzip(@NotNull Sink gzip) {
        Intrinsics.checkNotNullParameter(gzip, "$this$gzip");
        return new GzipSink(gzip);
    }
}
