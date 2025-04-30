package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Locale;
/* loaded from: classes2.dex */
class TimePickerView extends ConstraintLayout implements TimePickerControls {

    /* renamed from: r0  reason: collision with root package name */
    static final String f16212r0 = "android.view.View";
    private final Chip G;
    private final Chip H;
    private final ClockHandView I;
    private final ClockFaceView J;
    private final MaterialButtonToggleGroup K;

    /* renamed from: n0  reason: collision with root package name */
    private final View.OnClickListener f16213n0;

    /* renamed from: o0  reason: collision with root package name */
    private f f16214o0;

    /* renamed from: p0  reason: collision with root package name */
    private g f16215p0;

    /* renamed from: q0  reason: collision with root package name */
    private e f16216q0;

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f16215p0 != null) {
                TimePickerView.this.f16215p0.d(((Integer) view.getTag(R.id.selection_type)).intValue());
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements MaterialButtonToggleGroup.d {
        b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i2, boolean z3) {
            int i4 = i2 == R.id.material_clock_period_pm_button ? 1 : 0;
            if (TimePickerView.this.f16214o0 == null || !z3) {
                return;
            }
            TimePickerView.this.f16214o0.c(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            e eVar = TimePickerView.this.f16216q0;
            if (eVar != null) {
                eVar.u();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GestureDetector f16220a;

        d(GestureDetector gestureDetector) {
            this.f16220a = gestureDetector;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f16220a.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    interface e {
        void u();
    }

    /* loaded from: classes2.dex */
    interface f {
        void c(int i2);
    }

    /* loaded from: classes2.dex */
    interface g {
        void d(int i2);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    private void G() {
        Chip chip = this.G;
        int i2 = R.id.selection_type;
        chip.setTag(i2, 12);
        this.H.setTag(i2, 10);
        this.G.setOnClickListener(this.f16213n0);
        this.H.setOnClickListener(this.f16213n0);
        this.G.setAccessibilityClassName(f16212r0);
        this.H.setAccessibilityClassName(f16212r0);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void H() {
        d dVar = new d(new GestureDetector(getContext(), new c()));
        this.G.setOnTouchListener(dVar);
        this.H.setOnTouchListener(dVar);
    }

    private void J(Chip chip, boolean z3) {
        chip.setChecked(z3);
        ViewCompat.setAccessibilityLiveRegion(chip, z3 ? 2 : 0);
    }

    private void K() {
        if (this.K.getVisibility() == 0) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this);
            constraintSet.clear(R.id.material_clock_display, ViewCompat.getLayoutDirection(this) == 0 ? 2 : 1);
            constraintSet.applyTo(this);
        }
    }

    public void A(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.G, accessibilityDelegateCompat);
    }

    public void B(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.H, accessibilityDelegateCompat);
    }

    public void C(ClockHandView.c cVar) {
        this.I.o(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(@Nullable e eVar) {
        this.f16216q0 = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(f fVar) {
        this.f16214o0 = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F(g gVar) {
        this.f16215p0 = gVar;
    }

    public void I() {
        this.K.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void a(int i2) {
        J(this.G, i2 == 12);
        J(this.H, i2 == 10);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    @SuppressLint({"DefaultLocale"})
    public void b(int i2, int i4, int i5) {
        int i6;
        if (i2 == 1) {
            i6 = R.id.material_clock_period_pm_button;
        } else {
            i6 = R.id.material_clock_period_am_button;
        }
        this.K.e(i6);
        Locale locale = getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.f16203h, Integer.valueOf(i5));
        String format2 = String.format(locale, TimeModel.f16203h, Integer.valueOf(i4));
        if (!TextUtils.equals(this.G.getText(), format)) {
            this.G.setText(format);
        }
        if (TextUtils.equals(this.H.getText(), format2)) {
            return;
        }
        this.H.setText(format2);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void c(String[] strArr, @StringRes int i2) {
        this.J.c(strArr, i2);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void d(float f4) {
        this.I.l(f4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        K();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (view == this && i2 == 0) {
            K();
        }
    }

    public void x(ClockHandView.d dVar) {
        this.I.b(dVar);
    }

    public void y(boolean z3) {
        this.I.j(z3);
    }

    public void z(float f4, boolean z3) {
        this.I.m(f4, z3);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f16213n0 = new a();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        this.J = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.K = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new b());
        this.G = (Chip) findViewById(R.id.material_minute_tv);
        this.H = (Chip) findViewById(R.id.material_hour_tv);
        this.I = (ClockHandView) findViewById(R.id.material_clock_hand);
        H();
        G();
    }
}
