package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class CommonTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {
    private static final int E0 = 0;
    private static final int F0 = 1;
    private static final int G0 = 2;
    private static final int H0 = 0;
    private static final int I0 = 1;
    private static final int J0 = 2;
    private boolean A;
    private SparseArray<Boolean> A0;
    private int B;
    private w0.b B0;
    private int C;
    private b C0;
    private float D;
    private b D0;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private int J;
    private int K;

    /* renamed from: a  reason: collision with root package name */
    private Context f13752a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<w0.a> f13753b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f13754c;

    /* renamed from: d  reason: collision with root package name */
    private int f13755d;

    /* renamed from: e  reason: collision with root package name */
    private int f13756e;

    /* renamed from: f  reason: collision with root package name */
    private int f13757f;

    /* renamed from: g  reason: collision with root package name */
    private Rect f13758g;

    /* renamed from: h  reason: collision with root package name */
    private GradientDrawable f13759h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f13760i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f13761j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f13762k;

    /* renamed from: l  reason: collision with root package name */
    private Path f13763l;

    /* renamed from: m  reason: collision with root package name */
    private int f13764m;

    /* renamed from: n  reason: collision with root package name */
    private float f13765n;

    /* renamed from: n0  reason: collision with root package name */
    private int f13766n0;

    /* renamed from: o  reason: collision with root package name */
    private boolean f13767o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f13768o0;

    /* renamed from: p  reason: collision with root package name */
    private float f13769p;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f13770p0;

    /* renamed from: q  reason: collision with root package name */
    private int f13771q;

    /* renamed from: q0  reason: collision with root package name */
    private int f13772q0;

    /* renamed from: r  reason: collision with root package name */
    private float f13773r;

    /* renamed from: r0  reason: collision with root package name */
    private float f13774r0;

    /* renamed from: s  reason: collision with root package name */
    private float f13775s;

    /* renamed from: s0  reason: collision with root package name */
    private float f13776s0;

    /* renamed from: t  reason: collision with root package name */
    private float f13777t;

    /* renamed from: t0  reason: collision with root package name */
    private float f13778t0;

    /* renamed from: u  reason: collision with root package name */
    private float f13779u;

    /* renamed from: u0  reason: collision with root package name */
    private int f13780u0;

    /* renamed from: v  reason: collision with root package name */
    private float f13781v;

    /* renamed from: v0  reason: collision with root package name */
    private ValueAnimator f13782v0;

    /* renamed from: w  reason: collision with root package name */
    private float f13783w;

    /* renamed from: w0  reason: collision with root package name */
    private OvershootInterpolator f13784w0;

    /* renamed from: x  reason: collision with root package name */
    private float f13785x;

    /* renamed from: x0  reason: collision with root package name */
    private x0.a f13786x0;

    /* renamed from: y  reason: collision with root package name */
    private long f13787y;

    /* renamed from: y0  reason: collision with root package name */
    private boolean f13788y0;

    /* renamed from: z  reason: collision with root package name */
    private boolean f13789z;

    /* renamed from: z0  reason: collision with root package name */
    private Paint f13790z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            if (CommonTabLayout.this.f13755d == intValue) {
                if (CommonTabLayout.this.B0 != null) {
                    CommonTabLayout.this.B0.onTabReselect(intValue);
                    return;
                }
                return;
            }
            CommonTabLayout.this.setCurrentTab(intValue);
            if (CommonTabLayout.this.B0 != null) {
                CommonTabLayout.this.B0.onTabSelect(intValue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public float f13792a;

        /* renamed from: b  reason: collision with root package name */
        public float f13793b;

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
            float f5 = bVar.f13792a;
            float f6 = bVar.f13793b;
            float f7 = f6 + (f4 * (bVar2.f13793b - f6));
            b bVar3 = new b();
            bVar3.f13792a = f5 + ((bVar2.f13792a - f5) * f4);
            bVar3.f13793b = f7;
            return bVar3;
        }
    }

    public CommonTabLayout(Context context) {
        this(context, null, 0);
    }

    private void c(int i2, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.f13753b.get(i2).b());
        ((ImageView) view.findViewById(R.id.iv_tab_icon)).setImageResource(this.f13753b.get(i2).c());
        view.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f13767o ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f13769p > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f13769p, -1);
        }
        this.f13754c.addView(view, i2, layoutParams);
    }

    private void d() {
        View childAt = this.f13754c.getChildAt(this.f13755d);
        Rect rect = this.f13758g;
        rect.left = childAt.getLeft();
        rect.right = childAt.getRight();
        if (this.f13775s < 0.0f) {
            return;
        }
        float f4 = this.f13775s;
        float left = childAt.getLeft() + ((childAt.getWidth() - f4) / 2.0f);
        Rect rect2 = this.f13758g;
        int i2 = (int) left;
        rect2.left = i2;
        rect2.right = (int) (i2 + f4);
    }

    private void e() {
        View childAt = this.f13754c.getChildAt(this.f13755d);
        this.C0.f13792a = childAt.getLeft();
        this.C0.f13793b = childAt.getRight();
        View childAt2 = this.f13754c.getChildAt(this.f13756e);
        this.D0.f13792a = childAt2.getLeft();
        this.D0.f13793b = childAt2.getRight();
        b bVar = this.D0;
        float f4 = bVar.f13792a;
        b bVar2 = this.C0;
        if (f4 == bVar2.f13792a && bVar.f13793b == bVar2.f13793b) {
            invalidate();
            return;
        }
        this.f13782v0.setObjectValues(bVar, bVar2);
        if (this.A) {
            this.f13782v0.setInterpolator(this.f13784w0);
        }
        if (this.f13787y < 0) {
            this.f13787y = this.A ? 500L : 250L;
        }
        this.f13782v0.setDuration(this.f13787y);
        this.f13782v0.start();
    }

    private void q(Context context, AttributeSet attributeSet) {
        float f4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CommonTabLayout);
        int i2 = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_style, 0);
        this.f13764m = i2;
        this.f13771q = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_indicator_color, Color.parseColor(i2 == 2 ? "#4B6A87" : "#ffffff"));
        int i4 = R.styleable.CommonTabLayout_tl_indicator_height;
        int i5 = this.f13764m;
        if (i5 == 1) {
            f4 = 4.0f;
        } else {
            f4 = i5 == 2 ? -1 : 2;
        }
        this.f13773r = obtainStyledAttributes.getDimension(i4, f(f4));
        this.f13775s = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_width, f(this.f13764m == 1 ? 10.0f : -1.0f));
        this.f13777t = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_corner_radius, f(this.f13764m == 2 ? -1.0f : 0.0f));
        this.f13779u = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_left, f(0.0f));
        this.f13781v = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_top, f(this.f13764m == 2 ? 7.0f : 0.0f));
        this.f13783w = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_right, f(0.0f));
        this.f13785x = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_bottom, f(this.f13764m != 2 ? 0.0f : 7.0f));
        this.f13789z = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_anim_enable, true);
        this.A = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_bounce_enable, true);
        this.f13787y = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_anim_duration, -1);
        this.B = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_gravity, 80);
        this.C = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.D = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_underline_height, f(0.0f));
        this.E = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_underline_gravity, 80);
        this.F = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.G = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_width, f(0.0f));
        this.H = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_padding, f(12.0f));
        this.I = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_textsize, t(13.0f));
        this.J = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.K = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.f13766n0 = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_textBold, 0);
        this.f13768o0 = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_textAllCaps, false);
        this.f13770p0 = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_iconVisible, true);
        this.f13772q0 = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_iconGravity, 48);
        this.f13774r0 = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconWidth, f(0.0f));
        this.f13776s0 = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconHeight, f(0.0f));
        this.f13778t0 = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconMargin, f(2.5f));
        this.f13767o = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_tab_space_equal, true);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_width, f(-1.0f));
        this.f13769p = dimension;
        this.f13765n = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_padding, (this.f13767o || dimension > 0.0f) ? f(0.0f) : f(10.0f));
        obtainStyledAttributes.recycle();
    }

    private void u(int i2) {
        int i4 = 0;
        while (i4 < this.f13757f) {
            View childAt = this.f13754c.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z3 ? this.J : this.K);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            w0.a aVar = this.f13753b.get(i4);
            imageView.setImageResource(z3 ? aVar.a() : aVar.c());
            if (this.f13766n0 == 1) {
                textView.getPaint().setFakeBoldText(z3);
            }
            i4++;
        }
    }

    private void v() {
        int i2 = 0;
        while (i2 < this.f13757f) {
            View childAt = this.f13754c.getChildAt(i2);
            float f4 = this.f13765n;
            childAt.setPadding((int) f4, 0, (int) f4, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i2 == this.f13755d ? this.J : this.K);
            textView.setTextSize(0, this.I);
            if (this.f13768o0) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i4 = this.f13766n0;
            if (i4 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i4 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            if (this.f13770p0) {
                imageView.setVisibility(0);
                w0.a aVar = this.f13753b.get(i2);
                imageView.setImageResource(i2 == this.f13755d ? aVar.a() : aVar.c());
                float f5 = this.f13774r0;
                int i5 = f5 <= 0.0f ? -2 : (int) f5;
                float f6 = this.f13776s0;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i5, f6 > 0.0f ? (int) f6 : -2);
                int i6 = this.f13772q0;
                if (i6 == 3) {
                    layoutParams.rightMargin = (int) this.f13778t0;
                } else if (i6 == 5) {
                    layoutParams.leftMargin = (int) this.f13778t0;
                } else if (i6 == 80) {
                    layoutParams.topMargin = (int) this.f13778t0;
                } else {
                    layoutParams.bottomMargin = (int) this.f13778t0;
                }
                imageView.setLayoutParams(layoutParams);
            } else {
                imageView.setVisibility(8);
            }
            i2++;
        }
    }

    protected int f(float f4) {
        return (int) ((f4 * this.f13752a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public ImageView g(int i2) {
        return (ImageView) this.f13754c.getChildAt(i2).findViewById(R.id.iv_tab_icon);
    }

    public int getCurrentTab() {
        return this.f13755d;
    }

    public int getDividerColor() {
        return this.F;
    }

    public float getDividerPadding() {
        return this.H;
    }

    public float getDividerWidth() {
        return this.G;
    }

    public int getIconGravity() {
        return this.f13772q0;
    }

    public float getIconHeight() {
        return this.f13776s0;
    }

    public float getIconMargin() {
        return this.f13778t0;
    }

    public float getIconWidth() {
        return this.f13774r0;
    }

    public long getIndicatorAnimDuration() {
        return this.f13787y;
    }

    public int getIndicatorColor() {
        return this.f13771q;
    }

    public float getIndicatorCornerRadius() {
        return this.f13777t;
    }

    public float getIndicatorHeight() {
        return this.f13773r;
    }

    public float getIndicatorMarginBottom() {
        return this.f13785x;
    }

    public float getIndicatorMarginLeft() {
        return this.f13779u;
    }

    public float getIndicatorMarginRight() {
        return this.f13783w;
    }

    public float getIndicatorMarginTop() {
        return this.f13781v;
    }

    public int getIndicatorStyle() {
        return this.f13764m;
    }

    public float getIndicatorWidth() {
        return this.f13775s;
    }

    public int getTabCount() {
        return this.f13757f;
    }

    public float getTabPadding() {
        return this.f13765n;
    }

    public float getTabWidth() {
        return this.f13769p;
    }

    public int getTextBold() {
        return this.f13766n0;
    }

    public int getTextSelectColor() {
        return this.J;
    }

    public int getTextUnselectColor() {
        return this.K;
    }

    public float getTextsize() {
        return this.I;
    }

    public int getUnderlineColor() {
        return this.C;
    }

    public float getUnderlineHeight() {
        return this.D;
    }

    public MsgView h(int i2) {
        int i4 = this.f13757f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        return (MsgView) this.f13754c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    public TextView i(int i2) {
        return (TextView) this.f13754c.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    public void j(int i2) {
        int i4 = this.f13757f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f13754c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean k() {
        return this.f13770p0;
    }

    public boolean l() {
        return this.f13789z;
    }

    public boolean m() {
        return this.A;
    }

    public boolean n() {
        return this.f13767o;
    }

    public boolean o() {
        return this.f13768o0;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View childAt = this.f13754c.getChildAt(this.f13755d);
        b bVar = (b) valueAnimator.getAnimatedValue();
        Rect rect = this.f13758g;
        float f4 = bVar.f13792a;
        rect.left = (int) f4;
        rect.right = (int) bVar.f13793b;
        if (this.f13775s >= 0.0f) {
            float f5 = this.f13775s;
            float width = f4 + ((childAt.getWidth() - f5) / 2.0f);
            Rect rect2 = this.f13758g;
            int i2 = (int) width;
            rect2.left = i2;
            rect2.right = (int) (i2 + f5);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (isInEditMode() || this.f13757f <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f4 = this.G;
        if (f4 > 0.0f) {
            this.f13761j.setStrokeWidth(f4);
            this.f13761j.setColor(this.F);
            for (int i2 = 0; i2 < this.f13757f - 1; i2++) {
                View childAt = this.f13754c.getChildAt(i2);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.H, childAt.getRight() + paddingLeft, height - this.H, this.f13761j);
            }
        }
        if (this.D > 0.0f) {
            this.f13760i.setColor(this.C);
            if (this.E == 80) {
                float f5 = height;
                canvas.drawRect(paddingLeft, f5 - this.D, this.f13754c.getWidth() + paddingLeft, f5, this.f13760i);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f13754c.getWidth() + paddingLeft, this.D, this.f13760i);
            }
        }
        if (this.f13789z) {
            if (this.f13788y0) {
                this.f13788y0 = false;
                d();
            }
        } else {
            d();
        }
        int i4 = this.f13764m;
        if (i4 == 1) {
            if (this.f13773r > 0.0f) {
                this.f13762k.setColor(this.f13771q);
                this.f13763l.reset();
                float f6 = height;
                this.f13763l.moveTo(this.f13758g.left + paddingLeft, f6);
                Path path = this.f13763l;
                Rect rect2 = this.f13758g;
                path.lineTo((rect2.left / 2) + paddingLeft + (rect2.right / 2), f6 - this.f13773r);
                this.f13763l.lineTo(paddingLeft + this.f13758g.right, f6);
                this.f13763l.close();
                canvas.drawPath(this.f13763l, this.f13762k);
            }
        } else if (i4 == 2) {
            if (this.f13773r < 0.0f) {
                this.f13773r = (height - this.f13781v) - this.f13785x;
            }
            float f7 = this.f13773r;
            if (f7 > 0.0f) {
                float f8 = this.f13777t;
                if (f8 < 0.0f || f8 > f7 / 2.0f) {
                    this.f13777t = f7 / 2.0f;
                }
                this.f13759h.setColor(this.f13771q);
                GradientDrawable gradientDrawable = this.f13759h;
                int i5 = ((int) this.f13779u) + paddingLeft + this.f13758g.left;
                float f9 = this.f13781v;
                gradientDrawable.setBounds(i5, (int) f9, (int) ((paddingLeft + rect.right) - this.f13783w), (int) (f9 + this.f13773r));
                this.f13759h.setCornerRadius(this.f13777t);
                this.f13759h.draw(canvas);
            }
        } else if (this.f13773r > 0.0f) {
            this.f13759h.setColor(this.f13771q);
            if (this.B == 80) {
                GradientDrawable gradientDrawable2 = this.f13759h;
                Rect rect3 = this.f13758g;
                float f10 = this.f13785x;
                gradientDrawable2.setBounds(((int) this.f13779u) + paddingLeft + rect3.left, (height - ((int) this.f13773r)) - ((int) f10), (paddingLeft + rect3.right) - ((int) this.f13783w), height - ((int) f10));
            } else {
                GradientDrawable gradientDrawable3 = this.f13759h;
                Rect rect4 = this.f13758g;
                int i6 = ((int) this.f13779u) + paddingLeft + rect4.left;
                float f11 = this.f13781v;
                gradientDrawable3.setBounds(i6, (int) f11, (paddingLeft + rect4.right) - ((int) this.f13783w), ((int) this.f13773r) + ((int) f11));
            }
            this.f13759h.setCornerRadius(this.f13777t);
            this.f13759h.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f13755d = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f13755d != 0 && this.f13754c.getChildCount() > 0) {
                u(this.f13755d);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f13755d);
        return bundle;
    }

    public void p() {
        View inflate;
        this.f13754c.removeAllViews();
        this.f13757f = this.f13753b.size();
        for (int i2 = 0; i2 < this.f13757f; i2++) {
            int i4 = this.f13772q0;
            if (i4 == 3) {
                inflate = View.inflate(this.f13752a, R.layout.layout_tab_left, null);
            } else if (i4 == 5) {
                inflate = View.inflate(this.f13752a, R.layout.layout_tab_right, null);
            } else if (i4 == 80) {
                inflate = View.inflate(this.f13752a, R.layout.layout_tab_bottom, null);
            } else {
                inflate = View.inflate(this.f13752a, R.layout.layout_tab_top, null);
            }
            inflate.setTag(Integer.valueOf(i2));
            c(i2, inflate);
        }
        v();
    }

    public void r(int i2) {
        int i4 = this.f13757f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        s(i2, 0);
    }

    public void s(int i2, int i4) {
        int i5 = this.f13757f;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        MsgView msgView = (MsgView) this.f13754c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            x0.b.b(msgView, i4);
            if (this.A0.get(i2) == null || !this.A0.get(i2).booleanValue()) {
                if (!this.f13770p0) {
                    setMsgMargin(i2, 2.0f, 2.0f);
                } else {
                    int i6 = this.f13772q0;
                    setMsgMargin(i2, 0.0f, (i6 == 3 || i6 == 5) ? 4.0f : 0.0f);
                }
                this.A0.put(i2, Boolean.TRUE);
            }
        }
    }

    public void setCurrentTab(int i2) {
        this.f13756e = this.f13755d;
        this.f13755d = i2;
        u(i2);
        x0.a aVar = this.f13786x0;
        if (aVar != null) {
            aVar.d(i2);
        }
        if (this.f13789z) {
            e();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i2) {
        this.F = i2;
        invalidate();
    }

    public void setDividerPadding(float f4) {
        this.H = f(f4);
        invalidate();
    }

    public void setDividerWidth(float f4) {
        this.G = f(f4);
        invalidate();
    }

    public void setIconGravity(int i2) {
        this.f13772q0 = i2;
        p();
    }

    public void setIconHeight(float f4) {
        this.f13776s0 = f(f4);
        v();
    }

    public void setIconMargin(float f4) {
        this.f13778t0 = f(f4);
        v();
    }

    public void setIconVisible(boolean z3) {
        this.f13770p0 = z3;
        v();
    }

    public void setIconWidth(float f4) {
        this.f13774r0 = f(f4);
        v();
    }

    public void setIndicatorAnimDuration(long j4) {
        this.f13787y = j4;
    }

    public void setIndicatorAnimEnable(boolean z3) {
        this.f13789z = z3;
    }

    public void setIndicatorBounceEnable(boolean z3) {
        this.A = z3;
    }

    public void setIndicatorColor(int i2) {
        this.f13771q = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.f13777t = f(f4);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.B = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f4) {
        this.f13773r = f(f4);
        invalidate();
    }

    public void setIndicatorMargin(float f4, float f5, float f6, float f7) {
        this.f13779u = f(f4);
        this.f13781v = f(f5);
        this.f13783w = f(f6);
        this.f13785x = f(f7);
        invalidate();
    }

    public void setIndicatorStyle(int i2) {
        this.f13764m = i2;
        invalidate();
    }

    public void setIndicatorWidth(float f4) {
        this.f13775s = f(f4);
        invalidate();
    }

    public void setMsgMargin(int i2, float f4, float f5) {
        int i4 = this.f13757f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        View childAt = this.f13754c.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            this.f13790z0.setTextSize(this.I);
            this.f13790z0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString());
            float descent = this.f13790z0.descent() - this.f13790z0.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f6 = this.f13776s0;
            float f7 = 0.0f;
            if (this.f13770p0) {
                if (f6 <= 0.0f) {
                    f6 = this.f13752a.getResources().getDrawable(this.f13753b.get(i2).a()).getIntrinsicHeight();
                }
                f7 = this.f13778t0;
            }
            int i5 = this.f13772q0;
            if (i5 != 48 && i5 != 80) {
                marginLayoutParams.leftMargin = f(f4);
                int i6 = this.f13780u0;
                marginLayoutParams.topMargin = i6 > 0 ? (((int) (i6 - Math.max(descent, f6))) / 2) - f(f5) : f(f5);
            } else {
                marginLayoutParams.leftMargin = f(f4);
                int i7 = this.f13780u0;
                marginLayoutParams.topMargin = i7 > 0 ? (((int) (((i7 - descent) - f6) - f7)) / 2) - f(f5) : f(f5);
            }
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(w0.b bVar) {
        this.B0 = bVar;
    }

    public void setTabData(ArrayList<w0.a> arrayList) {
        if (arrayList != null && arrayList.size() != 0) {
            this.f13753b.clear();
            this.f13753b.addAll(arrayList);
            p();
            return;
        }
        throw new IllegalStateException("TabEntitys can not be NULL or EMPTY !");
    }

    public void setTabPadding(float f4) {
        this.f13765n = f(f4);
        v();
    }

    public void setTabSpaceEqual(boolean z3) {
        this.f13767o = z3;
        v();
    }

    public void setTabWidth(float f4) {
        this.f13769p = f(f4);
        v();
    }

    public void setTextAllCaps(boolean z3) {
        this.f13768o0 = z3;
        v();
    }

    public void setTextBold(int i2) {
        this.f13766n0 = i2;
        v();
    }

    public void setTextSelectColor(int i2) {
        this.J = i2;
        v();
    }

    public void setTextUnselectColor(int i2) {
        this.K = i2;
        v();
    }

    public void setTextsize(float f4) {
        this.I = t(f4);
        v();
    }

    public void setUnderlineColor(int i2) {
        this.C = i2;
        invalidate();
    }

    public void setUnderlineGravity(int i2) {
        this.E = i2;
        invalidate();
    }

    public void setUnderlineHeight(float f4) {
        this.D = f(f4);
        invalidate();
    }

    protected int t(float f4) {
        return (int) ((f4 * this.f13752a.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13753b = new ArrayList<>();
        this.f13758g = new Rect();
        this.f13759h = new GradientDrawable();
        this.f13760i = new Paint(1);
        this.f13761j = new Paint(1);
        this.f13762k = new Paint(1);
        this.f13763l = new Path();
        this.f13764m = 0;
        this.f13784w0 = new OvershootInterpolator(1.5f);
        this.f13788y0 = true;
        this.f13790z0 = new Paint(1);
        this.A0 = new SparseArray<>();
        this.C0 = new b();
        this.D0 = new b();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f13752a = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f13754c = linearLayout;
        addView(linearLayout);
        q(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
            this.f13780u0 = obtainStyledAttributes.getDimensionPixelSize(0, -2);
            obtainStyledAttributes.recycle();
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new c(), this.D0, this.C0);
        this.f13782v0 = ofObject;
        ofObject.addUpdateListener(this);
    }

    public void setTabData(ArrayList<w0.a> arrayList, FragmentActivity fragmentActivity, int i2, ArrayList<Fragment> arrayList2) {
        this.f13786x0 = new x0.a(fragmentActivity.getSupportFragmentManager(), i2, arrayList2);
        setTabData(arrayList);
    }
}
