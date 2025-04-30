package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.google.android.material.R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CalendarStyle.java */
/* loaded from: classes2.dex */
public final class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    final a f14776a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final a f14777b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final a f14778c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final a f14779d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    final a f14780e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    final a f14781f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    final a f14782g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    final Paint f14783h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.resources.b.g(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), R.styleable.MaterialCalendar);
        this.f14776a = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayStyle, 0));
        this.f14782g = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f14777b = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f14778c = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList a4 = com.google.android.material.resources.c.a(context, obtainStyledAttributes, R.styleable.MaterialCalendar_rangeFillColor);
        this.f14779d = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearStyle, 0));
        this.f14780e = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f14781f = a.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f14783h = paint;
        paint.setColor(a4.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
