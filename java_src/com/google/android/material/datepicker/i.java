package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MonthAdapter.java */
/* loaded from: classes2.dex */
public class i extends BaseAdapter {

    /* renamed from: f  reason: collision with root package name */
    static final int f14811f = o.v().getMaximum(4);

    /* renamed from: a  reason: collision with root package name */
    final Month f14812a;

    /* renamed from: b  reason: collision with root package name */
    final DateSelector<?> f14813b;

    /* renamed from: c  reason: collision with root package name */
    private Collection<Long> f14814c;

    /* renamed from: d  reason: collision with root package name */
    b f14815d;

    /* renamed from: e  reason: collision with root package name */
    final CalendarConstraints f14816e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.f14812a = month;
        this.f14813b = dateSelector;
        this.f14816e = calendarConstraints;
        this.f14814c = dateSelector.m0();
    }

    private void e(Context context) {
        if (this.f14815d == null) {
            this.f14815d = new b(context);
        }
    }

    private boolean h(long j4) {
        Iterator<Long> it2 = this.f14813b.m0().iterator();
        while (it2.hasNext()) {
            if (o.a(j4) == o.a(it2.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private void k(@Nullable TextView textView, long j4) {
        a aVar;
        if (textView == null) {
            return;
        }
        if (this.f14816e.f().m(j4)) {
            textView.setEnabled(true);
            if (h(j4)) {
                aVar = this.f14815d.f14777b;
            } else if (o.t().getTimeInMillis() == j4) {
                aVar = this.f14815d.f14778c;
            } else {
                aVar = this.f14815d.f14776a;
            }
        } else {
            textView.setEnabled(false);
            aVar = this.f14815d.f14782g;
        }
        aVar.f(textView);
    }

    private void l(MaterialCalendarGridView materialCalendarGridView, long j4) {
        if (Month.M0(j4).equals(this.f14812a)) {
            k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter2().a(this.f14812a.Q0(j4)) - materialCalendarGridView.getFirstVisiblePosition()), j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i2) {
        return b() + (i2 - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f14812a.O0();
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: c */
    public Long getItem(int i2) {
        if (i2 < this.f14812a.O0() || i2 > i()) {
            return null;
        }
        return Long.valueOf(this.f14812a.P0(j(i2)));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0083 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0084  */
    @Override // android.widget.Adapter
    @androidx.annotation.NonNull
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.widget.TextView getView(int r6, @androidx.annotation.Nullable android.view.View r7, @androidx.annotation.NonNull android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            r5.e(r0)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L1e
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            int r0 = com.google.android.material.R.layout.mtrl_calendar_day
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L1e:
            int r7 = r5.b()
            int r7 = r6 - r7
            if (r7 < 0) goto L75
            com.google.android.material.datepicker.Month r8 = r5.f14812a
            int r2 = r8.f14750e
            if (r7 < r2) goto L2d
            goto L75
        L2d:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r7)
            r3[r1] = r4
            java.lang.String r4 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r4, r3)
            r0.setText(r8)
            com.google.android.material.datepicker.Month r8 = r5.f14812a
            long r7 = r8.P0(r7)
            com.google.android.material.datepicker.Month r3 = r5.f14812a
            int r3 = r3.f14748c
            com.google.android.material.datepicker.Month r4 = com.google.android.material.datepicker.Month.N0()
            int r4 = r4.f14748c
            if (r3 != r4) goto L67
            java.lang.String r7 = com.google.android.material.datepicker.d.g(r7)
            r0.setContentDescription(r7)
            goto L6e
        L67:
            java.lang.String r7 = com.google.android.material.datepicker.d.l(r7)
            r0.setContentDescription(r7)
        L6e:
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L7d
        L75:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
        L7d:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L84
            return r0
        L84:
            long r6 = r6.longValue()
            r5.k(r0, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.i.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(int i2) {
        return i2 % this.f14812a.f14749d == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g(int i2) {
        return (i2 + 1) % this.f14812a.f14749d == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f14812a.f14750e + b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2 / this.f14812a.f14749d;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return (this.f14812a.O0() + this.f14812a.f14750e) - 1;
    }

    int j(int i2) {
        return (i2 - this.f14812a.O0()) + 1;
    }

    public void m(MaterialCalendarGridView materialCalendarGridView) {
        for (Long l4 : this.f14814c) {
            l(materialCalendarGridView, l4.longValue());
        }
        DateSelector<?> dateSelector = this.f14813b;
        if (dateSelector != null) {
            for (Long l5 : dateSelector.m0()) {
                l(materialCalendarGridView, l5.longValue());
            }
            this.f14814c = this.f14813b.m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n(int i2) {
        return i2 >= b() && i2 <= i();
    }
}
