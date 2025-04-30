package com.join.mgps.activity;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.fragment.y3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_papa_standalone_v2)
/* loaded from: classes.dex */
public class PaPaStandAloneV2Activity extends BaseFragmentActivity {

    /* renamed from: i  reason: collision with root package name */
    static String[] f34577i = {"推荐", "最新", "单机榜"};
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34578a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    InterceptEventViewPager f34579b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TabPageIndicator f34580c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f34581d;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: e  reason: collision with root package name */
    CustomerDownloadView f34582e;

    /* renamed from: f  reason: collision with root package name */
    private Fragment[] f34583f = new Fragment[f34577i.length];

    /* renamed from: g  reason: collision with root package name */
    Map<String, DownloadTask> f34584g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    Map<String, DownloadTask> f34585h = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends FragmentPagerAdapter {
        public a(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return PaPaStandAloneV2Activity.f34577i.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return PaPaStandAloneV2Activity.this.F0(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return PaPaStandAloneV2Activity.f34577i[i2];
        }
    }

    private int E0(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return i2 != 2 ? -1 : 3;
            }
            return 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment F0(int i2) {
        Fragment fragment = this.f34583f[i2];
        if (fragment != null) {
            return fragment;
        }
        int E0 = E0(i2);
        if (i2 == 0 || i2 == 1) {
            y3 X = y3.X(E0);
            this.f34583f[i2] = X;
            return X;
        } else if (i2 != 2) {
            return null;
        } else {
            d c02 = d.c0(1001, "1", 1);
            this.f34583f[i2] = c02;
            return c02;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        SearchHintActivity_.S1(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34581d.setVisibility(0);
        this.f34582e.setVisibility(0);
        this.f34578a.setText("单机游戏");
        org.greenrobot.eventbus.c.f().t(this);
        a aVar = new a(getSupportFragmentManager());
        this.f34579b.setIsAsParentViewPager(true);
        this.f34579b.setAdapter(aVar);
        this.f34579b.setOffscreenPageLimit(3);
        this.f34579b.setCurrentItem(0);
        this.f34580c.setViewPager(this.f34579b);
        getDownloadTaskInfo();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34585h
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34585h
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34584g
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34584g
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34585h
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34585h
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34585h
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34585h
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34584g
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34585h
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34585h
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34584g
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34584g
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PaPaStandAloneV2Activity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f34585h.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f34584g.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
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
        int size = this.f34585h.size();
        int size2 = this.f34584g.size();
        this.f34582e.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f34582e.d();
        } else {
            this.f34582e.g();
        }
    }
}
