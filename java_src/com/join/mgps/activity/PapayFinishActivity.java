package com.join.mgps.activity;

import android.text.Html;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.PapayResult;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_papay_finish)
/* loaded from: classes3.dex */
public class PapayFinishActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34831a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34832b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f34833c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34834d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f34835e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f34836f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34837g;

    /* renamed from: h  reason: collision with root package name */
    MApplication f34838h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    PapayResult f34839i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    boolean f34840j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        MApplication mApplication = (MApplication) getApplication();
        this.f34838h = mApplication;
        mApplication.k(this);
        this.f34833c.setText("订单支付");
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            TextView textView = this.f34831a;
            textView.setText(Html.fromHtml("用户：<font color='0x3b3b3b' >" + accountData.getAccount() + "</font>"), TextView.BufferType.SPANNABLE);
        }
        if (this.f34839i.getStatus() == 1) {
            this.f34835e.setImageResource(R.drawable.papay_success_image);
            TextView textView2 = this.f34832b;
            textView2.setText(Html.fromHtml("<font color='0xfc3f5e' >" + this.f34839i.getPayProduct() + "</font>购买成功"), TextView.BufferType.SPANNABLE);
        } else if (this.f34839i.getStatus() == 4) {
            this.f34835e.setImageResource(R.drawable.papay_failed_image);
            TextView textView3 = this.f34832b;
            textView3.setText(Html.fromHtml("<font color='0xfc3f5e' >" + this.f34839i.getPayProduct() + "</font>等待支付"), TextView.BufferType.SPANNABLE);
        } else {
            this.f34835e.setImageResource(R.drawable.papay_failed_image);
            TextView textView4 = this.f34832b;
            textView4.setText(Html.fromHtml("<font color='0xfc3f5e' >" + this.f34839i.getPayProduct() + "</font>购买失败,原因：" + this.f34839i.getMessage()), TextView.BufferType.SPANNABLE);
        }
        if (this.f34840j) {
            this.f34834d.setText("VIP购买成功后，请重启悟饭游戏厅，VIP即生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f34838h.l();
    }
}
