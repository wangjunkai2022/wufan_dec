package com.join.mgps.activity;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ModifyPasswordRequestBean;
import com.join.mgps.dto.SetPasswordRequestBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.setting_password_activity)
/* loaded from: classes3.dex */
public class MyAccountSettingPasswordActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34211a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    Button f34212b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f34213c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f34214d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    EditText f34215e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    EditText f34216f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    AccountBean f34217g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.b f34218h;

    /* renamed from: i  reason: collision with root package name */
    private Context f34219i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        this.f34217g.setPwd_set_up(1);
        AccountUtil_.getInstance_(this.f34219i).saveAccountData(this.f34217g, this.f34219i);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0(String str, String str2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ModifyPasswordRequestBean modifyPasswordRequestBean = new ModifyPasswordRequestBean();
                modifyPasswordRequestBean.setToken(this.f34217g.getToken());
                modifyPasswordRequestBean.setDevice_id("");
                modifyPasswordRequestBean.setNew_passwd(str2);
                modifyPasswordRequestBean.setOld_passwd(str);
                modifyPasswordRequestBean.setUid(this.f34217g.getUid());
                modifyPasswordRequestBean.setSign(com.join.mgps.Util.u1.f(modifyPasswordRequestBean));
                AccountResultMainBean<AccountTokenSuccess> v3 = this.f34218h.v(modifyPasswordRequestBean.getParams());
                if (v3 != null && v3.getError() == 0) {
                    if (v3.getData().is_success()) {
                        showToast("修改密码成功");
                        F0();
                    } else {
                        showToast(v3.getData().getError_msg());
                    }
                } else {
                    showToast("连接失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("连接失败，请稍后再试。");
                return;
            }
        }
        showToast("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                SetPasswordRequestBean setPasswordRequestBean = new SetPasswordRequestBean();
                setPasswordRequestBean.setToken(this.f34217g.getToken());
                setPasswordRequestBean.setDevice_id("");
                setPasswordRequestBean.setNew_passwd(str);
                setPasswordRequestBean.setUid(this.f34217g.getUid());
                setPasswordRequestBean.setSign(com.join.mgps.Util.u1.f(setPasswordRequestBean));
                AccountResultMainBean<AccountTokenSuccess> u3 = this.f34218h.u(setPasswordRequestBean.getParams());
                if (u3 != null && u3.getError() == 0) {
                    if (u3.getData().is_success()) {
                        showToast("设置私密成功");
                        F0();
                    } else {
                        showToast(u3.getData().getError_msg());
                    }
                } else {
                    showToast("连接失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("连接失败，请稍后再试。");
                return;
            }
        }
        showToast("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        if (this.f34217g.getPwd_set_up() == 0) {
            String obj = this.f34215e.getText().toString();
            if (obj.length() >= 6 && obj.length() <= 16) {
                if (obj.equals(this.f34216f.getText().toString())) {
                    H0(obj);
                    return;
                } else {
                    com.join.mgps.Util.i2.a(this.f34219i).b("两次输入不同哦，请重新输入");
                    return;
                }
            }
            com.join.mgps.Util.i2.a(this).b("密码格式有误，输入6至16位字母或数字");
            return;
        }
        String obj2 = this.f34215e.getText().toString();
        String obj3 = this.f34214d.getText().toString();
        String obj4 = this.f34216f.getText().toString();
        if (obj3.length() == 0) {
            com.join.mgps.Util.i2.a(this).b("请输入原密码");
        } else if (obj2.length() == 0) {
            com.join.mgps.Util.i2.a(this).b("请输入新密码");
        } else if (obj4.length() == 0) {
            com.join.mgps.Util.i2.a(this).b("请确认新密码");
        } else if (obj3.equals(obj2)) {
            com.join.mgps.Util.i2.a(this).b("新密码不能和原密码一致");
        } else if (obj2.length() >= 6 && obj2.length() <= 16) {
            if (obj2.equals(obj4)) {
                G0(obj3, obj2);
            } else {
                com.join.mgps.Util.i2.a(this.f34219i).b("两次输入不同哦，请重新输入");
            }
        } else {
            com.join.mgps.Util.i2.a(this).b("密码格式有误，输入6至16位字母或数字");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34218h = com.join.mgps.rpc.impl.a.b0();
        this.f34219i = this;
        if (this.f34217g.getPwd_set_up() == 0) {
            this.f34211a.setText("设置密码");
            this.f34213c.setVisibility(8);
            return;
        }
        this.f34211a.setText("修改密码");
        this.f34213c.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f34219i).b(str);
    }
}
