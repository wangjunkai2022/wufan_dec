package com.join.mgps.activity.login;

import android.content.ClipboardManager;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.MApplication;
import com.bytedance.sdk.openadsdk.TTAdConstant;
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
import com.join.mgps.dto.AccountGetBackRequest;
import com.join.mgps.dto.AccountLoginRequestbean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountSendRequest;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.b;
import com.join.mgps.rpc.g;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.regex.Matcher;
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
import y1.a;
@EActivity(R.layout.wufunlogin_inputpass_layout)
/* loaded from: classes3.dex */
public class LoginInputPassActivity extends AppCompatActivity {
    MApplication application;
    @ViewById
    TextView bindmessage;
    @ViewById
    ImageView clear;
    @ViewById
    RelativeLayout codeLayout;
    Context context;
    private x0 dialog;
    @ViewById
    TextView fergetPass;
    @Extra
    int from;
    @Extra
    String gameId;
    @ViewById
    TextView getCode;
    @ViewById
    EditText inputCode;
    @ViewById
    EditText inputPass;
    @Extra
    boolean isSetPwd;
    @ViewById
    TextView loginMessage;
    @ViewById
    RelativeLayout passLayout;
    @ViewById
    View permissLayout;
    @Extra
    String phoneNumber;
    @Pref
    PrefDef_ prefDef;
    b rpcAccountClient;
    @ViewById
    CheckBox seePass;
    @ViewById
    TextView sendLogin;
    @Extra
    AccountRegisterThirdwaiRequestBean thirdRequestbean;
    TimeCount time;
    @ViewById
    TextView titleMessage;
    int passLenth = 0;
    int codeLenth = 0;
    long clickTime = 0;
    boolean showDialog = true;
    private Uri SMS_INBOX = Uri.parse("content://sms/");

    /* loaded from: classes3.dex */
    class SmsObserver extends ContentObserver {
        public SmsObserver(Context context, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
            LoginInputPassActivity.this.getSmsFromPhone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class TimeCount extends CountDownTimer {
        public TimeCount(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            LoginInputPassActivity.this.getCode.setText("重新获取");
            LoginInputPassActivity.this.getCode.setEnabled(true);
            LoginInputPassActivity.this.getCode.setTextColor(Color.parseColor("#408DFF"));
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            LoginInputPassActivity.this.getCode.setEnabled(false);
            LoginInputPassActivity.this.getCode.setTextColor(Color.parseColor("#494949"));
            TextView textView = LoginInputPassActivity.this.getCode;
            textView.setText("" + (j4 / 1000) + "S后重新获取");
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

    private void doHWToastCovered() {
        if (Build.MANUFACTURER.equalsIgnoreCase("huawei")) {
            View findFocus = getWindow().getDecorView().findFocus();
            if (findFocus instanceof EditText) {
                int inputType = ((EditText) findFocus).getInputType();
                if (inputType == 128 || inputType == 144 || inputType == 129) {
                    a.b(this.inputPass);
                }
            }
        }
    }

    public static boolean isPhoneNumber(String str) {
        Pattern.compile("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}");
        return Pattern.matches("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}", str);
    }

    private boolean passwordCheck(String str) {
        if (str.length() <= 16 && str.length() >= 6) {
            return d2.i(str) && d2.i(str);
        }
        i2.a(this).b("密码格式有误，输入6至16位字母或数字");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLoginButn() {
        int i2 = this.from;
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            int i4 = this.passLenth;
            if (i4 >= 6 && this.codeLenth == 6 && i4 <= 16) {
                this.sendLogin.setEnabled(true);
            } else {
                this.sendLogin.setEnabled(false);
            }
        } else if (i2 == 4 || i2 == 6) {
            if (this.passLenth == 0) {
                this.sendLogin.setEnabled(false);
            } else {
                this.sendLogin.setEnabled(true);
            }
        } else if (i2 == 5) {
            if (this.codeLenth != 11) {
                this.sendLogin.setEnabled(false);
            } else {
                this.sendLogin.setEnabled(true);
            }
        }
        if (this.passLenth == 0) {
            this.clear.setVisibility(4);
            this.seePass.setVisibility(4);
            return;
        }
        this.clear.setVisibility(0);
        this.seePass.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.context = this;
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.k(this);
        this.sendLogin.setEnabled(false);
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.b0();
        this.dialog = a0.c0(this).x(this);
        int i2 = this.from;
        if (i2 == 4 || i2 == 6) {
            p.l(this.context).K1(Event.loginAuthPageShow, new Ext());
            this.titleMessage.setText("账号登录");
            TextView textView = this.loginMessage;
            textView.setText("当前登录：" + this.phoneNumber);
            this.codeLayout.setVisibility(8);
            this.fergetPass.setVisibility(0);
            this.fergetPass.setText(Html.fromHtml("忘记了？<font color=#408DFF>找回密码</font>"), TextView.BufferType.SPANNABLE);
            showKeyborad(this.inputPass);
            this.sendLogin.setText("登录");
            if (this.from == 4 && !this.isSetPwd) {
                resendgetCode(MMSRequesBean.TYPE_FORGOT);
                this.titleMessage.setText("设置密码");
                this.fergetPass.setVisibility(8);
                this.codeLayout.setVisibility(0);
                TextView textView2 = this.loginMessage;
                textView2.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
                this.titleMessage.setText("设置密码");
                showKeyborad(this.inputCode);
                this.from = 3;
            }
        } else if (i2 == 1 || i2 == 2) {
            this.titleMessage.setText("设置密码");
            if (isPhoneNumber(this.phoneNumber)) {
                TextView textView3 = this.loginMessage;
                textView3.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
            } else {
                this.loginMessage.setVisibility(4);
            }
            this.fergetPass.setVisibility(8);
            showKeyborad(this.inputCode);
            this.sendLogin.setText("登录");
        } else if (i2 == 5) {
            this.passLayout.setVisibility(8);
            this.getCode.setVisibility(8);
            this.inputCode.setHint("请输入手机号");
            this.titleMessage.setText("绑定手机号");
            this.bindmessage.setVisibility(0);
            this.permissLayout.setVisibility(0);
            this.loginMessage.setVisibility(8);
            this.sendLogin.setText("获取短信验证码");
            showKeyborad(this.inputCode);
        } else if (i2 == 3) {
            TextView textView4 = this.loginMessage;
            textView4.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
            this.titleMessage.setText("忘记密码");
            showKeyborad(this.inputCode);
        } else if (i2 == 1 || i2 == 3) {
            this.titleMessage.setText("忘记密码");
            showKeyborad(this.inputCode);
        }
        if (this.from == 1) {
            getCode();
        }
        int i4 = this.from;
        if (i4 == 1 || i4 == 3 || i4 == 5 || i4 == 2) {
            TimeCount timeCount = new TimeCount(60000L, 1000L);
            this.time = timeCount;
            timeCount.start();
        }
        int i5 = this.from;
        if (i5 == 1 || i5 == 2) {
            p.l(this.context).K1(Event.accountRegisterShow, new Ext());
        } else if (i5 == 3) {
            p.l(this.context).K1(Event.resetPasswordShow, new Ext());
        }
        this.inputCode.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                LoginInputPassActivity.this.codeLenth = charSequence.length();
                LoginInputPassActivity.this.updateLoginButn();
            }
        });
        this.inputPass.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                LoginInputPassActivity.this.passLenth = charSequence.length();
                LoginInputPassActivity.this.updateLoginButn();
                if (i6 == 0 && i7 == i8) {
                    LoginInputPassActivity loginInputPassActivity = LoginInputPassActivity.this;
                    loginInputPassActivity.inputPass.setSelection(loginInputPassActivity.passLenth);
                }
            }
        });
        n.g(this.inputPass);
        this.inputPass.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView5, int i6, KeyEvent keyEvent) {
                if (i6 == 4) {
                    LoginInputPassActivity.this.sendLogin();
                    return false;
                }
                return false;
            }
        });
        this.inputCode.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.4
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView5, int i6, KeyEvent keyEvent) {
                if (i6 == 5) {
                    LoginInputPassActivity loginInputPassActivity = LoginInputPassActivity.this;
                    if (loginInputPassActivity.from == 5) {
                        loginInputPassActivity.sendLogin();
                        return false;
                    }
                    return false;
                }
                return false;
            }
        });
        this.seePass.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                if (z3) {
                    LoginInputPassActivity.this.inputPass.setInputType(144);
                } else {
                    LoginInputPassActivity.this.inputPass.setInputType(129);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        a.b(this.inputPass);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void bindCode() {
        try {
            if (f.j(this)) {
                try {
                    AccountSendRequest accountSendRequest = new AccountSendRequest();
                    accountSendRequest.setMobile(this.phoneNumber);
                    accountSendRequest.setSign(u1.f(accountSendRequest));
                    AccountResultMainBean<AccountLoginresultData> C = this.rpcAccountClient.C(accountSendRequest.getParams());
                    if (C != null && C.getData() != null) {
                        if (C.getData().is_success()) {
                            if (this.from == 5) {
                                LoginInputPassActivity_.intent(this.context).from(2).phoneNumber(this.phoneNumber).thirdRequestbean(this.thirdRequestbean).start();
                            }
                        } else {
                            error(C.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            showLodingDismis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void clear() {
        this.inputPass.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void fergetPass() {
        if (checkFastClick()) {
            return;
        }
        if (!isPhoneNumber(this.phoneNumber)) {
            doHWToastCovered();
            i2.a(this.context).b("请输入手机号码后重试！");
            return;
        }
        resendgetCode(MMSRequesBean.TYPE_FORGOT);
        LoginInputPassActivity_.intent(this.context).from(3).phoneNumber(this.phoneNumber).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void getCode() {
        TimeCount timeCount = this.time;
        if (timeCount != null) {
            timeCount.start();
        }
        int i2 = this.from;
        if (i2 == 3) {
            resendgetCode(MMSRequesBean.TYPE_FORGOT);
        } else if (i2 == 5 || i2 == 2 || i2 == 1) {
            bindCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getLogin(String str, String str2) {
        if (f.j(this)) {
            showLoding();
            try {
                AccountLoginRequestbean accountLoginRequestbean = new AccountLoginRequestbean();
                accountLoginRequestbean.setAccount(str);
                accountLoginRequestbean.setPassword(str2);
                accountLoginRequestbean.setDevice_id("");
                accountLoginRequestbean.setSign(u1.f(accountLoginRequestbean));
                AccountResultMainBean<AccountresultData<AccountBean>> k4 = this.rpcAccountClient.k(accountLoginRequestbean.getParams());
                boolean z3 = true;
                if (k4 != null && k4.getError() == 0) {
                    if (k4.getData().isIs_success()) {
                        p.l(this.context).K1(Event.accountLoginSuccess, new Ext());
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

    public void getSmsFromPhone() {
        Cursor query = getContentResolver().query(this.SMS_INBOX, new String[]{"body"}, "date >  " + (System.currentTimeMillis() - TTAdConstant.AD_MAX_EVENT_TIME), null, "date desc");
        if (query != null && query.moveToNext()) {
            String string = query.getString(query.getColumnIndex("body"));
            if (string.contains(com.join.android.app.mgsim.wufun.b.f17915i)) {
                Matcher matcher = Pattern.compile("\\d+").matcher(string);
                while (matcher.find()) {
                    String group = matcher.group();
                    if (group.length() == 6) {
                        this.inputCode.setText(group);
                        return;
                    }
                }
            }
        }
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
    @UiThread
    public void loginSuccess(AccountBean accountBean) {
        this.prefDef.singleGameShowDialog().g("");
        if (!TextUtils.isEmpty(CheckInviteDialogActivity.f28449o0)) {
            ((ClipboardManager) getSystemService("clipboard")).setText(CheckInviteDialogActivity.f28449o0);
            CheckInviteDialogActivity.f28449o0 = "";
        }
        showLodingDismis();
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
        ((CommonService_.u1) CommonService_.d2(this.context).extra("accountloginSuccess", "xxx")).a();
        joinDevice();
        setResult(10011);
        IntentUtil.getInstance().checkRealNameAndIntent(this.context, accountBean, "login", this.gameId);
        this.application.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        x0 x0Var = this.dialog;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.showDialog = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void phoneRegin() {
        try {
            if (f.j(this)) {
                try {
                    AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = new AccountRegisterThirdwaiRequestBean();
                    accountRegisterThirdwaiRequestBean.setSource(2);
                    accountRegisterThirdwaiRequestBean.setMobile(this.phoneNumber);
                    accountRegisterThirdwaiRequestBean.setPassword(this.inputPass.getText().toString());
                    accountRegisterThirdwaiRequestBean.setCode(this.inputCode.getText().toString());
                    String q3 = MApplication.f9223q.q();
                    if (d2.h(q3) || "null".equals(q3)) {
                        accountRegisterThirdwaiRequestBean.setShare_code("");
                    }
                    accountRegisterThirdwaiRequestBean.setMac("");
                    d2.i("");
                    accountRegisterThirdwaiRequestBean.setDevice_id("");
                    accountRegisterThirdwaiRequestBean.setSign(u1.f(accountRegisterThirdwaiRequestBean));
                    AccountResultMainBean<AccountLoginresultData<AccountBean>> U = this.rpcAccountClient.U(accountRegisterThirdwaiRequestBean.getParams());
                    if (U != null && U.getData() != null) {
                        if (U.getData().is_success()) {
                            AccountBean user_info = U.getData().getUser_info();
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(user_info, getApplicationContext());
                            UtilsMy.K(this);
                            loginSuccess(user_info);
                            p.l(this.context).K1(Event.accountRegistertSuccess, new Ext());
                        } else {
                            error(U.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            showLodingDismis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void resendgetCode(int i2) {
        if (f.j(this)) {
            showLoding();
            try {
                MMSRequesBean mMSRequesBean = new MMSRequesBean();
                mMSRequesBean.setMobile(this.phoneNumber);
                mMSRequesBean.setType(i2);
                mMSRequesBean.setSign(u1.f(mMSRequesBean));
                AccountResultMainBean<AccountTokenSuccess> i4 = this.rpcAccountClient.i(mMSRequesBean.getParams());
                if (i4 != null && i4.getError() == 0) {
                    if (!i4.getData().is_success()) {
                        error(i4.getData().getError_msg());
                    }
                } else if (i4 != null && i4.getError() == 601) {
                    AccountTokenSuccess data = i4.getData();
                    if (data != null) {
                        error(data.getError_msg());
                    } else {
                        error("系统繁忙，请稍后...");
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
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
    @Background
    public void resetPass(String str, String str2) {
        if (f.j(this)) {
            showLoding();
            try {
                AccountGetBackRequest accountGetBackRequest = new AccountGetBackRequest();
                accountGetBackRequest.setMobile(this.phoneNumber);
                accountGetBackRequest.setPassword(str);
                String trim = str2.trim();
                int i2 = 0;
                try {
                    i2 = Integer.parseInt(trim);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                accountGetBackRequest.setCode(i2 + "");
                accountGetBackRequest.setSign(u1.f(accountGetBackRequest));
                AccountResultMainBean<AccountTokenSuccess> Y = this.rpcAccountClient.Y(accountGetBackRequest.getParams());
                if (Y != null && Y.getError() == 0) {
                    if (Y.getData().is_success()) {
                        success();
                        p.l(this.context).K1(Event.resetPasswordSuccess, new Ext());
                    } else {
                        error(Y.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showLodingDismis();
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void sendLogin() {
        if (checkFastClick()) {
            return;
        }
        a.b(this.inputPass);
        int i2 = this.from;
        if (i2 == 1) {
            String obj = this.inputPass.getText().toString();
            if (passwordCheck(obj) && Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", obj)) {
                p.l(this.context).K1(Event.accountRegisterSubmit, new Ext());
                phoneRegin();
                return;
            }
            i2.a(this.context).b("密码格式有误，输入6至16位字母或数字");
        } else if (i2 == 2) {
            String obj2 = this.inputPass.getText().toString();
            if (passwordCheck(obj2) && Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", obj2)) {
                p.l(this.context).K1(Event.accountRegisterSubmit, new Ext());
                thirdRegin();
                return;
            }
            i2.a(this.context).b("密码格式有误，输入6至16位字母或数字");
        } else if (i2 == 3) {
            String trim = this.inputCode.getText().toString().trim();
            String obj3 = this.inputPass.getText().toString();
            if (d2.i(trim) && d2.j(trim) && trim.length() == 6) {
                if (!Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", obj3)) {
                    i2.a(this.context).b("密码格式有误，输入6至16位字母或数字");
                    return;
                } else if (passwordCheck(obj3)) {
                    p.l(this.context).K1(Event.resetPasswordSubmit, new Ext());
                    resetPass(obj3, trim);
                    return;
                } else {
                    return;
                }
            }
            i2.a(this).b("输入格式有误");
        } else if (i2 == 6 || i2 == 4) {
            p.l(this.context).K1(Event.accountLoginSubmit, new Ext());
            String obj4 = this.inputPass.getText().toString();
            if (obj4.length() <= 16 && obj4.length() >= 6) {
                if (d2.i(obj4)) {
                    getLogin(this.phoneNumber, obj4);
                    return;
                }
                return;
            }
            i2.a(this).b("密码格式有误，输入6至16位字母或数字");
        } else if (i2 == 5) {
            String obj5 = this.inputCode.getText().toString();
            this.phoneNumber = obj5;
            if (d2.i(obj5.trim()) && isPhoneNumber(this.phoneNumber)) {
                bindCode();
            } else {
                i2.a(this.context).b("请输入正确的手机号码");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void shengming() {
        a.b(this.inputPass);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(g.f51524k + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void showKeyborad(EditText editText) {
        a.c(editText);
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
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void success() {
        i2.a(this).b("重置密码成功");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void thirdRegin() {
        try {
            if (f.j(this)) {
                try {
                    this.thirdRequestbean.setSource(2);
                    this.thirdRequestbean.setMobile(this.phoneNumber);
                    this.thirdRequestbean.setPassword(this.inputPass.getText().toString());
                    this.thirdRequestbean.setCode(this.inputCode.getText().toString());
                    String q3 = MApplication.f9223q.q();
                    if (d2.h(q3) || "null".equals(q3)) {
                        this.thirdRequestbean.setShare_code("");
                    }
                    this.thirdRequestbean.setMac("");
                    d2.i("");
                    this.thirdRequestbean.setDevice_id("");
                    AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = this.thirdRequestbean;
                    accountRegisterThirdwaiRequestBean.setSign(u1.f(accountRegisterThirdwaiRequestBean));
                    AccountResultMainBean<AccountLoginresultData<AccountBean>> N = this.rpcAccountClient.N(this.thirdRequestbean.getParams());
                    if (N != null && N.getData() != null) {
                        if (N.getData().is_success()) {
                            AccountBean user_info = N.getData().getUser_info();
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(user_info, getApplicationContext());
                            UtilsMy.K(this);
                            loginSuccess(user_info);
                            p.l(this.context).K1(Event.thirdPartyRegisterSuccess, new Ext());
                        } else {
                            error(N.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            showLodingDismis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void xieyi() {
        a.b(this.inputPass);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(g.f51524k + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }
}
