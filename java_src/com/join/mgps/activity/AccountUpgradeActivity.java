package com.join.mgps.activity;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.SendMobileCodeRequestBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.TouristPerfectInfoRequestBean;
import com.join.mgps.pref.PrefDef_;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mg_account_upgrade)
/* loaded from: classes3.dex */
public class AccountUpgradeActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f28283a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    EditText f28284b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    EditText f28285c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f28286d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    EditText f28287e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f28288f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f28289g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f28290h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.b f28291i;

    /* renamed from: j  reason: collision with root package name */
    private c f28292j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.customview.t f28293k = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28294a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f28295b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28296c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f28297d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28298e;

        a(String str, String str2, String str3, String str4, int i2) {
            this.f28294a = str;
            this.f28295b = str2;
            this.f28296c = str3;
            this.f28297d = str4;
            this.f28298e = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity.this.R0(this.f28294a, this.f28295b, this.f28296c, this.f28297d, this.f28298e);
            AccountUpgradeActivity.this.G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity.this.G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends CountDownTimer {
        public c(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            AccountUpgradeActivity.this.f28288f.setText("获取验证码");
            AccountUpgradeActivity.this.f28288f.setBackgroundResource(R.drawable.get_validate_code_default);
            AccountUpgradeActivity.this.f28288f.setClickable(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            AccountUpgradeActivity.this.f28288f.setClickable(false);
            AccountUpgradeActivity.this.f28288f.setBackgroundResource(R.drawable.get_validate_code_pressed);
            Button button = AccountUpgradeActivity.this.f28288f;
            button.setText((j4 / 1000) + "秒");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        com.join.mgps.customview.t tVar = this.f28293k;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f28293k.dismiss();
    }

    private void J0() {
        this.f28283a.setText("完善资料，享受更多特权");
    }

    private boolean N0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            error("手机号码不能为空！");
            return false;
        } else if (Pattern.compile("^[1][0-9]{10}$").matcher(str).matches()) {
            return true;
        } else {
            error("手机号码格式错误！");
            return false;
        }
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
    }

    private int getChineseCount(String str) {
        Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
        int i2 = 0;
        while (matcher.find()) {
            for (int i4 = 0; i4 <= matcher.groupCount(); i4++) {
                i2++;
            }
        }
        return i2;
    }

    private int getStringLength(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            return 0;
        }
        return str.length() + getChineseCount(str);
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private boolean matchStringLength(String str, int i2, int i4) {
        int stringLength = getStringLength(str);
        return stringLength >= i2 && stringLength <= i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this).flags(268435456)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (!N0(str)) {
                O0();
                return;
            }
            try {
                SendMobileCodeRequestBean sendMobileCodeRequestBean = new SendMobileCodeRequestBean();
                sendMobileCodeRequestBean.setMobile(str);
                sendMobileCodeRequestBean.setType(8);
                sendMobileCodeRequestBean.setSign(com.join.mgps.Util.u1.f(sendMobileCodeRequestBean));
                AccountResultMainBean<AccountTokenSuccess> i2 = this.f28291i.i(sendMobileCodeRequestBean.getParams());
                if (i2 != null && i2.getError() == 0) {
                    if (i2.getData().is_success()) {
                        K0();
                    } else {
                        O0();
                        error(i2.getData().getError_msg());
                    }
                } else {
                    O0();
                    error("获取验证码失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                O0();
                error("获取验证码失败，请稍后再试。");
                return;
            }
        }
        O0();
        error(getResources().getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        String obj = this.f28286d.getText().toString();
        this.f28292j.start();
        H0(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        c cVar = this.f28292j;
        if (cVar != null) {
            cVar.cancel();
            this.f28292j.onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(String str, String str2, String str3, String str4, int i2) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        this.f28293k = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.f28293k.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f28293k.findViewById(R.id.dialog_button_ok);
        ((TextView) this.f28293k.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) this.f28293k.findViewById(R.id.dialog_content)).setText("该手机已绑定，是否解除绑定关系？");
        ((TextView) this.f28293k.findViewById(R.id.dialog_desci)).setText("*绑定成功后将发送账号到你的手机");
        button2.setText("解除绑定");
        button.setText("取消");
        button2.setOnClickListener(new a(str, str2, str3, str4, i2));
        button.setOnClickListener(new b());
        com.join.mgps.customview.t tVar2 = this.f28293k;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.f28293k.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        String obj = this.f28284b.getText().toString();
        String obj2 = this.f28285c.getText().toString();
        String obj3 = this.f28286d.getText().toString();
        String obj4 = this.f28287e.getText().toString();
        if (isLogined(this)) {
            R0(obj, obj2, obj3, obj4, 1);
        } else {
            touristLogin();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00fe -> B:47:0x0116). Please submit an issue!!! */
    @Background
    public void R0(String str, String str2, String str3, String str4, int i2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (!isLogined(this)) {
                touristLogin();
                return;
            } else if (!matchStringLength(str, 1, 20)) {
                error("用户名格式有误，输入1至24位字母或数字或汉字");
                return;
            } else if (!matchStringLength(str2, 6, 16)) {
                error("密码格式有误，输入6至16位字母或数字");
                return;
            } else if (N0(str3)) {
                if (com.join.mgps.Util.d2.h(str4)) {
                    error("验证码不能为空！");
                    return;
                }
                AccountBean accountBean = accountBean(this);
                int uid = accountBean != null ? accountBean.getUid() : 0;
                try {
                    TouristPerfectInfoRequestBean touristPerfectInfoRequestBean = new TouristPerfectInfoRequestBean();
                    String z3 = com.join.android.app.common.utils.j.n(getApplicationContext()).z();
                    touristPerfectInfoRequestBean.setSubmit_number(i2);
                    touristPerfectInfoRequestBean.setVersion(z3);
                    touristPerfectInfoRequestBean.setDevice_id("");
                    touristPerfectInfoRequestBean.setMac("");
                    touristPerfectInfoRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    touristPerfectInfoRequestBean.setUid(uid);
                    touristPerfectInfoRequestBean.setMobile(str3);
                    touristPerfectInfoRequestBean.setCode(str4);
                    touristPerfectInfoRequestBean.setNickname(str);
                    touristPerfectInfoRequestBean.setPassword(str2);
                    touristPerfectInfoRequestBean.setSign(com.join.mgps.Util.u1.f(touristPerfectInfoRequestBean));
                    AccountResultMainBean<AccountTokenSuccess> L = this.f28291i.L(touristPerfectInfoRequestBean.getParams());
                    if (L != null && L.getError() == 0) {
                        if (L.getData().is_success()) {
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(L.getData().getUser_info(), getApplicationContext());
                            M0();
                        } else {
                            O0();
                            AccountTokenSuccess data = L.getData();
                            if (data == null) {
                                return;
                            }
                            error(data.getError_msg());
                            if (com.join.mgps.Util.d2.i(data.getError_code()) && data.getError_code().equals("102")) {
                                P0(str, str2, str3, str4, 2);
                            }
                        }
                    } else {
                        O0();
                        error("信息完善失败，请稍后再试。");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    O0();
                    error("信息完善失败，请稍后再试。");
                }
                return;
            } else {
                return;
            }
        }
        error(getResources().getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f28292j = new c(60000L, 1000L);
        this.f28291i = com.join.mgps.rpc.impl.a.b0();
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.customview.t tVar = this.f28293k;
        if (tVar != null) {
            if (tVar.isShowing()) {
                this.f28293k.dismiss();
            }
            this.f28293k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (isLogined(this)) {
                return;
            }
            try {
                TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
                touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(getApplicationContext()).z());
                touristLoginRequestBean.setDevice_id("");
                touristLoginRequestBean.setMac("");
                touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                touristLoginRequestBean.setTuid(new PrefDef_(this).touriseTUID().d().longValue());
                touristLoginRequestBean.setSign(com.join.mgps.Util.u1.f(touristLoginRequestBean));
                AccountResultMainBean<AccountTokenSuccess> s3 = this.f28291i.s(touristLoginRequestBean.getParams());
                if (s3 != null && s3.getError() == 0) {
                    if (s3.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(s3.getData().getUser_info(), getApplicationContext());
                        L0();
                    } else {
                        error(s3.getData().getError_msg());
                    }
                } else {
                    error("信息完善失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                error("信息完善失败，请稍后再试。");
                return;
            }
        }
        error(getResources().getString(R.string.net_connect_failed));
    }
}
