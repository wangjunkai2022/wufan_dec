package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuItemWrapperICS extends BaseMenuWrapper implements MenuItem {

    /* renamed from: f  reason: collision with root package name */
    static final String f696f = "MenuItemWrapper";

    /* renamed from: d  reason: collision with root package name */
    private final SupportMenuItem f697d;

    /* renamed from: e  reason: collision with root package name */
    private Method f698e;

    /* loaded from: classes.dex */
    private class ActionProviderWrapper extends ActionProvider {

        /* renamed from: e  reason: collision with root package name */
        final android.view.ActionProvider f699e;

        ActionProviderWrapper(Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.f699e = actionProvider;
        }

        @Override // androidx.core.view.ActionProvider
        public boolean hasSubMenu() {
            return this.f699e.hasSubMenu();
        }

        @Override // androidx.core.view.ActionProvider
        public View onCreateActionView() {
            return this.f699e.onCreateActionView();
        }

        @Override // androidx.core.view.ActionProvider
        public boolean onPerformDefaultAction() {
            return this.f699e.onPerformDefaultAction();
        }

        @Override // androidx.core.view.ActionProvider
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.f699e.onPrepareSubMenu(MenuItemWrapperICS.this.b(subMenu));
        }
    }

    @RequiresApi(16)
    /* loaded from: classes.dex */
    private class ActionProviderWrapperJB extends ActionProviderWrapper implements ActionProvider.VisibilityListener {

        /* renamed from: g  reason: collision with root package name */
        private ActionProvider.VisibilityListener f701g;

        ActionProviderWrapperJB(Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.view.ActionProvider
        public boolean isVisible() {
            return this.f699e.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z3) {
            ActionProvider.VisibilityListener visibilityListener = this.f701g;
            if (visibilityListener != null) {
                visibilityListener.onActionProviderVisibilityChanged(z3);
            }
        }

        @Override // androidx.core.view.ActionProvider
        public View onCreateActionView(MenuItem menuItem) {
            return this.f699e.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.ActionProvider
        public boolean overridesItemVisibility() {
            return this.f699e.overridesItemVisibility();
        }

        @Override // androidx.core.view.ActionProvider
        public void refreshVisibility() {
            this.f699e.refreshVisibility();
        }

        @Override // androidx.core.view.ActionProvider
        public void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
            this.f701g = visibilityListener;
            this.f699e.setVisibilityListener(visibilityListener != null ? this : null);
        }
    }

    /* loaded from: classes.dex */
    static class CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {

        /* renamed from: a  reason: collision with root package name */
        final android.view.CollapsibleActionView f703a;

        CollapsibleActionViewWrapper(View view) {
            super(view.getContext());
            this.f703a = (android.view.CollapsibleActionView) view;
            addView(view);
        }

        View a() {
            return (View) this.f703a;
        }

        @Override // androidx.appcompat.view.CollapsibleActionView
        public void onActionViewCollapsed() {
            this.f703a.onActionViewCollapsed();
        }

        @Override // androidx.appcompat.view.CollapsibleActionView
        public void onActionViewExpanded() {
            this.f703a.onActionViewExpanded();
        }
    }

    /* loaded from: classes.dex */
    private class OnActionExpandListenerWrapper implements MenuItem.OnActionExpandListener {

        /* renamed from: a  reason: collision with root package name */
        private final MenuItem.OnActionExpandListener f704a;

        OnActionExpandListenerWrapper(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f704a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f704a.onMenuItemActionCollapse(MenuItemWrapperICS.this.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f704a.onMenuItemActionExpand(MenuItemWrapperICS.this.a(menuItem));
        }
    }

    /* loaded from: classes.dex */
    private class OnMenuItemClickListenerWrapper implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final MenuItem.OnMenuItemClickListener f706a;

        OnMenuItemClickListenerWrapper(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f706a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f706a.onMenuItemClick(MenuItemWrapperICS.this.a(menuItem));
        }
    }

    public MenuItemWrapperICS(Context context, SupportMenuItem supportMenuItem) {
        super(context);
        if (supportMenuItem != null) {
            this.f697d = supportMenuItem;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f697d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f697d.expandActionView();
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        androidx.core.view.ActionProvider supportActionProvider = this.f697d.getSupportActionProvider();
        if (supportActionProvider instanceof ActionProviderWrapper) {
            return ((ActionProviderWrapper) supportActionProvider).f699e;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f697d.getActionView();
        return actionView instanceof CollapsibleActionViewWrapper ? ((CollapsibleActionViewWrapper) actionView).a() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f697d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f697d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f697d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f697d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f697d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f697d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f697d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f697d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f697d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f697d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f697d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f697d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f697d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return b(this.f697d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f697d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f697d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f697d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f697d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f697d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f697d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f697d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f697d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f697d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        androidx.core.view.ActionProvider actionProviderWrapper;
        if (Build.VERSION.SDK_INT >= 16) {
            actionProviderWrapper = new ActionProviderWrapperJB(this.f564a, actionProvider);
        } else {
            actionProviderWrapper = new ActionProviderWrapper(this.f564a, actionProvider);
        }
        SupportMenuItem supportMenuItem = this.f697d;
        if (actionProvider == null) {
            actionProviderWrapper = null;
        }
        supportMenuItem.setSupportActionProvider(actionProviderWrapper);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof android.view.CollapsibleActionView) {
            view = new CollapsibleActionViewWrapper(view);
        }
        this.f697d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c4) {
        this.f697d.setAlphabeticShortcut(c4);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z3) {
        this.f697d.setCheckable(z3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z3) {
        this.f697d.setChecked(z3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f697d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z3) {
        this.f697d.setEnabled(z3);
        return this;
    }

    public void setExclusiveCheckable(boolean z3) {
        try {
            if (this.f698e == null) {
                this.f698e = this.f697d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f698e.invoke(this.f697d, Boolean.valueOf(z3));
        } catch (Exception unused) {
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f697d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f697d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f697d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f697d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c4) {
        this.f697d.setNumericShortcut(c4);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f697d.setOnActionExpandListener(onActionExpandListener != null ? new OnActionExpandListenerWrapper(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f697d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new OnMenuItemClickListenerWrapper(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c4, char c5) {
        this.f697d.setShortcut(c4, c5);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i2) {
        this.f697d.setShowAsAction(i2);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i2) {
        this.f697d.setShowAsActionFlags(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f697d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f697d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f697d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z3) {
        return this.f697d.setVisible(z3);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c4, int i2) {
        this.f697d.setAlphabeticShortcut(c4, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f697d.setIcon(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c4, int i2) {
        this.f697d.setNumericShortcut(c4, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c4, char c5, int i2, int i4) {
        this.f697d.setShortcut(c4, c5, i2, i4);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        this.f697d.setTitle(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i2) {
        this.f697d.setActionView(i2);
        View actionView = this.f697d.getActionView();
        if (actionView instanceof android.view.CollapsibleActionView) {
            this.f697d.setActionView(new CollapsibleActionViewWrapper(actionView));
        }
        return this;
    }
}
