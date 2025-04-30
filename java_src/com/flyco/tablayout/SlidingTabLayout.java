package com.flyco.tablayout;

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
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes2.dex */
public class SlidingTabLayout extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int A0 = 1;
    private static final int B0 = 2;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f13838w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f13839x0 = 1;

    /* renamed from: y0  reason: collision with root package name */
    private static final int f13840y0 = 2;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f13841z0 = 0;
    private int A;
    private boolean B;
    private int C;
    private float D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private int J;
    private int K;

    /* renamed from: a  reason: collision with root package name */
    private Context f13842a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f13843b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<String> f13844c;

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f13845d;

    /* renamed from: e  reason: collision with root package name */
    private int f13846e;

    /* renamed from: f  reason: collision with root package name */
    private float f13847f;

    /* renamed from: g  reason: collision with root package name */
    private int f13848g;

    /* renamed from: h  reason: collision with root package name */
    private Rect f13849h;

    /* renamed from: i  reason: collision with root package name */
    private Rect f13850i;

    /* renamed from: j  reason: collision with root package name */
    private GradientDrawable f13851j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f13852k;

    /* renamed from: l  reason: collision with root package name */
    private Paint f13853l;

    /* renamed from: m  reason: collision with root package name */
    private Paint f13854m;

    /* renamed from: n  reason: collision with root package name */
    private Path f13855n;

    /* renamed from: n0  reason: collision with root package name */
    private int f13856n0;

    /* renamed from: o  reason: collision with root package name */
    private int f13857o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f13858o0;

    /* renamed from: p  reason: collision with root package name */
    private float f13859p;

    /* renamed from: p0  reason: collision with root package name */
    private int f13860p0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f13861q;

    /* renamed from: q0  reason: collision with root package name */
    private int f13862q0;

    /* renamed from: r  reason: collision with root package name */
    private float f13863r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f13864r0;

    /* renamed from: s  reason: collision with root package name */
    private int f13865s;

    /* renamed from: s0  reason: collision with root package name */
    private float f13866s0;

    /* renamed from: t  reason: collision with root package name */
    private float f13867t;

    /* renamed from: t0  reason: collision with root package name */
    private Paint f13868t0;

    /* renamed from: u  reason: collision with root package name */
    private float f13869u;

    /* renamed from: u0  reason: collision with root package name */
    private SparseArray<Boolean> f13870u0;

    /* renamed from: v  reason: collision with root package name */
    private float f13871v;

    /* renamed from: v0  reason: collision with root package name */
    private w0.b f13872v0;

    /* renamed from: w  reason: collision with root package name */
    private float f13873w;

    /* renamed from: x  reason: collision with root package name */
    private float f13874x;

    /* renamed from: y  reason: collision with root package name */
    private float f13875y;

    /* renamed from: z  reason: collision with root package name */
    private float f13876z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int indexOfChild = SlidingTabLayout.this.f13845d.indexOfChild(view);
            if (indexOfChild != -1) {
                if (SlidingTabLayout.this.f13843b.getCurrentItem() != indexOfChild) {
                    if (SlidingTabLayout.this.f13864r0) {
                        SlidingTabLayout.this.f13843b.setCurrentItem(indexOfChild, false);
                    } else {
                        SlidingTabLayout.this.f13843b.setCurrentItem(indexOfChild);
                    }
                    if (SlidingTabLayout.this.f13872v0 != null) {
                        SlidingTabLayout.this.f13872v0.onTabSelect(indexOfChild);
                    }
                } else if (SlidingTabLayout.this.f13872v0 != null) {
                    SlidingTabLayout.this.f13872v0.onTabReselect(indexOfChild);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class b extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<Fragment> f13878a;

        /* renamed from: b  reason: collision with root package name */
        private String[] f13879b;

        public b(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, String[] strArr) {
            super(fragmentManager);
            this.f13878a = new ArrayList<>();
            this.f13878a = arrayList;
            this.f13879b = strArr;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f13878a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return this.f13878a.get(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return this.f13879b[i2];
        }
    }

    public SlidingTabLayout(Context context) {
        this(context, null, 0);
    }

    private void f(int i2, String str, View view) {
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (textView != null && str != null) {
            textView.setText(str);
        }
        view.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f13861q ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f13863r > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f13863r, -1);
        }
        this.f13845d.addView(view, i2, layoutParams);
    }

    private void g() {
        int i2;
        View childAt = this.f13845d.getChildAt(this.f13846e);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f13857o == 0 && this.B) {
            this.f13868t0.setTextSize(this.I);
            this.f13866s0 = ((right - left) - this.f13868t0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f;
        }
        int i4 = this.f13846e;
        if (i4 < this.f13848g - 1) {
            View childAt2 = this.f13845d.getChildAt(i4 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f4 = this.f13847f;
            left += (left2 - left) * f4;
            right += f4 * (right2 - right);
            if (this.f13857o == 0 && this.B) {
                this.f13868t0.setTextSize(this.I);
                float f5 = this.f13866s0;
                this.f13866s0 = f5 + (this.f13847f * ((((right2 - left2) - this.f13868t0.measureText(((TextView) childAt2.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f) - f5));
            }
        }
        Rect rect = this.f13849h;
        int i5 = (int) left;
        rect.left = i5;
        int i6 = (int) right;
        rect.right = i6;
        if (this.f13857o == 0 && this.B) {
            float f6 = this.f13866s0;
            rect.left = (int) ((left + f6) - 1.0f);
            rect.right = (int) ((right - f6) - 1.0f);
        }
        Rect rect2 = this.f13850i;
        rect2.left = i5;
        rect2.right = i6;
        if (this.f13869u < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f13869u) / 2.0f);
        if (this.f13846e < this.f13848g - 1) {
            left3 += this.f13847f * ((childAt.getWidth() / 2) + (this.f13845d.getChildAt(i2 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f13849h;
        int i7 = (int) left3;
        rect3.left = i7;
        rect3.right = (int) (i7 + this.f13869u);
    }

    private void n(Context context, AttributeSet attributeSet) {
        float f4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTabLayout);
        int i2 = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_style, 0);
        this.f13857o = i2;
        this.f13865s = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_indicator_color, Color.parseColor(i2 == 2 ? "#4B6A87" : "#ffffff"));
        int i4 = R.styleable.SlidingTabLayout_tl_indicator_height;
        int i5 = this.f13857o;
        if (i5 == 1) {
            f4 = 4.0f;
        } else {
            f4 = i5 == 2 ? -1 : 2;
        }
        this.f13867t = obtainStyledAttributes.getDimension(i4, h(f4));
        this.f13869u = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_width, h(this.f13857o == 1 ? 10.0f : -1.0f));
        this.f13871v = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_corner_radius, h(this.f13857o == 2 ? -1.0f : 0.0f));
        this.f13873w = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_left, h(0.0f));
        this.f13874x = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_top, h(this.f13857o == 2 ? 7.0f : 0.0f));
        this.f13875y = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_right, h(0.0f));
        this.f13876z = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_bottom, h(this.f13857o != 2 ? 0.0f : 7.0f));
        this.A = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_gravity, 80);
        this.B = obtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_indicator_width_equal_title, false);
        this.C = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.D = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_underline_height, h(0.0f));
        this.E = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_underline_gravity, 80);
        this.F = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.G = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_width, h(0.0f));
        this.H = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_padding, h(12.0f));
        this.I = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_textsize, r(14.0f));
        this.J = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.K = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.f13856n0 = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_textBold, 0);
        this.f13858o0 = obtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_textAllCaps, false);
        this.f13861q = obtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_tab_space_equal, false);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_width, h(-1.0f));
        this.f13863r = dimension;
        this.f13859p = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_padding, (this.f13861q || dimension > 0.0f) ? h(0.0f) : h(20.0f));
        obtainStyledAttributes.recycle();
    }

    private void o() {
        if (this.f13848g <= 0) {
            return;
        }
        int width = (int) (this.f13847f * this.f13845d.getChildAt(this.f13846e).getWidth());
        int left = this.f13845d.getChildAt(this.f13846e).getLeft() + width;
        if (this.f13846e > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            g();
            Rect rect = this.f13850i;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.f13860p0) {
            this.f13860p0 = left;
            scrollTo(left, 0);
        }
    }

    private void s(int i2) {
        int i4 = 0;
        while (i4 < this.f13848g) {
            View childAt = this.f13845d.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z3 ? this.J : this.K);
                if (this.f13856n0 == 1) {
                    textView.getPaint().setFakeBoldText(z3);
                }
            }
            i4++;
        }
    }

    private void t() {
        int i2 = 0;
        while (i2 < this.f13848g) {
            TextView textView = (TextView) this.f13845d.getChildAt(i2).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i2 == this.f13846e ? this.J : this.K);
                textView.setTextSize(0, this.I);
                float f4 = this.f13859p;
                textView.setPadding((int) f4, 0, (int) f4, 0);
                if (this.f13858o0) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i4 = this.f13856n0;
                if (i4 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i4 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
            }
            i2++;
        }
    }

    public void e(String str) {
        View inflate = View.inflate(this.f13842a, R.layout.layout_tab, null);
        ArrayList<String> arrayList = this.f13844c;
        if (arrayList != null) {
            arrayList.add(str);
        }
        ArrayList<String> arrayList2 = this.f13844c;
        f(this.f13848g, (arrayList2 == null ? this.f13843b.getAdapter().getPageTitle(this.f13848g) : arrayList2.get(this.f13848g)).toString(), inflate);
        ArrayList<String> arrayList3 = this.f13844c;
        this.f13848g = arrayList3 == null ? this.f13843b.getAdapter().getCount() : arrayList3.size();
        t();
    }

    public int getCurrentTab() {
        return this.f13846e;
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

    public int getIndicatorColor() {
        return this.f13865s;
    }

    public float getIndicatorCornerRadius() {
        return this.f13871v;
    }

    public float getIndicatorHeight() {
        return this.f13867t;
    }

    public float getIndicatorMarginBottom() {
        return this.f13876z;
    }

    public float getIndicatorMarginLeft() {
        return this.f13873w;
    }

    public float getIndicatorMarginRight() {
        return this.f13875y;
    }

    public float getIndicatorMarginTop() {
        return this.f13874x;
    }

    public int getIndicatorStyle() {
        return this.f13857o;
    }

    public float getIndicatorWidth() {
        return this.f13869u;
    }

    public int getTabCount() {
        return this.f13848g;
    }

    public float getTabPadding() {
        return this.f13859p;
    }

    public float getTabWidth() {
        return this.f13863r;
    }

    public int getTextBold() {
        return this.f13856n0;
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

    protected int h(float f4) {
        return (int) ((f4 * this.f13842a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView i(int i2) {
        int i4 = this.f13848g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        return (MsgView) this.f13845d.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    public TextView j(int i2) {
        return (TextView) this.f13845d.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    public void k(int i2) {
        int i4 = this.f13848g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f13845d.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean l() {
        return this.f13861q;
    }

    public boolean m() {
        return this.f13858o0;
    }

    public void notifyDataSetChanged() {
        this.f13845d.removeAllViews();
        ArrayList<String> arrayList = this.f13844c;
        this.f13848g = arrayList == null ? this.f13843b.getAdapter().getCount() : arrayList.size();
        for (int i2 = 0; i2 < this.f13848g; i2++) {
            View inflate = View.inflate(this.f13842a, R.layout.layout_tab, null);
            ArrayList<String> arrayList2 = this.f13844c;
            f(i2, (arrayList2 == null ? this.f13843b.getAdapter().getPageTitle(i2) : arrayList2.get(i2)).toString(), inflate);
        }
        t();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (isInEditMode() || this.f13848g <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f4 = this.G;
        if (f4 > 0.0f) {
            this.f13853l.setStrokeWidth(f4);
            this.f13853l.setColor(this.F);
            for (int i2 = 0; i2 < this.f13848g - 1; i2++) {
                View childAt = this.f13845d.getChildAt(i2);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.H, childAt.getRight() + paddingLeft, height - this.H, this.f13853l);
            }
        }
        if (this.D > 0.0f) {
            this.f13852k.setColor(this.C);
            if (this.E == 80) {
                float f5 = height;
                canvas.drawRect(paddingLeft, f5 - this.D, this.f13845d.getWidth() + paddingLeft, f5, this.f13852k);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f13845d.getWidth() + paddingLeft, this.D, this.f13852k);
            }
        }
        g();
        int i4 = this.f13857o;
        if (i4 == 1) {
            if (this.f13867t > 0.0f) {
                this.f13854m.setColor(this.f13865s);
                this.f13855n.reset();
                float f6 = height;
                this.f13855n.moveTo(this.f13849h.left + paddingLeft, f6);
                Path path = this.f13855n;
                Rect rect2 = this.f13849h;
                path.lineTo((rect2.left / 2) + paddingLeft + (rect2.right / 2), f6 - this.f13867t);
                this.f13855n.lineTo(paddingLeft + this.f13849h.right, f6);
                this.f13855n.close();
                canvas.drawPath(this.f13855n, this.f13854m);
            }
        } else if (i4 == 2) {
            if (this.f13867t < 0.0f) {
                this.f13867t = (height - this.f13874x) - this.f13876z;
            }
            float f7 = this.f13867t;
            if (f7 > 0.0f) {
                float f8 = this.f13871v;
                if (f8 < 0.0f || f8 > f7 / 2.0f) {
                    this.f13871v = f7 / 2.0f;
                }
                this.f13851j.setColor(this.f13865s);
                GradientDrawable gradientDrawable = this.f13851j;
                int i5 = ((int) this.f13873w) + paddingLeft + this.f13849h.left;
                float f9 = this.f13874x;
                gradientDrawable.setBounds(i5, (int) f9, (int) ((paddingLeft + rect.right) - this.f13875y), (int) (f9 + this.f13867t));
                this.f13851j.setCornerRadius(this.f13871v);
                this.f13851j.draw(canvas);
            }
        } else if (this.f13867t > 0.0f) {
            this.f13851j.setColor(this.f13865s);
            if (this.A == 80) {
                GradientDrawable gradientDrawable2 = this.f13851j;
                Rect rect3 = this.f13849h;
                float f10 = this.f13876z;
                gradientDrawable2.setBounds(((int) this.f13873w) + paddingLeft + rect3.left, (height - ((int) this.f13867t)) - ((int) f10), (paddingLeft + rect3.right) - ((int) this.f13875y), height - ((int) f10));
            } else {
                GradientDrawable gradientDrawable3 = this.f13851j;
                Rect rect4 = this.f13849h;
                int i6 = ((int) this.f13873w) + paddingLeft + rect4.left;
                float f11 = this.f13874x;
                gradientDrawable3.setBounds(i6, (int) f11, (paddingLeft + rect4.right) - ((int) this.f13875y), ((int) this.f13867t) + ((int) f11));
            }
            this.f13851j.setCornerRadius(this.f13871v);
            this.f13851j.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        this.f13846e = i2;
        this.f13847f = f4;
        o();
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        s(i2);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f13846e = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f13846e != 0 && this.f13845d.getChildCount() > 0) {
                s(this.f13846e);
                o();
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f13846e);
        return bundle;
    }

    public void p(int i2) {
        int i4 = this.f13848g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        q(i2, 0);
    }

    public void q(int i2, int i4) {
        int i5 = this.f13848g;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        MsgView msgView = (MsgView) this.f13845d.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            x0.b.b(msgView, i4);
            if (this.f13870u0.get(i2) == null || !this.f13870u0.get(i2).booleanValue()) {
                setMsgMargin(i2, 4.0f, 2.0f);
                this.f13870u0.put(i2, Boolean.TRUE);
            }
        }
    }

    protected int r(float f4) {
        return (int) ((f4 * this.f13842a.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int i2) {
        this.f13846e = i2;
        this.f13843b.setCurrentItem(i2);
    }

    public void setDividerColor(int i2) {
        this.F = i2;
        invalidate();
    }

    public void setDividerPadding(float f4) {
        this.H = h(f4);
        invalidate();
    }

    public void setDividerWidth(float f4) {
        this.G = h(f4);
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.f13865s = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.f13871v = h(f4);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.A = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f4) {
        this.f13867t = h(f4);
        invalidate();
    }

    public void setIndicatorMargin(float f4, float f5, float f6, float f7) {
        this.f13873w = h(f4);
        this.f13874x = h(f5);
        this.f13875y = h(f6);
        this.f13876z = h(f7);
        invalidate();
    }

    public void setIndicatorStyle(int i2) {
        this.f13857o = i2;
        invalidate();
    }

    public void setIndicatorWidth(float f4) {
        this.f13869u = h(f4);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z3) {
        this.B = z3;
        invalidate();
    }

    public void setMsgMargin(int i2, float f4, float f5) {
        float f6;
        int i4 = this.f13848g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        View childAt = this.f13845d.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            this.f13868t0.setTextSize(this.I);
            float measureText = this.f13868t0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString());
            float descent = this.f13868t0.descent() - this.f13868t0.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f7 = this.f13863r;
            if (f7 >= 0.0f) {
                f6 = f7 / 2.0f;
                measureText /= 2.0f;
            } else {
                f6 = this.f13859p;
            }
            marginLayoutParams.leftMargin = (int) (f6 + measureText + h(f4));
            int i5 = this.f13862q0;
            marginLayoutParams.topMargin = i5 > 0 ? (((int) (i5 - descent)) / 2) - h(f5) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(w0.b bVar) {
        this.f13872v0 = bVar;
    }

    public void setSnapOnTabClick(boolean z3) {
        this.f13864r0 = z3;
    }

    public void setTabPadding(float f4) {
        this.f13859p = h(f4);
        t();
    }

    public void setTabSpaceEqual(boolean z3) {
        this.f13861q = z3;
        t();
    }

    public void setTabWidth(float f4) {
        this.f13863r = h(f4);
        t();
    }

    public void setTextAllCaps(boolean z3) {
        this.f13858o0 = z3;
        t();
    }

    public void setTextBold(int i2) {
        this.f13856n0 = i2;
        t();
    }

    public void setTextSelectColor(int i2) {
        this.J = i2;
        t();
    }

    public void setTextUnselectColor(int i2) {
        this.K = i2;
        t();
    }

    public void setTextsize(float f4) {
        this.I = r(f4);
        t();
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
        this.D = h(f4);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        if (viewPager != null && viewPager.getAdapter() != null) {
            this.f13843b = viewPager;
            viewPager.removeOnPageChangeListener(this);
            this.f13843b.addOnPageChangeListener(this);
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13849h = new Rect();
        this.f13850i = new Rect();
        this.f13851j = new GradientDrawable();
        this.f13852k = new Paint(1);
        this.f13853l = new Paint(1);
        this.f13854m = new Paint(1);
        this.f13855n = new Path();
        this.f13857o = 0;
        this.f13868t0 = new Paint(1);
        this.f13870u0 = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f13842a = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f13845d = linearLayout;
        addView(linearLayout);
        n(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals("-1") || attributeValue.equals("-2")) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
        this.f13862q0 = obtainStyledAttributes.getDimensionPixelSize(0, -2);
        obtainStyledAttributes.recycle();
    }

    public void setCurrentTab(int i2, boolean z3) {
        this.f13846e = i2;
        this.f13843b.setCurrentItem(i2, z3);
    }

    public void setViewPager(ViewPager viewPager, String[] strArr) {
        if (viewPager != null && viewPager.getAdapter() != null) {
            if (strArr != null && strArr.length != 0) {
                if (strArr.length == viewPager.getAdapter().getCount()) {
                    this.f13843b = viewPager;
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.f13844c = arrayList;
                    Collections.addAll(arrayList, strArr);
                    this.f13843b.removeOnPageChangeListener(this);
                    this.f13843b.addOnPageChangeListener(this);
                    notifyDataSetChanged();
                    return;
                }
                throw new IllegalStateException("Titles length must be the same as the page count !");
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public void setViewPager(ViewPager viewPager, String[] strArr, FragmentActivity fragmentActivity, ArrayList<Fragment> arrayList) {
        if (viewPager != null) {
            if (strArr != null && strArr.length != 0) {
                this.f13843b = viewPager;
                viewPager.setAdapter(new b(fragmentActivity.getSupportFragmentManager(), arrayList, strArr));
                this.f13843b.removeOnPageChangeListener(this);
                this.f13843b.addOnPageChangeListener(this);
                notifyDataSetChanged();
                return;
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager can not be NULL !");
    }
}
