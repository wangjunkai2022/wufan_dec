package com.join.mgps.activity;

import android.widget.ListView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.CloudRecord;
import com.join.mgps.dto.GameWorldResponse;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.cloud_download_list)
/* loaded from: classes3.dex */
public class CloudDownloadListActivity extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    DownloadTask f28708a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ListView f28709b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.k f28710c;

    /* renamed from: d  reason: collision with root package name */
    List<CloudRecord> f28711d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f28710c = com.join.mgps.rpc.impl.k.n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        GameWorldResponse<CloudList> z3 = this.f28710c.z(AccountUtil_.getInstance_(this).getAccountData().getUid(), AccountUtil_.getInstance_(this).getAccountData().getToken());
        if (z3.getError() == 0) {
            this.f28711d = z3.getData().getBackup_list();
        }
    }
}
