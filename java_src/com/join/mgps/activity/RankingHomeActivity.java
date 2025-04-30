package com.join.mgps.activity;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.papa.sim.statistic.Where;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.rannking_home_activity)
/* loaded from: classes.dex */
public class RankingHomeActivity extends BaseFragmentActivity {

    /* renamed from: m  reason: collision with root package name */
    private static final String f34966m = "RankingHomeActivity";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    FrameLayout f34967a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34968b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f34969c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    int f34970d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    String f34971e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    String f34972f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    String f34973g;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: h  reason: collision with root package name */
    ImageView f34974h;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: i  reason: collision with root package name */
    CustomerDownloadView f34975i;

    /* renamed from: j  reason: collision with root package name */
    private d f34976j;

    /* renamed from: k  reason: collision with root package name */
    Map<String, DownloadTask> f34977k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    Map<String, DownloadTask> f34978l = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        SearchHintActivity_.S1(this).start();
        com.papa.sim.statistic.p.l(this).m2(Where.rankHome, AccountUtil_.getInstance_(this).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        getDownloadTaskInfo();
        org.greenrobot.eventbus.c.f().t(this);
        this.f34975i.setVisibility(0);
        this.f34968b.setText(this.f34971e);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (com.join.mgps.Util.d2.i(this.f34972f)) {
            this.f34974h.setVisibility(8);
            this.f34976j = d.a0(this.f34970d, "4", this.f34972f, this.f34973g);
        } else {
            this.f34974h.setVisibility(0);
            this.f34976j = d.X(this.f34970d, "");
        }
        if (this.f34976j != null) {
            FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
            beginTransaction.add(R.id.fragment, this.f34976j);
            beginTransaction.commitAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34977k
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34977k
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34978l
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34978l
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34977k
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34977k
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34977k
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34977k
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34978l
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34977k
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34977k
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34978l
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34978l
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.RankingHomeActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f34977k.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f34978l.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        changeDownloadTaskNumber(lVar.a(), lVar.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f34977k.size();
        int size2 = this.f34978l.size();
        this.f34975i.setDownloadGameNum(size);
        StringBuilder sb = new StringBuilder();
        sb.append("updateDownloadView: ");
        sb.append(size2);
        sb.append("::::已经进入下载队列中的数量:::");
        sb.append(size);
        if (size2 > 0) {
            this.f34975i.d();
        } else {
            this.f34975i.g();
        }
    }
}
