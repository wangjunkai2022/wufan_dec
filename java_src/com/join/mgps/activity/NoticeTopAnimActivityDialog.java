package com.join.mgps.activity;

import android.os.Bundle;
import android.text.Html;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.nontice_top_anim_dialog_layout)
/* loaded from: classes3.dex */
public class NoticeTopAnimActivityDialog extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f34391a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34392b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f34393c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34394d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34395e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f34396f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f34397g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    String f34398h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    int f34399i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    int f34400j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void E0(int i2) {
        com.join.mgps.Util.c.f(this.f34392b);
        if (i2 == 0) {
            G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        int i2 = this.f34399i;
        if (i2 == 3 || i2 == 6) {
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51548s);
            ShareWebActivity_.O2(this).b(intentDateBean).start();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void G0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        IntentUtil.getInstance().goShareWebActivity(this, "http://h5.5fun.com/helo_copper.html");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        int i2 = this.f34399i;
        if (i2 == 0) {
            this.f34392b.setVisibility(8);
            this.f34391a.setVisibility(0);
            this.f34397g.setText("确认");
            this.f34395e.setText(this.f34398h);
            this.f34393c.setText("支付失败");
        } else if (i2 == 1 || i2 == 2) {
            this.f34392b.setVisibility(0);
            this.f34391a.setVisibility(8);
            this.f34392b.setText(Html.fromHtml(this.f34398h), TextView.BufferType.SPANNABLE);
            com.join.mgps.Util.c.e(this.f34392b);
            E0(0);
        } else if (i2 != 3) {
            if (i2 != 6) {
                return;
            }
            this.f34393c.setText("支付成功");
            this.f34392b.setVisibility(0);
            this.f34391a.setVisibility(0);
            this.f34397g.setText("免费领铜板");
            this.f34395e.setText("您的铜板不多啦，去免费领点吧");
            this.f34392b.setText(Html.fromHtml(this.f34398h), TextView.BufferType.SPANNABLE);
            com.join.mgps.Util.c.e(this.f34392b);
            E0(1);
        } else {
            this.f34393c.setText("铜板余额不足");
            this.f34392b.setVisibility(8);
            this.f34391a.setVisibility(0);
            this.f34397g.setText("免费领铜板");
            this.f34395e.setText(Html.fromHtml(this.f34398h), TextView.BufferType.SPANNABLE);
            this.f34395e.setTextSize(20.0f);
            this.f34394d.setVisibility(0);
            TextView textView = this.f34394d;
            textView.setText("当前余额：" + this.f34400j);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
    }
}
