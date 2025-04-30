package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.g;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g1.f;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.wufungame_installappfirst_dialog)
/* loaded from: classes3.dex */
public class InstallAppFirstNoticeDialog extends Activity {
    @ViewById
    TextView appshow;
    @ViewById
    CheckBox checkbox;
    DownloadTask downloadTask;
    @Extra
    int from;
    @Extra
    String gameId;
    @ViewById
    TextView gameName;
    @ViewById
    TextView goH5;
    @ViewById
    SimpleDraweeView icon;
    @ViewById
    SimpleDraweeView img;
    @ViewById
    TextView message;
    @ViewById
    LinearLayout moreSelecter;
    @Pref
    PrefDef_ prefDef_;
    @ViewById
    TextView startButn;
    boolean checkboxischecked = false;
    String imgUrl = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        DownloadTask B = f.G().B(this.gameId);
        this.downloadTask = B;
        MyImageLoader.d(this.icon, R.drawable.main_normal_icon, B.getPortraitURL());
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            finish();
            return;
        }
        this.gameName.setText(downloadTask.getShowName());
        this.appshow.setText("允许“悟饭游戏厅”安装应用");
        this.checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.activity.mygame.dialog.InstallAppFirstNoticeDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                InstallAppFirstNoticeDialog installAppFirstNoticeDialog = InstallAppFirstNoticeDialog.this;
                installAppFirstNoticeDialog.checkboxischecked = z3;
                installAppFirstNoticeDialog.prefDef_.firstInstallAppCompanyDialog().g(Boolean.valueOf(!InstallAppFirstNoticeDialog.this.checkboxischecked));
            }
        });
        p.l(this).K1(Event.showApkInstall, new Ext().setGameId(this.downloadTask.getCrc_link_type_val()));
        String str = g.L + "/upload/images/20190625/hw.png";
        String str2 = g.L + "/upload/images/20190625/xm.png";
        String str3 = g.L + "/upload/images/20190625/oppo.png";
        String str4 = g.L + "/upload/images/20190625/vivo.png";
        String str5 = g.L + "/upload/images/20190625/Google.png";
        String str6 = Build.BRAND;
        if (d2.i(str6)) {
            if ("xiaomi".equals(str6.toLowerCase())) {
                this.imgUrl = str2;
                this.img.setAspectRatio(1.07f);
            } else if ("oppo".equals(str6.toLowerCase())) {
                this.imgUrl = str3;
                this.img.setAspectRatio(0.905f);
            } else if ("vivo".equals(str6.toLowerCase())) {
                this.imgUrl = str4;
                this.img.setAspectRatio(1.244f);
            } else if (!"huawei".equals(str6.toLowerCase()) && !"honor".equals(str6.toLowerCase())) {
                if ("google".equals(str6.toLowerCase())) {
                    this.imgUrl = str5;
                    this.img.setAspectRatio(1.14f);
                } else {
                    this.imgUrl = str5;
                    this.img.setAspectRatio(1.14f);
                }
            } else {
                this.imgUrl = str;
                this.img.setAspectRatio(1.3f);
            }
            MyImageLoader.h(this.img, this.imgUrl);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        boolean z3 = this.checkboxischecked;
        p l4 = p.l(this);
        Event event = Event.exitApkInstall;
        Ext ext = new Ext();
        l4.K1(event, ext.setPosition((z3 ? 1 : 0) + "").setGameId(this.downloadTask.getCrc_link_type_val()));
        this.prefDef_.lastInstallApp().g("");
        finish();
    }

    public void installAPK(Activity activity, File file) {
        Uri uriForFile;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
            if (activity != null) {
                uriForFile = FileProvider.getUriForFile(activity, activity.getPackageName() + ".fileprovider", file);
            } else {
                uriForFile = FileProvider.getUriForFile(activity, "com.join.android.app.mgsim.wufun.fileprovider", file);
            }
            intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
        } else {
            intent.setDataAndType(Uri.fromFile(file), AdBaseConstants.MIME_APK);
        }
        activity.startActivityForResult(intent, 1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void startButn() {
        boolean z3 = this.checkboxischecked;
        this.prefDef_.lastInstallApp().g(this.downloadTask.getCrc_link_type_val());
        p l4 = p.l(this);
        Event event = Event.onclickApkInstall;
        Ext ext = new Ext();
        l4.K1(event, ext.setPosition((z3 ? 1 : 0) + "").setGameId(this.downloadTask.getCrc_link_type_val()));
        installAPK(this, new File(this.downloadTask.getGameZipPath()));
    }
}
