package okio;

import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InflaterSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0086\b¨\u0006\u0005"}, d2 = {"Lokio/Source;", "Ljava/util/zip/Inflater;", "inflater", "Lokio/InflaterSource;", "inflate", "okio"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "-InflaterSourceExtensions")
/* renamed from: okio.-InflaterSourceExtensions  reason: invalid class name */
/* loaded from: classes5.dex */
public final class InflaterSourceExtensions {
    @NotNull
    public static final InflaterSource inflate(@NotNull Source inflate, @NotNull Inflater inflater) {
        Intrinsics.checkNotNullParameter(inflate, "$this$inflate");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(inflate, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source inflate, Inflater inflater, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            inflater = new Inflater();
        }
        Intrinsics.checkNotNullParameter(inflate, "$this$inflate");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(inflate, inflater);
    }
}
