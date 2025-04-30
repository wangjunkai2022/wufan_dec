package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.about_activity)
/* loaded from: classes3.dex */
public class MGPapaAboutActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f33502a;

    /* renamed from: b  reason: collision with root package name */
    private String f33503b = getClass().getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.b f33504c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f33505d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33506e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f33507f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void D0() {
        this.f33505d = com.join.mgps.rpc.impl.c.P1();
        this.f33504c = com.join.mgps.rpc.impl.a.b0();
        this.f33502a = this;
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51524k + "/static/wf_mianze.html");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        ((ClipboardManager) this.f33502a.getSystemService("clipboard")).setText("wufangame");
        com.join.mgps.Util.i2.a(this).b("wufangame 已复制到剪贴板");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(5);
        intentDateBean.setLink_type_val("http://www.5fun.com/");
        IntentUtil.getInstance().intentActivity(this.f33502a, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        TextUtils.isEmpty("wufun");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51524k + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.f33502a, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(5);
        intentDateBean.setLink_type_val("http://weibo.com/papamoniqi");
        IntentUtil.getInstance().intentActivity(this.f33502a, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        TextUtils.isEmpty("wufun");
        this.f33506e.setText("关于悟饭");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51524k + "/static/yhxkxy.html");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51524k + com.constant.b.f11071e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
