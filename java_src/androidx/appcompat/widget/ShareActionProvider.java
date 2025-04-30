package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
/* loaded from: classes.dex */
public class ShareActionProvider extends ActionProvider {
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";

    /* renamed from: k  reason: collision with root package name */
    private static final int f1373k = 4;

    /* renamed from: e  reason: collision with root package name */
    private int f1374e;

    /* renamed from: f  reason: collision with root package name */
    private final ShareMenuItemOnMenuItemClickListener f1375f;

    /* renamed from: g  reason: collision with root package name */
    final Context f1376g;

    /* renamed from: h  reason: collision with root package name */
    String f1377h;

    /* renamed from: i  reason: collision with root package name */
    OnShareTargetSelectedListener f1378i;

    /* renamed from: j  reason: collision with root package name */
    private ActivityChooserModel.OnChooseActivityListener f1379j;

    /* loaded from: classes.dex */
    public interface OnShareTargetSelectedListener {
        boolean onShareTargetSelected(ShareActionProvider shareActionProvider, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ShareActivityChooserModelPolicy implements ActivityChooserModel.OnChooseActivityListener {
        ShareActivityChooserModelPolicy() {
        }

        @Override // androidx.appcompat.widget.ActivityChooserModel.OnChooseActivityListener
        public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            OnShareTargetSelectedListener onShareTargetSelectedListener = shareActionProvider.f1378i;
            if (onShareTargetSelectedListener != null) {
                onShareTargetSelectedListener.onShareTargetSelected(shareActionProvider, intent);
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    private class ShareMenuItemOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        ShareMenuItemOnMenuItemClickListener() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            Intent chooseActivity = ActivityChooserModel.get(shareActionProvider.f1376g, shareActionProvider.f1377h).chooseActivity(menuItem.getItemId());
            if (chooseActivity != null) {
                String action = chooseActivity.getAction();
                if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                    ShareActionProvider.this.b(chooseActivity);
                }
                ShareActionProvider.this.f1376g.startActivity(chooseActivity);
                return true;
            }
            return true;
        }
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.f1374e = 4;
        this.f1375f = new ShareMenuItemOnMenuItemClickListener();
        this.f1377h = DEFAULT_SHARE_HISTORY_FILE_NAME;
        this.f1376g = context;
    }

    private void a() {
        if (this.f1378i == null) {
            return;
        }
        if (this.f1379j == null) {
            this.f1379j = new ShareActivityChooserModelPolicy();
        }
        ActivityChooserModel.get(this.f1376g, this.f1377h).setOnChooseActivityListener(this.f1379j);
    }

    void b(Intent intent) {
        if (Build.VERSION.SDK_INT >= 21) {
            intent.addFlags(134742016);
        } else {
            intent.addFlags(524288);
        }
    }

    @Override // androidx.core.view.ActionProvider
    public boolean hasSubMenu() {
        return true;
    }

    @Override // androidx.core.view.ActionProvider
    public View onCreateActionView() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.f1376g);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(ActivityChooserModel.get(this.f1376g, this.f1377h));
        }
        TypedValue typedValue = new TypedValue();
        this.f1376g.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.getDrawable(this.f1376g, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(R.string.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // androidx.core.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        subMenu.clear();
        ActivityChooserModel activityChooserModel = ActivityChooserModel.get(this.f1376g, this.f1377h);
        PackageManager packageManager = this.f1376g.getPackageManager();
        int activityCount = activityChooserModel.getActivityCount();
        int min = Math.min(activityCount, this.f1374e);
        for (int i2 = 0; i2 < min; i2++) {
            ResolveInfo activity = activityChooserModel.getActivity(i2);
            subMenu.add(0, i2, i2, activity.loadLabel(packageManager)).setIcon(activity.loadIcon(packageManager)).setOnMenuItemClickListener(this.f1375f);
        }
        if (min < activityCount) {
            SubMenu addSubMenu = subMenu.addSubMenu(0, min, min, this.f1376g.getString(R.string.abc_activity_chooser_view_see_all));
            for (int i4 = 0; i4 < activityCount; i4++) {
                ResolveInfo activity2 = activityChooserModel.getActivity(i4);
                addSubMenu.add(0, i4, i4, activity2.loadLabel(packageManager)).setIcon(activity2.loadIcon(packageManager)).setOnMenuItemClickListener(this.f1375f);
            }
        }
    }

    public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener onShareTargetSelectedListener) {
        this.f1378i = onShareTargetSelectedListener;
        a();
    }

    public void setShareHistoryFileName(String str) {
        this.f1377h = str;
        a();
    }

    public void setShareIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                b(intent);
            }
        }
        ActivityChooserModel.get(this.f1376g, this.f1377h).setIntent(intent);
    }
}
