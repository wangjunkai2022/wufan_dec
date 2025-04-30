package androidx.core.view;

import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;
import androidx.core.internal.view.SupportMenu;
/* loaded from: classes.dex */
public final class MenuCompat {
    private MenuCompat() {
    }

    public static void setGroupDividerEnabled(Menu menu, boolean z3) {
        if (menu instanceof SupportMenu) {
            ((SupportMenu) menu).setGroupDividerEnabled(z3);
        } else if (Build.VERSION.SDK_INT >= 28) {
            menu.setGroupDividerEnabled(z3);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i2) {
        menuItem.setShowAsAction(i2);
    }
}
