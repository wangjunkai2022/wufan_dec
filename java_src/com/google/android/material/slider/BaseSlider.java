package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.internal.o;
import com.google.android.material.internal.v;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.slider.a;
import com.google.android.material.slider.b;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends com.google.android.material.slider.a<S>, T extends com.google.android.material.slider.b<S>> extends View {
    private static final String E0 = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";
    private static final String F0 = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String G0 = "valueFrom(%s) must be smaller than valueTo(%s)";
    private static final String H0 = "valueTo(%s) must be greater than valueFrom(%s)";
    private static final String I0 = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";
    private static final String J0 = "minSeparation(%s) must be greater or equal to 0";
    private static final String K0 = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)";
    private static final String L0 = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String M0 = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.";
    private static final int N0 = 200;
    private static final int O0 = 63;
    private static final double P0 = 1.0E-4d;
    static final int R0 = 1;
    static final int S0 = 0;
    private static final long T0 = 83;
    private static final long U0 = 117;
    private int A;
    @NonNull
    private List<Drawable> A0;
    private float B;
    private float B0;
    private MotionEvent C;
    private int C0;
    private com.google.android.material.slider.d D;
    private boolean E;
    private float F;
    private float G;
    private ArrayList<Float> H;
    private int I;
    private int J;
    private float K;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Paint f15717a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Paint f15718b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Paint f15719c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Paint f15720d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Paint f15721e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Paint f15722f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final e f15723g;

    /* renamed from: h  reason: collision with root package name */
    private final AccessibilityManager f15724h;

    /* renamed from: i  reason: collision with root package name */
    private BaseSlider<S, L, T>.d f15725i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final f f15726j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final List<com.google.android.material.tooltip.a> f15727k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final List<L> f15728l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final List<T> f15729m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f15730n;

    /* renamed from: n0  reason: collision with root package name */
    private float[] f15731n0;

    /* renamed from: o  reason: collision with root package name */
    private ValueAnimator f15732o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f15733o0;

    /* renamed from: p  reason: collision with root package name */
    private ValueAnimator f15734p;

    /* renamed from: p0  reason: collision with root package name */
    private int f15735p0;

    /* renamed from: q  reason: collision with root package name */
    private final int f15736q;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f15737q0;

    /* renamed from: r  reason: collision with root package name */
    private int f15738r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f15739r0;

    /* renamed from: s  reason: collision with root package name */
    private int f15740s;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f15741s0;

    /* renamed from: t  reason: collision with root package name */
    private int f15742t;
    @NonNull

    /* renamed from: t0  reason: collision with root package name */
    private ColorStateList f15743t0;

    /* renamed from: u  reason: collision with root package name */
    private int f15744u;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    private ColorStateList f15745u0;

    /* renamed from: v  reason: collision with root package name */
    private int f15746v;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private ColorStateList f15747v0;

    /* renamed from: w  reason: collision with root package name */
    private int f15748w;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private ColorStateList f15749w0;

    /* renamed from: x  reason: collision with root package name */
    private int f15750x;
    @NonNull

    /* renamed from: x0  reason: collision with root package name */
    private ColorStateList f15751x0;

    /* renamed from: y  reason: collision with root package name */
    private int f15752y;
    @NonNull

    /* renamed from: y0  reason: collision with root package name */
    private final MaterialShapeDrawable f15753y0;

    /* renamed from: z  reason: collision with root package name */
    private int f15754z;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private Drawable f15755z0;
    private static final String D0 = BaseSlider.class.getSimpleName();
    static final int Q0 = R.style.Widget_MaterialComponents_Slider;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        float f15756a;

        /* renamed from: b  reason: collision with root package name */
        float f15757b;

        /* renamed from: c  reason: collision with root package name */
        ArrayList<Float> f15758c;

        /* renamed from: d  reason: collision with root package name */
        float f15759d;

        /* renamed from: e  reason: collision with root package name */
        boolean f15760e;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<SliderState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a */
            public SliderState createFromParcel(@NonNull Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: b */
            public SliderState[] newArray(int i2) {
                return new SliderState[i2];
            }
        }

        /* synthetic */ SliderState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeFloat(this.f15756a);
            parcel.writeFloat(this.f15757b);
            parcel.writeList(this.f15758c);
            parcel.writeFloat(this.f15759d);
            parcel.writeBooleanArray(new boolean[]{this.f15760e});
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(@NonNull Parcel parcel) {
            super(parcel);
            this.f15756a = parcel.readFloat();
            this.f15757b = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f15758c = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f15759d = parcel.readFloat();
            this.f15760e = parcel.createBooleanArray()[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AttributeSet f15761a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f15762b;

        a(AttributeSet attributeSet, int i2) {
            this.f15761a = attributeSet;
            this.f15762b = i2;
        }

        @Override // com.google.android.material.slider.BaseSlider.f
        public com.google.android.material.tooltip.a a() {
            TypedArray j4 = o.j(BaseSlider.this.getContext(), this.f15761a, R.styleable.Slider, this.f15762b, BaseSlider.Q0, new int[0]);
            com.google.android.material.tooltip.a b02 = BaseSlider.b0(BaseSlider.this.getContext(), j4);
            j4.recycle();
            return b02;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            for (com.google.android.material.tooltip.a aVar : BaseSlider.this.f15727k) {
                aVar.l1(floatValue);
            }
            ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            for (com.google.android.material.tooltip.a aVar : BaseSlider.this.f15727k) {
                w.h(BaseSlider.this).remove(aVar);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class e extends ExploreByTouchHelper {

        /* renamed from: o  reason: collision with root package name */
        private final BaseSlider<?, ?, ?> f15768o;

        /* renamed from: p  reason: collision with root package name */
        final Rect f15769p;

        e(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f15769p = new Rect();
            this.f15768o = baseSlider;
        }

        @NonNull
        private String B(int i2) {
            if (i2 == this.f15768o.getValues().size() - 1) {
                return this.f15768o.getContext().getString(R.string.material_slider_range_end);
            }
            return i2 == 0 ? this.f15768o.getContext().getString(R.string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int j(float f4, float f5) {
            for (int i2 = 0; i2 < this.f15768o.getValues().size(); i2++) {
                this.f15768o.p0(i2, this.f15769p);
                if (this.f15769p.contains((int) f4, (int) f5)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void k(List<Integer> list) {
            for (int i2 = 0; i2 < this.f15768o.getValues().size(); i2++) {
                list.add(Integer.valueOf(i2));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean q(int i2, int i4, Bundle bundle) {
            if (this.f15768o.isEnabled()) {
                if (i4 == 4096 || i4 == 8192) {
                    float n4 = this.f15768o.n(20);
                    if (i4 == 8192) {
                        n4 = -n4;
                    }
                    if (this.f15768o.O()) {
                        n4 = -n4;
                    }
                    if (this.f15768o.n0(i2, MathUtils.clamp(this.f15768o.getValues().get(i2).floatValue() + n4, this.f15768o.getValueFrom(), this.f15768o.getValueTo()))) {
                        this.f15768o.q0();
                        this.f15768o.postInvalidate();
                        invalidateVirtualView(i2);
                        return true;
                    }
                    return false;
                }
                if (i4 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    if (this.f15768o.n0(i2, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                        this.f15768o.q0();
                        this.f15768o.postInvalidate();
                        invalidateVirtualView(i2);
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void u(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f15768o.getValues();
            float floatValue = values.get(i2).floatValue();
            float valueFrom = this.f15768o.getValueFrom();
            float valueTo = this.f15768o.getValueTo();
            if (this.f15768o.isEnabled()) {
                if (floatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (floatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, floatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f15768o.getContentDescription() != null) {
                sb.append(this.f15768o.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                sb.append(B(i2));
                sb.append(this.f15768o.F(floatValue));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            this.f15768o.p0(i2, this.f15769p);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f15769p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface f {
        com.google.android.material.tooltip.a a();
    }

    public BaseSlider(@NonNull Context context) {
        this(context, null);
    }

    private void A(@NonNull Canvas canvas, int i2, int i4) {
        for (int i5 = 0; i5 < this.H.size(); i5++) {
            float floatValue = this.H.get(i5).floatValue();
            Drawable drawable = this.f15755z0;
            if (drawable != null) {
                z(canvas, i2, i4, floatValue, drawable);
            } else if (i5 < this.A0.size()) {
                z(canvas, i2, i4, floatValue, this.A0.get(i5));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.f15748w + (X(floatValue) * i2), i4, this.f15752y, this.f15719c);
                }
                z(canvas, i2, i4, floatValue, this.f15753y0);
            }
        }
    }

    private void A0() {
        float f4 = this.K;
        if (f4 == 0.0f) {
            return;
        }
        if (((int) f4) != f4) {
            String.format(M0, "stepSize", Float.valueOf(f4));
        }
        float f5 = this.F;
        if (((int) f5) != f5) {
            String.format(M0, "valueFrom", Float.valueOf(f5));
        }
        float f6 = this.G;
        if (((int) f6) != f6) {
            String.format(M0, "valueTo", Float.valueOf(f6));
        }
    }

    private void B() {
        if (this.f15744u == 2) {
            return;
        }
        if (!this.f15730n) {
            this.f15730n = true;
            ValueAnimator r3 = r(true);
            this.f15732o = r3;
            this.f15734p = null;
            r3.start();
        }
        Iterator<com.google.android.material.tooltip.a> it2 = this.f15727k.iterator();
        for (int i2 = 0; i2 < this.H.size() && it2.hasNext(); i2++) {
            if (i2 != this.J) {
                i0(it2.next(), this.H.get(i2).floatValue());
            }
        }
        if (it2.hasNext()) {
            i0(it2.next(), this.H.get(this.J).floatValue());
            return;
        }
        throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f15727k.size()), Integer.valueOf(this.H.size())));
    }

    private void C() {
        if (this.f15730n) {
            this.f15730n = false;
            ValueAnimator r3 = r(false);
            this.f15734p = r3;
            this.f15732o = null;
            r3.addListener(new c());
            this.f15734p.start();
        }
    }

    private void D(int i2) {
        if (i2 == 1) {
            V(Integer.MAX_VALUE);
        } else if (i2 == 2) {
            V(Integer.MIN_VALUE);
        } else if (i2 == 17) {
            W(Integer.MAX_VALUE);
        } else if (i2 != 66) {
        } else {
            W(Integer.MIN_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String F(float f4) {
        if (J()) {
            return this.D.a(f4);
        }
        return String.format(((float) ((int) f4)) == f4 ? "%.0f" : "%.2f", Float.valueOf(f4));
    }

    private static float G(ValueAnimator valueAnimator, float f4) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f4;
        }
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return floatValue;
    }

    private float H(int i2, float f4) {
        float minSeparation = getMinSeparation();
        if (this.C0 == 0) {
            minSeparation = u(minSeparation);
        }
        if (O()) {
            minSeparation = -minSeparation;
        }
        int i4 = i2 + 1;
        int i5 = i2 - 1;
        return MathUtils.clamp(f4, i5 < 0 ? this.F : this.H.get(i5).floatValue() + minSeparation, i4 >= this.H.size() ? this.G : this.H.get(i4).floatValue() - minSeparation);
    }

    @ColorInt
    private int I(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private Drawable K(Drawable drawable) {
        Drawable newDrawable = drawable.mutate().getConstantState().newDrawable();
        j(newDrawable);
        return newDrawable;
    }

    private void L() {
        this.f15717a.setStrokeWidth(this.f15746v);
        this.f15718b.setStrokeWidth(this.f15746v);
        this.f15721e.setStrokeWidth(this.f15746v / 2.0f);
        this.f15722f.setStrokeWidth(this.f15746v / 2.0f);
    }

    private boolean M() {
        ViewParent parent = getParent();
        while (true) {
            boolean z3 = false;
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if (((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) ? true : true) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    private boolean N(float f4) {
        double doubleValue = new BigDecimal(Float.toString(f4)).divide(new BigDecimal(Float.toString(this.K)), MathContext.DECIMAL64).doubleValue();
        double round = Math.round(doubleValue);
        Double.isNaN(round);
        return Math.abs(round - doubleValue) < P0;
    }

    private void Q(@NonNull Resources resources) {
        this.f15742t = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.f15738r = dimensionPixelOffset;
        this.f15748w = dimensionPixelOffset;
        this.f15740s = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.f15750x = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
        this.A = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
    }

    private void R() {
        if (this.K <= 0.0f) {
            return;
        }
        s0();
        int min = Math.min((int) (((this.G - this.F) / this.K) + 1.0f), (this.f15735p0 / (this.f15746v * 2)) + 1);
        float[] fArr = this.f15731n0;
        if (fArr == null || fArr.length != min * 2) {
            this.f15731n0 = new float[min * 2];
        }
        float f4 = this.f15735p0 / (min - 1);
        for (int i2 = 0; i2 < min * 2; i2 += 2) {
            float[] fArr2 = this.f15731n0;
            fArr2[i2] = this.f15748w + ((i2 / 2) * f4);
            fArr2[i2 + 1] = o();
        }
    }

    private void S(@NonNull Canvas canvas, int i2, int i4) {
        if (k0()) {
            int X = (int) (this.f15748w + (X(this.H.get(this.J).floatValue()) * i2));
            if (Build.VERSION.SDK_INT < 28) {
                int i5 = this.f15754z;
                canvas.clipRect(X - i5, i4 - i5, X + i5, i5 + i4, Region.Op.UNION);
            }
            canvas.drawCircle(X, i4, this.f15754z, this.f15720d);
        }
    }

    private void T(@NonNull Canvas canvas) {
        if (!this.f15733o0 || this.K <= 0.0f) {
            return;
        }
        float[] activeRange = getActiveRange();
        int d02 = d0(this.f15731n0, activeRange[0]);
        int d03 = d0(this.f15731n0, activeRange[1]);
        int i2 = d02 * 2;
        canvas.drawPoints(this.f15731n0, 0, i2, this.f15721e);
        int i4 = d03 * 2;
        canvas.drawPoints(this.f15731n0, i2, i4 - i2, this.f15722f);
        float[] fArr = this.f15731n0;
        canvas.drawPoints(fArr, i4, fArr.length - i4, this.f15721e);
    }

    private void U() {
        this.f15748w = this.f15738r + Math.max(this.f15752y - this.f15740s, 0);
        if (ViewCompat.isLaidOut(this)) {
            r0(getWidth());
        }
    }

    private boolean V(int i2) {
        int i4 = this.J;
        int clamp = (int) MathUtils.clamp(i4 + i2, 0L, this.H.size() - 1);
        this.J = clamp;
        if (clamp == i4) {
            return false;
        }
        if (this.I != -1) {
            this.I = clamp;
        }
        q0();
        postInvalidate();
        return true;
    }

    private boolean W(int i2) {
        if (O()) {
            i2 = i2 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i2;
        }
        return V(i2);
    }

    private float X(float f4) {
        float f5 = this.F;
        float f6 = (f4 - f5) / (this.G - f5);
        return O() ? 1.0f - f6 : f6;
    }

    private Boolean Y(int i2, @NonNull KeyEvent keyEvent) {
        if (i2 != 61) {
            if (i2 != 66) {
                if (i2 != 81) {
                    if (i2 == 69) {
                        V(-1);
                        return Boolean.TRUE;
                    } else if (i2 != 70) {
                        switch (i2) {
                            case 21:
                                W(-1);
                                return Boolean.TRUE;
                            case 22:
                                W(1);
                                return Boolean.TRUE;
                            case 23:
                                break;
                            default:
                                return null;
                        }
                    }
                }
                V(1);
                return Boolean.TRUE;
            }
            this.I = this.J;
            postInvalidate();
            return Boolean.TRUE;
        } else if (keyEvent.hasNoModifiers()) {
            return Boolean.valueOf(V(1));
        } else {
            if (keyEvent.isShiftPressed()) {
                return Boolean.valueOf(V(-1));
            }
            return Boolean.FALSE;
        }
    }

    private void Z() {
        for (T t3 : this.f15729m) {
            t3.c(this);
        }
    }

    private void a0() {
        for (T t3 : this.f15729m) {
            t3.f(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static com.google.android.material.tooltip.a b0(@NonNull Context context, @NonNull TypedArray typedArray) {
        return com.google.android.material.tooltip.a.V0(context, null, 0, typedArray.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip));
    }

    private static int d0(float[] fArr, float f4) {
        return Math.round(f4 * ((fArr.length / 2) - 1));
    }

    private void e0(Context context, AttributeSet attributeSet, int i2) {
        TypedArray j4 = o.j(context, attributeSet, R.styleable.Slider, i2, Q0, new int[0]);
        this.F = j4.getFloat(R.styleable.Slider_android_valueFrom, 0.0f);
        this.G = j4.getFloat(R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.F));
        this.K = j4.getFloat(R.styleable.Slider_android_stepSize, 0.0f);
        int i4 = R.styleable.Slider_trackColor;
        boolean hasValue = j4.hasValue(i4);
        int i5 = hasValue ? i4 : R.styleable.Slider_trackColorInactive;
        if (!hasValue) {
            i4 = R.styleable.Slider_trackColorActive;
        }
        ColorStateList a4 = com.google.android.material.resources.c.a(context, j4, i5);
        if (a4 == null) {
            a4 = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(a4);
        ColorStateList a5 = com.google.android.material.resources.c.a(context, j4, i4);
        if (a5 == null) {
            a5 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(a5);
        this.f15753y0.o0(com.google.android.material.resources.c.a(context, j4, R.styleable.Slider_thumbColor));
        int i6 = R.styleable.Slider_thumbStrokeColor;
        if (j4.hasValue(i6)) {
            setThumbStrokeColor(com.google.android.material.resources.c.a(context, j4, i6));
        }
        setThumbStrokeWidth(j4.getDimension(R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList a6 = com.google.android.material.resources.c.a(context, j4, R.styleable.Slider_haloColor);
        if (a6 == null) {
            a6 = AppCompatResources.getColorStateList(context, R.color.material_slider_halo_color);
        }
        setHaloTintList(a6);
        this.f15733o0 = j4.getBoolean(R.styleable.Slider_tickVisible, true);
        int i7 = R.styleable.Slider_tickColor;
        boolean hasValue2 = j4.hasValue(i7);
        int i8 = hasValue2 ? i7 : R.styleable.Slider_tickColorInactive;
        if (!hasValue2) {
            i7 = R.styleable.Slider_tickColorActive;
        }
        ColorStateList a7 = com.google.android.material.resources.c.a(context, j4, i8);
        if (a7 == null) {
            a7 = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(a7);
        ColorStateList a8 = com.google.android.material.resources.c.a(context, j4, i7);
        if (a8 == null) {
            a8 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(a8);
        setThumbRadius(j4.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0));
        setHaloRadius(j4.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
        setThumbElevation(j4.getDimension(R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(j4.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
        setLabelBehavior(j4.getInt(R.styleable.Slider_labelBehavior, 0));
        if (!j4.getBoolean(R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        j4.recycle();
    }

    private float[] getActiveRange() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.H.size() == 1) {
            floatValue2 = this.F;
        }
        float X = X(floatValue2);
        float X2 = X(floatValue);
        return O() ? new float[]{X2, X} : new float[]{X, X2};
    }

    private float getValueOfTouchPosition() {
        double m02 = m0(this.B0);
        if (O()) {
            m02 = 1.0d - m02;
        }
        float f4 = this.G;
        float f5 = this.F;
        double d4 = f4 - f5;
        Double.isNaN(d4);
        double d5 = f5;
        Double.isNaN(d5);
        return (float) ((m02 * d4) + d5);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f4 = this.B0;
        if (O()) {
            f4 = 1.0f - f4;
        }
        float f5 = this.G;
        float f6 = this.F;
        return (f4 * (f5 - f6)) + f6;
    }

    private void h0(int i2) {
        BaseSlider<S, L, T>.d dVar = this.f15725i;
        if (dVar == null) {
            this.f15725i = new d(this, null);
        } else {
            removeCallbacks(dVar);
        }
        this.f15725i.a(i2);
        postDelayed(this.f15725i, 200L);
    }

    private void i0(com.google.android.material.tooltip.a aVar, float f4) {
        aVar.m1(F(f4));
        int X = (this.f15748w + ((int) (X(f4) * this.f15735p0))) - (aVar.getIntrinsicWidth() / 2);
        int o3 = o() - (this.A + this.f15752y);
        aVar.setBounds(X, o3 - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + X, o3);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.d.c(w.g(this), this, rect);
        aVar.setBounds(rect);
        w.h(this).add(aVar);
    }

    private void j(Drawable drawable) {
        int i2 = this.f15752y * 2;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, i2, i2);
            return;
        }
        float max = i2 / Math.max(intrinsicWidth, intrinsicHeight);
        drawable.setBounds(0, 0, (int) (intrinsicWidth * max), (int) (intrinsicHeight * max));
    }

    private boolean j0() {
        return this.f15744u == 3;
    }

    private void k(com.google.android.material.tooltip.a aVar) {
        aVar.k1(w.g(this));
    }

    private boolean k0() {
        return this.f15737q0 || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    private Float l(int i2) {
        float n4 = this.f15739r0 ? n(20) : m();
        if (i2 == 21) {
            if (!O()) {
                n4 = -n4;
            }
            return Float.valueOf(n4);
        } else if (i2 == 22) {
            if (O()) {
                n4 = -n4;
            }
            return Float.valueOf(n4);
        } else if (i2 != 69) {
            if (i2 == 70 || i2 == 81) {
                return Float.valueOf(n4);
            }
            return null;
        } else {
            return Float.valueOf(-n4);
        }
    }

    private boolean l0(float f4) {
        return n0(this.I, f4);
    }

    private float m() {
        float f4 = this.K;
        if (f4 == 0.0f) {
            return 1.0f;
        }
        return f4;
    }

    private double m0(float f4) {
        float f5 = this.K;
        if (f5 > 0.0f) {
            int i2 = (int) ((this.G - this.F) / f5);
            double round = Math.round(f4 * i2);
            double d4 = i2;
            Double.isNaN(round);
            Double.isNaN(d4);
            return round / d4;
        }
        return f4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float n(int i2) {
        float f4;
        float f5;
        float m4 = m();
        return (this.G - this.F) / m4 <= i2 ? m4 : Math.round(f4 / f5) * m4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n0(int i2, float f4) {
        this.J = i2;
        if (Math.abs(f4 - this.H.get(i2).floatValue()) < P0) {
            return false;
        }
        this.H.set(i2, Float.valueOf(H(i2, f4)));
        v(i2);
        return true;
    }

    private int o() {
        int i2 = this.f15750x;
        int i4 = 0;
        if (this.f15744u == 1 || j0()) {
            i4 = this.f15727k.get(0).getIntrinsicHeight();
        }
        return i2 + i4;
    }

    private boolean o0() {
        return l0(getValueOfTouchPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        if (k0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int X = (int) ((X(this.H.get(this.J).floatValue()) * this.f15735p0) + this.f15748w);
            int o3 = o();
            int i2 = this.f15754z;
            DrawableCompat.setHotspotBounds(background, X - i2, o3 - i2, X + i2, o3 + i2);
        }
    }

    private ValueAnimator r(boolean z3) {
        TimeInterpolator timeInterpolator;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(G(z3 ? this.f15734p : this.f15732o, z3 ? 0.0f : 1.0f), z3 ? 1.0f : 0.0f);
        ofFloat.setDuration(z3 ? T0 : U0);
        if (z3) {
            timeInterpolator = com.google.android.material.animation.a.f14008e;
        } else {
            timeInterpolator = com.google.android.material.animation.a.f14006c;
        }
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.addUpdateListener(new b());
        return ofFloat;
    }

    private void r0(int i2) {
        this.f15735p0 = Math.max(i2 - (this.f15748w * 2), 0);
        R();
    }

    private void s() {
        if (this.f15727k.size() > this.H.size()) {
            List<com.google.android.material.tooltip.a> subList = this.f15727k.subList(this.H.size(), this.f15727k.size());
            for (com.google.android.material.tooltip.a aVar : subList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    t(aVar);
                }
            }
            subList.clear();
        }
        while (this.f15727k.size() < this.H.size()) {
            com.google.android.material.tooltip.a a4 = this.f15726j.a();
            this.f15727k.add(a4);
            if (ViewCompat.isAttachedToWindow(this)) {
                k(a4);
            }
        }
        int i2 = this.f15727k.size() == 1 ? 0 : 1;
        for (com.google.android.material.tooltip.a aVar2 : this.f15727k) {
            aVar2.I0(i2);
        }
    }

    private void s0() {
        if (this.f15741s0) {
            v0();
            w0();
            u0();
            x0();
            t0();
            A0();
            this.f15741s0 = false;
        }
    }

    private void setValuesInternal(@NonNull ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.H.size() == arrayList.size() && this.H.equals(arrayList)) {
                return;
            }
            this.H = arrayList;
            this.f15741s0 = true;
            this.J = 0;
            q0();
            s();
            w();
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    private void t(com.google.android.material.tooltip.a aVar) {
        v h4 = w.h(this);
        if (h4 != null) {
            h4.remove(aVar);
            aVar.X0(w.g(this));
        }
    }

    private void t0() {
        float minSeparation = getMinSeparation();
        if (minSeparation >= 0.0f) {
            float f4 = this.K;
            if (f4 <= 0.0f || minSeparation <= 0.0f) {
                return;
            }
            if (this.C0 == 1) {
                if (minSeparation < f4 || !N(minSeparation)) {
                    throw new IllegalStateException(String.format(L0, Float.valueOf(minSeparation), Float.valueOf(this.K), Float.valueOf(this.K)));
                }
                return;
            }
            throw new IllegalStateException(String.format(K0, Float.valueOf(minSeparation), Float.valueOf(this.K)));
        }
        throw new IllegalStateException(String.format(J0, Float.valueOf(minSeparation)));
    }

    private float u(float f4) {
        if (f4 == 0.0f) {
            return 0.0f;
        }
        float f5 = (f4 - this.f15748w) / this.f15735p0;
        float f6 = this.F;
        return (f5 * (f6 - this.G)) + f6;
    }

    private void u0() {
        if (this.K > 0.0f && !y0(this.G)) {
            throw new IllegalStateException(String.format(I0, Float.valueOf(this.K), Float.valueOf(this.F), Float.valueOf(this.G)));
        }
    }

    private void v(int i2) {
        for (L l4 : this.f15728l) {
            l4.b(this, this.H.get(i2).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f15724h;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        h0(i2);
    }

    private void v0() {
        if (this.F >= this.G) {
            throw new IllegalStateException(String.format(G0, Float.valueOf(this.F), Float.valueOf(this.G)));
        }
    }

    private void w() {
        for (L l4 : this.f15728l) {
            Iterator<Float> it2 = this.H.iterator();
            while (it2.hasNext()) {
                l4.b(this, it2.next().floatValue(), false);
            }
        }
    }

    private void w0() {
        if (this.G <= this.F) {
            throw new IllegalStateException(String.format(H0, Float.valueOf(this.G), Float.valueOf(this.F)));
        }
    }

    private void x(@NonNull Canvas canvas, int i2, int i4) {
        float[] activeRange = getActiveRange();
        int i5 = this.f15748w;
        float f4 = i2;
        float f5 = i4;
        canvas.drawLine(i5 + (activeRange[0] * f4), f5, i5 + (activeRange[1] * f4), f5, this.f15718b);
    }

    private void x0() {
        Iterator<Float> it2 = this.H.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            if (next.floatValue() >= this.F && next.floatValue() <= this.G) {
                if (this.K > 0.0f && !y0(next.floatValue())) {
                    throw new IllegalStateException(String.format(F0, next, Float.valueOf(this.F), Float.valueOf(this.K), Float.valueOf(this.K)));
                }
            } else {
                throw new IllegalStateException(String.format(E0, next, Float.valueOf(this.F), Float.valueOf(this.G)));
            }
        }
    }

    private void y(@NonNull Canvas canvas, int i2, int i4) {
        int i5;
        float[] activeRange = getActiveRange();
        float f4 = i2;
        float f5 = this.f15748w + (activeRange[1] * f4);
        if (f5 < i5 + i2) {
            float f6 = i4;
            canvas.drawLine(f5, f6, i5 + i2, f6, this.f15717a);
        }
        int i6 = this.f15748w;
        float f7 = i6 + (activeRange[0] * f4);
        if (f7 > i6) {
            float f8 = i4;
            canvas.drawLine(i6, f8, f7, f8, this.f15717a);
        }
    }

    private boolean y0(float f4) {
        return N(f4 - this.F);
    }

    private void z(@NonNull Canvas canvas, int i2, int i4, float f4, @NonNull Drawable drawable) {
        canvas.save();
        canvas.translate((this.f15748w + ((int) (X(f4) * i2))) - (drawable.getBounds().width() / 2.0f), i4 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    private float z0(float f4) {
        return (X(f4) * this.f15735p0) + this.f15748w;
    }

    @VisibleForTesting
    void E(boolean z3) {
        this.f15737q0 = z3;
    }

    public boolean J() {
        return this.D != null;
    }

    final boolean O() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean P() {
        return this.f15733o0;
    }

    protected boolean c0() {
        if (this.I != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float z02 = z0(valueOfTouchPositionAbsolute);
        this.I = 0;
        float abs = Math.abs(this.H.get(0).floatValue() - valueOfTouchPositionAbsolute);
        for (int i2 = 1; i2 < this.H.size(); i2++) {
            float abs2 = Math.abs(this.H.get(i2).floatValue() - valueOfTouchPositionAbsolute);
            float z03 = z0(this.H.get(i2).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z3 = !O() ? z03 - z02 >= 0.0f : z03 - z02 <= 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.I = i2;
            } else {
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(z03 - z02) < this.f15736q) {
                    this.I = -1;
                    return false;
                } else if (z3) {
                    this.I = i2;
                }
            }
            abs = abs2;
        }
        return this.I != -1;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f15723g.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f15717a.setColor(I(this.f15751x0));
        this.f15718b.setColor(I(this.f15749w0));
        this.f15721e.setColor(I(this.f15747v0));
        this.f15722f.setColor(I(this.f15745u0));
        for (com.google.android.material.tooltip.a aVar : this.f15727k) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.f15753y0.isStateful()) {
            this.f15753y0.setState(getDrawableState());
        }
        this.f15720d.setColor(I(this.f15743t0));
        this.f15720d.setAlpha(63);
    }

    public void f0(@NonNull L l4) {
        this.f15728l.remove(l4);
    }

    public void g0(@NonNull T t3) {
        this.f15729m.remove(t3);
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    final int getAccessibilityFocusedVirtualViewId() {
        return this.f15723g.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.I;
    }

    public int getFocusedThumbIndex() {
        return this.J;
    }

    @Dimension
    public int getHaloRadius() {
        return this.f15754z;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.f15743t0;
    }

    public int getLabelBehavior() {
        return this.f15744u;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.K;
    }

    public float getThumbElevation() {
        return this.f15753y0.x();
    }

    @Dimension
    public int getThumbRadius() {
        return this.f15752y;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f15753y0.N();
    }

    public float getThumbStrokeWidth() {
        return this.f15753y0.Q();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.f15753y0.y();
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.f15745u0;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.f15747v0;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.f15747v0.equals(this.f15745u0)) {
            return this.f15745u0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.f15749w0;
    }

    @Dimension
    public int getTrackHeight() {
        return this.f15746v;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.f15751x0;
    }

    @Dimension
    public int getTrackSidePadding() {
        return this.f15748w;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.f15751x0.equals(this.f15749w0)) {
            return this.f15749w0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Dimension
    public int getTrackWidth() {
        return this.f15735p0;
    }

    public float getValueFrom() {
        return this.F;
    }

    public float getValueTo() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.H);
    }

    public void h(@NonNull L l4) {
        this.f15728l.add(l4);
    }

    public void i(@NonNull T t3) {
        this.f15729m.add(t3);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (com.google.android.material.tooltip.a aVar : this.f15727k) {
            k(aVar);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.d dVar = this.f15725i;
        if (dVar != null) {
            removeCallbacks(dVar);
        }
        this.f15730n = false;
        for (com.google.android.material.tooltip.a aVar : this.f15727k) {
            t(aVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        if (this.f15741s0) {
            s0();
            R();
        }
        super.onDraw(canvas);
        int o3 = o();
        y(canvas, this.f15735p0, o3);
        if (((Float) Collections.max(getValues())).floatValue() > this.F) {
            x(canvas, this.f15735p0, o3);
        }
        T(canvas);
        if ((this.E || isFocused() || j0()) && isEnabled()) {
            S(canvas, this.f15735p0, o3);
            if (this.I == -1 && !j0()) {
                C();
            } else {
                B();
            }
        } else {
            C();
        }
        A(canvas, this.f15735p0, o3);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z3, int i2, @Nullable Rect rect) {
        super.onFocusChanged(z3, i2, rect);
        if (!z3) {
            this.I = -1;
            this.f15723g.clearKeyboardFocusForVirtualView(this.J);
            return;
        }
        D(i2);
        this.f15723g.requestKeyboardFocusForVirtualView(this.J);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (this.H.size() == 1) {
            this.I = 0;
        }
        if (this.I == -1) {
            Boolean Y = Y(i2, keyEvent);
            return Y != null ? Y.booleanValue() : super.onKeyDown(i2, keyEvent);
        }
        this.f15739r0 |= keyEvent.isLongPress();
        Float l4 = l(i2);
        if (l4 != null) {
            if (l0(this.H.get(this.I).floatValue() + l4.floatValue())) {
                q0();
                postInvalidate();
            }
            return true;
        }
        if (i2 != 23) {
            if (i2 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return V(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return V(-1);
                }
                return false;
            } else if (i2 != 66) {
                return super.onKeyDown(i2, keyEvent);
            }
        }
        this.I = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, @NonNull KeyEvent keyEvent) {
        this.f15739r0 = false;
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5 = this.f15742t;
        int i6 = 0;
        if (this.f15744u == 1 || j0()) {
            i6 = this.f15727k.get(0).getIntrinsicHeight();
        }
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(i5 + i6, 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.F = sliderState.f15756a;
        this.G = sliderState.f15757b;
        setValuesInternal(sliderState.f15758c);
        this.K = sliderState.f15759d;
        if (sliderState.f15760e) {
            requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f15756a = this.F;
        sliderState.f15757b = this.G;
        sliderState.f15758c = new ArrayList<>(this.H);
        sliderState.f15759d = this.K;
        sliderState.f15760e = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        r0(i2);
        q0();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (isEnabled()) {
            float x3 = motionEvent.getX();
            float f4 = (x3 - this.f15748w) / this.f15735p0;
            this.B0 = f4;
            float max = Math.max(0.0f, f4);
            this.B0 = max;
            this.B0 = Math.min(1.0f, max);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.B = x3;
                if (!M()) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (c0()) {
                        requestFocus();
                        this.E = true;
                        o0();
                        q0();
                        invalidate();
                        Z();
                    }
                }
            } else if (actionMasked == 1) {
                this.E = false;
                MotionEvent motionEvent2 = this.C;
                if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.C.getX() - motionEvent.getX()) <= this.f15736q && Math.abs(this.C.getY() - motionEvent.getY()) <= this.f15736q && c0()) {
                    Z();
                }
                if (this.I != -1) {
                    o0();
                    this.I = -1;
                    a0();
                }
                invalidate();
            } else if (actionMasked == 2) {
                if (!this.E) {
                    if (M() && Math.abs(x3 - this.B) < this.f15736q) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    Z();
                }
                if (c0()) {
                    this.E = true;
                    o0();
                    q0();
                    invalidate();
                }
            }
            setPressed(this.E);
            this.C = MotionEvent.obtain(motionEvent);
            return true;
        }
        return false;
    }

    public void p() {
        this.f15728l.clear();
    }

    void p0(int i2, Rect rect) {
        int X = this.f15748w + ((int) (X(getValues().get(i2).floatValue()) * this.f15735p0));
        int o3 = o();
        int i4 = this.f15752y;
        rect.set(X - i4, o3 - i4, X + i4, o3 + i4);
    }

    public void q() {
        this.f15729m.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setActiveThumbIndex(int i2) {
        this.I = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomThumbDrawable(@DrawableRes int i2) {
        setCustomThumbDrawable(getResources().getDrawable(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            drawableArr[i2] = getResources().getDrawable(iArr[i2]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z3) {
        super.setEnabled(z3);
        setLayerType(z3 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i2) {
        if (i2 >= 0 && i2 < this.H.size()) {
            this.J = i2;
            this.f15723g.requestKeyboardFocusForVirtualView(i2);
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("index out of range");
    }

    public void setHaloRadius(@IntRange(from = 0) @Dimension int i2) {
        if (i2 == this.f15754z) {
            return;
        }
        this.f15754z = i2;
        Drawable background = getBackground();
        if (!k0() && (background instanceof RippleDrawable)) {
            a1.a.b((RippleDrawable) background, this.f15754z);
        } else {
            postInvalidate();
        }
    }

    public void setHaloRadiusResource(@DimenRes int i2) {
        setHaloRadius(getResources().getDimensionPixelSize(i2));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f15743t0)) {
            return;
        }
        this.f15743t0 = colorStateList;
        Drawable background = getBackground();
        if (!k0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f15720d.setColor(I(colorStateList));
        this.f15720d.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i2) {
        if (this.f15744u != i2) {
            this.f15744u = i2;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable com.google.android.material.slider.d dVar) {
        this.D = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSeparationUnit(int i2) {
        this.C0 = i2;
        this.f15741s0 = true;
        postInvalidate();
    }

    public void setStepSize(float f4) {
        if (f4 >= 0.0f) {
            if (this.K != f4) {
                this.K = f4;
                this.f15741s0 = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(String.format(I0, Float.valueOf(f4), Float.valueOf(this.F), Float.valueOf(this.G)));
    }

    public void setThumbElevation(float f4) {
        this.f15753y0.n0(f4);
    }

    public void setThumbElevationResource(@DimenRes int i2) {
        setThumbElevation(getResources().getDimension(i2));
    }

    public void setThumbRadius(@IntRange(from = 0) @Dimension int i2) {
        if (i2 == this.f15752y) {
            return;
        }
        this.f15752y = i2;
        U();
        this.f15753y0.setShapeAppearanceModel(m.a().q(0, this.f15752y).m());
        MaterialShapeDrawable materialShapeDrawable = this.f15753y0;
        int i4 = this.f15752y;
        materialShapeDrawable.setBounds(0, 0, i4 * 2, i4 * 2);
        Drawable drawable = this.f15755z0;
        if (drawable != null) {
            j(drawable);
        }
        for (Drawable drawable2 : this.A0) {
            j(drawable2);
        }
        postInvalidate();
    }

    public void setThumbRadiusResource(@DimenRes int i2) {
        setThumbRadius(getResources().getDimensionPixelSize(i2));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f15753y0.F0(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i2) {
        if (i2 != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i2));
        }
    }

    public void setThumbStrokeWidth(float f4) {
        this.f15753y0.I0(f4);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i2) {
        if (i2 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i2));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f15753y0.y())) {
            return;
        }
        this.f15753y0.o0(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f15745u0)) {
            return;
        }
        this.f15745u0 = colorStateList;
        this.f15722f.setColor(I(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f15747v0)) {
            return;
        }
        this.f15747v0 = colorStateList;
        this.f15721e.setColor(I(colorStateList));
        invalidate();
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z3) {
        if (this.f15733o0 != z3) {
            this.f15733o0 = z3;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f15749w0)) {
            return;
        }
        this.f15749w0 = colorStateList;
        this.f15718b.setColor(I(colorStateList));
        invalidate();
    }

    public void setTrackHeight(@IntRange(from = 0) @Dimension int i2) {
        if (this.f15746v != i2) {
            this.f15746v = i2;
            L();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f15751x0)) {
            return;
        }
        this.f15751x0 = colorStateList;
        this.f15717a.setColor(I(colorStateList));
        invalidate();
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f4) {
        this.F = f4;
        this.f15741s0 = true;
        postInvalidate();
    }

    public void setValueTo(float f4) {
        this.G = f4;
        this.f15741s0 = true;
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f15766a;

        private d() {
            this.f15766a = -1;
        }

        void a(int i2) {
            this.f15766a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f15723g.sendEventForVirtualView(this.f15766a, 4);
        }

        /* synthetic */ d(BaseSlider baseSlider, a aVar) {
            this();
        }
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomThumbDrawable(@NonNull Drawable drawable) {
        this.f15755z0 = K(drawable);
        this.A0.clear();
        postInvalidate();
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.overlay.a.c(context, attributeSet, i2, Q0), attributeSet, i2);
        this.f15727k = new ArrayList();
        this.f15728l = new ArrayList();
        this.f15729m = new ArrayList();
        this.f15730n = false;
        this.E = false;
        this.H = new ArrayList<>();
        this.I = -1;
        this.J = -1;
        this.K = 0.0f;
        this.f15733o0 = true;
        this.f15739r0 = false;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f15753y0 = materialShapeDrawable;
        this.A0 = Collections.emptyList();
        this.C0 = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f15717a = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.f15718b = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.f15719c = paint3;
        paint3.setStyle(Paint.Style.FILL);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.f15720d = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.f15721e = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.f15722f = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        Q(context2.getResources());
        this.f15726j = new a(attributeSet, i2);
        e0(context2, attributeSet, i2);
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.x0(2);
        this.f15736q = ViewConfiguration.get(context2).getScaledTouchSlop();
        e eVar = new e(this);
        this.f15723g = eVar;
        ViewCompat.setAccessibilityDelegate(this, eVar);
        this.f15724h = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@NonNull List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        this.f15755z0 = null;
        this.A0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.A0.add(K(drawable));
        }
        postInvalidate();
    }
}
