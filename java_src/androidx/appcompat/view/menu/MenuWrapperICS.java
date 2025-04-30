package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuWrapperICS extends BaseMenuWrapper implements Menu {

    /* renamed from: d  reason: collision with root package name */
    private final SupportMenu f723d;

    public MenuWrapperICS(Context context, SupportMenu supportMenu) {
        super(context);
        if (supportMenu != null) {
            this.f723d = supportMenu;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(this.f723d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i4, int i5, ComponentName componentName, Intent[] intentArr, Intent intent, int i6, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f723d.addIntentOptions(i2, i4, i5, componentName, intentArr, intent, i6, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i7 = 0; i7 < length; i7++) {
                menuItemArr[i7] = a(menuItemArr2[i7]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return b(this.f723d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        c();
        this.f723d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f723d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        return a(this.f723d.findItem(i2));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return a(this.f723d.getItem(i2));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f723d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return this.f723d.isShortcutKey(i2, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i4) {
        return this.f723d.performIdentifierAction(i2, i4);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i4) {
        return this.f723d.performShortcut(i2, keyEvent, i4);
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        d(i2);
        this.f723d.removeGroup(i2);
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        e(i2);
        this.f723d.removeItem(i2);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z3, boolean z4) {
        this.f723d.setGroupCheckable(i2, z3, z4);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z3) {
        this.f723d.setGroupEnabled(i2, z3);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z3) {
        this.f723d.setGroupVisible(i2, z3);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z3) {
        this.f723d.setQwertyMode(z3);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f723d.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return a(this.f723d.add(i2));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return b(this.f723d.addSubMenu(i2));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i4, int i5, CharSequence charSequence) {
        return a(this.f723d.add(i2, i4, i5, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i4, int i5, CharSequence charSequence) {
        return b(this.f723d.addSubMenu(i2, i4, i5, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i4, int i5, int i6) {
        return a(this.f723d.add(i2, i4, i5, i6));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i4, int i5, int i6) {
        return b(this.f723d.addSubMenu(i2, i4, i5, i6));
    }
}
