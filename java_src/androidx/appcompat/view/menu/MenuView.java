package androidx.appcompat.view.menu;

import android.graphics.drawable.Drawable;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public interface MenuView {

    /* loaded from: classes.dex */
    public interface ItemView {
        MenuItemImpl getItemData();

        void initialize(MenuItemImpl menuItemImpl, int i2);

        boolean prefersCondensedTitle();

        void setCheckable(boolean z3);

        void setChecked(boolean z3);

        void setEnabled(boolean z3);

        void setIcon(Drawable drawable);

        void setShortcut(boolean z3, char c4);

        void setTitle(CharSequence charSequence);

        boolean showsIcon();
    }

    int getWindowAnimations();

    void initialize(MenuBuilder menuBuilder);
}
