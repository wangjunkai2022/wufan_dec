package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {

    /* renamed from: n0  reason: collision with root package name */
    private static final int[] f15052n0 = {16842912};
    private int B;
    private boolean C;
    boolean D;
    private final CheckedTextView E;
    private FrameLayout F;
    private MenuItemImpl G;
    private ColorStateList H;
    private boolean I;
    private Drawable J;
    private final AccessibilityDelegateCompat K;

    /* loaded from: classes2.dex */
    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.D);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.F == null) {
                this.F = (FrameLayout) ((ViewStub) findViewById(R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.F.removeAllViews();
            this.F.addView(view);
        }
    }

    private void u() {
        if (x()) {
            this.E.setVisibility(8);
            FrameLayout frameLayout = this.F;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.F.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.E.setVisibility(0);
        FrameLayout frameLayout2 = this.F;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.F.setLayoutParams(layoutParams2);
        }
    }

    @Nullable
    private StateListDrawable v() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(f15052n0, new ColorDrawable(typedValue.data));
            stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            return stateListDrawable;
        }
        return null;
    }

    private boolean x() {
        return this.G.getTitle() == null && this.G.getIcon() == null && this.G.getActionView() != null;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.G;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i2) {
        this.G = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, v());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        MenuItemImpl menuItemImpl = this.G;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.G.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f15052n0);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z3) {
        refreshDrawableState();
        if (this.D != z3) {
            this.D = z3;
            this.K.sendAccessibilityEvent(this.E, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z3) {
        refreshDrawableState();
        this.E.setChecked(z3);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, getPaddingTop(), i2, getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.I) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.H);
            }
            int i2 = this.B;
            drawable.setBounds(0, 0, i2, i2);
        } else if (this.C) {
            if (this.J == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), R.drawable.navigation_empty_icon, getContext().getTheme());
                this.J = drawable2;
                if (drawable2 != null) {
                    int i4 = this.B;
                    drawable2.setBounds(0, 0, i4, i4);
                }
            }
            drawable = this.J;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.E, drawable, null, null, null);
    }

    public void setIconPadding(int i2) {
        this.E.setCompoundDrawablePadding(i2);
    }

    public void setIconSize(@Dimension int i2) {
        this.B = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.H = colorStateList;
        this.I = colorStateList != null;
        MenuItemImpl menuItemImpl = this.G;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i2) {
        this.E.setMaxLines(i2);
    }

    public void setNeedsEmptyIcon(boolean z3) {
        this.C = z3;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z3, char c4) {
    }

    public void setTextAppearance(int i2) {
        TextViewCompat.setTextAppearance(this.E, i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.E.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.E.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void w() {
        FrameLayout frameLayout = this.F;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.E.setCompoundDrawables(null, null, null, null);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a aVar = new a();
        this.K = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R.id.design_menu_item_text);
        this.E = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, aVar);
    }
}
