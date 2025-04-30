package com.join.mgps.activity.login;

import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.MApplication;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.n;
import com.join.mgps.Util.u1;
import com.join.mgps.activity.CheckInviteDialogActivity;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.ShareDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.b;
import com.join.mgps.rpc.g;
import com.join.mgps.rpc.impl.a;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.HashMap;
import java.util.Random;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.loginmain_activity)
/* loaded from: classes3.dex */
public class LoginMainActivity extends AppCompatActivity implements Handler.Callback, PlatformActionListener {
    private static final int MSG_AUTH_CANCEL = 2;
    private static final int MSG_AUTH_COMPLETE = 4;
    private static final int MSG_AUTH_ERROR = 3;
    private static final int MSG_SMSSDK_CALLBACK = 1;
    private static final int MSG_USERID_FOUND = 5;
    MApplication application;
    @ViewById
    View cancleLogin;
    @ViewById
    CheckBox checkBox;
    @ViewById
    View clear;
    Context context;
    private x0 dialog;
    @Extra
    String gameId;
    private Handler handler;
    @Extra
    int intentFrom;
    private boolean isWeichatLoding;
    private long lastClick;
    @ViewById
    View nextStep;
    @ViewById
    View otherLogin;
    @ViewById
    EditText phoneNumber;
    @Pref
    PrefDef_ prefDef;
    b rpcAccountClient;
    @ViewById
    TextView title;
    @ViewById
    TextView xieyi;
    long clickTime = 0;
    private boolean alowLogin = true;
    boolean showDialog = true;

    private void authorize(Platform platform) {
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        if (!f.j(this)) {
            i2.a(this).b("没有网络，请检查网络设置。");
        } else if (platform != null && this.alowLogin) {
            this.alowLogin = false;
            if (platform.isAuthValid()) {
                platform.removeAccount(true);
            }
            platform.setPlatformActionListener(this);
            platform.SSOSetting(false);
            platform.showUser(null);
            showLoding();
            if (platform.getName().equals(Wechat.NAME)) {
                this.dialog.setCancelable(true);
                this.dialog.setCanceledOnTouchOutside(false);
                this.alowLogin = true;
                this.isWeichatLoding = true;
                return;
            }
            this.dialog.setCancelable(true);
            this.dialog.setCanceledOnTouchOutside(false);
            this.isWeichatLoding = false;
        }
    }

    private boolean checkFastClick() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.clickTime > 300) {
            this.clickTime = currentTimeMillis;
            return false;
        }
        return true;
    }

    public static boolean isPhoneNumber(String str) {
        Pattern.compile("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}");
        return Pattern.matches("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.context = this;
        p.l(this).K1(Event.otherLoginPageShow, new Ext());
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.k(this);
        this.nextStep.setEnabled(false);
        this.phoneNumber.setRawInputType(2);
        this.dialog = a0.c0(this).x(this);
        this.rpcAccountClient = a.b0();
        this.handler = new Handler(this);
        this.phoneNumber.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.LoginMainActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
                if (charSequence.length() == 0) {
                    LoginMainActivity.this.nextStep.setEnabled(false);
                    LoginMainActivity.this.clear.setVisibility(8);
                    return;
                }
                LoginMainActivity.this.clear.setVisibility(0);
                LoginMainActivity.this.nextStep.setEnabled(true);
            }
        });
        n.g(this.phoneNumber);
        this.phoneNumber.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.login.LoginMainActivity.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 == 4) {
                    LoginMainActivity.this.nextStep();
                    return false;
                }
                return false;
            }
        });
        LoginCfgsBean loginCfgsBean = MApplication.J;
        if ((loginCfgsBean != null && loginCfgsBean.getLogin_is_allow_skip() == 0) || d2.h(this.gameId)) {
            this.cancleLogin.setVisibility(4);
        }
        showKeyborad(this.phoneNumber);
        this.phoneNumber.setText(this.prefDef.lastLoginAccount().d());
        TextUtils.isEmpty("wufun");
        this.xieyi.setText("用户协议");
        this.checkBox.setText("已阅读并同意悟饭");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        clearEditTextState(this.phoneNumber);
        delayFinish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void cancle() {
        this.otherLogin.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void cancleLogin() {
        LoginCfgsBean loginCfgsBean;
        finish();
        if (d2.i(this.gameId) && (loginCfgsBean = MApplication.J) != null && loginCfgsBean.getLogin_is_allow_skip() == 1) {
            UtilsMy.f3(this.context, g1.f.G().B(this.gameId), "login");
        }
        this.application.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void clear() {
        this.phoneNumber.setText("");
    }

    void clearEditTextState(EditText editText) {
        editText.clearFocus();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void delayFinish() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void goRegin(AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean) {
        LoginInputPassActivity_.intent(this.context).from(5).thirdRequestbean(accountRegisterThirdwaiRequestBean).gameId(this.gameId).start();
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.login.LoginMainActivity.handleMessage(android.os.Message):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void joinDevice() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this.context).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> R = this.rpcAccountClient.R(linkedMultiValueMap);
        if (R != null && R.getError() == 0 && R.getData().isResult()) {
            R.getData().getMsg();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void login(int i2, String str, String str2, int i4, String str3) {
        if (f.j(this)) {
            try {
                AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = new AccountRegisterThirdwaiRequestBean();
                accountRegisterThirdwaiRequestBean.setUnique_id(str);
                accountRegisterThirdwaiRequestBean.setType(i2);
                accountRegisterThirdwaiRequestBean.setSource(this.intentFrom);
                String q3 = MApplication.f9223q.q();
                if (d2.h(q3) || "null".equals(q3)) {
                    accountRegisterThirdwaiRequestBean.setShare_code("");
                }
                if (str3 == null) {
                    accountRegisterThirdwaiRequestBean.setAvatar_src("");
                } else {
                    accountRegisterThirdwaiRequestBean.setAvatar_src(str3);
                }
                accountRegisterThirdwaiRequestBean.setGender(1);
                accountRegisterThirdwaiRequestBean.setNickname(str2);
                accountRegisterThirdwaiRequestBean.setMac("");
                d2.i("");
                accountRegisterThirdwaiRequestBean.setDevice_id("");
                accountRegisterThirdwaiRequestBean.setSign(u1.f(accountRegisterThirdwaiRequestBean));
                AccountResultBean<AccountLoginresultData<AccountBean>> e4 = this.rpcAccountClient.e(accountRegisterThirdwaiRequestBean.getParams());
                if (e4 != null && e4.getError() == 0) {
                    if (e4.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(e4.getData().getUser_info(), this);
                        UtilsMy.A3(this, e4.getData().getGame_list_permission());
                        UtilsMy.K(this);
                        loginSuccess(e4.getData().getUser_info(), e4.getData().getReward());
                        p.l(this.context).K1(Event.thirdPartyLoginSuccess, new Ext());
                        return;
                    } else if (e4.getData().getError_code() == 1001) {
                        showLodingDismis();
                        Random random = new Random();
                        accountRegisterThirdwaiRequestBean.setNickname(str2 + random.nextInt(1000));
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
    @Click
    public void loginQQLayout() {
        Ext ext = new Ext();
        ext.setPosition("0");
        p.l(this.context).K1(Event.clickThirdpartyLogin, ext);
        authorize(ShareSDK.getPlatform(QQ.NAME));
        this.otherLogin.setVisibility(8);
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
        int i2 = this.intentFrom;
        if (i2 != 1 && i2 != 3 && i2 != 4) {
            ((CommonService_.u1) CommonService_.d2(this.context).extra("accountloginSuccess", "xxx")).a();
            showLodingDismis();
            this.application.l();
            finish();
            IntentUtil.getInstance().checkRealNameAndIntent(this.context, accountBean, "login", this.gameId);
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void loginWechatLayout() {
        Ext ext = new Ext();
        ext.setPosition("1");
        p.l(this.context).K1(Event.clickThirdpartyLogin, ext);
        authorize(ShareSDK.getPlatform(Wechat.NAME));
        this.otherLogin.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void loginWeiboLayout() {
        Ext ext = new Ext();
        ext.setPosition(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        p.l(this.context).K1(Event.clickThirdpartyLogin, ext);
        authorize(ShareSDK.getPlatform(SinaWeibo.NAME));
        this.otherLogin.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void nextStep() {
        if (checkFastClick()) {
            return;
        }
        if (!this.checkBox.isChecked()) {
            Toast makeText = Toast.makeText(this, "请点击同意协议", 0);
            makeText.setGravity(17, 0, 0);
            makeText.show();
            return;
        }
        final String obj = this.phoneNumber.getText().toString();
        if (d2.h(obj.trim())) {
            i2.a(this.context).b("请输入手机号/用户名");
            return;
        }
        this.prefDef.lastLoginAccount().g(obj);
        LoginUserStatuRequest loginUserStatuRequest = new LoginUserStatuRequest();
        loginUserStatuRequest.getData(this.context);
        loginUserStatuRequest.setLoginId(obj);
        loginUserStatuRequest.setLoginType(6);
        showLoding();
        i.b().a().d(loginUserStatuRequest).enqueue(new Callback<LoginResultMain<LoginUserStatuDataBean>>() { // from class: com.join.mgps.activity.login.LoginMainActivity.3
            @Override // retrofit2.Callback
            public void onFailure(Call<LoginResultMain<LoginUserStatuDataBean>> call, Throwable th) {
                LoginMainActivity.this.showMessage("网络不给力，请检查网络设置。");
                LoginMainActivity.this.showLodingDismis();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<LoginResultMain<LoginUserStatuDataBean>> call, Response<LoginResultMain<LoginUserStatuDataBean>> response) {
                LoginResultMain<LoginUserStatuDataBean> body = response.body();
                if (body != null && body.getError() == 0) {
                    LoginUserStatuDataBean data = body.getData();
                    if (data != null) {
                        if (data.isNewMembers()) {
                            if (data.isMobilePhone()) {
                                LoginInputPassActivity_.intent(LoginMainActivity.this.context).from(1).phoneNumber(obj.trim()).gameId(LoginMainActivity.this.gameId).start();
                            } else {
                                LoginMainActivity.this.showMessage("用户名不存在，请先用手机号注册账号！");
                            }
                        } else if (data.isMobilePhone()) {
                            LoginInputPassActivity_.intent(LoginMainActivity.this.context).from(4).phoneNumber(obj.trim()).isSetPwd(data.isSetPwd()).gameId(LoginMainActivity.this.gameId).start();
                        } else {
                            LoginInputPassActivity_.intent(LoginMainActivity.this.context).from(6).phoneNumber(obj.trim()).gameId(LoginMainActivity.this.gameId).start();
                        }
                    }
                } else if (body != null && body.getError() == -1) {
                    LoginMainActivity.this.showMessage(body.getMsg());
                }
                LoginMainActivity.this.showLodingDismis();
            }
        });
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i2) {
        showLodingDismis();
        this.alowLogin = true;
        if (i2 == 8) {
            this.handler.sendEmptyMessage(2);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
        this.alowLogin = true;
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
            this.handler.sendMessage(message);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i2, Throwable th) {
        showLodingDismis();
        platform.removeAccount(true);
        this.alowLogin = true;
        String simpleName = th.getClass().getSimpleName();
        if (!"WechatClientNotExistException".equals(simpleName) && !"WechatTimelineNotSupportedException".equals(simpleName) && !"WechatFavoriteNotSupportedException".equals(simpleName)) {
            showMessage("授权失败");
        } else {
            showMessage("没有安装微信客端，请先安装微信客户端。");
        }
        if (i2 == 8) {
            this.handler.sendEmptyMessage(3);
        }
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.showDialog = false;
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean z3) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void otherLogin() {
        this.otherLogin.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void shengming() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(g.f51524k + com.constant.b.f11071e);
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void showKeyborad(EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
        editText.setSelection(editText.getText().toString().length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        x0 x0Var = this.dialog;
        if (x0Var == null || x0Var.isShowing() || !this.showDialog) {
            return;
        }
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        x0 x0Var = this.dialog;
        if (x0Var == null || !x0Var.isShowing() || isFinishing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void toOtherLogin() {
        if (!this.checkBox.isChecked()) {
            Toast makeText = Toast.makeText(this, "请点击同意协议", 0);
            makeText.setGravity(17, 0, 0);
            makeText.show();
            return;
        }
        this.otherLogin.setVisibility(0);
        clearEditTextState(this.phoneNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void xieyi() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(g.f51524k + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }
}
