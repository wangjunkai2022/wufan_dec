package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView {

    /* renamed from: j  reason: collision with root package name */
    private CharSequence f772j;

    /* renamed from: k  reason: collision with root package name */
    private CharSequence f773k;

    /* renamed from: l  reason: collision with root package name */
    private View f774l;

    /* renamed from: m  reason: collision with root package name */
    private View f775m;

    /* renamed from: n  reason: collision with root package name */
    private View f776n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayout f777o;

    /* renamed from: p  reason: collision with root package name */
    private TextView f778p;

    /* renamed from: q  reason: collision with root package name */
    private TextView f779q;

    /* renamed from: r  reason: collision with root package name */
    private int f780r;

    /* renamed from: s  reason: collision with root package name */
    private int f781s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f782t;

    /* renamed from: u  reason: collision with root package name */
    private int f783u;

    public ActionBarContextView(@NonNull Context context) {
        this(context, null);
    }

    private void f() {
        if (this.f777o == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f777o = linearLayout;
            this.f778p = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f779q = (TextView) this.f777o.findViewById(R.id.action_bar_subtitle);
            if (this.f780r != 0) {
                this.f778p.setTextAppearance(getContext(), this.f780r);
            }
            if (this.f781s != 0) {
                this.f779q.setTextAppearance(getContext(), this.f781s);
            }
        }
        this.f778p.setText(this.f772j);
        this.f779q.setText(this.f773k);
        boolean z3 = !TextUtils.isEmpty(this.f772j);
        boolean z4 = !TextUtils.isEmpty(this.f773k);
        int i2 = 0;
        this.f779q.setVisibility(z4 ? 0 : 8);
        LinearLayout linearLayout2 = this.f777o;
        if (!z3 && !z4) {
            i2 = 8;
        }
        linearLayout2.setVisibility(i2);
        if (this.f777o.getParent() == null) {
            addView(this.f777o);
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void animateToVisibility(int i2) {
        super.animateToVisibility(i2);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean canShowOverflowMenu() {
        return super.canShowOverflowMenu();
    }

    public void closeMode() {
        if (this.f774l == null) {
            killMode();
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void dismissPopupMenus() {
        super.dismissPopupMenus();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f773k;
    }

    public CharSequence getTitle() {
        return this.f772j;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.hideOverflowMenu();
        }
        return false;
    }

    public void initForMode(final ActionMode actionMode) {
        View view = this.f774l;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f783u, (ViewGroup) this, false);
            this.f774l = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f774l);
        }
        View findViewById = this.f774l.findViewById(R.id.action_mode_close_button);
        this.f775m = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                actionMode.finish();
            }
        });
        MenuBuilder menuBuilder = (MenuBuilder) actionMode.getMenu();
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.dismissPopupMenus();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f752d = actionMenuPresenter2;
        actionMenuPresenter2.setReserveOverflow(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        menuBuilder.addMenuPresenter(this.f752d, this.f750b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f752d.getMenuView(this);
        this.f751c = actionMenuView;
        ViewCompat.setBackground(actionMenuView, null);
        addView(this.f751c, layoutParams);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowMenuShowPending() {
        return super.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.isOverflowMenuShowing();
        }
        return false;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowReserved() {
        return super.isOverflowReserved();
    }

    public boolean isTitleOptional() {
        return this.f782t;
    }

    public void killMode() {
        removeAllViews();
        this.f776n = null;
        this.f751c = null;
        this.f752d = null;
        View view = this.f775m;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.hideOverflowMenu();
            this.f752d.hideSubMenus();
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingRight = isLayoutRtl ? (i5 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i6 - i4) - getPaddingTop()) - getPaddingBottom();
        View view = this.f774l;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f774l.getLayoutParams();
            int i7 = isLayoutRtl ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i8 = isLayoutRtl ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int d4 = AbsActionBarView.d(paddingRight, i7, isLayoutRtl);
            paddingRight = AbsActionBarView.d(d4 + e(this.f774l, d4, paddingTop, paddingTop2, isLayoutRtl), i8, isLayoutRtl);
        }
        int i9 = paddingRight;
        LinearLayout linearLayout = this.f777o;
        if (linearLayout != null && this.f776n == null && linearLayout.getVisibility() != 8) {
            i9 += e(this.f777o, i9, paddingTop, paddingTop2, isLayoutRtl);
        }
        int i10 = i9;
        View view2 = this.f776n;
        if (view2 != null) {
            e(view2, i10, paddingTop, paddingTop2, isLayoutRtl);
        }
        int paddingLeft = isLayoutRtl ? getPaddingLeft() : (i5 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.f751c;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !isLayoutRtl);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            if (View.MeasureSpec.getMode(i4) != 0) {
                int size = View.MeasureSpec.getSize(i2);
                int i5 = this.f753e;
                if (i5 <= 0) {
                    i5 = View.MeasureSpec.getSize(i4);
                }
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int i6 = i5 - paddingTop;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
                View view = this.f774l;
                if (view != null) {
                    int c4 = c(view, paddingLeft, makeMeasureSpec, 0);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f774l.getLayoutParams();
                    paddingLeft = c4 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                }
                ActionMenuView actionMenuView = this.f751c;
                if (actionMenuView != null && actionMenuView.getParent() == this) {
                    paddingLeft = c(this.f751c, paddingLeft, makeMeasureSpec, 0);
                }
                LinearLayout linearLayout = this.f777o;
                if (linearLayout != null && this.f776n == null) {
                    if (this.f782t) {
                        this.f777o.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f777o.getMeasuredWidth();
                        boolean z3 = measuredWidth <= paddingLeft;
                        if (z3) {
                            paddingLeft -= measuredWidth;
                        }
                        this.f777o.setVisibility(z3 ? 0 : 8);
                    } else {
                        paddingLeft = c(linearLayout, paddingLeft, makeMeasureSpec, 0);
                    }
                }
                View view2 = this.f776n;
                if (view2 != null) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    int i7 = layoutParams.width;
                    int i8 = i7 != -2 ? 1073741824 : Integer.MIN_VALUE;
                    if (i7 >= 0) {
                        paddingLeft = Math.min(i7, paddingLeft);
                    }
                    int i9 = layoutParams.height;
                    int i10 = i9 == -2 ? Integer.MIN_VALUE : 1073741824;
                    if (i9 >= 0) {
                        i6 = Math.min(i9, i6);
                    }
                    this.f776n.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i8), View.MeasureSpec.makeMeasureSpec(i6, i10));
                }
                if (this.f753e <= 0) {
                    int childCount = getChildCount();
                    int i11 = 0;
                    for (int i12 = 0; i12 < childCount; i12++) {
                        int measuredHeight = getChildAt(i12).getMeasuredHeight() + paddingTop;
                        if (measuredHeight > i11) {
                            i11 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i11);
                    return;
                }
                setMeasuredDimension(size, i5);
                return;
            }
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void postShowOverflowMenu() {
        super.postShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i2) {
        this.f753e = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f776n;
        if (view2 != null) {
            removeView(view2);
        }
        this.f776n = view;
        if (view != null && (linearLayout = this.f777o) != null) {
            removeView(linearLayout);
            this.f777o = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f773k = charSequence;
        f();
    }

    public void setTitle(CharSequence charSequence) {
        this.f772j = charSequence;
        f();
        ViewCompat.setAccessibilityPaneTitle(this, charSequence);
    }

    public void setTitleOptional(boolean z3) {
        if (z3 != this.f782t) {
            requestLayout();
        }
        this.f782t = z3;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i2, long j4) {
        return super.setupAnimatorToVisibility(i2, j4);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.showOverflowMenu();
        }
        return false;
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.ActionMode, i2, 0);
        ViewCompat.setBackground(this, obtainStyledAttributes.getDrawable(R.styleable.ActionMode_background));
        this.f780r = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
        this.f781s = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
        this.f753e = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionMode_height, 0);
        this.f783u = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }
}
