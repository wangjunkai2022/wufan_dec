package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class BaseMenuWrapper {

    /* renamed from: a  reason: collision with root package name */
    final Context f564a;

    /* renamed from: b  reason: collision with root package name */
    private SimpleArrayMap<SupportMenuItem, MenuItem> f565b;

    /* renamed from: c  reason: collision with root package name */
    private SimpleArrayMap<SupportSubMenu, SubMenu> f566c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseMenuWrapper(Context context) {
        this.f564a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
            if (this.f565b == null) {
                this.f565b = new SimpleArrayMap<>();
            }
            MenuItem menuItem2 = this.f565b.get(menuItem);
            if (menuItem2 == null) {
                MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.f564a, supportMenuItem);
                this.f565b.put(supportMenuItem, menuItemWrapperICS);
                return menuItemWrapperICS;
            }
            return menuItem2;
        }
        return menuItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu b(SubMenu subMenu) {
        if (subMenu instanceof SupportSubMenu) {
            SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
            if (this.f566c == null) {
                this.f566c = new SimpleArrayMap<>();
            }
            SubMenu subMenu2 = this.f566c.get(supportSubMenu);
            if (subMenu2 == null) {
                SubMenuWrapperICS subMenuWrapperICS = new SubMenuWrapperICS(this.f564a, supportSubMenu);
                this.f566c.put(supportSubMenu, subMenuWrapperICS);
                return subMenuWrapperICS;
            }
            return subMenu2;
        }
        return subMenu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        SimpleArrayMap<SupportMenuItem, MenuItem> simpleArrayMap = this.f565b;
        if (simpleArrayMap != null) {
            simpleArrayMap.clear();
        }
        SimpleArrayMap<SupportSubMenu, SubMenu> simpleArrayMap2 = this.f566c;
        if (simpleArrayMap2 != null) {
            simpleArrayMap2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(int i2) {
        if (this.f565b == null) {
            return;
        }
        int i4 = 0;
        while (i4 < this.f565b.size()) {
            if (this.f565b.keyAt(i4).getGroupId() == i2) {
                this.f565b.removeAt(i4);
                i4--;
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(int i2) {
        if (this.f565b == null) {
            return;
        }
        for (int i4 = 0; i4 < this.f565b.size(); i4++) {
            if (this.f565b.keyAt(i4).getItemId() == i2) {
                this.f565b.removeAt(i4);
                return;
            }
        }
    }
}
