package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f762a;

    /* renamed from: b  reason: collision with root package name */
    private View f763b;

    /* renamed from: c  reason: collision with root package name */
    private View f764c;

    /* renamed from: d  reason: collision with root package name */
    private View f765d;

    /* renamed from: e  reason: collision with root package name */
    Drawable f766e;

    /* renamed from: f  reason: collision with root package name */
    Drawable f767f;

    /* renamed from: g  reason: collision with root package name */
    Drawable f768g;

    /* renamed from: h  reason: collision with root package name */
    boolean f769h;

    /* renamed from: i  reason: collision with root package name */
    boolean f770i;

    /* renamed from: j  reason: collision with root package name */
    private int f771j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f766e;
        if (drawable != null && drawable.isStateful()) {
            this.f766e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f767f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f767f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f768g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f768g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f763b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f766e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f767f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f768g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f764c = findViewById(R.id.action_bar);
        this.f765d = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f762a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        Drawable drawable;
        super.onLayout(z3, i2, i4, i5, i6);
        View view = this.f763b;
        boolean z4 = true;
        boolean z5 = false;
        boolean z6 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            int i7 = ((FrameLayout.LayoutParams) view.getLayoutParams()).bottomMargin;
            view.layout(i2, (measuredHeight - view.getMeasuredHeight()) - i7, i5, measuredHeight - i7);
        }
        if (this.f769h) {
            Drawable drawable2 = this.f768g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z4 = false;
            }
        } else {
            if (this.f766e != null) {
                if (this.f764c.getVisibility() == 0) {
                    this.f766e.setBounds(this.f764c.getLeft(), this.f764c.getTop(), this.f764c.getRight(), this.f764c.getBottom());
                } else {
                    View view2 = this.f765d;
                    if (view2 != null && view2.getVisibility() == 0) {
                        this.f766e.setBounds(this.f765d.getLeft(), this.f765d.getTop(), this.f765d.getRight(), this.f765d.getBottom());
                    } else {
                        this.f766e.setBounds(0, 0, 0, 0);
                    }
                }
                z5 = true;
            }
            this.f770i = z6;
            if (!z6 || (drawable = this.f767f) == null) {
                z4 = z5;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z4) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        int a4;
        int i5;
        if (this.f764c == null && View.MeasureSpec.getMode(i4) == Integer.MIN_VALUE && (i5 = this.f771j) >= 0) {
            i4 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i4)), Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i4);
        if (this.f764c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i4);
        View view = this.f763b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (!b(this.f764c)) {
            a4 = a(this.f764c);
        } else {
            a4 = !b(this.f765d) ? a(this.f765d) : 0;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(a4 + a(this.f763b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i4) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f766e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f766e);
        }
        this.f766e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f764c;
            if (view != null) {
                this.f766e.setBounds(view.getLeft(), this.f764c.getTop(), this.f764c.getRight(), this.f764c.getBottom());
            }
        }
        boolean z3 = true;
        if (!this.f769h ? this.f766e != null || this.f767f != null : this.f768g != null) {
            z3 = false;
        }
        setWillNotDraw(z3);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f768g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f768g);
        }
        this.f768g = drawable;
        boolean z3 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f769h && (drawable2 = this.f768g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f769h ? !(this.f766e != null || this.f767f != null) : this.f768g == null) {
            z3 = true;
        }
        setWillNotDraw(z3);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f767f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f767f);
        }
        this.f767f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f770i && (drawable2 = this.f767f) != null) {
                drawable2.setBounds(this.f763b.getLeft(), this.f763b.getTop(), this.f763b.getRight(), this.f763b.getBottom());
            }
        }
        boolean z3 = true;
        if (!this.f769h ? this.f766e != null || this.f767f != null : this.f768g != null) {
            z3 = false;
        }
        setWillNotDraw(z3);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f763b;
        if (view != null) {
            removeView(view);
        }
        this.f763b = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z3) {
        this.f762a = z3;
        setDescendantFocusability(z3 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z3 = i2 == 0;
        Drawable drawable = this.f766e;
        if (drawable != null) {
            drawable.setVisible(z3, false);
        }
        Drawable drawable2 = this.f767f;
        if (drawable2 != null) {
            drawable2.setVisible(z3, false);
        }
        Drawable drawable3 = this.f768g;
        if (drawable3 != null) {
            drawable3.setVisible(z3, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f766e && !this.f769h) || (drawable == this.f767f && this.f770i) || ((drawable == this.f768g && this.f769h) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ViewCompat.setBackground(this, new ActionBarBackgroundDrawable(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.f766e = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.f767f = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.f771j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        boolean z3 = true;
        if (getId() == R.id.split_action_bar) {
            this.f769h = true;
            this.f768g = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f769h ? this.f766e != null || this.f767f != null : this.f768g != null) {
            z3 = false;
        }
        setWillNotDraw(z3);
    }
}
