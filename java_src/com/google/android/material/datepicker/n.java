package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;
/* compiled from: TimeSource.java */
/* loaded from: classes2.dex */
class n {

    /* renamed from: c  reason: collision with root package name */
    private static final n f14828c = new n(null, null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Long f14829a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final TimeZone f14830b;

    private n(@Nullable Long l4, @Nullable TimeZone timeZone) {
        this.f14829a = l4;
        this.f14830b = timeZone;
    }

    static n a(long j4) {
        return new n(Long.valueOf(j4), null);
    }

    static n b(long j4, @Nullable TimeZone timeZone) {
        return new n(Long.valueOf(j4), timeZone);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n e() {
        return f14828c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Calendar c() {
        return d(this.f14830b);
    }

    Calendar d(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l4 = this.f14829a;
        if (l4 != null) {
            calendar.setTimeInMillis(l4.longValue());
        }
        return calendar;
    }
}
