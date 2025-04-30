package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder.ItemInvoker, MenuView {
    private static final String H = "ActionMenuView";
    static final int I = 56;
    static final int J = 4;
    private MenuPresenter.Callback A;
    MenuBuilder.Callback B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    OnMenuItemClickListener G;

    /* renamed from: v  reason: collision with root package name */
    private MenuBuilder f840v;

    /* renamed from: w  reason: collision with root package name */
    private Context f841w;

    /* renamed from: x  reason: collision with root package name */
    private int f842x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f843y;

    /* renamed from: z  reason: collision with root package name */
    private ActionMenuPresenter f844z;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z3) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        boolean f845a;
        @ViewDebug.ExportedProperty
        public int cellsUsed;
        @ViewDebug.ExportedProperty
        public boolean expandable;
        @ViewDebug.ExportedProperty
        public int extraPixels;
        @ViewDebug.ExportedProperty
        public boolean isOverflowButton;
        @ViewDebug.ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.isOverflowButton = false;
        }

        LayoutParams(int i2, int i4, boolean z3) {
            super(i2, i4);
            this.isOverflowButton = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MenuBuilderCallback implements MenuBuilder.Callback {
        MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            OnMenuItemClickListener onMenuItemClickListener = ActionMenuView.this.G;
            return onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            MenuBuilder.Callback callback = ActionMenuView.this.B;
            if (callback != null) {
                callback.onMenuModeChange(menuBuilder);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(View view, int i2, int i4, int i5, int i6) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i5) - i6, View.MeasureSpec.getMode(i5));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z3 = true;
        boolean z4 = actionMenuItemView != null && actionMenuItemView.hasText();
        int i7 = 2;
        if (i4 <= 0 || (z4 && i4 < 2)) {
            i7 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i4 * i2, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i8 = measuredWidth / i2;
            if (measuredWidth % i2 != 0) {
                i8++;
            }
            if (!z4 || i8 >= 2) {
                i7 = i8;
            }
        }
        layoutParams.expandable = (layoutParams.isOverflowButton || !z4) ? false : false;
        layoutParams.cellsUsed = i7;
        view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i7, 1073741824), makeMeasureSpec);
        return i7;
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [int, boolean] */
    private void y(int i2, int i4) {
        int i5;
        int i6;
        boolean z3;
        int i7;
        boolean z4;
        boolean z5;
        int i8;
        ?? r14;
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, paddingTop, -2);
        int i9 = size - paddingLeft;
        int i10 = this.E;
        int i11 = i9 / i10;
        int i12 = i9 % i10;
        if (i11 == 0) {
            setMeasuredDimension(i9, 0);
            return;
        }
        int i13 = i10 + (i12 / i11);
        int childCount = getChildCount();
        int i14 = 0;
        int i15 = 0;
        boolean z6 = false;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        long j4 = 0;
        while (i15 < childCount) {
            View childAt = getChildAt(i15);
            int i19 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z7 = childAt instanceof ActionMenuItemView;
                int i20 = i16 + 1;
                if (z7) {
                    int i21 = this.F;
                    i8 = i20;
                    r14 = 0;
                    childAt.setPadding(i21, 0, i21, 0);
                } else {
                    i8 = i20;
                    r14 = 0;
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.f845a = r14;
                layoutParams.extraPixels = r14;
                layoutParams.cellsUsed = r14;
                layoutParams.expandable = r14;
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = r14;
                ((LinearLayout.LayoutParams) layoutParams).rightMargin = r14;
                layoutParams.preventEdgeOffset = z7 && ((ActionMenuItemView) childAt).hasText();
                int x3 = x(childAt, i13, layoutParams.isOverflowButton ? 1 : i11, childMeasureSpec, paddingTop);
                i17 = Math.max(i17, x3);
                if (layoutParams.expandable) {
                    i18++;
                }
                if (layoutParams.isOverflowButton) {
                    z6 = true;
                }
                i11 -= x3;
                i14 = Math.max(i14, childAt.getMeasuredHeight());
                if (x3 == 1) {
                    j4 |= 1 << i15;
                    i14 = i14;
                }
                i16 = i8;
            }
            i15++;
            size2 = i19;
        }
        int i22 = size2;
        boolean z8 = z6 && i16 == 2;
        boolean z9 = false;
        while (i18 > 0 && i11 > 0) {
            int i23 = 0;
            int i24 = 0;
            int i25 = Integer.MAX_VALUE;
            long j5 = 0;
            while (i24 < childCount) {
                boolean z10 = z9;
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i24).getLayoutParams();
                int i26 = i14;
                if (layoutParams2.expandable) {
                    int i27 = layoutParams2.cellsUsed;
                    if (i27 < i25) {
                        j5 = 1 << i24;
                        i25 = i27;
                        i23 = 1;
                    } else if (i27 == i25) {
                        i23++;
                        j5 |= 1 << i24;
                    }
                }
                i24++;
                i14 = i26;
                z9 = z10;
            }
            z3 = z9;
            i7 = i14;
            j4 |= j5;
            if (i23 > i11) {
                i5 = mode;
                i6 = i9;
                break;
            }
            int i28 = i25 + 1;
            int i29 = 0;
            while (i29 < childCount) {
                View childAt2 = getChildAt(i29);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                int i30 = i9;
                int i31 = mode;
                long j6 = 1 << i29;
                if ((j5 & j6) == 0) {
                    if (layoutParams3.cellsUsed == i28) {
                        j4 |= j6;
                    }
                    z5 = z8;
                } else {
                    if (z8 && layoutParams3.preventEdgeOffset && i11 == 1) {
                        int i32 = this.F;
                        z5 = z8;
                        childAt2.setPadding(i32 + i13, 0, i32, 0);
                    } else {
                        z5 = z8;
                    }
                    layoutParams3.cellsUsed++;
                    layoutParams3.f845a = true;
                    i11--;
                }
                i29++;
                mode = i31;
                i9 = i30;
                z8 = z5;
            }
            i14 = i7;
            z9 = true;
        }
        i5 = mode;
        i6 = i9;
        z3 = z9;
        i7 = i14;
        boolean z11 = !z6 && i16 == 1;
        if (i11 <= 0 || j4 == 0 || (i11 >= i16 - 1 && !z11 && i17 <= 1)) {
            z4 = z3;
        } else {
            float bitCount = Long.bitCount(j4);
            if (!z11) {
                if ((j4 & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset) {
                    bitCount -= 0.5f;
                }
                int i33 = childCount - 1;
                if ((j4 & (1 << i33)) != 0 && !((LayoutParams) getChildAt(i33).getLayoutParams()).preventEdgeOffset) {
                    bitCount -= 0.5f;
                }
            }
            int i34 = bitCount > 0.0f ? (int) ((i11 * i13) / bitCount) : 0;
            z4 = z3;
            for (int i35 = 0; i35 < childCount; i35++) {
                if ((j4 & (1 << i35)) != 0) {
                    View childAt3 = getChildAt(i35);
                    LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams4.extraPixels = i34;
                        layoutParams4.f845a = true;
                        if (i35 == 0 && !layoutParams4.preventEdgeOffset) {
                            ((LinearLayout.LayoutParams) layoutParams4).leftMargin = (-i34) / 2;
                        }
                    } else if (layoutParams4.isOverflowButton) {
                        layoutParams4.extraPixels = i34;
                        layoutParams4.f845a = true;
                        ((LinearLayout.LayoutParams) layoutParams4).rightMargin = (-i34) / 2;
                    } else {
                        if (i35 != 0) {
                            ((LinearLayout.LayoutParams) layoutParams4).leftMargin = i34 / 2;
                        }
                        if (i35 != childCount - 1) {
                            ((LinearLayout.LayoutParams) layoutParams4).rightMargin = i34 / 2;
                        }
                    }
                    z4 = true;
                }
            }
        }
        if (z4) {
            for (int i36 = 0; i36 < childCount; i36++) {
                View childAt4 = getChildAt(i36);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.f845a) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams5.cellsUsed * i13) + layoutParams5.extraPixels, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i6, i5 != 1073741824 ? i7 : i22);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.f844z;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.dismissPopupMenus();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.f840v == null) {
            Context context = getContext();
            MenuBuilder menuBuilder = new MenuBuilder(context);
            this.f840v = menuBuilder;
            menuBuilder.setCallback(new MenuBuilderCallback());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f844z = actionMenuPresenter;
            actionMenuPresenter.setReserveOverflow(true);
            ActionMenuPresenter actionMenuPresenter2 = this.f844z;
            MenuPresenter.Callback callback = this.A;
            if (callback == null) {
                callback = new ActionMenuPresenterCallback();
            }
            actionMenuPresenter2.setCallback(callback);
            this.f840v.addMenuPresenter(this.f844z, this.f841w);
            this.f844z.setMenuView(this);
        }
        return this.f840v;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.f844z.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.f842x;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getWindowAnimations() {
        return 0;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f844z;
        return actionMenuPresenter != null && actionMenuPresenter.hideOverflowMenu();
    }

    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void initialize(MenuBuilder menuBuilder) {
        this.f840v = menuBuilder;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.f840v.performItemAction(menuItemImpl, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.f844z;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f844z;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowMenuShowing();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowReserved() {
        return this.f843y;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f844z;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.updateMenuView(false);
            if (this.f844z.isOverflowMenuShowing()) {
                this.f844z.hideOverflowMenu();
                this.f844z.showOverflowMenu();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int width;
        int i7;
        if (!this.C) {
            super.onLayout(z3, i2, i4, i5, i6);
            return;
        }
        int childCount = getChildCount();
        int i8 = (i6 - i4) / 2;
        int dividerWidth = getDividerWidth();
        int i9 = i5 - i2;
        int paddingRight = (i9 - getPaddingRight()) - getPaddingLeft();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isOverflowButton) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (w(i12)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (isLayoutRtl) {
                        i7 = getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        width = i7 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        i7 = width - measuredWidth;
                    }
                    int i13 = i8 - (measuredHeight / 2);
                    childAt.layout(i7, i13, width, measuredHeight + i13);
                    paddingRight -= measuredWidth;
                    i10 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin) + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    w(i12);
                    i11++;
                }
            }
        }
        if (childCount == 1 && i10 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i14 = (i9 / 2) - (measuredWidth2 / 2);
            int i15 = i8 - (measuredHeight2 / 2);
            childAt2.layout(i14, i15, measuredWidth2 + i14, measuredHeight2 + i15);
            return;
        }
        int i16 = i11 - (i10 ^ 1);
        int max = Math.max(0, i16 > 0 ? paddingRight / i16 : 0);
        if (isLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt3 = getChildAt(i17);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.isOverflowButton) {
                    int i18 = width2 - ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i19 = i8 - (measuredHeight3 / 2);
                    childAt3.layout(i18 - measuredWidth3, i19, i18, measuredHeight3 + i19);
                    width2 = i18 - ((measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt4 = getChildAt(i20);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.isOverflowButton) {
                int i21 = paddingLeft + ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i22 = i8 - (measuredHeight4 / 2);
                childAt4.layout(i21, i22, i21 + measuredWidth4, measuredHeight4 + i22);
                paddingLeft = i21 + measuredWidth4 + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + max;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i4) {
        MenuBuilder menuBuilder;
        boolean z3 = this.C;
        boolean z4 = View.MeasureSpec.getMode(i2) == 1073741824;
        this.C = z4;
        if (z3 != z4) {
            this.D = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.C && (menuBuilder = this.f840v) != null && size != this.D) {
            this.D = size;
            menuBuilder.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.C && childCount > 0) {
            y(i2, i4);
            return;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i5).getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams).rightMargin = 0;
            ((LinearLayout.LayoutParams) layoutParams).leftMargin = 0;
        }
        super.onMeasure(i2, i4);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MenuBuilder peekMenu() {
        return this.f840v;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setExpandedActionViewsExclusive(boolean z3) {
        this.f844z.setExpandedActionViewsExclusive(z3);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.A = callback;
        this.B = callback2;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.G = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.f844z.setOverflowIcon(drawable);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOverflowReserved(boolean z3) {
        this.f843y = z3;
    }

    public void setPopupTheme(@StyleRes int i2) {
        if (this.f842x != i2) {
            this.f842x = i2;
            if (i2 == 0) {
                this.f841w = getContext();
            } else {
                this.f841w = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f844z = actionMenuPresenter;
        actionMenuPresenter.setMenuView(this);
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f844z;
        return actionMenuPresenter != null && actionMenuPresenter.showOverflowMenu();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    /* renamed from: u */
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: v */
    public LayoutParams h(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (layoutParams != null) {
            if (layoutParams instanceof LayoutParams) {
                layoutParams2 = new LayoutParams((LayoutParams) layoutParams);
            } else {
                layoutParams2 = new LayoutParams(layoutParams);
            }
            if (((LinearLayout.LayoutParams) layoutParams2).gravity <= 0) {
                ((LinearLayout.LayoutParams) layoutParams2).gravity = 16;
            }
            return layoutParams2;
        }
        return generateDefaultLayoutParams();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    protected boolean w(int i2) {
        boolean z3 = false;
        if (i2 == 0) {
            return false;
        }
        View childAt = getChildAt(i2 - 1);
        View childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z3 = false | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i2 <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? z3 : z3 | ((ActionMenuChildView) childAt2).needsDividerBefore();
    }

    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f4 = context.getResources().getDisplayMetrics().density;
        this.E = (int) (56.0f * f4);
        this.F = (int) (f4 * 4.0f);
        this.f841w = context;
        this.f842x = 0;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
