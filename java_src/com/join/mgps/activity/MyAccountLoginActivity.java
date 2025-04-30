package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dialog.a2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginRequestbean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenTimeOutRequestBean;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.ShareDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.my_account_login_layout)
/* loaded from: classes3.dex */
public class MyAccountLoginActivity extends BaseAccountActivity implements Handler.Callback, PlatformActionListener {
    private static final int B = 1;
    private static final int C = 2;
    private static final int D = 3;
    private static final int E = 4;
    private static final int F = 5;
    private boolean A;

    /* renamed from: c  reason: collision with root package name */
    MApplication f34055c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.b f34056d;
    @StringRes(resName = "net_excption")

    /* renamed from: e  reason: collision with root package name */
    String f34057e;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: f  reason: collision with root package name */
    String f34058f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    EditText f34059g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f34060h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f34061i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    EditText f34062j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    CheckBox f34063k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f34064l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f34065m;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f34068p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    int f34069q;

    /* renamed from: s  reason: collision with root package name */
    private Handler f34071s;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.rpc.b f34072t;

    /* renamed from: u  reason: collision with root package name */
    private long f34073u;
    @Extra

    /* renamed from: v  reason: collision with root package name */
    int f34074v;
    @Pref

    /* renamed from: w  reason: collision with root package name */
    PrefDef_ f34075w;

    /* renamed from: y  reason: collision with root package name */
    private AccountReginBean f34077y;

    /* renamed from: z  reason: collision with root package name */
    Context f34078z;

    /* renamed from: n  reason: collision with root package name */
    private int f34066n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f34067o = 0;

    /* renamed from: r  reason: collision with root package name */
    boolean f34070r = true;

    /* renamed from: x  reason: collision with root package name */
    private boolean f34076x = true;

    /* loaded from: classes3.dex */
    class a implements View.OnFocusChangeListener {
        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            if (z3) {
                MyAccountLoginActivity.this.f34061i.setVisibility(0);
            } else {
                MyAccountLoginActivity.this.f34061i.setVisibility(4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            if (z3) {
                MyAccountLoginActivity.this.f34060h.setVisibility(0);
            } else {
                MyAccountLoginActivity.this.f34060h.setVisibility(4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MyAccountLoginActivity.this.f34066n = charSequence.length();
            MyAccountLoginActivity.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MyAccountLoginActivity.this.f34067o = charSequence.length();
            MyAccountLoginActivity.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements CompoundButton.OnCheckedChangeListener {
        e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            MyAccountLoginActivity.this.f34075w.loginPermissHasallow().g(Boolean.valueOf(z3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements a2.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34084a;

        f(int i2) {
            this.f34084a = i2;
        }

        @Override // com.join.mgps.dialog.a2.c
        public void a() {
            MyAccountLoginActivity.this.f34063k.setChecked(true);
            int i2 = this.f34084a;
            if (i2 == 1) {
                AccountBindPhoneNew_.h1(MyAccountLoginActivity.this.f34078z).a(1).startForResult(10001);
            } else if (i2 == 2) {
                MyAccountLoginActivity.this.P0();
            } else if (i2 == 3) {
                MyAccountLoginActivity.this.M0();
            } else if (i2 == 4) {
                MyAccountLoginActivity.this.N0();
            } else if (i2 == 5) {
                MyAccountLoginActivity.this.O0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J0() {
        if (this.f34067o != 0 && this.f34066n != 0) {
            this.f34064l.setEnabled(true);
        } else {
            this.f34064l.setEnabled(false);
        }
    }

    private boolean K0(int i2) {
        if (this.f34063k.isChecked()) {
            return true;
        }
        com.join.mgps.dialog.a2 a2Var = new com.join.mgps.dialog.a2(this, new f(i2));
        a2Var.show();
        a2Var.a("是否同意悟饭游戏厅《用户使用协议》和《免责声明》");
        return false;
    }

    private void authorize(Platform platform) {
        if (System.currentTimeMillis() - this.f34073u <= 1000) {
            return;
        }
        this.f34073u = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.f.j(this)) {
            com.join.mgps.Util.i2.a(this).b("没有网络，请检查网络设置。");
        } else if (platform != null && this.f34076x) {
            this.f34076x = false;
            if (platform.isAuthValid()) {
                platform.removeAccount(true);
            }
            platform.setPlatformActionListener(this);
            platform.SSOSetting(false);
            platform.showUser(null);
            showLoding();
            if (platform.getName().equals(Wechat.NAME)) {
                this.f34068p.setCancelable(true);
                this.f34068p.setCanceledOnTouchOutside(false);
                this.f34076x = true;
                this.A = true;
                return;
            }
            this.f34068p.setCancelable(true);
            this.f34068p.setCanceledOnTouchOutside(false);
            this.A = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        startActivity(new Intent(this, MyAccountForgetPassActivity_.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        if (K0(3)) {
            authorize(platform);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        Platform platform = ShareSDK.getPlatform(Wechat.NAME);
        if (K0(4)) {
            authorize(platform);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        Platform platform = ShareSDK.getPlatform(SinaWeibo.NAME);
        if (K0(5)) {
            authorize(platform);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        String obj = this.f34059g.getText().toString();
        String obj2 = this.f34062j.getText().toString();
        if (Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", obj) && com.join.mgps.Util.g2.a(obj) >= 1 && com.join.mgps.Util.g2.a(obj) <= 24) {
            if (obj2.length() <= 16 && obj2.length() >= 6) {
                if (com.join.mgps.Util.d2.i(obj) && com.join.mgps.Util.d2.i(obj2) && K0(2)) {
                    getLogin(obj, obj2);
                    return;
                }
                return;
            }
            com.join.mgps.Util.i2.a(this).b("密码格式有误，输入6至16位字母或数字");
            return;
        }
        com.join.mgps.Util.i2.a(this).b("用户名格式有误，输入1至24位字母或数字或汉字");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        if (K0(1)) {
            AccountBindPhoneNew_.h1(this).a(1).startForResult(10001);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                if (accountData == null) {
                    return;
                }
                AccountTokenTimeOutRequestBean accountTokenTimeOutRequestBean = new AccountTokenTimeOutRequestBean();
                accountTokenTimeOutRequestBean.setUid(accountData.getUid());
                accountTokenTimeOutRequestBean.setDevice_id("");
                accountTokenTimeOutRequestBean.setToke(accountData.getToken());
                accountTokenTimeOutRequestBean.setSign(com.join.mgps.Util.u1.f(accountTokenTimeOutRequestBean));
                GameWorldResponse<AccountResultMainBean> j4 = this.f34072t.j(accountTokenTimeOutRequestBean.getParams());
                if (j4 == null || j4.getError() != 801) {
                    return;
                }
                showToast("你的登录已失效，请重新登录。");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f34056d = com.join.mgps.rpc.impl.a.b0();
        this.f34072t = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f34055c = mApplication;
        mApplication.k(this);
        this.f34064l.setEnabled(false);
        this.f34068p = com.join.mgps.Util.a0.c0(this).x(this);
        F0("登录");
        this.f34078z = this;
        this.f34065m.setText("《悟饭游戏厅用户使用协议》");
        this.f34059g.setOnFocusChangeListener(new a());
        this.f34062j.setOnFocusChangeListener(new b());
        this.f34059g.addTextChangedListener(new c());
        this.f34062j.addTextChangedListener(new d());
        if (this.f34075w.loginPermissHasallow().d().booleanValue()) {
            this.f34063k.setChecked(true);
        }
        this.f34063k.setOnCheckedChangeListener(new e());
        init();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getLogin(String str, String str2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountLoginRequestbean accountLoginRequestbean = new AccountLoginRequestbean();
                accountLoginRequestbean.setAccount(str);
                accountLoginRequestbean.setPassword(str2);
                accountLoginRequestbean.setDevice_id("");
                accountLoginRequestbean.setSign(com.join.mgps.Util.u1.f(accountLoginRequestbean));
                AccountResultMainBean<AccountresultData<AccountBean>> k4 = this.f34056d.k(accountLoginRequestbean.getParams());
                boolean z3 = true;
                if (k4 != null && k4.getError() == 0) {
                    if (k4.getData().isIs_success()) {
                        AccountBean user_info = k4.getData().getUser_info();
                        user_info.setPass(str2);
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(user_info, this);
                        UtilsMy.A3(this, k4.getData().getGame_list_permission());
                        UtilsMy.K(this);
                        loginSuccess(k4.getData().getUser_info());
                        z3 = false;
                    } else {
                        error(k4.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                if (z3) {
                    showLodingDismis();
                    return;
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingDismis();
                error("连接失败，请稍后再试。");
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void goRegin(AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean) {
        AccountBindPhoneNew_.h1(this.f34078z).a(2).b(accountRegisterThirdwaiRequestBean).startForResult(10001);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0073 A[LOOP:2: B:27:0x0073->B:65:0x0073, LOOP_START, PHI: r1 r7 
      PHI: (r1v12 java.lang.String) = (r1v3 java.lang.String), (r1v13 java.lang.String) binds: [B:26:0x0071, B:65:0x0073] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r7v11 int) = (r7v2 int), (r7v12 int) binds: [B:26:0x0071, B:65:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e4  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r14) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MyAccountLoginActivity.handleMessage(android.os.Message):boolean");
    }

    void init() {
        if (this.f34074v == 701) {
            S0();
        }
        AccountReginBean accountReginBean = new AccountReginBean();
        this.f34077y = accountReginBean;
        accountReginBean.setSource(this.f34069q);
        this.f34071s = new Handler(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void joinDevice() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.f34078z).getUid() + "");
        linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this.f34078z).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> R = this.f34072t.R(linkedMultiValueMap);
        if (R != null && R.getError() == 0 && R.getData().isResult()) {
            R.getData().getMsg();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void login() {
        if (System.currentTimeMillis() - this.f34073u <= 2000) {
            return;
        }
        this.f34073u = System.currentTimeMillis();
        if (this.f34076x) {
            MyAccountLoginActivity_.g1(this).b(this.f34069q).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loginSuccess(AccountBean accountBean) {
        this.f34075w.singleGameShowDialog().g("");
        if (!TextUtils.isEmpty(CheckInviteDialogActivity.f28449o0)) {
            ((ClipboardManager) getSystemService("clipboard")).setText(CheckInviteDialogActivity.f28449o0);
            CheckInviteDialogActivity.f28449o0 = "";
        }
        showLodingDismis();
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
        ((CommonService_.u1) CommonService_.d2(this.f34078z).extra("accountloginSuccess", "xxx")).a();
        joinDevice();
        setResult(10011);
        this.f34055c.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        if (i2 == 10001 && i4 == 10001) {
            finish();
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i2) {
        showLodingDismis();
        this.f34076x = true;
        if (i2 == 8) {
            this.f34071s.sendEmptyMessage(2);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
        this.f34076x = true;
        showLodingDismis();
        if (i2 == 8) {
            String userId = platform.getDb().getUserId();
            String userName = platform.getDb().getUserName();
            String name = platform.getName();
            ShareDataBean shareDataBean = new ShareDataBean();
            shareDataBean.setType(name);
            shareDataBean.setUserId(userId);
            shareDataBean.setRes(hashMap);
            shareDataBean.setUserIcon(platform.getDb().getUserIcon());
            StringBuilder sb = new StringBuilder();
            sb.append(userId);
            sb.append("   ");
            sb.append(userName);
            Message message = new Message();
            message.what = 4;
            message.obj = shareDataBean;
            this.f34071s.sendMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.dialog.x0 x0Var = this.f34068p;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f34068p.dismiss();
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i2, Throwable th) {
        showLodingDismis();
        platform.removeAccount(true);
        this.f34076x = true;
        String simpleName = th.getClass().getSimpleName();
        if (!"WechatClientNotExistException".equals(simpleName) && !"WechatTimelineNotSupportedException".equals(simpleName) && !"WechatFavoriteNotSupportedException".equals(simpleName)) {
            showMessage("授权失败");
        } else {
            showMessage("没有安装微信客端，请先安装微信客户端。");
        }
        if (i2 == 8) {
            this.f34071s.sendEmptyMessage(3);
        }
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f34070r = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f34070r = true;
        com.join.mgps.dialog.x0 x0Var = this.f34068p;
        if (x0Var != null && x0Var.isShowing() && this.A) {
            this.f34068p.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void shengming() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51524k + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.f34078z, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.dialog.x0 x0Var = this.f34068p;
        if (x0Var == null || x0Var.isShowing() || !this.f34070r) {
            return;
        }
        this.f34068p.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.x0 x0Var = this.f34068p;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f34068p.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void xieyi() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51524k + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this.f34078z, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void login(int i2, String str, String str2, int i4, String str3) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = new AccountRegisterThirdwaiRequestBean();
                accountRegisterThirdwaiRequestBean.setUnique_id(str);
                accountRegisterThirdwaiRequestBean.setType(i2);
                accountRegisterThirdwaiRequestBean.setSource(this.f34069q);
                if (str3 == null) {
                    accountRegisterThirdwaiRequestBean.setAvatar_src("");
                } else {
                    accountRegisterThirdwaiRequestBean.setAvatar_src(str3);
                }
                accountRegisterThirdwaiRequestBean.setGender(1);
                accountRegisterThirdwaiRequestBean.setNickname(str2);
                accountRegisterThirdwaiRequestBean.setMac("");
                com.join.mgps.Util.d2.i("");
                accountRegisterThirdwaiRequestBean.setDevice_id("");
                accountRegisterThirdwaiRequestBean.setSign(com.join.mgps.Util.u1.f(accountRegisterThirdwaiRequestBean));
                AccountResultBean<AccountLoginresultData<AccountBean>> e4 = this.f34072t.e(accountRegisterThirdwaiRequestBean.getParams());
                if (e4 != null && e4.getError() == 0) {
                    if (e4.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(e4.getData().getUser_info(), this);
                        UtilsMy.A3(this, e4.getData().getGame_list_permission());
                        UtilsMy.K(this);
                        loginSuccess(e4.getData().getUser_info(), e4.getData().getReward());
                        return;
                    } else if (e4.getData().getError_code() == 1001) {
                        showLodingDismis();
                        goRegin(accountRegisterThirdwaiRequestBean);
                        return;
                    } else {
                        showLodingDismis();
                        error(e4.getData().getError_msg());
                        return;
                    }
                }
                error("连接失败，请稍后再试。");
                showLodingDismis();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showMessage("登录失败");
                showLodingDismis();
                return;
            }
        }
        showMessage("没有网络，请先检查网络。");
        showLodingDismis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loginSuccess(AccountBean accountBean, RewardBean rewardBean) {
        if (!TextUtils.isEmpty(CheckInviteDialogActivity.f28449o0)) {
            ((ClipboardManager) getSystemService("clipboard")).setText(CheckInviteDialogActivity.f28449o0);
            CheckInviteDialogActivity.f28449o0 = "";
        }
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
        joinDevice();
        int i2 = this.f34069q;
        if (i2 != 1 && i2 != 3 && i2 != 4) {
            ((CommonService_.u1) CommonService_.d2(this.f34078z).extra("accountloginSuccess", "xxx")).a();
            showLodingDismis();
            finish();
            return;
        }
        finish();
    }
}
