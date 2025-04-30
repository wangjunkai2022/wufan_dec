package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
/* compiled from: NavigationBarMenu.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class a extends MenuBuilder {
    @NonNull
    private final Class<?> F;
    private final int G;

    public a(@NonNull Context context, @NonNull Class<?> cls, int i2) {
        super(context);
        this.F = cls;
        this.G = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.MenuBuilder
    @NonNull
    public MenuItem a(int i2, int i4, int i5, @NonNull CharSequence charSequence) {
        if (size() + 1 <= this.G) {
            stopDispatchingItemsChanged();
            MenuItem a4 = super.a(i2, i4, i5, charSequence);
            if (a4 instanceof MenuItemImpl) {
                ((MenuItemImpl) a4).setExclusiveCheckable(true);
            }
            startDispatchingItemsChanged();
            return a4;
        }
        String simpleName = this.F.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.G + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i2, int i4, int i5, @NonNull CharSequence charSequence) {
        throw new UnsupportedOperationException(this.F.getSimpleName() + " does not support submenus");
    }

    public int x() {
        return this.G;
    }
}
