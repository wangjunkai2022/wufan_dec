package com.join.mgps.activity.login;

import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u1;
import com.join.mgps.activity.CheckInviteDialogActivity;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.b;
import com.join.mgps.rpc.impl.a;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
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
@EActivity(R.layout.wufunlogin_splash_activity)
/* loaded from: classes3.dex */
public class LoginSplashActivity extends AppCompatActivity {
    private AlertDialog alertDialog;
    MApplication application;
    @ViewById
    View close;
    Context context;
    @Extra
    String gameId;
    @ViewById
    View login;
    @Pref
    PrefDef_ prefDef;
    b rpcAccountClient;
    private String TAG = "LoginSplashActivity";
    boolean preReslt = true;
    boolean notStartGame = false;
    private boolean autoFinish = true;

    private void loginAuth() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.k(this);
        this.context = this;
        this.rpcAccountClient = a.b0();
        LoginMainActivity_.intent(this).gameId(this.gameId).start();
        finish();
        p.l(this.context).K1(Event.welcomePageShow, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        p.l(this.context).K1(Event.closeWelcomePage, new Ext());
        finish();
    }

    public void dismissLoadingDialog() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        i2.a(this).b(str);
    }

    @Override // android.app.Activity
    public void finish() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        super.finish();
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
    @Click
    public void login() {
        p.l(this.context).K1(Event.clickFastLoginButton, new Ext());
        loginAuth();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loginSuccess(AccountBean accountBean) {
        this.prefDef.singleGameShowDialog().g("");
        if (!TextUtils.isEmpty(CheckInviteDialogActivity.f28449o0)) {
            ((ClipboardManager) getSystemService("clipboard")).setText(CheckInviteDialogActivity.f28449o0);
            CheckInviteDialogActivity.f28449o0 = "";
        }
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
        ((CommonService_.u1) CommonService_.d2(this.context).extra("accountloginSuccess", "xxx")).a();
        joinDevice();
        setResult(10011);
        finish();
        IntentUtil.getInstance().checkRealNameAndIntent(this.context, accountBean, "login", this.gameId);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    public void showLoadingDialog() {
        if (this.alertDialog == null) {
            AlertDialog create = new AlertDialog.Builder(this).create();
            this.alertDialog = create;
            create.getWindow().setBackgroundDrawable(new ColorDrawable());
            this.alertDialog.setCancelable(false);
            this.alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity.1
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return i2 == 84 || i2 == 4;
                }
            });
        }
        this.alertDialog.show();
        this.alertDialog.setContentView(R.layout.loading_alert);
        this.alertDialog.setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toLogin(String str) {
        LoginjiguangRequest loginjiguangRequest = new LoginjiguangRequest();
        loginjiguangRequest.getData(this.context);
        loginjiguangRequest.setLoginToken(str);
        showLoadingDialog();
        loginjiguangRequest.setSign(u1.c(JsonMapper.getInstance().toJson(loginjiguangRequest)));
        i.b().a().e(loginjiguangRequest).enqueue(new Callback<LoginResultMain<AccountresultData<AccountBean>>>() { // from class: com.join.mgps.activity.login.LoginSplashActivity.2
            @Override // retrofit2.Callback
            public void onFailure(Call<LoginResultMain<AccountresultData<AccountBean>>> call, Throwable th) {
                LoginSplashActivity.this.dismissLoadingDialog();
                LoginSplashActivity.this.finish();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<LoginResultMain<AccountresultData<AccountBean>>> call, Response<LoginResultMain<AccountresultData<AccountBean>>> response) {
                LoginResultMain<AccountresultData<AccountBean>> body = response.body();
                LoginSplashActivity.this.dismissLoadingDialog();
                if (body != null && body.getError() == 0) {
                    if (body.getData().isIs_success()) {
                        AccountUtil_.getInstance_(LoginSplashActivity.this.getApplicationContext()).saveAccountData(body.getData().getUser_info(), LoginSplashActivity.this.context);
                        UtilsMy.A3(LoginSplashActivity.this.context, body.getData().getGame_list_permission());
                        UtilsMy.K(LoginSplashActivity.this.context);
                        LoginSplashActivity.this.loginSuccess(body.getData().getUser_info());
                        return;
                    }
                    LoginSplashActivity.this.error(body.getData().getError_msg());
                    LoginSplashActivity.this.finish();
                    return;
                }
                if (body != null && body.getData() != null) {
                    LoginSplashActivity.this.error(body.getData().getError_msg());
                } else if (body != null && d2.i(body.getMsg())) {
                    LoginSplashActivity.this.error(body.getMsg());
                } else {
                    LoginSplashActivity.this.error("连接失败，请稍后再试。");
                }
                LoginSplashActivity.this.finish();
            }
        });
    }
}
