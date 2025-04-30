package com.join.mgps.activity;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.setting_activity)
/* loaded from: classes3.dex */
public class MGSettingActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f33520a;

    /* renamed from: b  reason: collision with root package name */
    private String f33521b = getClass().getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.b f33522c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f33523d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    RelativeLayout f33524e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RelativeLayout f33525f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    RelativeLayout f33526g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f33527h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f33528i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f33529j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f33530k;
    @Pref

    /* renamed from: l  reason: collision with root package name */
    PrefDef_ f33531l;

    /* renamed from: m  reason: collision with root package name */
    private AccountBean f33532m;

    /* renamed from: n  reason: collision with root package name */
    private com.join.mgps.dialog.f f33533n;

    /* renamed from: o  reason: collision with root package name */
    private long f33534o;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void D0() {
        this.f33523d = com.join.mgps.rpc.impl.c.P1();
        this.f33522c = com.join.mgps.rpc.impl.a.b0();
        this.f33520a = this;
        TextUtils.isEmpty("wufun");
        this.f33530k.setText("关于悟饭");
        J0();
        TextView textView = this.f33529j;
        if (textView != null) {
            textView.setText(com.join.mgps.Util.r.d(this.f33520a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        F0();
    }

    @Background
    public void F0() {
        if (com.join.android.app.common.utils.f.j(this.f33520a)) {
            try {
                ResultMainBean<List<APKVersionMainBean>> r12 = this.f33523d.r1(RequestBeanUtil.getInstance(getApplicationContext()).getApkVersion(2, 1, 0));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        MGPapaAboutActivity_.N0(this.f33520a).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        TextUtils.isEmpty("wufun");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51524k + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.f33520a, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        com.join.mgps.Util.r.i(this.f33520a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        this.f33527h.setText(this.f33530k.getText());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this.f33520a).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.mgps.dialog.f fVar = this.f33533n;
        if (fVar == null || !fVar.isShowing()) {
            return;
        }
        this.f33533n.dismiss();
    }

    @UiThread
    public void showVersionDownLoadHint(VersionDto versionDto, boolean z3) {
        SharedPreferences.Editor edit = getSharedPreferences("VersionXML", 0).edit();
        edit.putBoolean("Mandatory", z3);
        edit.putString("VersionDto", JsonMapper.getInstance().toJson(versionDto));
        edit.commit();
        if (this.f33533n == null) {
            this.f33533n = new com.join.mgps.dialog.f(this, R.style.HKDialogLoading, versionDto, z3);
        }
        if (this.f33533n.isShowing()) {
            return;
        }
        this.f33533n.show();
    }
}
