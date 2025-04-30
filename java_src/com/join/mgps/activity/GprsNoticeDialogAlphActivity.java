package com.join.mgps.activity;

import android.widget.Button;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.UpdateIntentDataBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.fc_notice_dialog)
/* loaded from: classes3.dex */
public class GprsNoticeDialogAlphActivity extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    DownloadTask f32164a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    String f32165b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    EMUApkTable f32166c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    boolean f32167d = false;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    UpdateIntentDataBean f32168e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32169f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f32170g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f32171h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f32172i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32173j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32174k;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        EMUApkTable eMUApkTable = this.f32166c;
        if (eMUApkTable != null) {
            UtilsMy.W0(eMUApkTable, this);
        }
        if (this.f32167d) {
            UtilsMy.Y0(this, this.f32168e);
        } else {
            com.php25.PDownload.d.f(this.f32164a, this);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        if (this.f32167d) {
            this.f32170g.setText("正在使用流量更新游戏");
            this.f32173j.setText("马上更新");
        } else {
            this.f32170g.setText("正在使用流量下载");
            this.f32173j.setText("马上下载");
        }
        this.f32171h.setText(this.f32165b);
        this.f32172i.setText("可在我的>管理>设置 里修改提醒");
        this.f32174k.setText("下次再说");
    }
}
