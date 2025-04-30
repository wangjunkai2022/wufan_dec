package com.join.mgps.activity;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.TextChange;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.instead_phone_activity)
/* loaded from: classes3.dex */
public class MyAccountInsteadPhoneActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34041a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34042b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    EditText f34043c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f34044d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    AccountBean f34045e;

    /* renamed from: f  reason: collision with root package name */
    private Context f34046f;

    /* renamed from: g  reason: collision with root package name */
    MApplication f34047g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TextChange
    public void F0() {
        if (this.f34043c.getText().toString().length() == 11) {
            this.f34044d.setEnabled(true);
        } else {
            this.f34044d.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        String obj = this.f34043c.getText().toString();
        if (obj.length() == 11 && com.join.mgps.Util.d2.j(obj)) {
            if (obj.equals(this.f34045e.getMobile())) {
                com.join.mgps.Util.i2.a(this).b("新手机号和旧手机号不能一致");
                return;
            } else {
                MyAccountChangePhoneActivity_.d1(this.f34046f).a(this.f34045e).b(obj).start();
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("手机号格式有误");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        MApplication mApplication = (MApplication) getApplication();
        this.f34047g = mApplication;
        this.f34046f = this;
        mApplication.k(this);
        this.f34041a.setText("更换绑定手机号");
        this.f34044d.setEnabled(false);
        if (this.f34045e.getMobile().length() == 11) {
            TextView textView = this.f34042b;
            textView.setText("当前绑定号码 : " + this.f34045e.getMobile().substring(0, 3) + "****" + this.f34045e.getMobile().substring(7, 11));
        }
    }
}
