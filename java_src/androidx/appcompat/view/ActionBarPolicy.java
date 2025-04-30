package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarPolicy {

    /* renamed from: a  reason: collision with root package name */
    private Context f444a;

    private ActionBarPolicy(Context context) {
        this.f444a = context;
    }

    public static ActionBarPolicy get(Context context) {
        return new ActionBarPolicy(context);
    }

    public boolean enableHomeButtonByDefault() {
        return this.f444a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int getEmbeddedMenuWidthLimit() {
        return this.f444a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int getMaxActionButtons() {
        Configuration configuration = this.f444a.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i4 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600) {
            return 5;
        }
        if (i2 <= 960 || i4 <= 720) {
            if (i2 <= 720 || i4 <= 960) {
                if (i2 < 500) {
                    if (i2 <= 640 || i4 <= 480) {
                        if (i2 <= 480 || i4 <= 640) {
                            return i2 >= 360 ? 3 : 2;
                        }
                        return 4;
                    }
                    return 4;
                }
                return 4;
            }
            return 5;
        }
        return 5;
    }

    public int getStackedTabMaxWidth() {
        return this.f444a.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    public int getTabContainerHeight() {
        TypedArray obtainStyledAttributes = this.f444a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
        Resources resources = this.f444a.getResources();
        if (!hasEmbeddedTabs()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean hasEmbeddedTabs() {
        return this.f444a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    }

    public boolean showsOverflowMenuButton() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f444a).hasPermanentMenuKey();
    }
}
