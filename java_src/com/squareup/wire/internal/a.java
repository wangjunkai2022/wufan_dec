package com.squareup.wire.internal;

import com.umeng.analytics.pro.ai;
import java.time.Duration;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.DurationKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: DurationJsonFormatter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\u0007\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\n"}, d2 = {"Lcom/squareup/wire/internal/a;", "Lcom/squareup/wire/internal/i;", "Ljava/time/Duration;", "Lcom/squareup/wire/Duration;", "value", "", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class a implements i<Duration> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f56802a = new a();

    private a() {
    }

    @Override // com.squareup.wire.internal.i
    @NotNull
    /* renamed from: c */
    public Duration a(@NotNull String value) {
        int indexOf$default;
        int indexOf$default2;
        boolean startsWith$default;
        int i2;
        Intrinsics.checkNotNullParameter(value, "value");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) value, 's', 0, false, 6, (Object) null);
        if (indexOf$default == value.length() - 1) {
            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) value, (char) external.org.apache.commons.lang3.d.f65364a, 0, false, 6, (Object) null);
            if (indexOf$default2 == -1) {
                String substring = value.substring(0, indexOf$default);
                Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Duration ofSeconds = Duration.ofSeconds(Long.parseLong(substring));
                Intrinsics.checkNotNullExpressionValue(ofSeconds, "Duration.ofSeconds(seconds)");
                return ofSeconds;
            }
            String substring2 = value.substring(0, indexOf$default2);
            Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            long parseLong = Long.parseLong(substring2);
            int i4 = indexOf$default2 + 1;
            String substring3 = value.substring(i4, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            long parseLong2 = Long.parseLong(substring3);
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(value, "-", false, 2, null);
            if (startsWith$default) {
                parseLong2 = -parseLong2;
            }
            int i5 = indexOf$default - i4;
            int i6 = i5;
            while (true) {
                if (i6 >= 9) {
                    break;
                }
                parseLong2 *= 10;
                i6++;
            }
            for (i2 = 9; i2 < i5; i2++) {
                parseLong2 /= 10;
            }
            Duration ofSeconds2 = Duration.ofSeconds(parseLong, parseLong2);
            Intrinsics.checkNotNullExpressionValue(ofSeconds2, "Duration.ofSeconds(seconds, nanos)");
            return ofSeconds2;
        }
        throw new NumberFormatException();
    }

    @Override // com.squareup.wire.internal.i
    @NotNull
    /* renamed from: d */
    public String b(@NotNull Duration value) {
        String str;
        Intrinsics.checkNotNullParameter(value, "value");
        long seconds = value.getSeconds();
        int nano = value.getNano();
        if (seconds < 0) {
            if (seconds == Long.MIN_VALUE) {
                seconds = 8;
                str = "-922337203685477580";
            } else {
                seconds = -seconds;
                str = "-";
            }
            if (nano != 0) {
                seconds--;
                nano = 1000000000 - nano;
            }
        } else {
            str = "";
        }
        if (nano == 0) {
            String format = String.format("%s%ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds)}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(this, *args)");
            return format;
        } else if (nano % DurationKt.NANOS_IN_MILLIS == 0) {
            String format2 = String.format("%s%d.%03ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds), Long.valueOf(nano / 1000000)}, 3));
            Intrinsics.checkNotNullExpressionValue(format2, "java.lang.String.format(this, *args)");
            return format2;
        } else if (nano % 1000 == 0) {
            String format3 = String.format("%s%d.%06ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds), Long.valueOf(nano / 1000)}, 3));
            Intrinsics.checkNotNullExpressionValue(format3, "java.lang.String.format(this, *args)");
            return format3;
        } else {
            String format4 = String.format("%s%d.%09ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds), Long.valueOf(nano / 1)}, 3));
            Intrinsics.checkNotNullExpressionValue(format4, "java.lang.String.format(this, *args)");
            return format4;
        }
    }
}
