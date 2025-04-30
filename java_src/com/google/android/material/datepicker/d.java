package com.google.android.material.datepicker;

import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* compiled from: DateStrings.java */
/* loaded from: classes2.dex */
class d {
    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<String, String> a(@Nullable Long l4, @Nullable Long l5) {
        return b(l4, l5, null);
    }

    static Pair<String, String> b(@Nullable Long l4, @Nullable Long l5, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l4 == null && l5 == null) {
            return Pair.create(null, null);
        }
        if (l4 == null) {
            return Pair.create(null, d(l5.longValue(), simpleDateFormat));
        }
        if (l5 == null) {
            return Pair.create(d(l4.longValue(), simpleDateFormat), null);
        }
        Calendar t3 = o.t();
        Calendar v3 = o.v();
        v3.setTimeInMillis(l4.longValue());
        Calendar v4 = o.v();
        v4.setTimeInMillis(l5.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l4.longValue())), simpleDateFormat.format(new Date(l5.longValue())));
        } else if (v3.get(1) == v4.get(1)) {
            if (v3.get(1) == t3.get(1)) {
                return Pair.create(f(l4.longValue(), Locale.getDefault()), f(l5.longValue(), Locale.getDefault()));
            }
            return Pair.create(f(l4.longValue(), Locale.getDefault()), k(l5.longValue(), Locale.getDefault()));
        } else {
            return Pair.create(k(l4.longValue(), Locale.getDefault()), k(l5.longValue(), Locale.getDefault()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(long j4) {
        return d(j4, null);
    }

    static String d(long j4, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar t3 = o.t();
        Calendar v3 = o.v();
        v3.setTimeInMillis(j4);
        if (simpleDateFormat != null) {
            return simpleDateFormat.format(new Date(j4));
        }
        if (t3.get(1) == v3.get(1)) {
            return e(j4);
        }
        return j(j4);
    }

    static String e(long j4) {
        return f(j4, Locale.getDefault());
    }

    static String f(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return o.c(locale).format(new Date(j4));
        }
        return o.m(locale).format(new Date(j4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(long j4) {
        return h(j4, Locale.getDefault());
    }

    static String h(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return o.d(locale).format(new Date(j4));
        }
        return o.i(locale).format(new Date(j4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i(long j4) {
        return DateUtils.formatDateTime(null, j4, 8228);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(long j4) {
        return k(j4, Locale.getDefault());
    }

    static String k(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return o.x(locale).format(new Date(j4));
        }
        return o.k(locale).format(new Date(j4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String l(long j4) {
        return m(j4, Locale.getDefault());
    }

    static String m(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return o.y(locale).format(new Date(j4));
        }
        return o.i(locale).format(new Date(j4));
    }
}
