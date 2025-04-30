package com.join.mgps.activity.recomend;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.z1;
import com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.DownloadSpeedupCfgBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.i;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import g1.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.c;
import q.a;
@EActivity(R.layout.game_download_recomd_activity2)
/* loaded from: classes3.dex */
public class GamedownloadRecomdActivity2 extends BaseAppCompatActivity {
    protected int activityCloseEnterAnimation;
    protected int activityCloseExitAnimation;
    DetailRecyclerViewChileAdapter adapter;
    @ViewById
    AppBarLayout appbar;
    DownloadSpeedupCfgBean cfgBean;
    @ViewById
    View close2;
    Context context;
    @ViewById
    TextView downNumber;
    DownloadTask downloadTask;
    @Extra
    String gameName;
    String gamedataJson;
    private String gameid;
    @ViewById
    SimpleDraweeView icon;
    BarHideEnableObserver mBarHideEnableObserver;
    @ViewById
    View main;
    @Pref
    PrefDef_ prefDef;
    @ViewById
    TextView seetext;
    @ViewById
    View speedLayout;
    @ViewById
    TextView tip;
    @ViewById
    TextView title;
    List<GamedownRecomendItemBean> gamedatas = new ArrayList();
    List<CollectionBeanSubBusiness> gameDowndatas = new ArrayList();
    private ContentObserver mNavigationBarObserver = new ContentObserver(new Handler()) { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity2.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            if (Build.VERSION.SDK_INT < 21) {
                Settings.System.getInt(GamedownloadRecomdActivity2.this.getContentResolver(), "navigationbar_is_min", 0);
            } else {
                Settings.Global.getInt(GamedownloadRecomdActivity2.this.getContentResolver(), "navigationbar_is_min", 0);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class BarHideEnableObserver extends ContentObserver {
        BarHideEnableObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", a.f73954a);
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

    private int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", a.f73954a));
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void initData() {
        try {
            registerContentResolver();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        DownloadCenterTuijianMain downloadCenterTuijianMain = (DownloadCenterTuijianMain) JsonMapper.getInstance().fromJson(this.gamedataJson, DownloadCenterTuijianMain.class);
        if (downloadCenterTuijianMain == null) {
            finish();
            return;
        }
        this.gameid = downloadCenterTuijianMain.getGameid();
        Ext ext = new Ext();
        ext.setPosition("0");
        ext.setGameId(downloadCenterTuijianMain.getGameid());
        p.l(this.context).K1(Event.showGuessYouLike, ext);
        this.gamedatas = downloadCenterTuijianMain.getCollectionList();
        try {
            DownloadTask B = f.G().B(this.gameid);
            this.downloadTask = B;
            if (B != null && new PrefDef_(this.context).downloadSpeedUpGameSize().d().intValue() <= this.downloadTask.getActual_size() && ((TextUtils.isEmpty(this.downloadTask.getFileType()) || !this.downloadTask.getFileType().equals(Dtype.chajian.name())) && !this.downloadTask.isDisableShowSpeedUpPrompt() && UtilsMy.U(this.context, this.downloadTask.getCrc_link_type_val()))) {
                UtilsMy.U2(this.context, this.downloadTask);
                int nextInt = new Random().nextInt(10) + 85;
                if (this.cfgBean != null) {
                    TextView textView = this.tip;
                    textView.setText(Html.fromHtml(this.cfgBean.getTip_text() + "<font color=#5286FA><big>" + nextInt + "</big></font>%"), TextView.BufferType.SPANNABLE);
                }
                int intValue = this.prefDef.downloadSpeedUpCountAD().d().intValue();
                int intValue2 = this.prefDef.downloadSpeedUpCountCurrentAD().d().intValue();
                TextView textView2 = this.downNumber;
                textView2.setText(Html.fromHtml("今日可加速： <strong><font color=#6193FE>" + (intValue - intValue2) + "</font></strong> 次"), TextView.BufferType.SPANNABLE);
                p.l(this).K1(Event.AccelerationPopup, new Ext());
            } else {
                this.speedLayout.setVisibility(8);
                this.close2.setVisibility(8);
            }
            this.icon.setImageURI(this.downloadTask.getPortraitURL());
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    private void registerNavigationBarObserver() {
        if (Build.VERSION.SDK_INT < 21) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor("navigationbar_is_min"), true, this.mNavigationBarObserver);
        } else {
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.mNavigationBarObserver);
        }
    }

    private void updateProgressPartly() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        String d4 = this.prefDef.recomDataJson().d();
        this.gamedataJson = d4;
        if (d2.h(d4)) {
            finish();
        }
        this.context = this;
        try {
            String d5 = this.prefDef.downloadSpeedupCfg().d();
            if (!TextUtils.isEmpty(d5)) {
                DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(d5, DownloadSpeedupCfgBean.class);
                this.cfgBean = downloadSpeedupCfgBean;
                this.seetext.setText(downloadSpeedupCfgBean.getBtn_text());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        initData();
        try {
            TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{16842926});
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = getTheme().obtainStyledAttributes(resourceId, new int[]{16842938, 16842939});
            this.activityCloseEnterAnimation = obtainStyledAttributes2.getResourceId(0, 0);
            this.activityCloseExitAnimation = obtainStyledAttributes2.getResourceId(1, 0);
            obtainStyledAttributes2.recycle();
        } catch (Resources.NotFoundException e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close2() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void downloadAcc() {
        try {
            p.l(this).K1(Event.DownloadAcceleration, new Ext());
            c.f().o(new i(this.downloadTask, 14));
            String crc_link_type_val = this.downloadTask.getCrc_link_type_val();
            if (UtilsMy.J1(this, this.downloadTask, true)) {
                i2.a(this).b("已接入专属通道，加速成功！");
            }
            f.G().B(crc_link_type_val);
            UtilsMy.r3(this, crc_link_type_val);
            UtilsMy.P1(this, crc_link_type_val);
            finish();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        try {
            overridePendingTransition(this.activityCloseEnterAnimation, this.activityCloseExitAnimation);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0061 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isNavigationBarShow() {
        /*
            r5 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 0
            r3 = 17
            if (r0 < r3) goto L63
            android.content.ContentResolver r0 = r5.getContentResolver()     // Catch: android.provider.Settings.SettingNotFoundException -> L16
            java.lang.String r3 = "navigationbar_hide_bar_enabled"
            int r0 = android.provider.Settings.Global.getInt(r0, r3)     // Catch: android.provider.Settings.SettingNotFoundException -> L16
            if (r0 != r1) goto L15
            return r2
        L15:
            return r1
        L16:
            boolean r0 = com.join.mgps.Util.i1.e()     // Catch: java.lang.Exception -> L3e
            if (r0 == 0) goto L2b
            boolean r0 = com.join.mgps.Util.i1.a(r5)     // Catch: java.lang.Exception -> L3e
            if (r0 == 0) goto L29
            boolean r0 = com.join.mgps.Util.i1.f(r5)     // Catch: java.lang.Exception -> L3e
            if (r0 != 0) goto L29
            goto L2a
        L29:
            r1 = 0
        L2a:
            return r1
        L2b:
            boolean r0 = com.join.mgps.Util.i1.g()     // Catch: java.lang.Exception -> L3e
            if (r0 == 0) goto L42
            android.content.ContentResolver r0 = r5.getContentResolver()     // Catch: java.lang.Exception -> L3e
            java.lang.String r3 = "force_fsg_nav_bar"
            int r0 = android.provider.Settings.Global.getInt(r0, r3, r2)     // Catch: java.lang.Exception -> L3e
            if (r0 == 0) goto L42
            return r2
        L3e:
            r0 = move-exception
            r0.printStackTrace()
        L42:
            android.view.WindowManager r0 = r5.getWindowManager()
            android.view.Display r0 = r0.getDefaultDisplay()
            android.graphics.Point r3 = new android.graphics.Point
            r3.<init>()
            android.graphics.Point r4 = new android.graphics.Point
            r4.<init>()
            r0.getSize(r3)
            r0.getRealSize(r4)
            int r0 = r4.y
            int r3 = r3.y
            if (r0 == r3) goto L61
            goto L62
        L61:
            r1 = 0
        L62:
            return r1
        L63:
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r5)
            boolean r0 = r0.hasPermanentMenuKey()
            r3 = 4
            boolean r3 = android.view.KeyCharacterMap.deviceHasKey(r3)
            if (r0 != 0) goto L76
            if (r3 == 0) goto L75
            goto L76
        L75:
            return r1
        L76:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.recomend.GamedownloadRecomdActivity2.isNavigationBarShow():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void main() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.mBarHideEnableObserver);
            getContentResolver().unregisterContentObserver(this.mNavigationBarObserver);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.gamedataJson = this.prefDef.recomDataJson().d();
        initData();
    }

    void registerContentResolver() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mBarHideEnableObserver = new BarHideEnableObserver(new Handler());
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.mBarHideEnableObserver);
            registerNavigationBarObserver();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        z1.o(this, 16777215, true);
    }
}
