package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ActiveSelection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ClockPeriod {
    }

    void a(int i2);

    void b(int i2, int i4, @IntRange(from = 0) int i5);

    void c(String[] strArr, @StringRes int i2);

    void d(float f4);
}
