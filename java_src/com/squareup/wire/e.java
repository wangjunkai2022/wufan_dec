package com.squareup.wire;

import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Instant.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0086\b*\n\u0010\u0006\"\u00020\u00032\u00020\u0003¨\u0006\u0007"}, d2 = {"", "epochSecond", "nano", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "a", "Instant", "wire-runtime"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class e {
    @NotNull
    public static final Instant a(long j4, long j5) {
        Instant ofEpochSecond = Instant.ofEpochSecond(j4, j5);
        Intrinsics.checkNotNullExpressionValue(ofEpochSecond, "Instant.ofEpochSecond(epochSecond, nano)");
        return ofEpochSecond;
    }
}
