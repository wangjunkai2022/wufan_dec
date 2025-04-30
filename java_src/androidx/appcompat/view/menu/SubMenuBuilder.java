package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    private MenuBuilder F;
    private MenuItemImpl G;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.F = menuBuilder;
        this.G = menuItemImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean c(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        return super.c(menuBuilder, menuItem) || this.F.c(menuBuilder, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return this.F.collapseItemActionView(menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return this.F.expandItemActionView(menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public String getActionViewStatesKey() {
        MenuItemImpl menuItemImpl = this.G;
        int itemId = menuItemImpl != null ? menuItemImpl.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.getActionViewStatesKey() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.G;
    }

    public Menu getParentMenu() {
        return this.F;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public MenuBuilder getRootMenu() {
        return this.F.getRootMenu();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean isGroupDividerEnabled() {
        return this.F.isGroupDividerEnabled();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean isQwertyMode() {
        return this.F.isQwertyMode();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean isShortcutsVisible() {
        return this.F.isShortcutsVisible();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public void setCallback(MenuBuilder.Callback callback) {
        this.F.setCallback(callback);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, androidx.core.internal.view.SupportMenu, android.view.Menu
    public void setGroupDividerEnabled(boolean z3) {
        this.F.setGroupDividerEnabled(z3);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.r(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.u(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.v(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.G.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public void setQwertyMode(boolean z3) {
        this.F.setQwertyMode(z3);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public void setShortcutsVisible(boolean z3) {
        this.F.setShortcutsVisible(z3);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i2) {
        return (SubMenu) super.q(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i2) {
        return (SubMenu) super.t(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i2) {
        this.G.setIcon(i2);
        return this;
    }
}
