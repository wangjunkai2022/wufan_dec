package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.join.mgps.dto.InformationMainBean;
import com.join.mgps.dto.InformationMessageBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
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
@EActivity(R.layout.information_layout)
/* loaded from: classes.dex */
public class MGInformationActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f33184a;

    /* renamed from: b  reason: collision with root package name */
    private int f33185b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    PtrClassicFrameLayout f33186c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f33187d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f33188e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f33189f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f33190g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.d f33191h;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: i  reason: collision with root package name */
    ImageView f33192i;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: j  reason: collision with root package name */
    CustomerDownloadView f33193j;
    @Extra

    /* renamed from: k  reason: collision with root package name */
    ExtBean f33194k;

    /* renamed from: n  reason: collision with root package name */
    private com.join.mgps.adapter.s2 f33197n;

    /* renamed from: l  reason: collision with root package name */
    private List<InformationListDataBean> f33195l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private boolean f33196m = false;

    /* renamed from: o  reason: collision with root package name */
    Map<String, DownloadTask> f33198o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    Map<String, DownloadTask> f33199p = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (MGInformationActivity.this.f33196m) {
                return;
            }
            MGInformationActivity.this.H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (MGInformationActivity.this.f33196m) {
                return;
            }
            MGInformationActivity.this.f33185b = 1;
            MGInformationActivity.this.H0();
        }
    }

    private void G0() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(536870912);
            startActivity(intent);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void D0() {
        try {
            this.f33191h = com.join.mgps.rpc.impl.c.P1();
            getDownloadTaskInfo();
            org.greenrobot.eventbus.c.f().t(this);
            this.f33192i.setVisibility(0);
            this.f33193j.setVisibility(0);
            this.f33184a = this;
            this.f33187d.setPreLoadCount(10);
            this.f33187d.setPullLoadEnable(new a());
            this.f33187d.setPullRefreshEnable(new b());
            showLoading();
            com.join.mgps.adapter.s2 s2Var = new com.join.mgps.adapter.s2(this.f33184a, this.f33195l, this.f33194k);
            this.f33197n = s2Var;
            this.f33187d.setAdapter((ListAdapter) s2Var);
            this.f33185b = 1;
            H0();
            this.f33187d.setOnScrollListener(this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0() {
        if (com.join.android.app.common.utils.f.j(this.f33184a)) {
            this.f33196m = true;
            try {
                try {
                    InformationMainBean v3 = this.f33191h.v(I0(this.f33185b, this.f33194k));
                    if (v3 != null) {
                        InformationMessageBean messages = v3.getMessages();
                        if (messages != null) {
                            List<InformationListDataBean> data = messages.getData();
                            if (data != null) {
                                K0(data);
                            } else {
                                J0();
                            }
                        } else {
                            J0();
                        }
                    } else {
                        J0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    J0();
                }
                return;
            } finally {
                this.f33196m = false;
            }
        }
        J0();
    }

    public CommonRequestBean I0(int i2, ExtBean extBean) {
        return RequestBeanUtil.getInstance(this.f33184a).getInformationIndexRequestBean(i2, extBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        List<InformationListDataBean> list = this.f33195l;
        if (list == null || list.size() <= 0) {
            this.f33188e.setVisibility(8);
            this.f33189f.setVisibility(0);
            this.f33186c.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(List<InformationListDataBean> list) {
        this.f33188e.setVisibility(8);
        this.f33189f.setVisibility(8);
        this.f33186c.setVisibility(0);
        this.f33187d.t();
        this.f33187d.u();
        if (this.f33185b == 1) {
            this.f33195l.clear();
        }
        if (list.size() > 0) {
            this.f33195l.addAll(list);
            this.f33185b++;
        } else {
            this.f33187d.setNoMore();
        }
        this.f33197n.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        SearchHintActivity_.S1(this).start();
        com.papa.sim.statistic.p.l(this.f33184a).m2(Where.information, AccountUtil_.getInstance_(this.f33184a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        G0();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33198o
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33198o
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33199p
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33199p
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33198o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33198o
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33198o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33198o
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33199p
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33198o
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33198o
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33199p
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33199p
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGInformationActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f33198o.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f33199p.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        G0();
        super.onBackPressed();
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

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoading();
        this.f33185b = 1;
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f33184a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.f33190g.setText("大总管播报");
        this.f33188e.setVisibility(0);
        this.f33189f.setVisibility(8);
        this.f33186c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f33198o.size();
        int size2 = this.f33199p.size();
        this.f33193j.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f33193j.d();
        } else {
            this.f33193j.g();
        }
    }
}
