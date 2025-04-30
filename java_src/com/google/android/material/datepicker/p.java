package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: YearGridAdapter.java */
/* loaded from: classes2.dex */
public class p extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private final MaterialCalendar<?> f14833a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: YearGridAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f14834a;

        a(int i2) {
            this.f14834a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.f14833a.i0(p.this.f14833a.a0().e(Month.L0(this.f14834a, p.this.f14833a.c0().f14747b)));
            p.this.f14833a.j0(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    /* compiled from: YearGridAdapter.java */
    /* loaded from: classes2.dex */
    public static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        final TextView f14836a;

        b(TextView textView) {
            super(textView);
            this.f14836a = textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(MaterialCalendar<?> materialCalendar) {
        this.f14833a = materialCalendar;
    }

    @NonNull
    private View.OnClickListener b(int i2) {
        return new a(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i2) {
        return i2 - this.f14833a.a0().j().f14748c;
    }

    int d(int i2) {
        return this.f14833a.a0().j().f14748c + i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@NonNull b bVar, int i2) {
        int d4 = d(i2);
        String string = bVar.f14836a.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        bVar.f14836a.setText(String.format(Locale.getDefault(), TimeModel.f16204i, Integer.valueOf(d4)));
        bVar.f14836a.setContentDescription(String.format(string, Integer.valueOf(d4)));
        com.google.android.material.datepicker.b b02 = this.f14833a.b0();
        Calendar t3 = o.t();
        com.google.android.material.datepicker.a aVar = t3.get(1) == d4 ? b02.f14781f : b02.f14779d;
        for (Long l4 : this.f14833a.O().m0()) {
            t3.setTimeInMillis(l4.longValue());
            if (t3.get(1) == d4) {
                aVar = b02.f14780e;
            }
        }
        aVar.f(bVar.f14836a);
        bVar.f14836a.setOnClickListener(b(d4));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: f */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f14833a.a0().k();
    }
}
