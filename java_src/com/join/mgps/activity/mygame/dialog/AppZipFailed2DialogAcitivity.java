package com.join.mgps.activity.mygame.dialog;

import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.php25.PDownload.d;
import f1.a;
import g1.f;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.appdown_unzipfailed_dialog_layout)
/* loaded from: classes3.dex */
public class AppZipFailed2DialogAcitivity extends BaseActivity {
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
    TextView ok;
    @ViewById
    TextView title;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        DownloadTask B = f.G().B(this.gameId);
        this.downloadTask = B;
        if (B == null) {
            finish();
            return;
        }
        this.title.setText(B.getShowName());
        MyImageLoader.h(this.icon, this.downloadTask.getPortraitURL());
        d.a(this.downloadTask);
        Intent intent = new Intent(a.f65483j0);
        intent.putExtra("downloadTastJson", JsonMapper.getInstance().toJson(this.downloadTask));
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void cancle() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void ok() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
