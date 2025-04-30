package com.join.mgps.activity.login;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.common.util.f;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.j;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.n;
import com.join.mgps.activity.MGChooseIconActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.change_account_nickname_layout)
/* loaded from: classes3.dex */
public class ChangeAccountNickNameActivity extends BaseAppCompatActivity {
    AccountBean accountBean;
    @ViewById
    View close;
    Context context;
    Dialog dialogLoding;
    @ViewById
    EditText nickName;
    @ViewById
    TextView nickNameBution;
    @ViewById
    SimpleDraweeView userIcon;

    private void changeNickName(final String str) {
        ChangeNiknameRequest changeNiknameRequest = new ChangeNiknameRequest();
        changeNiknameRequest.setDeviceId("");
        changeNiknameRequest.setMac("");
        changeNiknameRequest.setNickName(str);
        changeNiknameRequest.setUid(this.accountBean.getUid());
        changeNiknameRequest.setUserToken(this.accountBean.getToken());
        changeNiknameRequest.setVersion(j.n(this).y() + "_" + j.n(this).z());
        i.b().a().c(changeNiknameRequest).enqueue(new Callback<LoginResultMain<AccountresultData>>() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity.2
            @Override // retrofit2.Callback
            public void onFailure(Call<LoginResultMain<AccountresultData>> call, Throwable th) {
                ChangeAccountNickNameActivity.this.dialogLoding.dismiss();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<LoginResultMain<AccountresultData>> call, Response<LoginResultMain<AccountresultData>> response) {
                if (response != null && response.body() != null) {
                    LoginResultMain<AccountresultData> body = response.body();
                    if (body != null && body.getError() == 0 && body.getData() != null && body.getData().isIs_success()) {
                        ChangeAccountNickNameActivity.this.accountBean.setNickname(str);
                        AccountUtil_ instance_ = AccountUtil_.getInstance_(ChangeAccountNickNameActivity.this.context);
                        ChangeAccountNickNameActivity changeAccountNickNameActivity = ChangeAccountNickNameActivity.this;
                        instance_.saveAccountData(changeAccountNickNameActivity.accountBean, changeAccountNickNameActivity.context);
                        ChangeAccountNickNameActivity.this.finish();
                    } else if (body.getError() == 0) {
                        if (body.getData() != null) {
                            ChangeAccountNickNameActivity.this.error(body.getData().getError_msg());
                        }
                    } else {
                        ChangeAccountNickNameActivity.this.error(body.getMsg());
                    }
                } else {
                    ChangeAccountNickNameActivity.this.error("数据异常");
                }
                ChangeAccountNickNameActivity.this.dialogLoding.dismiss();
            }
        });
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
        if (d2.h(str)) {
            return 0;
        }
        return str.length() + getChineseCount(str);
    }

    private boolean matchStringLength(String str, int i2, int i4) {
        int stringLength = getStringLength(str);
        return stringLength >= i2 && stringLength <= i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.dialogLoding = a0.c0(this).x(this);
        showFinishPage(this.accountBean);
        this.context = this;
        this.nickName.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
                if (charSequence.length() > 0) {
                    ChangeAccountNickNameActivity.this.nickNameBution.setEnabled(true);
                } else {
                    ChangeAccountNickNameActivity.this.nickNameBution.setEnabled(false);
                }
            }
        });
        n.g(this.nickName);
        p.l(this.context).K1(Event.showNicknameEditPage, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void nickNameBution() {
        String obj = this.nickName.getText().toString();
        if (!matchStringLength(obj, 1, 20)) {
            error("昵称格式有误，输入1至24位字母或数字或汉字");
        } else if (obj.equals(this.accountBean.getAccount())) {
            error("昵称不能和账号相同");
        } else {
            p.l(this.context).K1(Event.submitNewNickname, new Ext());
            this.dialogLoding.show();
            changeNickName(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        if (i2 == 10001 && i4 == 10001) {
            MyImageLoader.s(this.userIcon, AccountUtil_.getInstance_(this).getAccountData().getAvatarSrc());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Dialog dialog = this.dialogLoding;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        MyImageLoader.s(this.userIcon, accountData.getAvatarSrc());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFinishPage(AccountBean accountBean) {
        if (accountBean.getAvatarSrc().startsWith(f.f11765a)) {
            MyImageLoader.d(this.userIcon, R.drawable.unloginstatus, accountBean.getAvatarSrc());
        } else {
            MyImageLoader.s(this.userIcon, accountBean.getAvatarSrc());
        }
        this.nickName.setText(accountBean.getNickname());
        EditText editText = this.nickName;
        editText.setSelection(editText.getText().toString().length());
        showKeyborad(this.nickName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 600)
    public void showKeyborad(EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void userIcon() {
        MGChooseIconActivity_.V0(this).a(this.accountBean).b(1).startForResult(10001);
    }
}
