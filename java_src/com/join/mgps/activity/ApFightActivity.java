package com.join.mgps.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.activity.FightIntroductionActivity_;
import com.join.mgps.helper.MGFightClientManager;
import com.join.mgps.helper.MGFightServerManager;
import com.join.mgps.helper.MGWifiFightClientManger;
import com.join.mgps.helper.MGWifiFightServerManger;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.zxing.CaptureActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
@EActivity(R.layout.fight_activity)
/* loaded from: classes3.dex */
public class ApFightActivity extends BaseActivity {
    public static final int REQUEST_CODE = 9001;
    public static final int REQUEST_ZXING_CODE = 10001;
    public static final int START_MODE_NETCLIENT = 2;
    public static final int START_MODE_NETSERVER = 1;
    public static int step;
    String apName;
    @ViewById
    ImageView ap_net_match_info_1p_frame;
    @ViewById
    ImageView ap_net_match_info_2p_frame;
    @ViewById
    RelativeLayout apfight_zxing_content_lay;
    @ViewById
    ImageView back;
    Animation beginAnimation;
    Animation btnAnimation;
    @ViewById
    TextView clientBrandName;
    @ViewById
    Button clientBtn;
    DownloadTask downloadTask;
    @ViewById
    ImageView fightClientIcon;
    private com.join.mgps.dialog.a fightClientLoadingDialog;
    private com.join.mgps.dialog.k0 fightCreateServerDialog;
    private com.join.mgps.dialog.l0 fightDisconnectDialog;
    private com.join.mgps.dialog.n0 fightServerChoseDialog;
    @ViewById
    ImageView fightServerIcon;
    @ViewById
    ImageView fightStart;
    private String gId;
    private String gName;
    @Extra
    String gameId;
    @ViewById
    TextView hint;
    @ViewById
    TextView ipTxt;
    @ViewById
    LinearLayout ip_lay;
    long lastClick;
    @ViewById
    ImageView lcon;
    private ru.alexbykov.nopermission.b mPermissionHelper;
    String mServerIp;
    private WifiUtils mWifiUtils;
    MGFightClientManager mgFightClientManager;
    MGFightServerManager mgFightServerManager;
    MGWifiFightClientManger mgWifiFightClientManger;
    MGWifiFightServerManger mgWifiFightServerManger;
    com.join.mgps.dialog.c2 mismatchDialog;
    @ViewById
    ImageView modeIconAP;
    @ViewById
    ImageView modeIconWifi;
    @ViewById
    TextView num;
    @ViewById
    ImageView p1status_btn_around_img;
    @Pref
    PrefDef_ prefDef;
    private String romPath;
    @ViewById
    TextView serverBrandName;
    @ViewById
    Button serverBtn;
    @ViewById
    TextView ssidTxt;
    int statType;
    int suiji;
    @ViewById
    TextView tipTxt1;
    @ViewById
    TextView tipTxt2;
    @ViewById
    TextView tipWifi;
    int type;

    /* renamed from: w  reason: collision with root package name */
    com.join.mgps.dialog.b2 f28330w;
    @ViewById
    TextView waitHint;
    private WifiInfo wifiInfo;
    @ViewById
    Button zxingBtn;
    @ViewById
    ImageView zxingImg;
    @ViewById
    TextView zxingTip1;
    @ViewById
    TextView zxingTip2;
    @ViewById
    FrameLayout zxing_lay;
    @ViewById
    LinearLayout zxing_tip_lay;
    private String TAG = getClass().getSimpleName();
    private String plugin_num = "";
    private int mode = 0;
    private ArrayList<String> mWifiApList = new ArrayList<>(0);
    private boolean isClient = true;
    private boolean isUsing = false;
    private boolean isConnectSuccessed = false;
    private String specifiedSSID = "";
    boolean modeSwitchEnable = true;
    boolean apBtnEnable = true;
    private l1.c fightConnectListener = new e();
    String getSSID = "";
    boolean isGetPermission = false;
    private String ap = "";
    private boolean isWranAp = false;
    boolean isWifiConnectedBefore = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity.step = 1;
            ApFightActivity.this.fightDisconnectDialog.dismiss();
            ApFightActivity.this.showClientLoading(0, "");
            ApFightActivity.this.mgFightClientManager.connect();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity.this.mgFightClientManager.connect();
            ApFightActivity.this.fightDisconnectDialog.dismiss();
            ApFightActivity.this.showClientLoading(0, "");
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((FightIntroductionActivity_.b) FightIntroductionActivity_.F0(ApFightActivity.this).flags(4194304)).a(ApFightActivity.this.mode).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity.this.zxing_lay.setVisibility(0);
            ApFightActivity.this.apfight_zxing_content_lay.startAnimation(AnimationUtils.loadAnimation(ApFightActivity.this, R.anim.scale_apfight));
        }
    }

    /* loaded from: classes3.dex */
    class e implements l1.c {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ApFightActivity.this.mgFightClientManager.connect();
                ApFightActivity.this.fightDisconnectDialog.dismiss();
                ApFightActivity.this.showClientLoading(0, "");
            }
        }

        /* loaded from: classes3.dex */
        class b implements DialogInterface.OnCancelListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (ApFightActivity.this.fightClientLoadingDialog == null || !ApFightActivity.this.fightClientLoadingDialog.isShowing()) {
                    return;
                }
                ApFightActivity.this.fightClientLoadingDialog.dismiss();
            }
        }

        e() {
        }

        @Override // l1.c
        public void a(int i2) {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.zxing_lay.setVisibility(8);
            ApFightActivity.this.zxing_tip_lay.setVisibility(8);
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = true;
            apFightActivity.clientBtn.setEnabled(true);
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.closeBeginAnim();
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                ApFightActivity.this.serverBtn.setEnabled(true);
                ApFightActivity.this.serverBtn.setVisibility(0);
                ApFightActivity.this.resetClientBtn();
                ApFightActivity.this.zxingBtn.setVisibility(0);
                ApFightActivity.this.fightStart.setVisibility(8);
                ApFightActivity.this.closeBeginAnim();
                ApFightActivity.this.hideFrame();
                ApFightActivity.this.revertHint();
                ApFightActivity.this.waitHint.setText("");
                ApFightActivity.this.dismissLoading();
                com.join.android.app.common.manager.a.h().j(ApFightActivity.this, "创建热点失败!", 2);
                return;
            }
            new com.join.mgps.dialog.o0(ApFightActivity.this, R.style.HKDialogLoading).show();
            ApFightActivity.this.serverBtn.setEnabled(true);
        }

        @Override // l1.c
        public void b() {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.zxing_lay.setVisibility(8);
            ApFightActivity.this.zxing_tip_lay.setVisibility(8);
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = true;
            apFightActivity.apBtnEnable = true;
            apFightActivity.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.clientBtn.setEnabled(true);
            if (ApFightActivity.this.mode != 0) {
                if (ApFightActivity.this.isClient) {
                    try {
                        new com.join.mgps.dialog.d2(ApFightActivity.this, R.style.HKDialogLoading).show();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    ApFightActivity apFightActivity2 = ApFightActivity.this;
                    apFightActivity2.fightServerIcon.setImageDrawable(apFightActivity2.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                    ApFightActivity.this.serverBrandName.setText("我是主机");
                    ApFightActivity.this.clientBrandName.setText("我是客机");
                    ApFightActivity.this.resetClientBtn();
                    ApFightActivity.this.zxingBtn.setVisibility(0);
                    ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                    ApFightActivity.this.serverBtn.setEnabled(true);
                    ApFightActivity.this.clientBtn.setEnabled(true);
                    ApFightActivity.this.hint.setText("服务器断开请重新连接");
                    ApFightActivity.this.num.setText("");
                    ApFightActivity.this.lcon.setVisibility(0);
                    ApFightActivity.this.waitHint.setText("服务器断开请重新连接");
                    ApFightActivity apFightActivity3 = ApFightActivity.this;
                    apFightActivity3.fightClientIcon.setImageDrawable(apFightActivity3.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                    return;
                }
                ApFightActivity.this.mgWifiFightServerManger.disConnect();
                ApFightActivity.this.mgWifiFightServerManger.shutDownServer();
                try {
                    if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                        ApFightActivity.this.fightDisconnectDialog.dismiss();
                    }
                    ApFightActivity.this.fightDisconnectDialog = new com.join.mgps.dialog.l0(ApFightActivity.this, R.style.HKDialogLoading);
                    ApFightActivity.this.fightDisconnectDialog.show();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                ApFightActivity.this.serverBrandName.setText("我是主机");
                ApFightActivity.this.clientBrandName.setText("我是客机");
                ApFightActivity.this.resetClientBtn();
                ApFightActivity.this.zxingBtn.setVisibility(0);
                ApFightActivity.this.serverBtn.setVisibility(0);
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                ApFightActivity.this.serverBtn.setEnabled(true);
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity.this.closeBeginAnim();
                ApFightActivity.this.hideFrame();
                ApFightActivity.this.hint.setText("连接已断开,等待小伙伴连接");
                ApFightActivity apFightActivity4 = ApFightActivity.this;
                apFightActivity4.fightClientIcon.setImageDrawable(apFightActivity4.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.this.fightStart.setVisibility(8);
                ApFightActivity.this.waitHint.setText("连接已断开,等待小伙伴连接");
                ApFightActivity.this.fightDisconnectDialog.j("连接已断开");
                ApFightActivity.this.fightDisconnectDialog.g(8);
                ApFightActivity.this.fightDisconnectDialog.c(8);
                ApFightActivity.this.fightDisconnectDialog.a(0);
                ApFightActivity apFightActivity5 = ApFightActivity.this;
                apFightActivity5.fightServerIcon.setImageDrawable(apFightActivity5.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.this.num.setText("");
                ApFightActivity.this.lcon.setVisibility(0);
                return;
            }
            ApFightActivity.this.lcon.setVisibility(0);
            if (ApFightActivity.this.isClient) {
                if (!ApFightActivity.this.mWifiUtils.isWifiConnect(ApFightActivity.this)) {
                    ApFightActivity.this.mWifiUtils.openWifi(ApFightActivity.this);
                }
                if (ApFightActivity.this.fightDisconnectDialog == null || !ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                    try {
                        ApFightActivity.this.fightDisconnectDialog = new com.join.mgps.dialog.l0(ApFightActivity.this, R.style.HKDialogLoading);
                        ApFightActivity.this.fightDisconnectDialog.show();
                        ApFightActivity.this.fightDisconnectDialog.h(new a());
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
                ApFightActivity apFightActivity6 = ApFightActivity.this;
                apFightActivity6.fightServerIcon.setImageDrawable(apFightActivity6.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.this.serverBrandName.setText("我是主机");
                ApFightActivity.this.clientBrandName.setText("我是客机");
                ApFightActivity.this.resetClientBtn();
                ApFightActivity.this.zxingBtn.setVisibility(0);
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
                ApFightActivity.this.serverBtn.setEnabled(true);
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity.this.hint.setText("服务器断开请重新连接");
                ApFightActivity.this.num.setText("");
                ApFightActivity.this.lcon.setVisibility(0);
                ApFightActivity.this.waitHint.setText("服务器断开请重新连接");
                ApFightActivity apFightActivity7 = ApFightActivity.this;
                apFightActivity7.fightClientIcon.setImageDrawable(apFightActivity7.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                ApFightActivity.step = 6;
                return;
            }
            ApFightActivity.this.mgFightServerManager.disConnect();
            ApFightActivity.this.mWifiUtils.setHotSpot(ApFightActivity.this.apName, com.join.mgps.data.c.f47302q, false);
            try {
                if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                    ApFightActivity.this.fightDisconnectDialog.dismiss();
                }
                ApFightActivity.this.fightDisconnectDialog = new com.join.mgps.dialog.l0(ApFightActivity.this, R.style.HKDialogLoading);
                ApFightActivity.this.fightDisconnectDialog.show();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            ApFightActivity.this.serverBrandName.setText("我是主机");
            ApFightActivity.this.clientBrandName.setText("我是客机");
            ApFightActivity.this.resetClientBtn();
            ApFightActivity.this.zxingBtn.setVisibility(0);
            ApFightActivity.this.serverBtn.setVisibility(0);
            ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
            ApFightActivity.this.serverBtn.setEnabled(true);
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity.this.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            ApFightActivity.this.hint.setText("连接已断开,等待小伙伴连接");
            ApFightActivity apFightActivity8 = ApFightActivity.this;
            apFightActivity8.fightClientIcon.setImageDrawable(apFightActivity8.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            ApFightActivity.this.fightStart.setVisibility(8);
            ApFightActivity.this.waitHint.setText("连接已断开,等待小伙伴连接");
            ApFightActivity.this.fightDisconnectDialog.j("连接已断开");
            ApFightActivity.this.fightDisconnectDialog.g(8);
            ApFightActivity.this.fightDisconnectDialog.c(8);
            ApFightActivity.this.fightDisconnectDialog.a(0);
            ApFightActivity apFightActivity9 = ApFightActivity.this;
            apFightActivity9.fightServerIcon.setImageDrawable(apFightActivity9.getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            ApFightActivity.this.num.setText("");
            ApFightActivity.this.lcon.setVisibility(0);
        }

        @Override // l1.c
        public void c() {
            String unused = ApFightActivity.this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("method onSearchTimeout,step=");
            sb.append(ApFightActivity.step);
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = true;
            apFightActivity.lcon.setVisibility(0);
            if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                ApFightActivity.this.fightDisconnectDialog.dismiss();
            }
            if (ApFightActivity.this.waitHint.getText().toString().contains("等待主机开始游戏") || ApFightActivity.step != 1) {
                return;
            }
            ApFightActivity.this.showConnectExceptionDialog(2);
        }

        @Override // l1.c
        public void d() {
            String unused = ApFightActivity.this.TAG;
            com.join.mgps.dialog.c2 c2Var = ApFightActivity.this.mismatchDialog;
            if (c2Var == null || !c2Var.isShowing()) {
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity apFightActivity = ApFightActivity.this;
                apFightActivity.modeSwitchEnable = true;
                if (apFightActivity.fightStart.getVisibility() == 8) {
                    ApFightActivity.this.showConnectExceptionDialog(1);
                }
            }
        }

        @Override // l1.c
        public void e(String str) {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.step = 3;
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.showClientLoading(1, "正在进入房间" + str + ",请稍候...");
        }

        @Override // l1.c
        public void f() {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity.this.lcon.setVisibility(0);
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.showConnectExceptionDialog(1);
            } else {
                ApFightActivity.this.showConnectExceptionDialog(3);
            }
        }

        @Override // l1.c
        public void g() {
            String unused = ApFightActivity.this.TAG;
            com.join.mgps.dialog.c2 c2Var = ApFightActivity.this.mismatchDialog;
            if (c2Var == null || !c2Var.isShowing()) {
                ApFightActivity.this.clientBtn.setEnabled(true);
                ApFightActivity apFightActivity = ApFightActivity.this;
                apFightActivity.modeSwitchEnable = true;
                apFightActivity.lcon.setVisibility(0);
                ApFightActivity.this.mWifiUtils.setHotSpot(ApFightActivity.this.apName, com.join.mgps.data.c.f47302q, false);
            }
        }

        @Override // l1.c
        public void h(List<String> list) {
            String unused = ApFightActivity.this.TAG;
            ApFightActivity.this.clientBtn.setEnabled(true);
            ApFightActivity.step = 4;
            if (ApFightActivity.this.fightClientLoadingDialog != null && ApFightActivity.this.fightClientLoadingDialog.isShowing()) {
                ApFightActivity.this.fightClientLoadingDialog.dismiss();
            }
            if (ApFightActivity.this.fightServerChoseDialog == null || !ApFightActivity.this.fightServerChoseDialog.isShowing()) {
                ApFightActivity.this.fightServerChoseDialog = new com.join.mgps.dialog.n0(ApFightActivity.this, R.style.HKDialogLoading);
                ApFightActivity.this.fightServerChoseDialog.show();
                ApFightActivity.this.fightServerChoseDialog.a(list);
                ApFightActivity.this.fightServerChoseDialog.setOnCancelListener(new b());
            }
        }

        @Override // l1.c
        public void i() {
            String unused = ApFightActivity.this.TAG;
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.startGameClient();
            } else {
                ApFightActivity.this.startGameClientWifi();
                ApFightActivity.this.disConnectWifiFightClient();
            }
            ApFightActivity.this.finish();
        }

        @Override // l1.c
        public void j(String str) {
            ApFightActivity.this.dismissShowClientLoading();
            if (str.split("_").length == 1) {
                ApFightActivity apFightActivity = ApFightActivity.this;
                ApFightActivity apFightActivity2 = ApFightActivity.this;
                apFightActivity.mismatchDialog = new com.join.mgps.dialog.c2(apFightActivity2, R.style.HKDialogLoading, apFightActivity2.mServerIp, str.split("_")[0]);
            } else if (str.split("_").length == 2) {
                ApFightActivity apFightActivity3 = ApFightActivity.this;
                ApFightActivity apFightActivity4 = ApFightActivity.this;
                apFightActivity3.mismatchDialog = new com.join.mgps.dialog.c2(apFightActivity4, R.style.HKDialogLoading, apFightActivity4.mServerIp, str.split("_")[1]);
            }
            ApFightActivity.this.mismatchDialog.show();
        }

        @Override // l1.c
        public void k(String str) {
            if (ApFightActivity.this.fightDisconnectDialog != null && ApFightActivity.this.fightDisconnectDialog.isShowing()) {
                ApFightActivity.this.fightDisconnectDialog.dismiss();
            }
            ApFightActivity.this.hideFrame();
            String unused = ApFightActivity.this.TAG;
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = false;
            apFightActivity.apBtnEnable = false;
            String ssid = WifiUtils.getInstance(apFightActivity.getApplicationContext()).getSSID();
            if (ssid.contains(BuildQRCodeActivity_.D)) {
                ssid = WifiUtils.getInstance(ApFightActivity.this.getApplicationContext()).getApSSID(ApFightActivity.this.getApplicationContext());
            }
            String replaceAll = ssid.replaceAll(m.a.f72569g, "");
            if (replaceAll.contains("_")) {
                replaceAll = replaceAll.substring(replaceAll.lastIndexOf("_") + 1);
            }
            if (ApFightActivity.this.isClient) {
                ApFightActivity.this.prefDef.apName().g(Integer.valueOf(ApFightActivity.this.mWifiUtils.getNetworkId()));
                if (ApFightActivity.this.mode == 0) {
                    TextView textView = ApFightActivity.this.num;
                    textView.setText("房间号" + replaceAll);
                }
                ApFightActivity.this.waitHint.setText("等待主机开始游戏...");
                ApFightActivity.this.isConnectSuccessed = true;
                ApFightActivity apFightActivity2 = ApFightActivity.this;
                apFightActivity2.fightClientIcon.setImageDrawable(apFightActivity2.getResources().getDrawable(R.drawable.fight_ok_person));
                ApFightActivity.this.hint.setText("等待主机开始游戏...");
                ApFightActivity.this.clientBtn.setBackgroundResource(R.drawable.ap_client_btn_3);
                ApFightActivity.this.zxingBtn.setVisibility(8);
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_2);
                ApFightActivity.this.showP2Frame();
                if (str.equals(Build.BRAND)) {
                    ApFightActivity.this.serverBrandName.setText("主机");
                }
                ApFightActivity apFightActivity3 = ApFightActivity.this;
                apFightActivity3.fightServerIcon.setImageDrawable(apFightActivity3.getResources().getDrawable(R.drawable.fight_ok_person_left));
                ApFightActivity.this.dismissShowClientLoading();
                com.papa.sim.statistic.p.l(ApFightActivity.this).q1(ApFightActivity.this.gId, AccountUtil_.getInstance_(ApFightActivity.this).getUid(), ApFightActivity.this.statType, g1.f.G().H(ApFightActivity.this.gId, ApFightActivity.this));
                return;
            }
            ApFightActivity apFightActivity4 = ApFightActivity.this;
            apFightActivity4.fightClientIcon.setImageDrawable(apFightActivity4.getResources().getDrawable(R.drawable.fight_ok_person));
            ApFightActivity.this.fightStart.setVisibility(0);
            ApFightActivity.this.zxing_lay.setVisibility(8);
            ApFightActivity.this.zxing_tip_lay.setVisibility(8);
            ApFightActivity.this.openBeginAnim();
            ApFightActivity.this.showP1Frame();
            ApFightActivity.this.hint.setText("小伙伴已到位，快点开始吧！");
            ApFightActivity.this.serverBtn.setVisibility(8);
            ApFightActivity.this.clientBtn.setBackgroundResource(R.drawable.ap_client_btn_3);
            ApFightActivity.this.zxingBtn.setVisibility(8);
        }

        @Override // l1.c
        public void onSuccess(String str) {
            String unused = ApFightActivity.this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("tbl>>>method onSuccess:");
            sb.append(str);
            com.papa.sim.statistic.p.l(ApFightActivity.this).X(ApFightActivity.this.gId, AccountUtil_.getInstance_(ApFightActivity.this).getUid());
            ApFightActivity apFightActivity = ApFightActivity.this;
            apFightActivity.modeSwitchEnable = false;
            apFightActivity.apBtnEnable = false;
            if (com.join.mgps.Util.d2.h(str)) {
                str = ApFightActivity.this.ap;
            }
            ApFightActivity apFightActivity2 = ApFightActivity.this;
            apFightActivity2.apName = str;
            if (apFightActivity2.mode == 0) {
                TextView textView = ApFightActivity.this.num;
                textView.setText("房间号 " + str.substring(str.lastIndexOf("_") + 1));
            }
            ApFightActivity.this.serverBtn.setVisibility(0);
            ApFightActivity.this.fightStart.setVisibility(8);
            ApFightActivity.this.closeBeginAnim();
            ApFightActivity.this.hideFrame();
            if (ApFightActivity.this.mode == 0) {
                ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_2);
                ApFightActivity.this.showP1Frame();
                ApFightActivity.this.clientBtn.setBackgroundResource(R.drawable.ap_client_btn_2);
                ApFightActivity.this.zxingBtn.setVisibility(8);
                ApFightActivity.this.serverBtn.setEnabled(false);
                ApFightActivity.this.hint.setText("等待小伙伴加入...");
                ApFightActivity.this.waitHint.setText("等待小伙伴加入...");
                ApFightActivity.this.zxing_tip_lay.setVisibility(0);
                TextView textView2 = ApFightActivity.this.zxingTip1;
                textView2.setText("你已创建热点：" + str);
                ApFightActivity.this.zxingTip2.setText("IP: 192.168.43.1");
                ApFightActivity.this.createZxingLay(str);
                ApFightActivity.this.ssidTxt.setText(str);
                ApFightActivity.this.ipTxt.setText(com.join.mgps.socket.entity.b.f52089i);
                ApFightActivity.this.tipTxt1.setText("你已创建热点：");
                ApFightActivity.this.tipTxt2.setText("② 让小伙伴点击“自动加入”");
                ApFightActivity.this.ip_lay.setVisibility(0);
            } else {
                TextView textView3 = ApFightActivity.this.waitHint;
                textView3.setText("已连接" + com.join.android.app.common.utils.f.g(ApFightActivity.this) + ",IP为" + com.join.android.app.common.utils.f.e(ApFightActivity.this));
                ApFightActivity.this.hint.setText("等待小伙伴加入...");
                if (ApFightActivity.this.fightClientLoadingDialog != null && ApFightActivity.this.fightClientLoadingDialog.isShowing()) {
                    ApFightActivity.this.fightClientLoadingDialog.dismiss();
                }
                ApFightActivity.this.zxing_tip_lay.setVisibility(0);
                TextView textView4 = ApFightActivity.this.zxingTip1;
                textView4.setText("你已连WIFI：" + com.join.android.app.common.utils.f.g(ApFightActivity.this));
                TextView textView5 = ApFightActivity.this.zxingTip2;
                textView5.setText("IP: " + com.join.android.app.common.utils.f.e(ApFightActivity.this));
                ApFightActivity apFightActivity3 = ApFightActivity.this;
                apFightActivity3.createZxingLay(com.join.android.app.common.utils.f.e(apFightActivity3));
                ApFightActivity apFightActivity4 = ApFightActivity.this;
                apFightActivity4.ssidTxt.setText(com.join.android.app.common.utils.f.g(apFightActivity4));
                ApFightActivity apFightActivity5 = ApFightActivity.this;
                apFightActivity5.ipTxt.setText(com.join.android.app.common.utils.f.e(apFightActivity5));
                TextView textView6 = ApFightActivity.this.tipTxt2;
                textView6.setText("② 让小伙伴输入IP: " + com.join.android.app.common.utils.f.e(ApFightActivity.this));
                ApFightActivity.this.tipTxt1.setText("你已连接WIFI：");
                ApFightActivity.this.ip_lay.setVisibility(8);
            }
            ApFightActivity apFightActivity6 = ApFightActivity.this;
            apFightActivity6.fightServerIcon.setImageDrawable(apFightActivity6.getResources().getDrawable(R.drawable.fight_ok_person_left));
            ApFightActivity.this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_2);
            ApFightActivity.this.showP1Frame();
            ApFightActivity.this.dismissLoading();
            if (ApFightActivity.this.fightServerChoseDialog == null || !ApFightActivity.this.fightServerChoseDialog.isShowing()) {
                return;
            }
            ApFightActivity.this.fightServerChoseDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements w2.g<com.tbruyelle.rxpermissions2.b> {
        f() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (ApFightActivity.this.checkPermiss("android.permission.READ_PHONE_STATE")) {
                    ApFightActivity.this.onSuccess();
                }
            } else if (bVar.f59249c) {
                ApFightActivity.this.onDenied();
            } else {
                com.join.mgps.Util.a0.c0(ApFightActivity.this).W(ApFightActivity.this, bVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.p f28339a;

        g(com.join.mgps.customview.p pVar) {
            this.f28339a = pVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28339a.dismiss();
            ApFightActivity.this.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 89);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements w2.g<com.tbruyelle.rxpermissions2.b> {
        h() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (ApFightActivity.this.checkPermiss("android.permission.CAMERA")) {
                    ApFightActivity.this.startActivityForResult(new Intent(ApFightActivity.this, CaptureActivity.class), 10001);
                }
            } else if (bVar.f59249c) {
            } else {
                com.join.mgps.Util.a0.c0(ApFightActivity.this).W(ApFightActivity.this, bVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.p f28342a;

        i(com.join.mgps.customview.p pVar) {
            this.f28342a = pVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28342a.dismiss();
            ApFightActivity.this.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 89);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (Build.VERSION.SDK_INT < 11) {
                ((ClipboardManager) ApFightActivity.this.getSystemService("clipboard")).setText(ApFightActivity.this.ap);
            } else {
                ((ClipboardManager) ApFightActivity.this.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, ApFightActivity.this.ap));
            }
            com.join.android.app.common.manager.a.h().j(ApFightActivity.this, "复制成功！", 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.p f28345a;

        k(com.join.mgps.customview.p pVar) {
            this.f28345a = pVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28345a.dismiss();
            ApFightActivity.this.isWranAp = true;
            Intent intent = new Intent(net.lingala.zip4j.util.e.F0);
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.TetherSettings"));
            intent.setAction("android.intent.action.VIEW");
            ApFightActivity.this.startActivityForResult(intent, 88);
        }
    }

    private boolean checkWifiIp(String str) {
        if (str.contains("192.168") || str.startsWith("10.")) {
            return true;
        }
        return str.startsWith("172.");
    }

    private void createServer() {
        if (this.mode == 0) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.ap = com.join.mgps.data.c.f47301p + this.gName + "_" + this.suiji;
                if (this.mWifiUtils.getWifiApStateInt() != 11 && this.isWranAp) {
                    if (this.mWifiUtils.getWifiApStateInt() == 13 || this.mWifiUtils.getWifiApStateInt() == 3) {
                        closeServer();
                        this.num.setText("");
                        this.serverBrandName.setText("我是主机");
                        this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
                        this.mgFightServerManager.startServer(this.ap);
                        showLoading();
                        return;
                    }
                    return;
                }
                this.isUsing = false;
                this.serverBtn.setEnabled(true);
                com.join.mgps.customview.p pVar = new com.join.mgps.customview.p(this);
                pVar.show();
                pVar.b(this.ap);
                pVar.a(new j());
                pVar.d(new k(pVar));
                return;
            }
            closeServer();
            this.num.setText("");
            this.serverBrandName.setText("我是主机");
            this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
            this.mgFightServerManager.startServer(this.gName);
            showLoading();
            return;
        }
        if (!com.join.android.app.common.utils.f.k(this)) {
            this.mWifiUtils.OpenWifi();
        }
        this.mgWifiFightServerManger.startServer(this.gId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createZxingLay(String str) {
        if (this.mode == 0) {
            this.zxingImg.setImageBitmap(v1.a.b(str, this));
            this.tipWifi.setVisibility(4);
        } else {
            this.zxingImg.setImageBitmap(v1.a.b(str, this));
            this.tipWifi.setVisibility(0);
        }
        new Handler().postDelayed(new d(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissShowClientLoading() {
        com.join.mgps.dialog.a aVar = this.fightClientLoadingDialog;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    private void getDeviceInfo() {
        new com.tbruyelle.rxpermissions2.c(this).r("android.permission.READ_PHONE_STATE").B5(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDenied() {
        com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
    }

    private void onNeverAskAgain() {
        com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccess() {
        this.isGetPermission = true;
        this.getSSID = this.mWifiUtils.getApSSIDAll(this);
        if (this.type == 1) {
            zxingBtn();
        } else {
            clientBtn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetClientBtn() {
        if (this.mode == 0) {
            this.clientBtn.setBackgroundResource(R.drawable.ap_client_ap_btn);
        } else {
            this.clientBtn.setBackgroundResource(R.drawable.ap_client_wifi_btn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClientLoading(int i2, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("method showClientLoading() called.stage=");
        sb.append(i2);
        com.join.mgps.dialog.a aVar = this.fightClientLoadingDialog;
        if (aVar != null && aVar.isShowing()) {
            this.fightClientLoadingDialog.dismiss();
        }
        com.join.mgps.dialog.a aVar2 = new com.join.mgps.dialog.a(this, R.style.HKDialogLoading);
        this.fightClientLoadingDialog = aVar2;
        aVar2.setCancelable(false);
        this.fightClientLoadingDialog.setCanceledOnTouchOutside(false);
        if (i2 == 0) {
            this.fightClientLoadingDialog.show();
            this.fightClientLoadingDialog.a("正在搜索游戏房间,请稍候...");
            step = 1;
        }
        if (i2 == 1) {
            try {
                this.fightClientLoadingDialog.show();
                this.fightClientLoadingDialog.a(str);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConnectExceptionDialog(int i2) {
        try {
            if (i2 == 1) {
                dismissShowClientLoading();
                com.join.mgps.dialog.l0 l0Var = this.fightDisconnectDialog;
                if (l0Var != null) {
                    l0Var.dismiss();
                }
                com.join.mgps.dialog.l0 l0Var2 = new com.join.mgps.dialog.l0(this, R.style.HKDialogLoading);
                this.fightDisconnectDialog = l0Var2;
                if (this.isConnectSuccessed) {
                    return;
                }
                step = 5;
                l0Var2.show();
                this.fightDisconnectDialog.j("加入房间失败");
                this.fightDisconnectDialog.f("请确认手机WIFI功能是否打开，并请确保本机热点处于关闭状态，或重新搜索房间");
                this.fightDisconnectDialog.h(new a());
                this.isConnectSuccessed = false;
            } else if (i2 != 2) {
                if (i2 == 3) {
                    dismissShowClientLoading();
                    if (this.f28330w == null) {
                        this.f28330w = new com.join.mgps.dialog.b2(this, R.style.HKDialogLoading, this.mServerIp);
                    }
                    if (this.f28330w.isShowing()) {
                        return;
                    }
                    this.f28330w.show();
                }
            } else {
                dismissShowClientLoading();
                com.join.mgps.dialog.l0 l0Var3 = this.fightDisconnectDialog;
                if (l0Var3 != null) {
                    l0Var3.dismiss();
                }
                com.join.mgps.dialog.l0 l0Var4 = new com.join.mgps.dialog.l0(this, R.style.HKDialogLoading);
                this.fightDisconnectDialog = l0Var4;
                step = 2;
                l0Var4.show();
                this.fightDisconnectDialog.j("未搜索到可用房间");
                this.fightDisconnectDialog.f("无法搜索到小伙伴创建的热点，请重试");
                this.fightDisconnectDialog.h(new b());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 3000)
    public void afterStartGame() {
        closeServer();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        getWindow().addFlags(128);
        this.downloadTask = g1.f.G().B(this.gameId);
        this.isWranAp = false;
        this.suiji = new Random().nextInt(900) + 100;
        this.gId = this.downloadTask.getCrc_link_type_val();
        this.gName = this.downloadTask.getShowName();
        this.romPath = this.downloadTask.getGameZipPath();
        this.plugin_num = this.downloadTask.getRomType();
        this.mWifiUtils = WifiUtils.getInstance(getApplicationContext());
        if (this.gName.replaceAll(" ", "").length() > 6) {
            this.gName = this.gName.replaceAll(" ", "").substring(0, 6);
        }
        this.mgFightServerManager = new MGFightServerManager(this, this.fightConnectListener);
        this.mgFightClientManager = new MGFightClientManager(this, this.fightConnectListener);
        this.mgWifiFightServerManger = new MGWifiFightServerManger(this, this.fightConnectListener, this.gId, this.gName);
        this.mgWifiFightClientManger = new MGWifiFightClientManger(this, this.fightConnectListener);
        com.papa.sim.statistic.p.l(this).I(this.gId, AccountUtil_.getInstance_(this).getUid());
        this.lcon.setOnClickListener(new c());
        this.beginAnimation = AnimationUtils.loadAnimation(this, R.anim.net_match_btn_alpha);
        this.modeIconWifi.performClick();
        this.btnAnimation = AnimationUtils.loadAnimation(this, R.anim.net_match_btn_alpha);
        this.mPermissionHelper = new ru.alexbykov.nopermission.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void backClicked() {
        com.join.mgps.Util.t0.g("a---------");
        hideFrame();
        this.serverBtn.setEnabled(true);
        this.clientBtn.setEnabled(true);
        step = 0;
        this.modeSwitchEnable = true;
        if (!this.isUsing) {
            finish();
            return;
        }
        this.isUsing = false;
        this.waitHint.setText("");
        this.zxing_tip_lay.setVisibility(8);
        revertHint();
        boolean z3 = this.isClient;
        if (!z3) {
            restoreServer();
        } else if (z3) {
            if (!this.isConnectSuccessed) {
                finish();
            } else {
                restoreClient();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void clientBtn() {
        int i2;
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        String apSSID = this.mWifiUtils.getApSSID(this);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28 && (i2 = this.mode) == 0) {
            if (!this.isGetPermission && i2 == 0) {
                this.type = 2;
                getDeviceInfo();
                return;
            }
            apSSID = this.mWifiUtils.getApSSIDAll(this);
            this.getSSID = apSSID;
            if ("unknown id".equals(apSSID) || com.join.mgps.Util.d2.h(apSSID)) {
                com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
                return;
            }
        }
        if (i4 >= 26 && this.mode == 0 && (!com.join.android.app.common.utils.f.k(this) || com.join.mgps.Util.d2.h(apSSID) || !apSSID.contains(this.gName))) {
            com.join.mgps.customview.p pVar = new com.join.mgps.customview.p(this);
            pVar.show();
            pVar.c(com.join.mgps.data.c.f47301p + this.gName);
            pVar.e("去连接", new i(pVar));
            return;
        }
        if (i4 < 26 && this.mode != 0 && !com.join.android.app.common.utils.f.k(this)) {
            this.mWifiUtils.OpenWifi();
        }
        if (!this.apBtnEnable) {
            if (this.isClient) {
                return;
            }
            com.join.mgps.Util.i2.a(this).b("你已经是主机");
            return;
        }
        this.clientBtn.setEnabled(false);
        revertHint();
        this.statType = 1;
        com.papa.sim.statistic.p.l(this).G(this.gId, AccountUtil_.getInstance_(this).getUid(), this.statType, g1.f.G().H(this.gId, this));
        this.isUsing = true;
        this.isClient = true;
        this.waitHint.setText("");
        if (this.mode == 0) {
            showClientLoading(0, "");
            this.mgFightClientManager.setGameName(this.gName);
            this.mgFightClientManager.connect();
            return;
        }
        FightWifiInputDialogActivity_.G0(this).startForResult(9001);
    }

    void closeBeginAnim() {
        this.p1status_btn_around_img.setVisibility(8);
        this.p1status_btn_around_img.clearAnimation();
    }

    public void closeServer() {
        if (this.mode == 0) {
            this.mgFightServerManager.disConnect();
            this.mgFightServerManager.shutDown();
            return;
        }
        this.mgWifiFightServerManger.disConnect();
        this.mgWifiFightServerManger.shutDownServer();
    }

    @Receiver(actions = {com.join.mgps.broadcast.b.f44787a})
    public void connectToChosen(Intent intent) {
        com.join.mgps.dialog.n0 n0Var = this.fightServerChoseDialog;
        if (n0Var != null && n0Var.isShowing()) {
            this.fightServerChoseDialog.dismiss();
        }
        this.wifiInfo = WifiUtils.getInstance(getApplicationContext()).getWifiInfo();
        this.specifiedSSID = intent.getStringExtra(BuildQRCodeActivity_.D);
        StringBuilder sb = new StringBuilder();
        sb.append("connect to specifiedSSID ::");
        sb.append(this.specifiedSSID);
        if (this.specifiedSSID == null) {
            return;
        }
        com.join.mgps.dialog.n0 n0Var2 = this.fightServerChoseDialog;
        if (n0Var2 != null) {
            n0Var2.dismiss();
        }
        WifiInfo wifiInfo = this.wifiInfo;
        String ssid = wifiInfo != null ? wifiInfo.getSSID() : "";
        if (ssid != null && ssid.equals(this.specifiedSSID)) {
            showClientLoading(1, "正在进入房间\"" + this.mWifiApList.get(0) + "\",请稍候...");
            try {
                this.mgFightClientManager.connectToChosen();
                this.fightServerChoseDialog.dismiss();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        showClientLoading(1, "正在进入房间" + this.specifiedSSID + ",请稍候...");
        this.mgFightClientManager.connectToChosen(this.specifiedSSID);
        this.fightServerChoseDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void disConnectWifiFightAPClient() {
        this.mgFightClientManager.disConnect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void disConnectWifiFightClient() {
        this.mgWifiFightClientManger.disConnect();
    }

    @Override // com.BaseActivity
    public void dismissLoading() {
        com.join.mgps.dialog.k0 k0Var = this.fightCreateServerDialog;
        if (k0Var != null) {
            k0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Click
    public void fightStartClicked() {
        try {
            com.papa.sim.statistic.p.l(this).H(this.gId, AccountUtil_.getInstance_(this).getUid());
            if (this.mode == 0) {
                this.mgFightServerManager.startGame();
            } else {
                this.mgWifiFightServerManger.startGame();
            }
            startGameServer();
            afterStartGame();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void hideFrame() {
        this.ap_net_match_info_1p_frame.setVisibility(4);
        this.ap_net_match_info_2p_frame.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void modeIconAP() {
        if (!this.modeSwitchEnable) {
            com.join.mgps.Util.i2.a(this).b("游戏创建成功，您当前无法切换模式哦~");
        } else if (this.mode == 1) {
            restoreServer();
            this.modeIconWifi.setImageDrawable(getResources().getDrawable(R.drawable.mode_wifi_pressed));
            this.modeIconAP.setImageDrawable(getResources().getDrawable(R.drawable.mode_ap_normal));
            this.hint.setText(getString(R.string.ap_hint));
            this.mode = 0;
            resetClientBtn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void modeIconWifi() {
        if (!this.modeSwitchEnable) {
            com.join.mgps.Util.i2.a(this).b("游戏创建成功，您当前无法切换模式哦~");
        } else if (this.mode == 0) {
            this.hint.setText(getString(R.string.wifi_hint));
            this.modeIconWifi.setImageDrawable(getResources().getDrawable(R.drawable.mode_wifi_normal));
            this.modeIconAP.setImageDrawable(getResources().getDrawable(R.drawable.mode_ap_pressed));
            this.mode = 1;
            resetClientBtn();
            if (!this.isClient) {
                closeServer();
                restoreServer();
                return;
            }
            disConnectWifiFightAPClient();
            restoreClient();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        this.clientBtn.setEnabled(true);
        if (i2 == 9001 && i4 == 9002) {
            showClientLoading(1, "正在进入房间,请稍候...");
            String string = intent.getExtras().getString(IjkMediaPlayer.OnNativeInvokeListener.ARG_IP);
            this.mServerIp = string;
            this.mgWifiFightClientManger.connect(string, this.gId);
        } else if (i4 == -1 && this.mode == 1) {
            String string2 = intent.getExtras().getString("result");
            this.mServerIp = string2;
            if (checkWifiIp(string2)) {
                showClientLoading(1, "正在进入房间,请稍候...");
                this.mgWifiFightClientManger.connect(this.mServerIp, this.gId);
                return;
            }
            com.join.mgps.Util.i2.a(this).b("您扫描的不是WIFI模式联机二维码哦~");
        } else if (i4 == -1 && this.mode == 0) {
            String string3 = intent.getExtras().getString("result");
            if (!string3.contains("papa") && !string3.contains(this.gName)) {
                com.join.mgps.Util.i2.a(this).b("您扫描的不是热点模式联机二维码哦~");
                return;
            }
            showClientLoading(0, "");
            this.mgFightClientManager.setGameName(this.gName);
            this.mgFightClientManager.connect(string3);
        } else if (i2 == 89 && this.mode == 0) {
            clientBtn();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        backClicked();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        MGWifiFightServerManger mGWifiFightServerManger = this.mgWifiFightServerManger;
        if (mGWifiFightServerManger != null) {
            mGWifiFightServerManger.unregisterBroadCast();
        }
        MGWifiFightClientManger mGWifiFightClientManger = this.mgWifiFightClientManger;
        if (mGWifiFightClientManger != null) {
            mGWifiFightClientManger.unregisterBroadCast();
        }
        if (!this.isClient) {
            this.mgFightServerManager.disConnect();
            this.mgFightServerManager.shutDown();
        } else {
            disConnectWifiFightAPClient();
        }
        this.prefDef.isFightActivity().g(Boolean.FALSE);
        com.join.mgps.dialog.l0 l0Var = this.fightDisconnectDialog;
        if (l0Var != null) {
            l0Var.dismiss();
        }
        MGFightClientManager mGFightClientManager = this.mgFightClientManager;
        if (mGFightClientManager != null) {
            try {
                unregisterReceiver(mGFightClientManager.getmWifiapBroadcast());
            } catch (Exception unused) {
            }
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 != 99998) {
            super.onRequestPermissionsResult(i2, strArr, iArr);
            try {
                this.mPermissionHelper.q(i2, strArr, iArr);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (iArr[0] == 0) {
        } else {
            if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.ACCESS_WIFI_STATE")) {
                Toast.makeText(this, "对战需要网络权限,请授权网络权限(部分手机显示网络与定位权限)", 0).show();
            } else {
                Toast.makeText(this, "没有获取到权限,对战需要网络权限,请授权网络权限(部分手机显示网络与定位权限)", 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (WifiUtils.getInstance(getApplicationContext()).isWifiEnable()) {
            this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
            this.prefDef.ssidBefore().g(this.mWifiUtils.getSSID());
            StringBuilder sb = new StringBuilder();
            sb.append("ssid original is ");
            sb.append(this.mWifiUtils.getSSID());
            this.isWifiConnectedBefore = false;
        } else {
            this.prefDef.isWifiConnectedBefore().g(Boolean.FALSE);
        }
        com.join.mgps.dialog.l0 l0Var = this.fightDisconnectDialog;
        if (l0Var != null) {
            l0Var.dismiss();
        }
        this.prefDef.isFightActivity().g(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    void openBeginAnim() {
        this.p1status_btn_around_img.setVisibility(0);
        this.p1status_btn_around_img.startAnimation(this.btnAnimation);
    }

    void restoreClient() {
        this.modeSwitchEnable = true;
        this.apBtnEnable = true;
        if (this.mode == 0) {
            disConnectWifiFightAPClient();
        } else {
            disConnectWifiFightClient();
        }
        this.fightServerIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        resetClientBtn();
        this.zxingBtn.setVisibility(0);
        this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
        this.serverBrandName.setText("我是主机");
        this.clientBrandName.setText("我是客机");
        this.serverBtn.setEnabled(true);
        this.clientBtn.setEnabled(true);
        revertHint();
        this.waitHint.setText("");
        this.num.setText("");
        this.lcon.setVisibility(0);
    }

    void restoreServer() {
        this.modeSwitchEnable = true;
        this.apBtnEnable = true;
        this.mgWifiFightServerManger.disConnect();
        this.mgWifiFightServerManger.shutDown();
        this.mWifiUtils.setHotSpot(this.apName, com.join.mgps.data.c.f47302q, false);
        this.mgFightServerManager.disConnect();
        this.mgFightServerManager.shutDown();
        this.mgWifiFightServerManger.shutDownServer();
        this.fightStart.setVisibility(8);
        this.fightServerIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        this.fightClientIcon.setImageDrawable(getResources().getDrawable(R.drawable.net_match_ap_wait_join_portrait));
        closeBeginAnim();
        hideFrame();
        this.serverBrandName.setText("我是主机");
        this.serverBtn.setVisibility(0);
        this.serverBtn.setBackgroundResource(R.drawable.ap_server_btn_1);
        this.clientBrandName.setText("我是客机");
        resetClientBtn();
        this.zxingBtn.setVisibility(0);
        this.zxingBtn.setVisibility(0);
        this.serverBtn.setEnabled(true);
        this.clientBtn.setEnabled(true);
        revertHint();
        this.lcon.setVisibility(0);
        this.num.setText("");
        this.waitHint.setText("");
        this.mWifiUtils.openWifi(this);
    }

    void revertHint() {
        int i2 = this.mode;
        if (i2 == 0) {
            this.hint.setText(getString(R.string.ap_hint));
        } else if (i2 == 1) {
            this.hint.setText(getString(R.string.wifi_hint));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void serverBtn() {
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        if (!this.apBtnEnable) {
            if (this.isClient) {
                com.join.mgps.Util.i2.a(this).b("你已经是客机");
                return;
            }
            return;
        }
        this.isUsing = true;
        com.join.mgps.Util.t0.g("aisUsing----" + this.isUsing);
        this.isClient = false;
        com.papa.sim.statistic.p.l(this).C(this.gId, AccountUtil_.getInstance_(this).getUid());
        this.serverBtn.setEnabled(false);
        createServer();
    }

    @Override // com.BaseActivity
    public void showLoading() {
        com.join.mgps.dialog.k0 k0Var = new com.join.mgps.dialog.k0(this, R.style.HKDialogLoading);
        this.fightCreateServerDialog = k0Var;
        try {
            k0Var.show();
        } catch (Exception unused) {
        }
    }

    void showP1Frame() {
        this.ap_net_match_info_1p_frame.setVisibility(0);
    }

    void showP2Frame() {
        this.ap_net_match_info_2p_frame.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startGameClient() {
        UtilsMy.i3(this, this.gId, this.romPath, this.plugin_num, 2, com.join.mgps.socket.entity.b.f52089i, this.downloadTask.getPlugin_area_val(), this.downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startGameClientWifi() {
        UtilsMy.i3(this, this.gId, this.romPath, this.plugin_num, 2, this.mServerIp, this.downloadTask.getPlugin_area_val(), this.downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startGameServer() {
        UtilsMy.i3(this, this.gId, this.romPath, this.plugin_num, 1, "", this.downloadTask.getPlugin_area_val(), this.downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void zxingBtn() {
        int i2;
        String apSSID = this.mWifiUtils.getApSSID(this);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28 && (i2 = this.mode) == 0) {
            if (!this.isGetPermission && i2 == 0) {
                this.type = 1;
                getDeviceInfo();
                return;
            }
            apSSID = this.mWifiUtils.getApSSIDAll(this);
            this.getSSID = apSSID;
            if ("unknown id".equals(apSSID) || com.join.mgps.Util.d2.h(apSSID)) {
                com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
                return;
            }
        }
        if (i4 >= 26 && this.mode == 0 && (!com.join.android.app.common.utils.f.k(this) || com.join.mgps.Util.d2.h(apSSID) || !apSSID.contains(this.gName))) {
            com.join.mgps.customview.p pVar = new com.join.mgps.customview.p(this);
            pVar.show();
            pVar.c(com.join.mgps.data.c.f47301p + this.gName);
            pVar.e("去连接", new g(pVar));
            return;
        }
        if (!com.join.android.app.common.utils.f.k(this)) {
            this.mWifiUtils.OpenWifi();
        }
        if (!this.apBtnEnable) {
            if (this.isClient) {
                return;
            }
            com.join.mgps.Util.i2.a(this).b("你已经是主机");
            return;
        }
        revertHint();
        this.isUsing = true;
        this.isClient = true;
        this.waitHint.setText("");
        this.statType = 2;
        com.papa.sim.statistic.p.l(this).G(this.gId, AccountUtil_.getInstance_(this).getUid(), this.statType, g1.f.G().H(this.gId, this));
        new com.tbruyelle.rxpermissions2.c(this).r("android.permission.CAMERA").B5(new h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void zxingCloseBtn() {
        this.zxing_lay.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void zxingTipBtn() {
        this.zxing_lay.setVisibility(0);
    }
}
