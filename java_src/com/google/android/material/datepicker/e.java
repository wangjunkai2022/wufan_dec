package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Locale;
/* compiled from: DaysOfWeekAdapter.java */
/* loaded from: classes2.dex */
class e extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    private static final int f14795d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final int f14796e;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Calendar f14797a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14798b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14799c;

    static {
        f14796e = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public e() {
        Calendar v3 = o.v();
        this.f14797a = v3;
        this.f14798b = v3.getMaximum(7);
        this.f14799c = v3.getFirstDayOfWeek();
    }

    private int b(int i2) {
        int i4 = i2 + this.f14799c;
        int i5 = this.f14798b;
        return i4 > i5 ? i4 - i5 : i4;
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: a */
    public Integer getItem(int i2) {
        if (i2 >= this.f14798b) {
            return null;
        }
        return Integer.valueOf(b(i2));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f14798b;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @Nullable
    @SuppressLint({"WrongConstant"})
    public View getView(int i2, @Nullable View view, @NonNull ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f14797a.set(7, b(i2));
        textView.setText(this.f14797a.getDisplayName(7, f14796e, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), this.f14797a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
