package com.join.mgps.activity;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.BootPageItem;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.Iterator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.papa_plug_guide_notice_layout)
/* loaded from: classes3.dex */
public class PapaPlugGuideActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f34816a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34817b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f34818c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34819d;
    @Pref

    /* renamed from: e  reason: collision with root package name */
    PrefDef_ f34820e;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    String f34822g;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    int f34821f = 0;

    /* renamed from: h  reason: collision with root package name */
    int f34823h = 5;

    private void F0(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.join.android.app.common.utils.a.g0(this).u(this, new File(downloadTask.getGameZipPath()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        if (this.f34821f == 0) {
            String str = Build.BRAND;
            if (str.contains("vivo")) {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.vivo.abe", "com.vivo.applicationbehaviorengine.ui.ExcessivePowerManagerActivity"));
                intent.setFlags(268435456);
                startActivity(intent);
            } else if (str.toLowerCase().contains("gionee")) {
                com.join.android.app.common.utils.a.g0(this).M(this, "com.gionee.softmanager");
            } else {
                Intent intent2 = new Intent("android.intent.action.POWER_USAGE_SUMMARY");
                if (getPackageManager().resolveActivity(intent2, 0) != null) {
                    startActivity(intent2);
                }
            }
            finish();
            return;
        }
        if (com.join.mgps.Util.d2.i(this.f34822g)) {
            F0(g1.f.G().B(this.f34822g));
        } else {
            for (DownloadTask downloadTask : g1.f.G().v()) {
                F0(downloadTask);
            }
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void G0() {
        this.f34823h--;
        this.f34817b.setText(Html.fromHtml("我知道了<font color = '#ffffff'>(" + this.f34823h + "S)</font>"), TextView.BufferType.SPANNABLE);
        if (this.f34823h <= 0) {
            this.f34817b.setEnabled(true);
            this.f34817b.setTextColor(-1);
            this.f34817b.setText("我知道了");
            return;
        }
        G0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        BootPageItem game_setup_boot;
        String[] pic;
        BootPageItem performance_boot;
        this.f34817b.setText(Html.fromHtml("我知道了<font color = '#ffffff'>(5S)</font>"), TextView.BufferType.SPANNABLE);
        String d4 = this.f34820e.insatllAppFirstData().d();
        if (d4 != null) {
            BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(d4, BootPageData.class);
            if (this.f34821f == 0) {
                this.f34818c.setText("为了悟饭游戏稳定运行，请按图示修改设置");
                if (bootPageData != null && bootPageData.getPerformance_boot() != null && (performance_boot = bootPageData.getPerformance_boot()) != null) {
                    String[] pic2 = performance_boot.getPic();
                    String title = performance_boot.getTitle();
                    if (com.join.mgps.Util.d2.i(title)) {
                        this.f34818c.setText(title);
                    }
                    if (pic2 != null && pic2.length > 0) {
                        this.f34816a.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().a(Uri.parse(pic2[0])).c(this.f34816a.getController()).E(true).build());
                    }
                }
            } else {
                DownloadTask downloadTask = null;
                if (com.join.mgps.Util.d2.i(this.f34822g)) {
                    downloadTask = g1.f.G().B(this.f34822g);
                    TextView textView = this.f34818c;
                    textView.setText("《" + downloadTask.getShowName() + "》待安装\n请按下图操作");
                } else {
                    Iterator<DownloadTask> it2 = g1.f.G().v().iterator();
                    if (it2.hasNext()) {
                        downloadTask = it2.next();
                        TextView textView2 = this.f34818c;
                        textView2.setText("《" + downloadTask.getShowName() + "》待安装");
                        this.f34819d.setText("请按下图操作");
                    }
                }
                if (bootPageData != null && bootPageData.getGame_setup_boot() != null && (game_setup_boot = bootPageData.getGame_setup_boot()) != null && (pic = game_setup_boot.getPic()) != null && pic.length > 0) {
                    String str = pic[0];
                    String title2 = game_setup_boot.getTitle();
                    if (com.join.mgps.Util.d2.i(title2)) {
                        String showName = downloadTask.getShowName();
                        if (showName.contains("-")) {
                            showName = showName.substring(0, showName.lastIndexOf("-"));
                        }
                        TextView textView3 = this.f34818c;
                        textView3.setText("《" + showName + "》待安装");
                        this.f34819d.setText(title2);
                    }
                    try {
                        this.f34816a.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().a(Uri.parse(str)).c(this.f34816a.getController()).E(true).build());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                if (downloadTask != null && downloadTask.getFileType().equals(Dtype.chajian.name()) && downloadTask.getDown_type() == 2 && downloadTask.getStatus() == 11) {
                    if (!com.join.android.app.common.utils.h.r(this, downloadTask, false, new String[0])) {
                        com.join.android.app.common.servcie.a.e().q(getApplicationContext(), downloadTask);
                    }
                    finish();
                    return;
                }
            }
        }
        G0();
    }
}
