package com.join.mgps.activity;

import android.content.Context;
import android.text.InputFilter;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.GameFromBooleanBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_build_game_from)
/* loaded from: classes3.dex */
public class BuildGameFromActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f28404a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28405b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    EditText f28406c;

    /* renamed from: d  reason: collision with root package name */
    Context f28407d;

    /* renamed from: e  reason: collision with root package name */
    InputFilter[] f28408e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.b f28409f;

    /* renamed from: g  reason: collision with root package name */
    AccountBean f28410g;

    /* renamed from: h  reason: collision with root package name */
    String f28411h;

    /* renamed from: i  reason: collision with root package name */
    String f28412i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void E0() {
        this.f28407d = this;
        this.f28411h = "";
        RequestBeanUtil.getInstance(this);
        this.f28412i = RequestBeanUtil.getVersionAndVersionName();
        this.f28409f = com.join.mgps.rpc.impl.a.b0();
        this.f28410g = AccountUtil_.getInstance_(this.f28407d).getAccountData();
        InputFilter[] inputFilterArr = {new com.join.mgps.Util.d1(24, this)};
        this.f28408e = inputFilterArr;
        this.f28406c.setFilters(inputFilterArr);
        this.f28406c.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(String str) {
        com.join.mgps.Util.i2.a(this.f28407d).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        if (!this.f28406c.getText().toString().equals("") && !com.join.mgps.Util.n.f(this.f28406c.getText().toString())) {
            getData();
        } else {
            com.join.mgps.Util.i2.a(this.f28407d).b("不能为空且不能输入表情！");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f28407d)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.f28410g.getUid()));
                linkedMultiValueMap.add("token", this.f28410g.getToken());
                linkedMultiValueMap.add("group_title", this.f28406c.getText().toString().trim());
                linkedMultiValueMap.add("device_id", this.f28411h);
                linkedMultiValueMap.add("version", this.f28412i);
                GameFromBooleanBean p3 = this.f28409f.p(linkedMultiValueMap);
                if (p3 != null && p3.getError() == 0 && p3.getData().isState()) {
                    F0("创建成功！");
                    finish();
                } else if (p3.getData().getCode() == 10002) {
                    F0("游戏单重复！");
                } else if (10001 == p3.getData().getCode()) {
                    F0("游戏单不存在！");
                } else {
                    F0("创建失败！");
                }
            } else {
                F0("暂无网络！");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        finish();
    }
}
