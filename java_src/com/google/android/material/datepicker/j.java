package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;
/* compiled from: MonthsPagerAdapter.java */
/* loaded from: classes2.dex */
class j extends RecyclerView.Adapter<b> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CalendarConstraints f14817a;

    /* renamed from: b  reason: collision with root package name */
    private final DateSelector<?> f14818b;

    /* renamed from: c  reason: collision with root package name */
    private final MaterialCalendar.k f14819c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14820d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MonthsPagerAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MaterialCalendarGridView f14821a;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f14821a = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (this.f14821a.getAdapter2().n(i2)) {
                j.this.f14819c.a(this.f14821a.getAdapter2().getItem(i2).longValue());
            }
        }
    }

    /* compiled from: MonthsPagerAdapter.java */
    /* loaded from: classes2.dex */
    public static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        final TextView f14823a;

        /* renamed from: b  reason: collision with root package name */
        final MaterialCalendarGridView f14824b;

        b(@NonNull LinearLayout linearLayout, boolean z3) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f14823a = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f14824b = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z3) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, MaterialCalendar.k kVar) {
        Month j4 = calendarConstraints.j();
        Month g4 = calendarConstraints.g();
        Month i2 = calendarConstraints.i();
        if (j4.compareTo(i2) <= 0) {
            if (i2.compareTo(g4) <= 0) {
                this.f14820d = (i.f14811f * MaterialCalendar.d0(context)) + (MaterialDatePicker.l0(context) ? MaterialCalendar.d0(context) : 0);
                this.f14817a = calendarConstraints;
                this.f14818b = dateSelector;
                this.f14819c = kVar;
                setHasStableIds(true);
                return;
            }
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Month b(int i2) {
        return this.f14817a.j().T0(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public CharSequence c(int i2) {
        return b(i2).R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(@NonNull Month month) {
        return this.f14817a.j().U0(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@NonNull b bVar, int i2) {
        Month T0 = this.f14817a.j().T0(i2);
        bVar.f14823a.setText(T0.R0());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f14824b.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter2() != null && T0.equals(materialCalendarGridView.getAdapter2().f14812a)) {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter2().m(materialCalendarGridView);
        } else {
            i iVar = new i(T0, this.f14818b, this.f14817a);
            materialCalendarGridView.setNumColumns(T0.f14749d);
            materialCalendarGridView.setAdapter((ListAdapter) iVar);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: f */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (MaterialDatePicker.l0(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f14820d));
            return new b(linearLayout, true);
        }
        return new b(linearLayout, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f14817a.h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return this.f14817a.j().T0(i2).S0();
    }
}
