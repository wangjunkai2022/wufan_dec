package com.join.mgps.activity.mygame.dialog;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.a;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t0;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import g1.f;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.appdown_finish_dialog_layout)
/* loaded from: classes3.dex */
public class AppDownFinishDialogAcitivity extends BaseActivity {
    @ViewById
    TextView appSize;
    @ViewById
    ImageView cancle;
    DownloadTask downloadTask;
    @Extra
    String gameId;
    @ViewById
    SimpleDraweeView icon;
    @ViewById
    TextView info;
    boolean isSo = false;
    @ViewById
    TextView lodingInfo;
    @ViewById
    TextView ok;
    @ViewById
    ProgressBar progressBar;
    @ViewById
    ProgressBar progressBarZip;
    @ViewById
    TextView title;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (getResources().getConfiguration().orientation == 2) {
            finish();
        }
        t0.d("PlugDownDialogAcitivity", "PlugDownDialogAcitivity oncreate");
        DownloadTask B = f.G().B(this.gameId);
        this.downloadTask = B;
        if (B == null) {
            finish();
            return;
        }
        TextView textView = this.title;
        textView.setText("正在初始化" + this.downloadTask.getShowName());
        this.ok.setText("开始游戏");
        if (this.downloadTask.getStatus() == 5) {
            this.title.setText(this.downloadTask.getShowName());
            if (Dtype.apk.name().equals(this.downloadTask.getFileType())) {
                this.info.setText("下载完成");
                this.isSo = true;
                p.l(this).K1(Event.showSoGameStart, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
            } else {
                p.l(this).K1(Event.showSinGameStart, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
                this.isSo = false;
                this.info.setText("安装完成");
            }
            MyImageLoader.h(this.icon, this.downloadTask.getPortraitURL());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void cancle() {
        if (this.isSo) {
            p.l(this).K1(Event.exitSoGameStart, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        } else {
            p.l(this).K1(Event.exitSinGameStart, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void goMygame() {
        if (this.isSo) {
            p.l(this).K1(Event.enterSoStartMyGame, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        } else {
            p.l(this).K1(Event.enterSinStartMyGame, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        }
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void ok() {
        if (this.isSo) {
            p.l(this).K1(Event.onclickSoGameStart, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        } else {
            p.l(this).K1(Event.onclickSinGameStart, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 5) {
            if (status != 11) {
                finish();
                return;
            } else {
                a.g0(this).v(this, this.downloadTask.getGameZipPath());
                return;
            }
        }
        DownloadTask downloadTask2 = this.downloadTask;
        if (downloadTask2 != null) {
            UtilsMy.c3(this, downloadTask2);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
