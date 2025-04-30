package com.join.mgps.dialog;

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
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.dialog_download_method_prompt)
/* loaded from: classes3.dex */
public class DownloadMethodPromptDialog extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f47378a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f47379b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f47380c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f47381d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f47382e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f47383f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f47384g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f47385h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f47386i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f47387j;
    @Pref

    /* renamed from: k  reason: collision with root package name */
    PrefDef_ f47388k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    String f47389l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    String f47390m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    boolean f47391n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    boolean f47392o;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    boolean f47393p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    QueryDownloadInfoResponseData f47394q;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    int f47395r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    int f47396s;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.rpc.j f47397t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    View f47398u;

    /* renamed from: v  reason: collision with root package name */
    b f47399v;

    /* renamed from: w  reason: collision with root package name */
    private ContentObserver f47400w = new a(new Handler());

    /* loaded from: classes3.dex */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            int i2;
            if (Build.VERSION.SDK_INT < 21) {
                i2 = Settings.System.getInt(DownloadMethodPromptDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            } else {
                i2 = Settings.Global.getInt(DownloadMethodPromptDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            }
            if (i2 == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.f47398u.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadMethodPromptDialog.this.f47398u.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.f47398u.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadMethodPromptDialog.this.getNavigationBarHeight();
            DownloadMethodPromptDialog.this.f47398u.setLayoutParams(layoutParams2);
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
            if (DownloadMethodPromptDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.f47398u.getLayoutParams();
                int navigationBarHeight = DownloadMethodPromptDialog.this.getNavigationBarHeight();
                if (!com.join.mgps.Util.i1.e() || Build.VERSION.SDK_INT > 19) {
                    i2 = navigationBarHeight;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i2;
                DownloadMethodPromptDialog.this.f47398u.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadMethodPromptDialog.this.f47398u.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = 0;
            DownloadMethodPromptDialog.this.f47398u.setLayoutParams(layoutParams2);
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
            getContentResolver().registerContentObserver(Settings.System.getUriFor("navigationbar_is_min"), true, this.f47400w);
        } else {
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.f47400w);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(String str) {
        i2.a(getApplicationContext()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        String uid = AccountUtil_.getInstance_(this).getUid();
        if (this.f47394q == null) {
            E0("获取信息失败");
        } else if (!this.f47378a.isSelected()) {
            E0("请先同意用户协议");
        } else if (TextUtils.isEmpty(this.f47394q.getBtnStatus())) {
        } else {
            if ("open".equals(this.f47394q.getBtnStatus())) {
                M0();
            } else if ("down".equals(this.f47394q.getBtnStatus())) {
                com.papa.sim.statistic.p.l(this).V0(Event.downloadCopyright, uid, this.f47389l);
                DownloadTask B = g1.f.G().B(this.f47389l);
                if (this.f47394q != null && B != null && (B.getStatus() == 9 || B.getStatus() == 9)) {
                    if (!TextUtils.isEmpty(B.getCrc_link_type_val())) {
                        com.php25.PDownload.d.b(B);
                        B.setVer(this.f47394q.getVer());
                        B.setVer_name(this.f47394q.getVer_name());
                        B.setUrl(this.f47394q.getDownloadURL());
                        B.setResource_url_remote(this.f47394q.getResourceURL());
                        B.setActual_size(this.f47394q.getActualSize());
                        B.setRes_actual_size(this.f47394q.getResourceSize());
                        B.setExt(this.f47390m);
                        B.setFromRecomDown(this.f47392o);
                        B.setDisableShowSpeedUpPrompt(this.f47393p);
                        com.php25.PDownload.d.c(B, this);
                    }
                } else {
                    CommonService_.u1 u1Var = (CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this).extra("downGameId", this.f47389l)).extra(DownloadMethodPromptDialog_.A, this.f47390m)).extra("data", this.f47394q)).extra(DownloadMethodPromptDialog_.F, this.f47395r)).extra(DownloadMethodPromptDialog_.G, this.f47396s)).extra(DownloadMethodPromptDialog_.C, this.f47392o)).extra(DownloadMethodPromptDialog_.D, this.f47393p);
                    QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.f47394q;
                    ((CommonService_.u1) ((CommonService_.u1) u1Var.extra("resourceSize", queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getResourceSize() : 0L)).extra("uncheckSelfSupport", true)).a();
                }
                finish();
            }
        }
    }

    void H0() {
        try {
            registerContentResolver();
            if (checkDeviceHasNavigationBar(this) && isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f47398u.getLayoutParams();
                int navigationBarHeight = getNavigationBarHeight();
                if (com.join.mgps.Util.i1.e() && Build.VERSION.SDK_INT <= 19) {
                    navigationBarHeight = 0;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = navigationBarHeight;
                this.f47398u.setLayoutParams(layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                String uid = AccountUtil_.getInstance_(this).getUid();
                String token = AccountUtil_.getInstance_(this).getToken();
                RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this);
                QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                queryDownloadInfoRequestArgs.setGameId(this.f47389l);
                queryDownloadInfoRequestArgs.setUid(uid);
                queryDownloadInfoRequestArgs.setToken(token);
                requestModel.setArgs(queryDownloadInfoRequestArgs);
                ResponseModel<QueryDownloadInfoResponseData> j4 = this.f47397t.j(requestModel);
                if (j4 == null || j4.getCode() != 600 || j4.getData() == null) {
                    return;
                }
                update(j4.getData());
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        E0(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        N0(!this.f47379b.isSelected());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        com.papa.sim.statistic.p.l(this).V0(Event.closeCopyright, AccountUtil_.getInstance_(this).getUid(), this.f47389l);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.f47394q;
        IntentUtil.getInstance().goShareWebActivity(this, queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getUserProtocolURL() : "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        com.papa.sim.statistic.p.l(this).V0(Event.openSourceUrl, AccountUtil_.getInstance_(this).getUid(), this.f47389l);
        QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.f47394q;
        IntentUtil.getInstance().goShareWebActivity(this, queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getDownloadHTML() : "");
    }

    void N0(boolean z3) {
        QueryDownloadInfoResponseData queryDownloadInfoResponseData;
        if (z3) {
            if (this.f47391n || (queryDownloadInfoResponseData = this.f47394q) == null || TextUtils.isEmpty(queryDownloadInfoResponseData.getBtnStatus()) || this.f47394q.getBtnStatus().equals("open")) {
                return;
            }
            if (!this.f47378a.isSelected()) {
                E0("请先同意用户协议");
                return;
            }
        }
        this.f47379b.setSelected(z3);
        this.f47388k.noPromptDownload().g(Boolean.valueOf(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f47397t = com.join.mgps.rpc.impl.h.L();
        com.papa.sim.statistic.p.l(this).V0(Event.showCopyright, AccountUtil_.getInstance_(this).getUid(), this.f47389l);
        if (TextUtils.isEmpty(this.f47389l)) {
            finish();
            return;
        }
        if (this.f47391n) {
            this.f47380c.setVisibility(4);
        }
        this.f47387j.setText("《悟饭游戏厅下载协议》");
        H0();
        QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.f47394q;
        if (queryDownloadInfoResponseData == null) {
            I0();
        } else {
            update(queryDownloadInfoResponseData);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        com.papa.sim.statistic.p.l(this).V0(Event.closeCopyright, AccountUtil_.getInstance_(this).getUid(), this.f47389l);
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
            getContentResolver().unregisterContentObserver(this.f47399v);
            getContentResolver().unregisterContentObserver(this.f47400w);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void protocolCheckPlaceholder() {
        this.f47378a.setSelected(!this.f47378a.isSelected());
        boolean isSelected = this.f47378a.isSelected();
        this.f47384g.setBackgroundResource(isSelected ? R.drawable.shape_view_bg1 : R.drawable.shape_view_bg2);
        if (isSelected || this.f47380c.getVisibility() != 0) {
            return;
        }
        N0(false);
    }

    void registerContentResolver() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f47399v = new b(new Handler());
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.f47399v);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void update(QueryDownloadInfoResponseData queryDownloadInfoResponseData) {
        if (queryDownloadInfoResponseData == null) {
            return;
        }
        this.f47394q = queryDownloadInfoResponseData;
        if (!TextUtils.isEmpty(queryDownloadInfoResponseData.getBtnStatus())) {
            if ("open".equals(queryDownloadInfoResponseData.getBtnStatus())) {
                this.f47384g.setText("立即打开");
                this.f47380c.setVisibility(4);
            } else if ("down".equals(queryDownloadInfoResponseData.getBtnStatus())) {
                this.f47384g.setText("立即下载");
                if (!this.f47391n) {
                    this.f47380c.setVisibility(0);
                    if (queryDownloadInfoResponseData.isSelectedNextTips() && queryDownloadInfoResponseData.isSelectedUserProtocol()) {
                        this.f47379b.setSelected(true);
                    } else {
                        this.f47379b.setSelected(false);
                    }
                    this.f47388k.noPromptDownload().g(Boolean.valueOf(this.f47379b.isSelected()));
                }
            }
        }
        this.f47382e.setText(queryDownloadInfoResponseData.getGameName());
        this.f47381d.setText(queryDownloadInfoResponseData.getTitle());
        this.f47385h.setText(queryDownloadInfoResponseData.getSubTitle());
        this.f47386i.setText(queryDownloadInfoResponseData.getUserProtocolTxt());
        this.f47383f.setText(queryDownloadInfoResponseData.getDownloadHTML());
        this.f47378a.setSelected(queryDownloadInfoResponseData.isSelectedUserProtocol());
        this.f47384g.setBackgroundResource(this.f47378a.isSelected() ? R.drawable.shape_view_bg1 : R.drawable.shape_view_bg2);
    }
}
