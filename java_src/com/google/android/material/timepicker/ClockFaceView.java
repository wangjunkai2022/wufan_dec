package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
/* loaded from: classes2.dex */
class ClockFaceView extends RadialViewGroup implements ClockHandView.d {
    private static final float A0 = 0.001f;
    private static final int B0 = 12;
    private static final String C0 = "";
    private final ClockHandView K;

    /* renamed from: n0  reason: collision with root package name */
    private final Rect f16167n0;

    /* renamed from: o0  reason: collision with root package name */
    private final RectF f16168o0;

    /* renamed from: p0  reason: collision with root package name */
    private final SparseArray<TextView> f16169p0;

    /* renamed from: q0  reason: collision with root package name */
    private final AccessibilityDelegateCompat f16170q0;

    /* renamed from: r0  reason: collision with root package name */
    private final int[] f16171r0;

    /* renamed from: s0  reason: collision with root package name */
    private final float[] f16172s0;

    /* renamed from: t0  reason: collision with root package name */
    private final int f16173t0;

    /* renamed from: u0  reason: collision with root package name */
    private final int f16174u0;

    /* renamed from: v0  reason: collision with root package name */
    private final int f16175v0;

    /* renamed from: w0  reason: collision with root package name */
    private final int f16176w0;

    /* renamed from: x0  reason: collision with root package name */
    private String[] f16177x0;

    /* renamed from: y0  reason: collision with root package name */
    private float f16178y0;

    /* renamed from: z0  reason: collision with root package name */
    private final ColorStateList f16179z0;

    /* loaded from: classes2.dex */
    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (ClockFaceView.this.isShown()) {
                ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                ClockFaceView.this.w(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.K.g()) - ClockFaceView.this.f16173t0);
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
            if (intValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f16169p0.get(intValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, intValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (i2 == 16) {
                long uptimeMillis = SystemClock.uptimeMillis();
                float x3 = view.getX() + (view.getWidth() / 2.0f);
                float height = (view.getHeight() / 2.0f) + view.getY();
                ClockFaceView.this.K.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, x3, height, 0));
                ClockFaceView.this.K.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, x3, height, 0));
                return true;
            }
            return super.performAccessibilityAction(view, i2, bundle);
        }
    }

    public ClockFaceView(@NonNull Context context) {
        this(context, null);
    }

    private void D() {
        RectF d4 = this.K.d();
        for (int i2 = 0; i2 < this.f16169p0.size(); i2++) {
            TextView textView = this.f16169p0.get(i2);
            if (textView != null) {
                textView.getDrawingRect(this.f16167n0);
                offsetDescendantRectToMyCoords(textView, this.f16167n0);
                textView.setSelected(d4.contains(this.f16167n0.centerX(), this.f16167n0.centerY()));
                textView.getPaint().setShader(E(d4, this.f16167n0, textView));
                textView.invalidate();
            }
        }
    }

    @Nullable
    private RadialGradient E(RectF rectF, Rect rect, TextView textView) {
        this.f16168o0.set(rect);
        this.f16168o0.offset(textView.getPaddingLeft(), textView.getPaddingTop());
        if (RectF.intersects(rectF, this.f16168o0)) {
            return new RadialGradient(rectF.centerX() - this.f16168o0.left, rectF.centerY() - this.f16168o0.top, rectF.width() * 0.5f, this.f16171r0, this.f16172s0, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private static float F(float f4, float f5, float f6) {
        return Math.max(Math.max(f4, f5), f6);
    }

    private void G(@StringRes int i2) {
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f16169p0.size();
        for (int i4 = 0; i4 < Math.max(this.f16177x0.length, size); i4++) {
            TextView textView = this.f16169p0.get(i4);
            if (i4 >= this.f16177x0.length) {
                removeView(textView);
                this.f16169p0.remove(i4);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f16169p0.put(i4, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.f16177x0[i4]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i4));
                ViewCompat.setAccessibilityDelegate(textView, this.f16170q0);
                textView.setTextColor(this.f16179z0);
                if (i2 != 0) {
                    textView.setContentDescription(getResources().getString(i2, this.f16177x0[i4]));
                }
            }
        }
    }

    public void c(String[] strArr, @StringRes int i2) {
        this.f16177x0 = strArr;
        G(i2);
    }

    public void d(@FloatRange(from = 0.0d, to = 360.0d) float f4) {
        this.K.l(f4);
        D();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.d
    public void f(float f4, boolean z3) {
        if (Math.abs(this.f16178y0 - f4) > A0) {
            this.f16178y0 = f4;
            D();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f16177x0.length, false, 1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int F = (int) (this.f16176w0 / F(this.f16174u0 / displayMetrics.heightPixels, this.f16175v0 / displayMetrics.widthPixels, 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(F, 1073741824);
        setMeasuredDimension(F, F);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    public void w(int i2) {
        if (i2 != v()) {
            super.w(i2);
            this.K.k(v());
        }
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f16167n0 = new Rect();
        this.f16168o0 = new RectF();
        this.f16169p0 = new SparseArray<>();
        this.f16172s0 = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockFaceView, i2, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList a4 = com.google.android.material.resources.c.a(context, obtainStyledAttributes, R.styleable.ClockFaceView_clockNumberTextColor);
        this.f16179z0 = a4;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.K = clockHandView;
        this.f16173t0 = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = a4.getColorForState(new int[]{16842913}, a4.getDefaultColor());
        this.f16171r0 = new int[]{colorForState, colorForState, a4.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = AppCompatResources.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList a5 = com.google.android.material.resources.c.a(context, obtainStyledAttributes, R.styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(a5 != null ? a5.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f16170q0 = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        c(strArr, 0);
        this.f16174u0 = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f16175v0 = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f16176w0 = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
