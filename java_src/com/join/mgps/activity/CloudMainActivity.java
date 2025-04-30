package com.join.mgps.activity;

import android.content.Intent;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.GameWorldResponse;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.cloud_main)
/* loaded from: classes3.dex */
public class CloudMainActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    List<DownloadTask> f28717a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28718b;
    @Bean

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.Util.b f28719c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.k f28720d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f28721e;

    /* renamed from: f  reason: collision with root package name */
    int f28722f;

    /* renamed from: g  reason: collision with root package name */
    int f28723g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.dialog.x0 f28724h = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        startActivity(new Intent(this, CloudActivity_.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        com.join.mgps.dialog.x0 x0Var = this.f28724h;
        if (x0Var != null) {
            x0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        startActivity(new Intent(this, CloudDownloadListActivity_.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        com.join.mgps.dialog.x0 x0Var = this.f28724h;
        if (x0Var != null) {
            if (x0Var.isShowing()) {
                return;
            }
        } else {
            this.f28724h = com.join.mgps.Util.a0.c0(this).A(this, false);
        }
        this.f28724h.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        F0();
        TextView textView = this.f28718b;
        textView.setText("本地存档: " + this.f28722f + "个");
        TextView textView2 = this.f28721e;
        textView2.setText("云端存档: " + this.f28723g + "个");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f28720d = com.join.mgps.rpc.impl.k.n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        H0();
        this.f28717a = g1.f.G().u();
        for (int i2 = 0; i2 < this.f28717a.size(); i2++) {
            DownloadTask downloadTask = this.f28717a.get(i2);
            this.f28722f += com.join.mgps.Util.f0.l(downloadTask.getPlugin_num(), downloadTask.getGameZipPath()).size();
        }
        GameWorldResponse<CloudList> z3 = this.f28720d.z(AccountUtil_.getInstance_(this).getAccountData().getUid(), AccountUtil_.getInstance_(this).getAccountData().getToken());
        if (z3.getError() == 0) {
            this.f28723g = z3.getData().getBackup_list().size();
        }
        I0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getData();
    }
}
