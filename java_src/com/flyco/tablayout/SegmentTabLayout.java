package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class SegmentTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: v0  reason: collision with root package name */
    private static final int f13796v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f13797w0 = 1;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f13798x0 = 2;
    private float A;
    private int B;
    private int C;
    private int D;
    private boolean E;
    private int F;
    private int G;
    private float H;
    private int I;
    private ValueAnimator J;
    private OvershootInterpolator K;

    /* renamed from: a  reason: collision with root package name */
    private Context f13799a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f13800b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f13801c;

    /* renamed from: d  reason: collision with root package name */
    private int f13802d;

    /* renamed from: e  reason: collision with root package name */
    private int f13803e;

    /* renamed from: f  reason: collision with root package name */
    private int f13804f;

    /* renamed from: g  reason: collision with root package name */
    private Rect f13805g;

    /* renamed from: h  reason: collision with root package name */
    private GradientDrawable f13806h;

    /* renamed from: i  reason: collision with root package name */
    private GradientDrawable f13807i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f13808j;

    /* renamed from: k  reason: collision with root package name */
    private float f13809k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f13810l;

    /* renamed from: m  reason: collision with root package name */
    private float f13811m;

    /* renamed from: n  reason: collision with root package name */
    private int f13812n;

    /* renamed from: n0  reason: collision with root package name */
    private x0.a f13813n0;

    /* renamed from: o  reason: collision with root package name */
    private float f13814o;

    /* renamed from: o0  reason: collision with root package name */
    private float[] f13815o0;

    /* renamed from: p  reason: collision with root package name */
    private float f13816p;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f13817p0;

    /* renamed from: q  reason: collision with root package name */
    private float f13818q;

    /* renamed from: q0  reason: collision with root package name */
    private Paint f13819q0;

    /* renamed from: r  reason: collision with root package name */
    private float f13820r;

    /* renamed from: r0  reason: collision with root package name */
    private SparseArray<Boolean> f13821r0;

    /* renamed from: s  reason: collision with root package name */
    private float f13822s;

    /* renamed from: s0  reason: collision with root package name */
    private w0.b f13823s0;

    /* renamed from: t  reason: collision with root package name */
    private float f13824t;

    /* renamed from: t0  reason: collision with root package name */
    private b f13825t0;

    /* renamed from: u  reason: collision with root package name */
    private long f13826u;

    /* renamed from: u0  reason: collision with root package name */
    private b f13827u0;

    /* renamed from: v  reason: collision with root package name */
    private boolean f13828v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f13829w;

    /* renamed from: x  reason: collision with root package name */
    private int f13830x;

    /* renamed from: y  reason: collision with root package name */
    private float f13831y;

    /* renamed from: z  reason: collision with root package name */
    private float f13832z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            if (SegmentTabLayout.this.f13802d == intValue) {
                if (SegmentTabLayout.this.f13823s0 != null) {
                    SegmentTabLayout.this.f13823s0.onTabReselect(intValue);
                    return;
                }
                return;
            }
            SegmentTabLayout.this.setCurrentTab(intValue);
            if (SegmentTabLayout.this.f13823s0 != null) {
                SegmentTabLayout.this.f13823s0.onTabSelect(intValue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public float f13834a;

        /* renamed from: b  reason: collision with root package name */
        public float f13835b;

        b() {
        }
    }

    /* loaded from: classes2.dex */
    class c implements TypeEvaluator<b> {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: a */
        public b evaluate(float f4, b bVar, b bVar2) {
            float f5 = bVar.f13834a;
            float f6 = bVar.f13835b;
            float f7 = f6 + (f4 * (bVar2.f13835b - f6));
            b bVar3 = new b();
            bVar3.f13834a = f5 + ((bVar2.f13834a - f5) * f4);
            bVar3.f13835b = f7;
            return bVar3;
        }
    }

    public SegmentTabLayout(Context context) {
        this(context, null, 0);
    }

    private void c(int i2, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.f13800b[i2]);
        view.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f13810l ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f13811m > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f13811m, -1);
        }
        this.f13801c.addView(view, i2, layoutParams);
    }

    private void d() {
        View childAt = this.f13801c.getChildAt(this.f13802d);
        Rect rect = this.f13805g;
        rect.left = childAt.getLeft();
        rect.right = childAt.getRight();
        if (!this.f13828v) {
            int i2 = this.f13802d;
            if (i2 == 0) {
                float[] fArr = this.f13815o0;
                float f4 = this.f13816p;
                fArr[0] = f4;
                fArr[1] = f4;
                fArr[2] = 0.0f;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = 0.0f;
                fArr[6] = f4;
                fArr[7] = f4;
                return;
            } else if (i2 == this.f13804f - 1) {
                float[] fArr2 = this.f13815o0;
                fArr2[0] = 0.0f;
                fArr2[1] = 0.0f;
                float f5 = this.f13816p;
                fArr2[2] = f5;
                fArr2[3] = f5;
                fArr2[4] = f5;
                fArr2[5] = f5;
                fArr2[6] = 0.0f;
                fArr2[7] = 0.0f;
                return;
            } else {
                float[] fArr3 = this.f13815o0;
                fArr3[0] = 0.0f;
                fArr3[1] = 0.0f;
                fArr3[2] = 0.0f;
                fArr3[3] = 0.0f;
                fArr3[4] = 0.0f;
                fArr3[5] = 0.0f;
                fArr3[6] = 0.0f;
                fArr3[7] = 0.0f;
                return;
            }
        }
        float[] fArr4 = this.f13815o0;
        float f6 = this.f13816p;
        fArr4[0] = f6;
        fArr4[1] = f6;
        fArr4[2] = f6;
        fArr4[3] = f6;
        fArr4[4] = f6;
        fArr4[5] = f6;
        fArr4[6] = f6;
        fArr4[7] = f6;
    }

    private void e() {
        View childAt = this.f13801c.getChildAt(this.f13802d);
        this.f13825t0.f13834a = childAt.getLeft();
        this.f13825t0.f13835b = childAt.getRight();
        View childAt2 = this.f13801c.getChildAt(this.f13803e);
        this.f13827u0.f13834a = childAt2.getLeft();
        this.f13827u0.f13835b = childAt2.getRight();
        b bVar = this.f13827u0;
        float f4 = bVar.f13834a;
        b bVar2 = this.f13825t0;
        if (f4 == bVar2.f13834a && bVar.f13835b == bVar2.f13835b) {
            invalidate();
            return;
        }
        this.J.setObjectValues(bVar, bVar2);
        if (this.f13829w) {
            this.J.setInterpolator(this.K);
        }
        if (this.f13826u < 0) {
            this.f13826u = this.f13829w ? 500L : 250L;
        }
        this.J.setDuration(this.f13826u);
        this.J.start();
    }

    private void o(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SegmentTabLayout);
        this.f13812n = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_indicator_color, Color.parseColor("#222831"));
        this.f13814o = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_height, -1.0f);
        this.f13816p = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_corner_radius, -1.0f);
        this.f13818q = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_left, f(0.0f));
        this.f13820r = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_top, 0.0f);
        this.f13822s = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_right, f(0.0f));
        this.f13824t = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_bottom, 0.0f);
        this.f13828v = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_anim_enable, false);
        this.f13829w = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_bounce_enable, true);
        this.f13826u = obtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_indicator_anim_duration, -1);
        this.f13830x = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_divider_color, this.f13812n);
        this.f13831y = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_width, f(1.0f));
        this.f13832z = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_padding, 0.0f);
        this.A = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_textsize, r(13.0f));
        this.B = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.C = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textUnselectColor, this.f13812n);
        this.D = obtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_textBold, 0);
        this.E = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_textAllCaps, false);
        this.f13810l = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_tab_space_equal, true);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_width, f(-1.0f));
        this.f13811m = dimension;
        this.f13809k = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_padding, (this.f13810l || dimension > 0.0f) ? f(0.0f) : f(10.0f));
        this.F = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_color, 0);
        this.G = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_stroke_color, this.f13812n);
        this.H = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_bar_stroke_width, f(1.0f));
        obtainStyledAttributes.recycle();
    }

    private void s(int i2) {
        int i4 = 0;
        while (i4 < this.f13804f) {
            View childAt = this.f13801c.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z3 ? this.B : this.C);
            if (this.D == 1) {
                textView.getPaint().setFakeBoldText(z3);
            }
            i4++;
        }
    }

    private void t() {
        int i2 = 0;
        while (i2 < this.f13804f) {
            View childAt = this.f13801c.getChildAt(i2);
            float f4 = this.f13809k;
            childAt.setPadding((int) f4, 0, (int) f4, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i2 == this.f13802d ? this.B : this.C);
            textView.setTextSize(0, this.A);
            if (this.E) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i4 = this.D;
            if (i4 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i4 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            i2++;
        }
    }

    protected int f(float f4) {
        return (int) ((f4 * this.f13799a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView g(int i2) {
        int i4 = this.f13804f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        return (MsgView) this.f13801c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    public int getCurrentTab() {
        return this.f13802d;
    }

    public int getDividerColor() {
        return this.f13830x;
    }

    public float getDividerPadding() {
        return this.f13832z;
    }

    public float getDividerWidth() {
        return this.f13831y;
    }

    public long getIndicatorAnimDuration() {
        return this.f13826u;
    }

    public int getIndicatorColor() {
        return this.f13812n;
    }

    public float getIndicatorCornerRadius() {
        return this.f13816p;
    }

    public float getIndicatorHeight() {
        return this.f13814o;
    }

    public float getIndicatorMarginBottom() {
        return this.f13824t;
    }

    public float getIndicatorMarginLeft() {
        return this.f13818q;
    }

    public float getIndicatorMarginRight() {
        return this.f13822s;
    }

    public float getIndicatorMarginTop() {
        return this.f13820r;
    }

    public int getTabCount() {
        return this.f13804f;
    }

    public float getTabPadding() {
        return this.f13809k;
    }

    public float getTabWidth() {
        return this.f13811m;
    }

    public int getTextBold() {
        return this.D;
    }

    public int getTextSelectColor() {
        return this.B;
    }

    public int getTextUnselectColor() {
        return this.C;
    }

    public float getTextsize() {
        return this.A;
    }

    public TextView h(int i2) {
        return (TextView) this.f13801c.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    public void i(int i2) {
        int i4 = this.f13804f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f13801c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean j() {
        return this.f13828v;
    }

    public boolean k() {
        return this.f13829w;
    }

    public boolean l() {
        return this.f13810l;
    }

    public boolean m() {
        return this.E;
    }

    public void n() {
        this.f13801c.removeAllViews();
        this.f13804f = this.f13800b.length;
        for (int i2 = 0; i2 < this.f13804f; i2++) {
            View inflate = View.inflate(this.f13799a, R.layout.layout_tab_segment, null);
            inflate.setTag(Integer.valueOf(i2));
            c(i2, inflate);
        }
        t();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        b bVar = (b) valueAnimator.getAnimatedValue();
        Rect rect = this.f13805g;
        rect.left = (int) bVar.f13834a;
        rect.right = (int) bVar.f13835b;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f13804f <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        if (this.f13814o < 0.0f) {
            this.f13814o = (height - this.f13820r) - this.f13824t;
        }
        float f4 = this.f13816p;
        if (f4 < 0.0f || f4 > this.f13814o / 2.0f) {
            this.f13816p = this.f13814o / 2.0f;
        }
        this.f13807i.setColor(this.F);
        this.f13807i.setStroke((int) this.H, this.G);
        this.f13807i.setCornerRadius(this.f13816p);
        this.f13807i.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.f13807i.draw(canvas);
        if (!this.f13828v) {
            float f5 = this.f13831y;
            if (f5 > 0.0f) {
                this.f13808j.setStrokeWidth(f5);
                this.f13808j.setColor(this.f13830x);
                for (int i2 = 0; i2 < this.f13804f - 1; i2++) {
                    View childAt = this.f13801c.getChildAt(i2);
                    canvas.drawLine(childAt.getRight() + paddingLeft, this.f13832z, childAt.getRight() + paddingLeft, height - this.f13832z, this.f13808j);
                }
            }
        }
        if (this.f13828v) {
            if (this.f13817p0) {
                this.f13817p0 = false;
                d();
            }
        } else {
            d();
        }
        this.f13806h.setColor(this.f13812n);
        GradientDrawable gradientDrawable = this.f13806h;
        Rect rect = this.f13805g;
        int i4 = ((int) this.f13818q) + paddingLeft + rect.left;
        float f6 = this.f13820r;
        gradientDrawable.setBounds(i4, (int) f6, (int) ((paddingLeft + rect.right) - this.f13822s), (int) (f6 + this.f13814o));
        this.f13806h.setCornerRadii(this.f13815o0);
        this.f13806h.draw(canvas);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f13802d = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f13802d != 0 && this.f13801c.getChildCount() > 0) {
                s(this.f13802d);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f13802d);
        return bundle;
    }

    public void p(int i2) {
        int i4 = this.f13804f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        q(i2, 0);
    }

    public void q(int i2, int i4) {
        int i5 = this.f13804f;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        MsgView msgView = (MsgView) this.f13801c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            x0.b.b(msgView, i4);
            if (this.f13821r0.get(i2) == null || !this.f13821r0.get(i2).booleanValue()) {
                setMsgMargin(i2, 2.0f, 2.0f);
                this.f13821r0.put(i2, Boolean.TRUE);
            }
        }
    }

    protected int r(float f4) {
        return (int) ((f4 * this.f13799a.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int i2) {
        this.f13803e = this.f13802d;
        this.f13802d = i2;
        s(i2);
        x0.a aVar = this.f13813n0;
        if (aVar != null) {
            aVar.d(i2);
        }
        if (this.f13828v) {
            e();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i2) {
        this.f13830x = i2;
        invalidate();
    }

    public void setDividerPadding(float f4) {
        this.f13832z = f(f4);
        invalidate();
    }

    public void setDividerWidth(float f4) {
        this.f13831y = f(f4);
        invalidate();
    }

    public void setIndicatorAnimDuration(long j4) {
        this.f13826u = j4;
    }

    public void setIndicatorAnimEnable(boolean z3) {
        this.f13828v = z3;
    }

    public void setIndicatorBounceEnable(boolean z3) {
        this.f13829w = z3;
    }

    public void setIndicatorColor(int i2) {
        this.f13812n = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.f13816p = f(f4);
        invalidate();
    }

    public void setIndicatorHeight(float f4) {
        this.f13814o = f(f4);
        invalidate();
    }

    public void setIndicatorMargin(float f4, float f5, float f6, float f7) {
        this.f13818q = f(f4);
        this.f13820r = f(f5);
        this.f13822s = f(f6);
        this.f13824t = f(f7);
        invalidate();
    }

    public void setMsgMargin(int i2, float f4, float f5) {
        int i4 = this.f13804f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        View childAt = this.f13801c.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            this.f13819q0.setTextSize(this.A);
            this.f13819q0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString());
            float descent = this.f13819q0.descent() - this.f13819q0.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            marginLayoutParams.leftMargin = f(f4);
            int i5 = this.I;
            marginLayoutParams.topMargin = i5 > 0 ? (((int) (i5 - descent)) / 2) - f(f5) : f(f5);
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(w0.b bVar) {
        this.f13823s0 = bVar;
    }

    public void setTabData(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            this.f13800b = strArr;
            n();
            return;
        }
        throw new IllegalStateException("Titles can not be NULL or EMPTY !");
    }

    public void setTabPadding(float f4) {
        this.f13809k = f(f4);
        t();
    }

    public void setTabSpaceEqual(boolean z3) {
        this.f13810l = z3;
        t();
    }

    public void setTabWidth(float f4) {
        this.f13811m = f(f4);
        t();
    }

    public void setTextAllCaps(boolean z3) {
        this.E = z3;
        t();
    }

    public void setTextBold(int i2) {
        this.D = i2;
        t();
    }

    public void setTextSelectColor(int i2) {
        this.B = i2;
        t();
    }

    public void setTextUnselectColor(int i2) {
        this.C = i2;
        t();
    }

    public void setTextsize(float f4) {
        this.A = r(f4);
        t();
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13805g = new Rect();
        this.f13806h = new GradientDrawable();
        this.f13807i = new GradientDrawable();
        this.f13808j = new Paint(1);
        this.K = new OvershootInterpolator(0.8f);
        this.f13815o0 = new float[8];
        this.f13817p0 = true;
        this.f13819q0 = new Paint(1);
        this.f13821r0 = new SparseArray<>();
        this.f13825t0 = new b();
        this.f13827u0 = new b();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f13799a = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f13801c = linearLayout;
        addView(linearLayout);
        o(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
            this.I = obtainStyledAttributes.getDimensionPixelSize(0, -2);
            obtainStyledAttributes.recycle();
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new c(), this.f13827u0, this.f13825t0);
        this.J = ofObject;
        ofObject.addUpdateListener(this);
    }

    public void setTabData(String[] strArr, FragmentActivity fragmentActivity, int i2, ArrayList<Fragment> arrayList) {
        this.f13813n0 = new x0.a(fragmentActivity.getSupportFragmentManager(), i2, arrayList);
        setTabData(strArr);
    }
}
