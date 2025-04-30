package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.detial_layout)
/* loaded from: classes3.dex */
public class DetialActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f29428a;
    @ViewById(resName = "loding_layout")

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f29429b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.d f29430c;

    /* renamed from: d  reason: collision with root package name */
    private Context f29431d;

    /* renamed from: e  reason: collision with root package name */
    private AccountBean f29432e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    IntentDateBean f29433f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    ExtBean f29434g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f29435h = new a();

    /* renamed from: i  reason: collision with root package name */
    private boolean f29436i = true;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            com.join.mgps.Util.t0.c("detial  handler finish");
            DetialActivity.this.finish();
        }
    }

    private void G0(DetailResultBean detailResultBean) {
        com.join.mgps.Util.t0.c("detial  startActivitydetial");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        this.f29436i = false;
        finish();
        com.join.mgps.Util.t0.c("detial  backbutn");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f29431d).getAccountData();
                this.f29432e = accountData;
                ResultMainBean<List<DetailResultBean>> R = this.f29430c.R(RequestBeanUtil.getInstance(this).getAppDetialBean(this.f29433f.getCrc_link_type_val(), accountData != null ? accountData.getUid() : 0, this.f29434g));
                if (R != null && R.getFlag() != 0) {
                    List<DetailResultBean> data = R.getMessages().getData();
                    if (data != null && data.size() > 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (detailResultBean != null) {
                            G0(detailResultBean);
                            return;
                        } else {
                            showLodingFailed();
                            return;
                        }
                    }
                    showLodingFailed();
                    return;
                }
                showLodingFailed();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f29430c = com.join.mgps.rpc.impl.c.P1();
        this.f29431d = this;
        F0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.t0.c("detial  onDestroy");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        this.f29436i = false;
        if (i2 == 4 && keyEvent.getRepeatCount() == 0) {
            if (isTaskRoot()) {
                Intent intent = new Intent();
                intent.setClass(this.f29431d, MGMainActivity_.class);
                intent.setFlags(335544320);
                startActivity(intent);
            }
            finish();
            com.join.mgps.Util.t0.c("detial  keyDown Back");
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.join.mgps.Util.t0.c("detial  onPause");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.mgps.Util.t0.c("detial  onresume");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.join.mgps.Util.t0.c("detial  onStop");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f29429b.setVisibility(0);
        this.f29428a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f29429b.setVisibility(8);
        this.f29428a.setVisibility(0);
    }
}
