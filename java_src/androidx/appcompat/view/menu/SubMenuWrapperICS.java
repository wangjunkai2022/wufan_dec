package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportSubMenu;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SubMenuWrapperICS extends MenuWrapperICS implements SubMenu {

    /* renamed from: e  reason: collision with root package name */
    private final SupportSubMenu f747e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubMenuWrapperICS(Context context, SupportSubMenu supportSubMenu) {
        super(context, supportSubMenu);
        this.f747e = supportSubMenu;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f747e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return a(this.f747e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i2) {
        this.f747e.setHeaderIcon(i2);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i2) {
        this.f747e.setHeaderTitle(i2);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f747e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i2) {
        this.f747e.setIcon(i2);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f747e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f747e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f747e.setIcon(drawable);
        return this;
    }
}
