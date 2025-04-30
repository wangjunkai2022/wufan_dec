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
import com.flyco.tablayout.widget.MsgView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes3.dex */
public class SlidingTabLayoutNoViewPager extends HorizontalScrollView {
    private static final int A0 = 1;
    private static final int B0 = 2;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f46344w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f46345x0 = 1;

    /* renamed from: y0  reason: collision with root package name */
    private static final int f46346y0 = 2;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f46347z0 = 0;
    private boolean A;
    private int B;
    private float C;
    private int D;
    private int E;
    private float F;
    private float G;
    private float H;
    private int I;
    private int J;
    private int K;

    /* renamed from: a  reason: collision with root package name */
    private Context f46348a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<String> f46349b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f46350c;

    /* renamed from: d  reason: collision with root package name */
    private int f46351d;

    /* renamed from: e  reason: collision with root package name */
    private float f46352e;

    /* renamed from: f  reason: collision with root package name */
    private int f46353f;

    /* renamed from: g  reason: collision with root package name */
    private Rect f46354g;

    /* renamed from: h  reason: collision with root package name */
    private Rect f46355h;

    /* renamed from: i  reason: collision with root package name */
    private GradientDrawable f46356i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f46357j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f46358k;

    /* renamed from: l  reason: collision with root package name */
    private Paint f46359l;

    /* renamed from: m  reason: collision with root package name */
    private Path f46360m;

    /* renamed from: n  reason: collision with root package name */
    private int f46361n;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f46362n0;

    /* renamed from: o  reason: collision with root package name */
    private float f46363o;

    /* renamed from: o0  reason: collision with root package name */
    private int f46364o0;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46365p;

    /* renamed from: p0  reason: collision with root package name */
    private int f46366p0;

    /* renamed from: q  reason: collision with root package name */
    private float f46367q;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f46368q0;

    /* renamed from: r  reason: collision with root package name */
    private int f46369r;

    /* renamed from: r0  reason: collision with root package name */
    private int f46370r0;

    /* renamed from: s  reason: collision with root package name */
    private float f46371s;

    /* renamed from: s0  reason: collision with root package name */
    private float f46372s0;

    /* renamed from: t  reason: collision with root package name */
    private float f46373t;

    /* renamed from: t0  reason: collision with root package name */
    private Paint f46374t0;

    /* renamed from: u  reason: collision with root package name */
    private float f46375u;

    /* renamed from: u0  reason: collision with root package name */
    private SparseArray<Boolean> f46376u0;

    /* renamed from: v  reason: collision with root package name */
    private float f46377v;

    /* renamed from: v0  reason: collision with root package name */
    private w0.b f46378v0;

    /* renamed from: w  reason: collision with root package name */
    private float f46379w;

    /* renamed from: x  reason: collision with root package name */
    private float f46380x;

    /* renamed from: y  reason: collision with root package name */
    private float f46381y;

    /* renamed from: z  reason: collision with root package name */
    private int f46382z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int indexOfChild = SlidingTabLayoutNoViewPager.this.f46350c.indexOfChild(view);
            if (indexOfChild != -1) {
                if (SlidingTabLayoutNoViewPager.this.f46370r0 != indexOfChild) {
                    SlidingTabLayoutNoViewPager.this.f46370r0 = indexOfChild;
                    if (SlidingTabLayoutNoViewPager.this.f46378v0 != null) {
                        SlidingTabLayoutNoViewPager.this.f46378v0.onTabSelect(indexOfChild);
                        SlidingTabLayoutNoViewPager.this.u(indexOfChild);
                        SlidingTabLayoutNoViewPager.this.f46351d = indexOfChild;
                        SlidingTabLayoutNoViewPager.this.invalidate();
                        SlidingTabLayoutNoViewPager.this.o();
                    }
                } else if (SlidingTabLayoutNoViewPager.this.f46378v0 != null) {
                    SlidingTabLayoutNoViewPager.this.u(indexOfChild);
                    SlidingTabLayoutNoViewPager.this.f46351d = indexOfChild;
                    SlidingTabLayoutNoViewPager.this.invalidate();
                    SlidingTabLayoutNoViewPager.this.f46378v0.onTabReselect(indexOfChild);
                    SlidingTabLayoutNoViewPager.this.o();
                }
            }
        }
    }

    public SlidingTabLayoutNoViewPager(Context context) {
        this(context, null, 0);
    }

    private void g(int i2, String str, View view) {
        LinearLayout.LayoutParams layoutParams;
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (textView != null && str != null) {
            textView.setText(str);
        }
        view.setOnClickListener(new a());
        if (this.f46365p) {
            layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
        }
        if (this.f46367q > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f46367q, -1);
        }
        layoutParams.setMargins(getResources().getDimensionPixelOffset(R.dimen.wdp25), 0, 0, 0);
        this.f46350c.addView(view, i2, layoutParams);
    }

    private void h() {
        int i2;
        View childAt = this.f46350c.getChildAt(this.f46351d);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f46361n == 0 && this.A) {
            this.f46374t0.setTextSize(this.H);
            this.f46372s0 = ((right - left) - this.f46374t0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f;
        }
        int i4 = this.f46351d;
        if (i4 < this.f46353f - 1) {
            View childAt2 = this.f46350c.getChildAt(i4 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f4 = this.f46352e;
            left += (left2 - left) * f4;
            right += f4 * (right2 - right);
            if (this.f46361n == 0 && this.A) {
                this.f46374t0.setTextSize(this.H);
                float f5 = this.f46372s0;
                this.f46372s0 = f5 + (this.f46352e * ((((right2 - left2) - this.f46374t0.measureText(((TextView) childAt2.findViewById(R.id.tv_tab_title)).getText().toString())) / 2.0f) - f5));
            }
        }
        Rect rect = this.f46354g;
        int i5 = (int) left;
        rect.left = i5;
        int i6 = (int) right;
        rect.right = i6;
        if (this.f46361n == 0 && this.A) {
            float f6 = this.f46372s0;
            rect.left = (int) ((left + f6) - 1.0f);
            rect.right = (int) ((right - f6) - 1.0f);
        }
        Rect rect2 = this.f46355h;
        rect2.left = i5;
        rect2.right = i6;
        if (this.f46373t < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f46373t) / 2.0f);
        if (this.f46351d < this.f46353f - 1) {
            left3 += this.f46352e * ((childAt.getWidth() / 2) + (this.f46350c.getChildAt(i2 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f46354g;
        int i7 = (int) left3;
        rect3.left = i7;
        rect3.right = (int) (i7 + this.f46373t);
    }

    private void p(Context context, AttributeSet attributeSet) {
        float f4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.flyco.tablayout.R.styleable.SlidingTabLayout);
        int i2 = obtainStyledAttributes.getInt(11, 0);
        this.f46361n = i2;
        this.f46369r = obtainStyledAttributes.getColor(3, Color.parseColor(i2 == 2 ? "#4B6A87" : "#ffffff"));
        int i4 = this.f46361n;
        if (i4 == 1) {
            f4 = 4.0f;
        } else {
            f4 = i4 == 2 ? -1 : 2;
        }
        this.f46371s = obtainStyledAttributes.getDimension(6, i(f4));
        this.f46373t = obtainStyledAttributes.getDimension(12, i(this.f46361n == 1 ? 10.0f : -1.0f));
        this.f46375u = obtainStyledAttributes.getDimension(4, i(this.f46361n == 2 ? -1.0f : 0.0f));
        this.f46377v = obtainStyledAttributes.getDimension(8, i(0.0f));
        this.f46379w = obtainStyledAttributes.getDimension(10, i(this.f46361n == 2 ? 7.0f : 0.0f));
        this.f46380x = obtainStyledAttributes.getDimension(9, i(0.0f));
        this.f46381y = obtainStyledAttributes.getDimension(7, i(this.f46361n != 2 ? 0.0f : 7.0f));
        this.f46382z = obtainStyledAttributes.getInt(5, 80);
        this.A = obtainStyledAttributes.getBoolean(13, false);
        this.B = obtainStyledAttributes.getColor(22, Color.parseColor("#ffffff"));
        this.C = obtainStyledAttributes.getDimension(24, i(0.0f));
        this.D = obtainStyledAttributes.getInt(23, 80);
        this.E = obtainStyledAttributes.getColor(0, Color.parseColor("#ffffff"));
        this.F = obtainStyledAttributes.getDimension(2, i(0.0f));
        this.G = obtainStyledAttributes.getDimension(1, i(12.0f));
        this.H = obtainStyledAttributes.getDimension(21, t(14.0f));
        this.I = obtainStyledAttributes.getColor(19, Color.parseColor("#ffffff"));
        this.J = obtainStyledAttributes.getColor(20, Color.parseColor("#AAffffff"));
        this.K = obtainStyledAttributes.getInt(18, 0);
        this.f46362n0 = obtainStyledAttributes.getBoolean(17, false);
        this.f46365p = obtainStyledAttributes.getBoolean(15, false);
        float dimension = obtainStyledAttributes.getDimension(16, i(-1.0f));
        this.f46367q = dimension;
        this.f46363o = obtainStyledAttributes.getDimension(14, (this.f46365p || dimension > 0.0f) ? i(0.0f) : i(20.0f));
        obtainStyledAttributes.recycle();
    }

    private void q() {
        if (this.f46353f <= 0) {
            return;
        }
        int left = (this.f46350c.getChildAt(this.f46351d).getLeft() + 0) - getResources().getDimensionPixelOffset(R.dimen.wdp25);
        if (this.f46351d > 0) {
            int width = left - ((getWidth() / 2) - getPaddingLeft());
            h();
            Rect rect = this.f46355h;
            left = width + ((rect.right - rect.left) / 2);
        }
        if (left != this.f46364o0) {
            this.f46364o0 = left;
            scrollTo(left, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(int i2) {
        int i4 = 0;
        while (i4 < this.f46353f) {
            View childAt = this.f46350c.getChildAt(i4);
            boolean z3 = i4 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z3 ? this.I : this.J);
                if (this.K == 1) {
                    textView.getPaint().setFakeBoldText(z3);
                }
            }
            i4++;
        }
    }

    private void v() {
        int i2 = 0;
        while (i2 < this.f46353f) {
            TextView textView = (TextView) this.f46350c.getChildAt(i2).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i2 == this.f46351d ? this.I : this.J);
                textView.setTextSize(0, this.H);
                float f4 = this.f46363o;
                textView.setPadding((int) f4, 0, (int) f4, 0);
                if (this.f46362n0) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i4 = this.K;
                if (i4 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i4 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
                if (i2 == this.f46370r0) {
                    textView.setSelected(true);
                } else {
                    textView.setSelected(false);
                }
            }
            i2++;
        }
    }

    public int getCurrentTab() {
        return this.f46351d;
    }

    public int getDividerColor() {
        return this.E;
    }

    public float getDividerPadding() {
        return this.G;
    }

    public float getDividerWidth() {
        return this.F;
    }

    public int getIndicatorColor() {
        return this.f46369r;
    }

    public float getIndicatorCornerRadius() {
        return this.f46375u;
    }

    public float getIndicatorHeight() {
        return this.f46371s;
    }

    public float getIndicatorMarginBottom() {
        return this.f46381y;
    }

    public float getIndicatorMarginLeft() {
        return this.f46377v;
    }

    public float getIndicatorMarginRight() {
        return this.f46380x;
    }

    public float getIndicatorMarginTop() {
        return this.f46379w;
    }

    public int getIndicatorStyle() {
        return this.f46361n;
    }

    public float getIndicatorWidth() {
        return this.f46373t;
    }

    public String getSelectTabName() {
        ArrayList<String> arrayList = this.f46349b;
        if (arrayList != null) {
            int size = arrayList.size();
            int i2 = this.f46370r0;
            return size > i2 ? this.f46349b.get(i2) : "";
        }
        return "";
    }

    public int getTabCount() {
        return this.f46353f;
    }

    public float getTabPadding() {
        return this.f46363o;
    }

    public float getTabWidth() {
        return this.f46367q;
    }

    public int getTextBold() {
        return this.K;
    }

    public int getTextSelectColor() {
        return this.I;
    }

    public int getTextUnselectColor() {
        return this.J;
    }

    public float getTextsize() {
        return this.H;
    }

    public int getUnderlineColor() {
        return this.B;
    }

    public float getUnderlineHeight() {
        return this.C;
    }

    protected int i(float f4) {
        return (int) ((f4 * this.f46348a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView j(int i2) {
        int i4 = this.f46353f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        return (MsgView) this.f46350c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    public TextView k(int i2) {
        return (TextView) this.f46350c.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    public void l(int i2) {
        int i4 = this.f46353f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f46350c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean m() {
        return this.f46365p;
    }

    public boolean n() {
        return this.f46362n0;
    }

    public void o() {
        this.f46350c.removeAllViews();
        this.f46353f = this.f46349b.size();
        for (int i2 = 0; i2 < this.f46353f; i2++) {
            g(i2, this.f46349b.get(i2).toString(), View.inflate(this.f46348a, R.layout.tab_item_layout, null));
        }
        v();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (isInEditMode() || this.f46353f <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f4 = this.F;
        if (f4 > 0.0f) {
            this.f46358k.setStrokeWidth(f4);
            this.f46358k.setColor(this.E);
            for (int i2 = 0; i2 < this.f46353f - 1; i2++) {
                View childAt = this.f46350c.getChildAt(i2);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.G, childAt.getRight() + paddingLeft, height - this.G, this.f46358k);
            }
        }
        if (this.C > 0.0f) {
            this.f46357j.setColor(this.B);
            if (this.D == 80) {
                float f5 = height;
                canvas.drawRect(paddingLeft, f5 - this.C, this.f46350c.getWidth() + paddingLeft, f5, this.f46357j);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f46350c.getWidth() + paddingLeft, this.C, this.f46357j);
            }
        }
        h();
        int i4 = this.f46361n;
        if (i4 == 1) {
            if (this.f46371s > 0.0f) {
                this.f46359l.setColor(this.f46369r);
                this.f46360m.reset();
                float f6 = height;
                this.f46360m.moveTo(this.f46354g.left + paddingLeft, f6);
                Path path = this.f46360m;
                Rect rect2 = this.f46354g;
                path.lineTo((rect2.left / 2) + paddingLeft + (rect2.right / 2), f6 - this.f46371s);
                this.f46360m.lineTo(paddingLeft + this.f46354g.right, f6);
                this.f46360m.close();
                canvas.drawPath(this.f46360m, this.f46359l);
            }
        } else if (i4 == 2) {
            if (this.f46371s < 0.0f) {
                this.f46371s = (height - this.f46379w) - this.f46381y;
            }
            float f7 = this.f46371s;
            if (f7 > 0.0f) {
                float f8 = this.f46375u;
                if (f8 < 0.0f || f8 > f7 / 2.0f) {
                    this.f46375u = f7 / 2.0f;
                }
                this.f46356i.setColor(this.f46369r);
                GradientDrawable gradientDrawable = this.f46356i;
                int i5 = ((int) this.f46377v) + paddingLeft + this.f46354g.left;
                float f9 = this.f46379w;
                gradientDrawable.setBounds(i5, (int) f9, (int) ((paddingLeft + rect.right) - this.f46380x), (int) (f9 + this.f46371s));
                this.f46356i.setCornerRadius(this.f46375u);
                this.f46356i.draw(canvas);
            }
        } else if (this.f46371s > 0.0f) {
            this.f46356i.setColor(this.f46369r);
            if (this.f46382z == 80) {
                GradientDrawable gradientDrawable2 = this.f46356i;
                Rect rect3 = this.f46354g;
                float f10 = this.f46381y;
                gradientDrawable2.setBounds(((int) this.f46377v) + paddingLeft + rect3.left, (height - ((int) this.f46371s)) - ((int) f10), (paddingLeft + rect3.right) - ((int) this.f46380x), height - ((int) f10));
            } else {
                GradientDrawable gradientDrawable3 = this.f46356i;
                Rect rect4 = this.f46354g;
                int i6 = ((int) this.f46377v) + paddingLeft + rect4.left;
                float f11 = this.f46379w;
                gradientDrawable3.setBounds(i6, (int) f11, (paddingLeft + rect4.right) - ((int) this.f46380x), ((int) this.f46371s) + ((int) f11));
            }
            this.f46356i.setCornerRadius(this.f46375u);
            this.f46356i.draw(canvas);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f46351d = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f46351d != 0 && this.f46350c.getChildCount() > 0) {
                u(this.f46351d);
                q();
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f46351d);
        return bundle;
    }

    public void r(int i2) {
        int i4 = this.f46353f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        s(i2, 0);
    }

    public void s(int i2, int i4) {
        int i5 = this.f46353f;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        MsgView msgView = (MsgView) this.f46350c.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            x0.b.b(msgView, i4);
            if (this.f46376u0.get(i2) == null || !this.f46376u0.get(i2).booleanValue()) {
                setMsgMargin(i2, 4.0f, 2.0f);
                this.f46376u0.put(i2, Boolean.TRUE);
            }
        }
    }

    public void setDividerColor(int i2) {
        this.E = i2;
        invalidate();
    }

    public void setDividerPadding(float f4) {
        this.G = i(f4);
        invalidate();
    }

    public void setDividerWidth(float f4) {
        this.F = i(f4);
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.f46369r = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f4) {
        this.f46375u = i(f4);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.f46382z = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f4) {
        this.f46371s = i(f4);
        invalidate();
    }

    public void setIndicatorMargin(float f4, float f5, float f6, float f7) {
        this.f46377v = i(f4);
        this.f46379w = i(f5);
        this.f46380x = i(f6);
        this.f46381y = i(f7);
        invalidate();
    }

    public void setIndicatorStyle(int i2) {
        this.f46361n = i2;
        invalidate();
    }

    public void setIndicatorWidth(float f4) {
        this.f46373t = i(f4);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z3) {
        this.A = z3;
        invalidate();
    }

    public void setItemSelected(int i2) {
        if (i2 != -1) {
            if (this.f46370r0 != i2) {
                this.f46370r0 = i2;
                w0.b bVar = this.f46378v0;
                if (bVar != null) {
                    bVar.onTabSelect(i2);
                    u(i2);
                    this.f46351d = i2;
                    this.f46352e = i2;
                    invalidate();
                    q();
                    o();
                    return;
                }
                u(i2);
                this.f46351d = i2;
                this.f46352e = i2;
                invalidate();
                q();
                o();
            } else if (this.f46378v0 != null) {
                u(i2);
                this.f46351d = i2;
                this.f46352e = i2;
                q();
                invalidate();
                this.f46378v0.onTabReselect(i2);
                o();
            } else {
                u(i2);
                this.f46352e = i2;
                this.f46351d = i2;
                q();
                invalidate();
                o();
            }
        }
    }

    public void setMsgMargin(int i2, float f4, float f5) {
        float f6;
        int i4 = this.f46353f;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        View childAt = this.f46350c.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            this.f46374t0.setTextSize(this.H);
            float measureText = this.f46374t0.measureText(((TextView) childAt.findViewById(R.id.tv_tab_title)).getText().toString());
            float descent = this.f46374t0.descent() - this.f46374t0.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f7 = this.f46367q;
            if (f7 >= 0.0f) {
                f6 = f7 / 2.0f;
                measureText /= 2.0f;
            } else {
                f6 = this.f46363o;
            }
            marginLayoutParams.leftMargin = (int) (f6 + measureText + i(f4));
            int i5 = this.f46366p0;
            marginLayoutParams.topMargin = i5 > 0 ? (((int) (i5 - descent)) / 2) - i(f5) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(w0.b bVar) {
        this.f46378v0 = bVar;
    }

    public void setSnapOnTabClick(boolean z3) {
        this.f46368q0 = z3;
    }

    public void setTabPadding(float f4) {
        this.f46363o = i(f4);
        v();
    }

    public void setTabSpaceEqual(boolean z3) {
        this.f46365p = z3;
        v();
    }

    public void setTabWidth(float f4) {
        this.f46367q = i(f4);
        v();
    }

    public void setTextAllCaps(boolean z3) {
        this.f46362n0 = z3;
        v();
    }

    public void setTextBold(int i2) {
        this.K = i2;
        v();
    }

    public void setTextSelectColor(int i2) {
        this.I = i2;
        v();
    }

    public void setTextUnselectColor(int i2) {
        this.J = i2;
        v();
    }

    public void setTextsize(float f4) {
        this.H = t(f4);
        v();
    }

    public void setUnderlineColor(int i2) {
        this.B = i2;
        invalidate();
    }

    public void setUnderlineGravity(int i2) {
        this.D = i2;
        invalidate();
    }

    public void setUnderlineHeight(float f4) {
        this.C = i(f4);
        invalidate();
    }

    public void setmTitles(String[] strArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f46349b = arrayList;
        Collections.addAll(arrayList, strArr);
        o();
    }

    protected int t(float f4) {
        return (int) ((f4 * this.f46348a.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public SlidingTabLayoutNoViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayoutNoViewPager(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46354g = new Rect();
        this.f46355h = new Rect();
        this.f46356i = new GradientDrawable();
        this.f46357j = new Paint(1);
        this.f46358k = new Paint(1);
        this.f46359l = new Paint(1);
        this.f46360m = new Path();
        this.f46361n = 0;
        this.f46370r0 = 0;
        this.f46374t0 = new Paint(1);
        this.f46376u0 = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f46348a = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f46350c = linearLayout;
        addView(linearLayout);
        p(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals("-1") || attributeValue.equals("-2")) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
        this.f46366p0 = obtainStyledAttributes.getDimensionPixelSize(0, -2);
        obtainStyledAttributes.recycle();
    }
}
