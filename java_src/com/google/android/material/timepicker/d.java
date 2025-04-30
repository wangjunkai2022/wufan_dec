package com.google.android.material.timepicker;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import com.join.mgps.Util.u;
import com.join.mgps.dto.PayCenterOrderRequest;
/* compiled from: TimePickerClockPresenter.java */
/* loaded from: classes2.dex */
class d implements ClockHandView.d, TimePickerView.g, TimePickerView.f, ClockHandView.c, e {

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f16262f = {"12", "1", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "3", "4", "5", "6", "7", "8", "9", u.f27861t, "11"};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f16263g = {"00", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "4", "6", "8", u.f27861t, "12", "14", "16", "18", "20", "22"};

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f16264h = {"00", "5", u.f27861t, "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: i  reason: collision with root package name */
    private static final int f16265i = 30;

    /* renamed from: j  reason: collision with root package name */
    private static final int f16266j = 6;

    /* renamed from: a  reason: collision with root package name */
    private final TimePickerView f16267a;

    /* renamed from: b  reason: collision with root package name */
    private final TimeModel f16268b;

    /* renamed from: c  reason: collision with root package name */
    private float f16269c;

    /* renamed from: d  reason: collision with root package name */
    private float f16270d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16271e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TimePickerClockPresenter.java */
    /* loaded from: classes2.dex */
    public class a extends com.google.android.material.timepicker.a {
        a(Context context, int i2) {
            super(context, i2);
        }

        @Override // com.google.android.material.timepicker.a, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_hour_suffix, String.valueOf(d.this.f16268b.c())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TimePickerClockPresenter.java */
    /* loaded from: classes2.dex */
    public class b extends com.google.android.material.timepicker.a {
        b(Context context, int i2) {
            super(context, i2);
        }

        @Override // com.google.android.material.timepicker.a, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(d.this.f16268b.f16209e)));
        }
    }

    public d(TimePickerView timePickerView, TimeModel timeModel) {
        this.f16267a = timePickerView;
        this.f16268b = timeModel;
        e();
    }

    private int h() {
        return this.f16268b.f16207c == 1 ? 15 : 30;
    }

    private String[] i() {
        return this.f16268b.f16207c == 1 ? f16263g : f16262f;
    }

    private void j(int i2, int i4) {
        TimeModel timeModel = this.f16268b;
        if (timeModel.f16209e == i4 && timeModel.f16208d == i2) {
            return;
        }
        this.f16267a.performHapticFeedback(Build.VERSION.SDK_INT >= 21 ? 4 : 1);
    }

    private void l() {
        TimePickerView timePickerView = this.f16267a;
        TimeModel timeModel = this.f16268b;
        timePickerView.b(timeModel.f16211g, timeModel.c(), this.f16268b.f16209e);
    }

    private void m() {
        n(f16262f, TimeModel.f16204i);
        n(f16263g, TimeModel.f16204i);
        n(f16264h, TimeModel.f16203h);
    }

    private void n(String[] strArr, String str) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr[i2] = TimeModel.b(this.f16267a.getResources(), strArr[i2], str);
        }
    }

    @Override // com.google.android.material.timepicker.e
    public void a() {
        this.f16267a.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.c
    public void b(float f4, boolean z3) {
        this.f16271e = true;
        TimeModel timeModel = this.f16268b;
        int i2 = timeModel.f16209e;
        int i4 = timeModel.f16208d;
        if (timeModel.f16210f == 10) {
            this.f16267a.z(this.f16270d, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(this.f16267a.getContext(), AccessibilityManager.class);
            if (!(accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled())) {
                k(12, true);
            }
        } else {
            int round = Math.round(f4);
            if (!z3) {
                this.f16268b.i(((round + 15) / 30) * 5);
                this.f16269c = this.f16268b.f16209e * 6;
            }
            this.f16267a.z(this.f16269c, z3);
        }
        this.f16271e = false;
        l();
        j(i4, i2);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.f
    public void c(int i2) {
        this.f16268b.j(i2);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.g
    public void d(int i2) {
        k(i2, true);
    }

    @Override // com.google.android.material.timepicker.e
    public void e() {
        if (this.f16268b.f16207c == 0) {
            this.f16267a.I();
        }
        this.f16267a.x(this);
        this.f16267a.F(this);
        this.f16267a.E(this);
        this.f16267a.C(this);
        m();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.d
    public void f(float f4, boolean z3) {
        if (this.f16271e) {
            return;
        }
        TimeModel timeModel = this.f16268b;
        int i2 = timeModel.f16208d;
        int i4 = timeModel.f16209e;
        int round = Math.round(f4);
        TimeModel timeModel2 = this.f16268b;
        if (timeModel2.f16210f == 12) {
            timeModel2.i((round + 3) / 6);
            this.f16269c = (float) Math.floor(this.f16268b.f16209e * 6);
        } else {
            this.f16268b.g((round + (h() / 2)) / h());
            this.f16270d = this.f16268b.c() * h();
        }
        if (z3) {
            return;
        }
        l();
        j(i2, i4);
    }

    @Override // com.google.android.material.timepicker.e
    public void invalidate() {
        this.f16270d = this.f16268b.c() * h();
        TimeModel timeModel = this.f16268b;
        this.f16269c = timeModel.f16209e * 6;
        k(timeModel.f16210f, false);
        l();
    }

    void k(int i2, boolean z3) {
        boolean z4 = i2 == 12;
        this.f16267a.y(z4);
        this.f16268b.f16210f = i2;
        this.f16267a.c(z4 ? f16264h : i(), z4 ? R.string.material_minute_suffix : R.string.material_hour_suffix);
        this.f16267a.z(z4 ? this.f16269c : this.f16270d, z3);
        this.f16267a.a(i2);
        this.f16267a.B(new a(this.f16267a.getContext(), R.string.material_hour_selection));
        this.f16267a.A(new b(this.f16267a.getContext(), R.string.material_minute_selection));
    }

    @Override // com.google.android.material.timepicker.e
    public void show() {
        this.f16267a.setVisibility(0);
    }
}
