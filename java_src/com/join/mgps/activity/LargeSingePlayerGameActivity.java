package com.join.mgps.activity;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.k6;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.TabPageIndicator;
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
@EActivity(R.layout.large_singe_game_layout)
/* loaded from: classes.dex */
public class LargeSingePlayerGameActivity extends FragmentActivity {

    /* renamed from: j  reason: collision with root package name */
    private static final String f32883j = "LargeSingePlayerGameActivity";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f32884a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ViewPager f32885b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TabPageIndicator f32886c;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: d  reason: collision with root package name */
    ImageView f32887d;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: e  reason: collision with root package name */
    CustomerDownloadView f32888e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    int f32889f;

    /* renamed from: g  reason: collision with root package name */
    private FragmentPagerAdapter f32890g;

    /* renamed from: h  reason: collision with root package name */
    Map<String, DownloadTask> f32891h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    Map<String, DownloadTask> f32892i = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0() {
        this.f32887d.setVisibility(0);
        this.f32888e.setVisibility(0);
        if (this.f32889f == 0) {
            this.f32884a.setText("大型单机");
        } else {
            this.f32884a.setText("最新网游");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        SearchHintActivity_.S1(this).start();
        if (this.f32889f == 0) {
            com.papa.sim.statistic.p.l(this).m2(Where.largeGame, AccountUtil_.getInstance_(this).getUid());
        } else {
            com.papa.sim.statistic.p.l(this).m2(Where.gameOl, AccountUtil_.getInstance_(this).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        try {
            getDownloadTaskInfo();
            org.greenrobot.eventbus.c.f().t(this);
            C0();
            k6 k6Var = new k6(getSupportFragmentManager(), this.f32889f);
            this.f32890g = k6Var;
            this.f32885b.setAdapter(k6Var);
            this.f32885b.setOffscreenPageLimit(5);
            this.f32886c.setViewPager(this.f32885b, 0);
            if (this.f32889f == 0) {
                this.f32885b.setCurrentItem(0);
            } else {
                this.f32885b.setCurrentItem(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32891h
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32891h
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32892i
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32892i
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32891h
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32891h
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32891h
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32891h
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f32892i
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32891h
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32891h
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32892i
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f32892i
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.LargeSingePlayerGameActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f32891h.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f32892i.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        try {
            changeDownloadTaskNumber(lVar.a(), lVar.c());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            int size = this.f32891h.size();
            int size2 = this.f32892i.size();
            this.f32888e.setDownloadGameNum(size);
            StringBuilder sb = new StringBuilder();
            sb.append("updateDownloadView: ");
            sb.append(size2);
            sb.append("::::已经进入下载队列中的数量:::");
            sb.append(size);
            if (size2 > 0) {
                this.f32888e.d();
            } else {
                this.f32888e.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
