package com.join.mgps.customview;

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
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes3.dex */
public class BtReginSlidinTablayout extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int A0 = 3;
    private static final int B0 = 0;
    private static final int C0 = 1;
    private static final int D0 = 2;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f44947x0 = 0;

    /* renamed from: y0  reason: collision with root package name */
    private static final int f44948y0 = 1;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f44949z0 = 2;
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
    private Context f44950a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f44951b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<String> f44952c;

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f44953d;

    /* renamed from: e  reason: collision with root package name */
    private int f44954e;

    /* renamed from: f  reason: collision with root package name */
    private float f44955f;

    /* renamed from: g  reason: collision with root package name */
    private int f44956g;

    /* renamed from: h  reason: collision with root package name */
    private Rect f44957h;

    /* renamed from: i  reason: collision with root package name */
    private Rect f44958i;

    /* renamed from: j  reason: collision with root package name */
    private GradientDrawable f44959j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f44960k;

    /* renamed from: l  reason: collision with root package name */
    private Paint f44961l;

    /* renamed from: m  reason: collision with root package name */
    private Paint f44962m;

    /* renamed from: n  reason: collision with root package name */
    private Path f44963n;

    /* renamed from: n0  reason: collision with root package name */
    private int f44964n0;

    /* renamed from: o  reason: collision with root package name */
    private int f44965o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f44966o0;

    /* renamed from: p  reason: collision with root package name */
    private float f44967p;

    /* renamed from: p0  reason: collision with root package name */
    private int f44968p0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f44969q;

    /* renamed from: q0  reason: collision with root package name */
    private int f44970q0;

    /* renamed from: r  reason: collision with root package name */
    private float f44971r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f44972r0;

    /* renamed from: s  reason: collision with root package name */
    private int f44973s;

    /* renamed from: s0  reason: collision with root package name */
    int f44974s0;

    /* renamed from: t  reason: collision with root package name */
    private float f44975t;

    /* renamed from: t0  reason: collision with root package name */
    private float f44976t0;

    /* renamed from: u  reason: collision with root package name */
    private float f44977u;

    /* renamed from: u0  reason: collision with root package name */
    private Paint f44978u0;

    /* renamed from: v  reason: collision with root package name */
    private float f44979v;

    /* renamed from: v0  reason: collision with root package name */
    private SparseArray<Boolean> f44980v0;

    /* renamed from: w  reason: collision with root package name */
    private float f44981w;

    /* renamed from: w0  reason: collision with root package name */
    private w0.b f44982w0;

    /* renamed from: x  reason: collision with root package name */
    private float f44983x;

    /* renamed from: y  reason: collision with root package name */
    private float f44984y;

    /* renamed from: z  reason: collision with root package name */
    private float f44985z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int indexOfChild = BtReginSlidinTablayout.this.f44953d.indexOfChild(view);
            if (indexOfChild != -1) {
                if (BtReginSlidinTablayout.this.f44951b.getCurrentItem() != indexOfChild) {
                    if (BtReginSlidinTablayout.this.f44972r0) {
                        BtReginSlidinTablayout.this.f44951b.setCurrentItem(indexOfChild, false);
                    } else {
                        BtReginSlidinTablayout.this.f44951b.setCurrentItem(indexOfChild);
                    }
                    if (BtReginSlidinTablayout.this.f44982w0 != null) {
                        BtReginSlidinTablayout.this.f44982w0.onTabSelect(indexOfChild);
                    }
                } else if (BtReginSlidinTablayout.this.f44982w0 != null) {
                    BtReginSlidinTablayout.this.f44982w0.onTabReselect(indexOfChild);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<Fragment> f44987a;

        /* renamed from: b  reason: collision with root package name */
        private String[] f44988b;

        public b(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, String[] strArr) {
            super(fragmentManager);
            this.f44987a = new ArrayList<>();
            this.f44987a = arrayList;
            this.f44988b = strArr;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f44987a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return this.f44987a.get(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return this.f44988b[i2];
        }
    }

    public BtReginSlidinTablayout(Context context) {
        this(context, null, 0);
    }

    private void f(int i2, String str, View view) {
        LinearLayout.LayoutParams layoutParams;
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (textView != null && str != null) {
            textView.setText(str);
        }
        view.setOnClickListener(new a());
        if (this.f44969q) {
            layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
        }
        if (this.f44971r > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f44971r, -1);
        }
        this.f44953d.addView(view, i2, layoutParams);
    }

    private void g() {
        int i2;
        View childAt = this.f44953d.getChildAt(this.f44954e);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f44965o == 0 && this.B) {
            this.f44978u0.setTextSize(this.I);
            this.f44976t0 = ((right - left) - this.f44978u0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f;
        }
        int i4 = this.f44954e;
        if (i4 < this.f44956g - 1) {
            View childAt2 = this.f44953d.getChildAt(i4 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f4 = this.f44955f;
            left += (left2 - left) * f4;
            right += f4 * (right2 - right);
            if (this.f44965o == 0 && this.B) {
                this.f44978u0.setTextSize(this.I);
                float f5 = this.f44976t0;
                this.f44976t0 = f5 + (this.f44955f * ((((right2 - left2) - this.f44978u0.measureText(((TextView) childAt2.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f) - f5));
            }
        }
        Rect rect = this.f44957h;
        int i5 = (int) left;
        rect.left = i5;
        int i6 = (int) right;
        rect.right = i6;
        if (this.f44965o == 0 && this.B) {
            float f6 = this.f44976t0;
            rect.left = (int) ((left + f6) - 1.0f);
            rect.right = (int) ((right - f6) - 1.0f);
        }
        Rect rect2 = this.f44958i;
        rect2.left = i5;
        rect2.right = i6;
        if (this.f44977u < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f44977u) / 2.0f);
        if (this.f44954e < this.f44956g - 1) {
            left3 += this.f44955f * ((childAt.getWidth() / 2) + (this.f44953d.getChildAt(i2 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f44957h;
        int i7 = (int) left3;
        rect3.left = i7;
        rect3.right = (int) (i7 + this.f44977u);
    }

    private void n(Context context, AttributeSet attributeSet) {
        float f4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MySlidingTabLayout);
        int i2 = obtainStyledAttributes.getInt(11, 0);
        this.f44965o = i2;
        this.f44973s = obtainStyledAttributes.getColor(3, Color.parseColor(i2 == 2 ? "#4B6A87" : "#ffffff"));
        int i4 = this.f44965o;
        if (i4 == 1) {
            f4 = 4.0f;
        } else {
            f4 = i4 == 2 ? -1 : 2;
        }
        this.f44975t = obtainStyledAttributes.getDimension(6, h(f4));
        this.f44977u = obtainStyledAttributes.getDimension(12, h(this.f44965o == 1 ? 10.0f : -1.0f));
        this.f44979v = obtainStyledAttributes.getDimension(4, h(this.f44965o == 2 ? -1.0f : 0.0f));
        this.f44981w = obtainStyledAttributes.getDimension(8, h(0.0f));
        this.f44983x = obtainStyledAttributes.getDimension(10, h(this.f44965o == 2 ? 7.0f : 0.0f));
        this.f44984y = obtainStyledAttributes.getDimension(9, h(0.0f));
        this.f44985z = obtainStyledAttributes.getDimension(7, h(this.f44965o != 2 ? 0.0f : 7.0f));
        this.A = obtainStyledAttributes.getInt(5, 80);
        this.B = obtainStyledAttributes.getBoolean(13, false);
        this.C = obtainStyledAttributes.getColor(22, Color.parseColor("#ffffff"));
        this.D = obtainStyledAttributes.getDimension(24, h(0.0f));
        this.E = obtainStyledAttributes.getInt(23, 80);
        this.F = obtainStyledAttributes.getColor(0, Color.parseColor("#ffffff"));
        this.G = obtainStyledAttributes.getDimension(2, h(0.0f));
        this.H = obtainStyledAttributes.getDimension(1, h(12.0f));
        this.I = obtainStyledAttributes.getDimension(21, r(14.0f));
        this.J = obtainStyledAttributes.getColor(19, Color.parseColor("#ffffff"));
        this.K = obtainStyledAttributes.getColor(20, Color.parseColor("#AAffffff"));
        this.f44964n0 = obtainStyledAttributes.getInt(18, 0);
        this.f44966o0 = obtainStyledAttributes.getBoolean(17, false);
        this.f44969q = obtainStyledAttributes.getBoolean(15, false);
        float dimension = obtainStyledAttributes.getDimension(16, h(-1.0f));
        this.f44971r = dimension;
        this.f44967p = obtainStyledAttributes.getDimension(14, (this.f44969q || dimension > 0.0f) ? h(0.0f) : h(20.0f));
        obtainStyledAttributes.recycle();
    }

    private void o() {
        if (this.f44956g <= 0) {
            return;
        }
        int width = (int) (this.f44955f * this.f44953d.getChildAt(this.f44954e).getWidth());
        int left = this.f44953d.getChildAt(this.f44954e).getLeft() + width;
        if (this.f44954e > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            g();
            Rect rect = this.f44958i;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.f44968p0) {
            this.f44968p0 = left;
            scrollTo(left, 0);
        }
    }

    private void s(int i2) {
        this.f44974s0 = i2;
        int i4 = 0;
        while (i4 < this.f44956g) {
            View childAt = this.f44953d.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z3 ? this.J : this.K);
                if (this.f44964n0 == 1) {
                    textView.getPaint().setFakeBoldText(z3);
                }
                if (this.f44965o == 3) {
                    if (i4 == this.f44974s0) {
                        textView.setSelected(true);
                    } else {
                        textView.setSelected(false);
                    }
                }
            }
            i4++;
        }
    }

    private void t() {
        int i2 = 0;
        while (i2 < this.f44956g) {
            TextView textView = (TextView) this.f44953d.getChildAt(i2).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i2 == this.f44954e ? this.J : this.K);
                textView.setTextSize(0, this.I);
                float f4 = this.f44967p;
                textView.setPadding((int) f4, 0, (int) f4, 0);
                if (this.f44966o0) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i4 = this.f44964n0;
                if (i4 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i4 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
                if (this.f44965o == 3) {
                    if (i2 == this.f44974s0) {
                        textView.setSelected(true);
                    } else {
                        textView.setSelected(false);
                    }
                }
            }
            i2++;
        }
    }

    public void e(String str) {
        View inflate = View.inflate(this.f44950a, R.layout.bt_tab_item_layout, null);
        ArrayList<String> arrayList = this.f44952c;
        if (arrayList != null) {
            arrayList.add(str);
        }
        ArrayList<String> arrayList2 = this.f44952c;
        f(this.f44956g, (arrayList2 == null ? this.f44951b.getAdapter().getPageTitle(this.f44956g) : arrayList2.get(this.f44956g)).toString(), inflate);
        ArrayList<String> arrayList3 = this.f44952c;
        this.f44956g = arrayList3 == null ? this.f44951b.getAdapter().getCount() : arrayList3.size();
        t();
    }

    public int getCurrentTab() {
        return this.f44954e;
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
        return this.f44973s;
    }

    public float getIndicatorCornerRadius() {
        return this.f44979v;
    }

    public float getIndicatorHeight() {
        return this.f44975t;
    }

    public float getIndicatorMarginBottom() {
        return this.f44985z;
    }

    public float getIndicatorMarginLeft() {
        return this.f44981w;
    }

    public float getIndicatorMarginRight() {
        return this.f44984y;
    }

    public float getIndicatorMarginTop() {
        return this.f44983x;
    }

    public int getIndicatorStyle() {
        return this.f44965o;
    }

    public float getIndicatorWidth() {
        return this.f44977u;
    }

    public int getTabCount() {
        return this.f44956g;
    }

    public float getTabPadding() {
        return this.f44967p;
    }

    public float getTabWidth() {
        return this.f44971r;
    }

    public int getTextBold() {
        return this.f44964n0;
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
        return (int) ((f4 * this.f44950a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView i(int i2) {
        int i4 = this.f44956g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        return (MsgView) this.f44953d.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    public TextView j(int i2) {
        return (TextView) this.f44953d.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    public void k(int i2) {
        int i4 = this.f44956g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f44953d.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean l() {
        return this.f44969q;
    }

    public boolean m() {
        return this.f44966o0;
    }

    public void notifyDataSetChanged() {
        this.f44953d.removeAllViews();
        ArrayList<String> arrayList = this.f44952c;
        this.f44956g = arrayList == null ? this.f44951b.getAdapter().getCount() : arrayList.size();
        for (int i2 = 0; i2 < this.f44956g; i2++) {
            View inflate = View.inflate(this.f44950a, R.layout.bt_tab_item_layout, null);
            ArrayList<String> arrayList2 = this.f44952c;
            f(i2, (arrayList2 == null ? this.f44951b.getAdapter().getPageTitle(i2) : arrayList2.get(i2)).toString(), inflate);
        }
        t();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (isInEditMode() || this.f44956g <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f4 = this.G;
        if (f4 > 0.0f) {
            this.f44961l.setStrokeWidth(f4);
            this.f44961l.setColor(this.F);
            for (int i2 = 0; i2 < this.f44956g - 1; i2++) {
                View childAt = this.f44953d.getChildAt(i2);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.H, childAt.getRight() + paddingLeft, height - this.H, this.f44961l);
            }
        }
        if (this.D > 0.0f) {
            this.f44960k.setColor(this.C);
            if (this.E == 80) {
                float f5 = height;
                canvas.drawRect(paddingLeft, f5 - this.D, this.f44953d.getWidth() + paddingLeft, f5, this.f44960k);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f44953d.getWidth() + paddingLeft, this.D, this.f44960k);
            }
        }
        g();
        int i4 = this.f44965o;
        if (i4 == 1) {
            if (this.f44975t > 0.0f) {
                this.f44962m.setColor(this.f44973s);
                this.f44963n.reset();
                float f6 = height;
                this.f44963n.moveTo(this.f44957h.left + paddingLeft, f6);
                Path path = this.f44963n;
                Rect rect2 = this.f44957h;
                path.lineTo((rect2.left / 2) + paddingLeft + (rect2.right / 2), f6 - this.f44975t);
                this.f44963n.lineTo(paddingLeft + this.f44957h.right, f6);
                this.f44963n.close();
                canvas.drawPath(this.f44963n, this.f44962m);
            }
        } else if (i4 == 2) {
            if (this.f44975t < 0.0f) {
                this.f44975t = (height - this.f44983x) - this.f44985z;
            }
            float f7 = this.f44975t;
            if (f7 > 0.0f) {
                float f8 = this.f44979v;
                if (f8 < 0.0f || f8 > f7 / 2.0f) {
                    this.f44979v = f7 / 2.0f;
                }
                this.f44959j.setColor(this.f44973s);
                GradientDrawable gradientDrawable = this.f44959j;
                int i5 = ((int) this.f44981w) + paddingLeft + this.f44957h.left;
                float f9 = this.f44983x;
                gradientDrawable.setBounds(i5, (int) f9, (int) ((paddingLeft + rect.right) - this.f44984y), (int) (f9 + this.f44975t));
                this.f44959j.setCornerRadius(this.f44979v);
                this.f44959j.draw(canvas);
            }
        } else if (this.f44975t > 0.0f) {
            this.f44959j.setColor(this.f44973s);
            if (this.A == 80) {
                GradientDrawable gradientDrawable2 = this.f44959j;
                Rect rect3 = this.f44957h;
                float f10 = this.f44985z;
                gradientDrawable2.setBounds(((int) this.f44981w) + paddingLeft + rect3.left, (height - ((int) this.f44975t)) - ((int) f10), (paddingLeft + rect3.right) - ((int) this.f44984y), height - ((int) f10));
            } else {
                GradientDrawable gradientDrawable3 = this.f44959j;
                Rect rect4 = this.f44957h;
                int i6 = ((int) this.f44981w) + paddingLeft + rect4.left;
                float f11 = this.f44983x;
                gradientDrawable3.setBounds(i6, (int) f11, (paddingLeft + rect4.right) - ((int) this.f44984y), ((int) this.f44975t) + ((int) f11));
            }
            this.f44959j.setCornerRadius(this.f44979v);
            this.f44959j.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        this.f44954e = i2;
        this.f44955f = f4;
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
            this.f44954e = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f44954e != 0 && this.f44953d.getChildCount() > 0) {
                s(this.f44954e);
                o();
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f44954e);
        return bundle;
    }

    public void p(int i2) {
        int i4 = this.f44956g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        q(i2, 0);
    }

    public void q(int i2, int i4) {
        int i5 = this.f44956g;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        MsgView msgView = (MsgView) this.f44953d.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            x0.b.b(msgView, i4);
            if (this.f44980v0.get(i2) == null || !this.f44980v0.get(i2).booleanValue()) {
                setMsgMargin(i2, 4.0f, 2.0f);
                this.f44980v0.put(i2, Boolean.TRUE);
            }
        }
    }

    protected int r(float f4) {
        return (int) ((f4 * this.f44950a.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int i2) {
        this.f44954e = i2;
        this.f44951b.setCurrentItem(i2);
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
        this.f44973s = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.f44979v = h(f4);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.A = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f4) {
        this.f44975t = h(f4);
        invalidate();
    }

    public void setIndicatorMargin(float f4, float f5, float f6, float f7) {
        this.f44981w = h(f4);
        this.f44983x = h(f5);
        this.f44984y = h(f6);
        this.f44985z = h(f7);
        invalidate();
    }

    public void setIndicatorStyle(int i2) {
        this.f44965o = i2;
        invalidate();
    }

    public void setIndicatorWidth(float f4) {
        this.f44977u = h(f4);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z3) {
        this.B = z3;
        invalidate();
    }

    public void setMsgMargin(int i2, float f4, float f5) {
        float f6;
        int i4 = this.f44956g;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        View childAt = this.f44953d.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            this.f44978u0.setTextSize(this.I);
            float measureText = this.f44978u0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString());
            float descent = this.f44978u0.descent() - this.f44978u0.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f7 = this.f44971r;
            if (f7 >= 0.0f) {
                f6 = f7 / 2.0f;
                measureText /= 2.0f;
            } else {
                f6 = this.f44967p;
            }
            marginLayoutParams.leftMargin = (int) (f6 + measureText + h(f4));
            int i5 = this.f44970q0;
            marginLayoutParams.topMargin = i5 > 0 ? (((int) (i5 - descent)) / 2) - h(f5) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(w0.b bVar) {
        this.f44982w0 = bVar;
    }

    public void setSnapOnTabClick(boolean z3) {
        this.f44972r0 = z3;
    }

    public void setTabPadding(float f4) {
        this.f44967p = h(f4);
        t();
    }

    public void setTabSpaceEqual(boolean z3) {
        this.f44969q = z3;
        t();
    }

    public void setTabWidth(float f4) {
        this.f44971r = h(f4);
        t();
    }

    public void setTextAllCaps(boolean z3) {
        this.f44966o0 = z3;
        t();
    }

    public void setTextBold(int i2) {
        this.f44964n0 = i2;
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
            this.f44951b = viewPager;
            viewPager.removeOnPageChangeListener(this);
            this.f44951b.addOnPageChangeListener(this);
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public BtReginSlidinTablayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BtReginSlidinTablayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44957h = new Rect();
        this.f44958i = new Rect();
        this.f44959j = new GradientDrawable();
        this.f44960k = new Paint(1);
        this.f44961l = new Paint(1);
        this.f44962m = new Paint(1);
        this.f44963n = new Path();
        this.f44965o = 0;
        this.f44974s0 = 0;
        this.f44978u0 = new Paint(1);
        this.f44980v0 = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f44950a = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f44953d = linearLayout;
        addView(linearLayout);
        n(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals("-1") || attributeValue.equals("-2")) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
        this.f44970q0 = obtainStyledAttributes.getDimensionPixelSize(0, -2);
        obtainStyledAttributes.recycle();
    }

    public void setCurrentTab(int i2, boolean z3) {
        this.f44954e = i2;
        this.f44951b.setCurrentItem(i2, z3);
    }

    public void setViewPager(ViewPager viewPager, String[] strArr) {
        if (viewPager != null && viewPager.getAdapter() != null) {
            if (strArr != null && strArr.length != 0) {
                if (strArr.length == viewPager.getAdapter().getCount()) {
                    this.f44951b = viewPager;
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.f44952c = arrayList;
                    Collections.addAll(arrayList, strArr);
                    this.f44951b.removeOnPageChangeListener(this);
                    this.f44951b.addOnPageChangeListener(this);
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
                this.f44951b = viewPager;
                viewPager.setAdapter(new b(fragmentActivity.getSupportFragmentManager(), arrayList, strArr));
                this.f44951b.removeOnPageChangeListener(this);
                this.f44951b.addOnPageChangeListener(this);
                notifyDataSetChanged();
                return;
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager can not be NULL !");
    }
}
