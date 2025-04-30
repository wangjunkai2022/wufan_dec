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
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.service.CommonService;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.dialog_download_high_speed_opt)
/* loaded from: classes3.dex */
public class DownloadSpeedOptionDialog extends BaseFragmentActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f47445a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    DownloadTask f47446b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f47447c;

    /* renamed from: d  reason: collision with root package name */
    b f47448d;

    /* renamed from: e  reason: collision with root package name */
    private ContentObserver f47449e = new a(new Handler());

    /* loaded from: classes3.dex */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            int i2;
            if (Build.VERSION.SDK_INT < 21) {
                i2 = Settings.System.getInt(DownloadSpeedOptionDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            } else {
                i2 = Settings.Global.getInt(DownloadSpeedOptionDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            }
            if (i2 == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadSpeedOptionDialog.this.f47447c.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadSpeedOptionDialog.this.f47447c.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadSpeedOptionDialog.this.f47447c.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadSpeedOptionDialog.this.getNavigationBarHeight();
            DownloadSpeedOptionDialog.this.f47447c.setLayoutParams(layoutParams2);
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
            if (DownloadSpeedOptionDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadSpeedOptionDialog.this.f47447c.getLayoutParams();
                int navigationBarHeight = DownloadSpeedOptionDialog.this.getNavigationBarHeight();
                if (!com.join.mgps.Util.i1.e() || Build.VERSION.SDK_INT > 19) {
                    i2 = navigationBarHeight;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i2;
                DownloadSpeedOptionDialog.this.f47447c.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadSpeedOptionDialog.this.f47447c.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = 0;
            DownloadSpeedOptionDialog.this.f47447c.setLayoutParams(layoutParams2);
        }
    }

    public static int F0(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static View G0(Activity activity) {
        return new View(activity);
    }

    public static void J0(Activity activity, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 > 21) {
            activity.getWindow().setNavigationBarColor(i2);
        } else if (i4 >= 19) {
            activity.getWindow().addFlags(134217728);
            View G0 = G0(activity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, F0(activity));
            layoutParams.gravity = 80;
            G0.setLayoutParams(layoutParams);
            G0.setBackgroundColor(i2);
            ((ViewGroup) activity.getWindow().getDecorView()).addView(G0);
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
            getContentResolver().registerContentObserver(Settings.System.getUriFor("navigationbar_is_min"), true, this.f47449e);
        } else {
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.f47449e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        try {
            com.papa.sim.statistic.p.l(this).K1(Event.CommonDownload, new Ext());
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.i(this.f47446b, 14));
            if (UtilsMy.J1(this, this.f47446b, true)) {
                i2.a(this).b("开始下载，可前往下载中心加速！");
            }
            if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                UtilsMy.c2(this, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            CommonService.H = true;
            ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this).extra("getDownloadRecomedData", this.f47446b.getCrc_link_type_val())).extra("downloadTask", this.f47446b)).a();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        finish();
    }

    void H0() {
        try {
            registerContentResolver();
            if (checkDeviceHasNavigationBar(this) && isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f47447c.getLayoutParams();
                int navigationBarHeight = getNavigationBarHeight();
                if (com.join.mgps.Util.i1.e() && Build.VERSION.SDK_INT <= 19) {
                    navigationBarHeight = 0;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = navigationBarHeight;
                this.f47447c.setLayoutParams(layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        TextView textView = this.f47445a;
        textView.setText((new Random().nextInt(20) + 30) + "%");
        com.papa.sim.statistic.p.l(this).K1(Event.DownloadModePopup, new Ext());
        setFinishOnTouchOutside(false);
        if (this.f47446b == null) {
            finish();
        } else {
            H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void downloadAcc() {
        try {
            com.papa.sim.statistic.p.l(this).K1(Event.AccelerationDownload, new Ext());
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.i(this.f47446b, 14));
            String crc_link_type_val = this.f47446b.getCrc_link_type_val();
            if (UtilsMy.J1(this, this.f47446b, true)) {
                i2.a(this).b("已接入专属通道，加速成功！");
            }
            g1.f.G().B(crc_link_type_val);
            UtilsMy.r3(this, crc_link_type_val);
            UtilsMy.O1(this, crc_link_type_val);
            if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                UtilsMy.c2(this, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
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
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.f47448d);
            getContentResolver().unregisterContentObserver(this.f47449e);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void registerContentResolver() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f47448d = new b(new Handler());
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.f47448d);
            registerNavigationBarObserver();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.z1.o(this, 16777215, true);
    }
}
