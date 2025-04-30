package com.squareup.wire.internal;

import com.umeng.analytics.pro.ai;
import java.time.Instant;
import java.time.format.DateTimeFormatter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InstantJsonFormatter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\b\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, d2 = {"Lcom/squareup/wire/internal/e;", "Lcom/squareup/wire/internal/i;", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "value", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", ai.aD, "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class e implements i<Instant> {

    /* renamed from: a  reason: collision with root package name */
    public static final e f56819a = new e();

    private e() {
    }

    @Override // com.squareup.wire.internal.i
    @NotNull
    /* renamed from: c */
    public Instant a(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Instant from = Instant.from(DateTimeFormatter.ISO_OFFSET_DATE_TIME.parse(value));
        Intrinsics.checkNotNullExpressionValue(from, "Instant.from(parsed)");
        return from;
    }

    @Override // com.squareup.wire.internal.i
    @NotNull
    /* renamed from: d */
    public Object b(@NotNull Instant value) {
        Intrinsics.checkNotNullParameter(value, "value");
        String format = DateTimeFormatter.ISO_INSTANT.format(value);
        Intrinsics.checkNotNullExpressionValue(format, "ISO_INSTANT.format(value)");
        return format;
    }
}
