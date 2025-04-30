package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.WebViewSearchActivity_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.dialog_sniffer_promt)
/* loaded from: classes3.dex */
public class DownloadSnifferPromptDialog extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    DownloadTask f47420a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    String f47421b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    String f47422c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    String f47423d;

    /* renamed from: f  reason: collision with root package name */
    Button f47425f;

    /* renamed from: g  reason: collision with root package name */
    Button f47426g;

    /* renamed from: h  reason: collision with root package name */
    Button f47427h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f47428i;

    /* renamed from: j  reason: collision with root package name */
    b f47429j;

    /* renamed from: e  reason: collision with root package name */
    int f47424e = 7;

    /* renamed from: k  reason: collision with root package name */
    private ContentObserver f47430k = new a(new Handler());

    /* loaded from: classes3.dex */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            int i2;
            if (Build.VERSION.SDK_INT < 21) {
                i2 = Settings.System.getInt(DownloadSnifferPromptDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            } else {
                i2 = Settings.Global.getInt(DownloadSnifferPromptDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            }
            if (i2 == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.f47428i.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadSnifferPromptDialog.this.f47428i.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.f47428i.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadSnifferPromptDialog.this.getNavigationBarHeight();
            DownloadSnifferPromptDialog.this.f47428i.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends ContentObserver {
        b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
            int i2 = 0;
            if (DownloadSnifferPromptDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.f47428i.getLayoutParams();
                int navigationBarHeight = DownloadSnifferPromptDialog.this.getNavigationBarHeight();
                if (!com.join.mgps.Util.i1.e() || Build.VERSION.SDK_INT > 19) {
                    i2 = navigationBarHeight;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i2;
                DownloadSnifferPromptDialog.this.f47428i.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadSnifferPromptDialog.this.f47428i.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = 0;
            DownloadSnifferPromptDialog.this.f47428i.setLayoutParams(layoutParams2);
        }
    }

    public static int I0(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static View J0(Activity activity) {
        return new View(activity);
    }

    public static void M0(Activity activity, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 > 21) {
            activity.getWindow().setNavigationBarColor(i2);
        } else if (i4 >= 19) {
            activity.getWindow().addFlags(134217728);
            View J0 = J0(activity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, I0(activity));
            layoutParams.gravity = 80;
            J0.setLayoutParams(layoutParams);
            J0.setBackgroundColor(i2);
            ((ViewGroup) activity.getWindow().getDecorView()).addView(J0);
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", q.a.f73954a);
        boolean z3 = false;
        boolean z4 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z3 = "0".equals(str) ? true : z4;
            }
            return z3;
        } catch (Exception unused) {
            return z4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", q.a.f73954a));
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void registerNavigationBarObserver() {
        if (Build.VERSION.SDK_INT < 21) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor("navigationbar_is_min"), true, this.f47430k);
        } else {
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.f47430k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        DownloadTask downloadTask = this.f47420a;
        if (downloadTask != null) {
            com.php25.PDownload.d.e(downloadTask, this);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        WebViewSearchActivity_.A1(this).b(this.f47422c).a(this.f47420a).start();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        WebViewSearchActivity_.A1(this).b(this.f47421b).a(this.f47420a).start();
        finish();
    }

    void K0() {
        try {
            registerContentResolver();
            if (checkDeviceHasNavigationBar(this) && isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f47428i.getLayoutParams();
                int navigationBarHeight = getNavigationBarHeight();
                if (com.join.mgps.Util.i1.e() && Build.VERSION.SDK_INT <= 19) {
                    navigationBarHeight = 0;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = navigationBarHeight;
                this.f47428i.setLayoutParams(layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        finish();
    }

    public void N0(int i2) {
        this.f47424e = i2;
        if ((i2 & 1) == 1) {
            this.f47425f.setVisibility(0);
        } else {
            this.f47425f.setVisibility(8);
        }
        if (((i2 & 2) >> 1) == 1) {
            this.f47426g.setVisibility(0);
        } else {
            this.f47426g.setVisibility(8);
        }
        if (((i2 & 4) >> 2) == 1) {
            this.f47427h.setVisibility(0);
        } else {
            this.f47427h.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f47425f = (Button) findViewById(R.id.btnDownload);
        this.f47426g = (Button) findViewById(R.id.btnSource);
        this.f47427h = (Button) findViewById(R.id.btnSearch);
        if (!TextUtils.isEmpty(this.f47423d) && this.f47423d.equals("1")) {
            this.f47424e |= 1;
        } else {
            this.f47424e &= 6;
        }
        if (!TextUtils.isEmpty(this.f47421b)) {
            this.f47424e |= 2;
        } else {
            this.f47424e &= 5;
        }
        if (!TextUtils.isEmpty(this.f47422c)) {
            this.f47424e |= 4;
        } else {
            this.f47424e &= 3;
        }
        N0(this.f47424e);
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    public boolean isNavigationBarShow() {
        if (Build.VERSION.SDK_INT < 17) {
            return (ViewConfiguration.get(this).hasPermanentMenuKey() || KeyCharacterMap.deviceHasKey(4)) ? false : true;
        }
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (com.join.mgps.Util.i1.e()) {
            return com.join.mgps.Util.i1.a(this) && !com.join.mgps.Util.i1.f(this);
        }
        if (com.join.mgps.Util.i1.g() && Settings.Global.getInt(getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
            return false;
        }
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.f47429j);
            getContentResolver().unregisterContentObserver(this.f47430k);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void registerContentResolver() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f47429j = new b(new Handler());
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.f47429j);
            registerNavigationBarObserver();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.z1.o(this, 16777215, true);
    }
}
