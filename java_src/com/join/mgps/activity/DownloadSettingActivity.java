package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.message.MessageSettingActivity_;
import com.join.mgps.dialog.t0;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccoutLoginOutRequest;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.download_setting_activity)
/* loaded from: classes3.dex */
public class DownloadSettingActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f29642a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f29643b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f29644c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f29645d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f29646e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f29647f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f29648g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f29649h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f29650i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f29651j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    View f29652k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    View f29653l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f29654m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    RelativeLayout f29655n;

    /* renamed from: o  reason: collision with root package name */
    private Context f29656o;
    @Pref

    /* renamed from: p  reason: collision with root package name */
    PrefDef_ f29657p;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.rpc.d f29660s;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.dialog.f f29661t;

    /* renamed from: v  reason: collision with root package name */
    Dialog f29663v;

    /* renamed from: x  reason: collision with root package name */
    AccountBean f29665x;

    /* renamed from: q  reason: collision with root package name */
    private boolean f29658q = true;

    /* renamed from: r  reason: collision with root package name */
    private boolean f29659r = true;

    /* renamed from: u  reason: collision with root package name */
    private String f29662u = DownloadSettingActivity.class.getName();

    /* renamed from: w  reason: collision with root package name */
    AlertDialog.Builder f29664w = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29666a;

        a(boolean z3) {
            this.f29666a = z3;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            com.join.mgps.pref.h.n(DownloadSettingActivity.this).k0(!this.f29666a);
            DownloadSettingActivity.this.f29654m.setImageResource(R.drawable.ic_notif_closed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements t0.f {
        c() {
        }

        @Override // com.join.mgps.dialog.t0.f
        public void a() {
            DownloadSettingActivity.this.f29650i.setText("永不提醒");
        }

        @Override // com.join.mgps.dialog.t0.f
        public void b() {
            DownloadSettingActivity.this.f29650i.setText("每次都提醒");
        }

        @Override // com.join.mgps.dialog.t0.f
        public void c() {
            DownloadSettingActivity.this.f29650i.setText("大于50M提醒");
        }

        @Override // com.join.mgps.dialog.t0.f
        public void d() {
            DownloadSettingActivity.this.f29650i.setText("大于30M提醒");
        }

        @Override // com.join.mgps.dialog.t0.f
        public void e() {
            DownloadSettingActivity.this.f29650i.setText("大于100M提醒");
        }
    }

    private void K0() {
        this.f29657p.lastCheckInTime().g(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        MYAccountDetialActivity_.r1(this.f29656o).a(AccountUtil_.getInstance_(this.f29656o).getAccountData()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        org.androidannotations.api.sharedpreferences.d isAutoWifiDownUpdate = this.f29657p.isAutoWifiDownUpdate();
        Boolean bool = Boolean.TRUE;
        if (isAutoWifiDownUpdate.e(bool).booleanValue()) {
            this.f29646e.setImageResource(R.drawable.handshank_virtualkey_off);
            this.f29657p.isAutoWifiDownUpdate().g(Boolean.FALSE);
            return;
        }
        this.f29646e.setImageResource(R.drawable.handshank_virtualkey_on);
        this.f29657p.isAutoWifiDownUpdate().g(bool);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        boolean x3 = com.join.mgps.pref.h.n(this).x();
        if (x3) {
            Dialog dialog = this.f29663v;
            if (dialog == null) {
                this.f29664w = new AlertDialog.Builder(this.f29656o, R.style.AlertDialogCustom);
            } else if (dialog.isShowing()) {
                return;
            }
            this.f29664w.setTitle("提示");
            this.f29664w.setMessage("该设置应用于游戏下载后的推荐，建议您保留开启。");
            this.f29664w.setPositiveButton("仍要关闭", new a(x3));
            this.f29664w.setNegativeButton("取消", new b());
            this.f29663v = this.f29664w.show();
            return;
        }
        com.join.mgps.pref.h.n(this).k0(!x3);
        this.f29654m.setImageResource(R.drawable.ic_notif_open);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        J0();
    }

    @Background
    public void J0() {
        if (com.join.android.app.common.utils.f.j(this.f29656o)) {
            try {
                ResultMainBean<List<APKVersionMainBean>> r12 = this.f29660s.r1(RequestBeanUtil.getInstance(getApplicationContext()).getApkVersion(2, 1, 0));
                ApkVersionbean apkVersionbean = r12.getMessages().getData().get(0).getApp().get(0);
                if (r12.getFlag() == 1) {
                    String[] A = com.join.android.app.common.utils.j.n(getApplicationContext()).A();
                    String ver = apkVersionbean.getVer();
                    int parseInt = Integer.parseInt(ver.split("_")[0]);
                    int parseInt2 = Integer.parseInt(apkVersionbean.getVer_compatible().split("_")[0]);
                    if (Integer.parseInt(A[0]) <= parseInt) {
                        VersionDto versionDto = new VersionDto();
                        versionDto.setAndroidUrl(apkVersionbean.getDown_url());
                        versionDto.setVersionNo(Integer.parseInt(ver.split("_")[0]));
                        versionDto.setInfo(apkVersionbean.getVer_info());
                        versionDto.setHead_pic(apkVersionbean.getHead_pic());
                        versionDto.setTow_tpl_back_ground_pic(apkVersionbean.getTow_tpl_back_ground_pic());
                        versionDto.setTpl_type(apkVersionbean.getTpl_type());
                        if (Integer.parseInt(A[0]) < parseInt) {
                            if (Float.parseFloat(A[0]) < parseInt2) {
                                showVersionDownLoadHint(versionDto, true);
                            } else {
                                showVersionDownLoadHint(versionDto, false);
                            }
                        } else {
                            error("无需更新,已是最新版本");
                        }
                    } else {
                        error("无需更新,已是最新版本");
                    }
                }
                return;
            } catch (Exception unused) {
                error("网络似乎不通哦~");
                return;
            }
        }
        error("网络似乎不通哦~");
    }

    void L0() {
        try {
            String localUserIcon = AccountUtil_.getInstance_(this).getLocalUserIcon();
            if (com.join.mgps.Util.d2.i(localUserIcon)) {
                File file = new File(localUserIcon);
                if (file.exists()) {
                    file.delete();
                    Fresco.getImagePipeline().e(MyImageLoader.F(file));
                }
            }
            AccountUtil_.getInstance_(this).setLocalUserIcon(null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        R0();
        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
        this.f29665x = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        L0();
        K0();
        com.join.mgps.broadcast.a.a(this.f29656o);
        com.join.mgps.Util.i2.a(this.f29656o).b("退出登录成功");
        this.f29657p.singleGameShowDialog().g("");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.rl_developer})
    public void O0() {
        DeveloperActivity_.X0(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        com.join.mgps.dialog.t0 w3 = com.join.mgps.Util.a0.c0(this.f29656o).w(this.f29656o);
        w3.j(new c());
        w3.k(this.f29657p);
        w3.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65498r})
    public void Q0(Intent intent) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R0() {
        if (com.join.android.app.common.utils.f.j(this.f29656o)) {
            try {
                AccoutLoginOutRequest accoutLoginOutRequest = new AccoutLoginOutRequest();
                accoutLoginOutRequest.setUid(this.f29665x.getUid() + "");
                accoutLoginOutRequest.setSign(com.join.mgps.Util.u1.f(accoutLoginOutRequest));
                AccountResultMainBean<AccountTokenSuccess> b4 = com.join.mgps.rpc.impl.a.b0().b(accoutLoginOutRequest.getParams());
                if (b4 != null && b4.getError() == 0) {
                    if (b4.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
                    } else {
                        showToast(b4.getData().getError_msg());
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        if (IntentUtil.getInstance().goLogin(this.f29656o)) {
            return;
        }
        MessageSettingActivity_.Q0(this.f29656o).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        VideoSettingActivity_.L0(this.f29656o).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        com.join.mgps.Util.t0.d(this.f29662u, "afterview");
        this.f29647f.setText("设置");
        this.f29656o = this;
        this.f29660s = com.join.mgps.rpc.impl.c.P1();
        this.f29651j.setText(com.join.mgps.Util.r.d(this.f29656o));
        if (com.join.mgps.pref.h.n(this).x()) {
            this.f29654m.setImageResource(R.drawable.ic_notif_open);
        } else {
            this.f29654m.setImageResource(R.drawable.ic_notif_closed);
        }
        try {
            if (AccountUtil_.getInstance_(this.f29656o).isTourist() || AccountUtil_.getInstance_(this.f29656o).getAccountData().getUid() == 0) {
                this.f29653l.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        int intValue = this.f29657p.gprsNoticeInfo().d().intValue();
        if (intValue == 0) {
            this.f29650i.setText("每次都提醒");
        } else if (intValue == 1) {
            this.f29650i.setText("大于30M提醒");
        } else if (intValue == 2) {
            this.f29650i.setText("大于50M提醒");
        } else if (intValue == 3) {
            this.f29650i.setText("大于100M提醒");
        } else if (intValue == 4) {
            this.f29650i.setText("永不提醒");
        }
        String g4 = com.join.mgps.pref.h.n(this.f29656o).g();
        this.f29649h.setText(g4);
        long c4 = com.join.mgps.Util.q1.c(g4);
        long b4 = com.join.mgps.Util.q1.b(g4);
        TextView textView = this.f29649h;
        textView.setText("可用空间：" + UtilsMy.g(c4) + net.lingala.zip4j.util.e.F0 + UtilsMy.g(b4) + "\n存储位置：" + g4);
        if (this.f29657p.isAutoWifiDownUpdate().d().booleanValue()) {
            this.f29646e.setImageResource(R.drawable.handshank_virtualkey_on);
        } else {
            this.f29646e.setImageResource(R.drawable.handshank_virtualkey_off);
        }
        if (AccountUtil_.getInstance_(this.f29656o).isTourist()) {
            this.f29652k.setVisibility(8);
        }
        this.f29655n.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this.f29656o).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.t0.d(this.f29662u, "onDestroy");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f29656o).b(str);
    }

    @UiThread
    public void showVersionDownLoadHint(VersionDto versionDto, boolean z3) {
        SharedPreferences.Editor edit = getSharedPreferences("VersionXML", 0).edit();
        edit.putBoolean("Mandatory", z3);
        edit.putString("VersionDto", JsonMapper.getInstance().toJson(versionDto));
        edit.commit();
        if (this.f29661t == null) {
            this.f29661t = new com.join.mgps.dialog.f(this, R.style.HKDialogLoading, versionDto, z3);
        }
        if (this.f29661t.isShowing()) {
            return;
        }
        this.f29661t.show();
    }
}
