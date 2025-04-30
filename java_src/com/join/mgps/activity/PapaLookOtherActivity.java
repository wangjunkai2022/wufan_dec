package com.join.mgps.activity;

import android.os.Build;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa.sim.statistic.Where;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.papeverday_new_activity_layout)
/* loaded from: classes.dex */
public class PapaLookOtherActivity extends BaseFragmentActivity {

    /* renamed from: t  reason: collision with root package name */
    private static final String f34644t = "PapaLookOtherActivity";

    /* renamed from: a  reason: collision with root package name */
    private FragmentManager f34645a;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.d f34647c;
    @StringRes(resName = "net_excption")

    /* renamed from: d  reason: collision with root package name */
    String f34648d;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: e  reason: collision with root package name */
    String f34649e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34650f;

    /* renamed from: g  reason: collision with root package name */
    private int f34651g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f34652h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f34653i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    FrameLayout f34654j;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: k  reason: collision with root package name */
    ImageView f34655k;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: l  reason: collision with root package name */
    CustomerDownloadView f34656l;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    RelativeLayout f34660p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    ImageView f34661q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f34662r;

    /* renamed from: s  reason: collision with root package name */
    private String f34663s;

    /* renamed from: b  reason: collision with root package name */
    private int f34646b = 1;

    /* renamed from: m  reason: collision with root package name */
    private boolean f34657m = false;

    /* renamed from: n  reason: collision with root package name */
    Map<String, DownloadTask> f34658n = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    Map<String, DownloadTask> f34659o = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.f34663s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultMainBean<List<CollectionDataBean>> s3 = this.f34647c.s(RequestBeanUtil.getInstance(this).getLookOther(this.f34646b, new ExtBean("home", "5-0")));
                if (s3 != null && s3.getFlag() == 1) {
                    List<CollectionDataBean> data = s3.getMessages().getData();
                    if (data.size() > 0) {
                        CollectionDataBean collectionDataBean = data.get(0);
                        if (collectionDataBean.getTpl_type() != null) {
                            H0(Integer.parseInt(collectionDataBean.getTpl_type()), collectionDataBean);
                        }
                        if (collectionDataBean.getInfo() != null && collectionDataBean.getInfo().size() > 0 && collectionDataBean.getInfo().get(0).getMain() != null) {
                            String crc_collection_id = collectionDataBean.getInfo().get(0).getMain().getCrc_collection_id();
                            this.f34663s = crc_collection_id;
                            try {
                                if (com.join.mgps.Util.d2.i(crc_collection_id)) {
                                    J0(collectionDataBean.getComment_switch(), collectionDataBean.getComment_count());
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                    I0();
                    return;
                }
                showLodingFailed();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    boolean F0() {
        if (Build.VERSION.SDK_INT >= 17) {
            return isDestroyed();
        }
        return this.f34657m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        com.join.android.app.common.manager.a.h().j(this, this.f34648d, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(int i2, CollectionDataBean collectionDataBean) {
        this.f34645a = getSupportFragmentManager();
        Bundle bundle = new Bundle();
        if (collectionDataBean.getInfo() == null || collectionDataBean.getInfo().size() == 0) {
            return;
        }
        bundle.putString("collection_id", collectionDataBean.getInfo().get(0).getMain().getCrc_collection_id());
        FragmentTransaction beginTransaction = this.f34645a.beginTransaction();
        if (i2 == 2) {
            com.join.mgps.fragment.t tVar = new com.join.mgps.fragment.t();
            tVar.c0(collectionDataBean);
            tVar.setArguments(bundle);
            beginTransaction.add(R.id.fragment, tVar);
        } else if (i2 == 4) {
            com.join.mgps.fragment.r rVar = new com.join.mgps.fragment.r();
            rVar.b0(collectionDataBean);
            rVar.setArguments(bundle);
            beginTransaction.add((int) R.id.fragment, rVar);
        }
        if (F0()) {
            return;
        }
        beginTransaction.commitAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        this.f34653i.setVisibility(8);
        this.f34652h.setVisibility(8);
        this.f34654j.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(int i2, int i4) {
        if (i2 == 1) {
            this.f34660p.setVisibility(0);
            this.f34661q.setVisibility(0);
            if (i4 > 0) {
                this.f34662r.setVisibility(0);
            }
            TextView textView = this.f34662r;
            textView.setText(i4 + "");
            return;
        }
        this.f34660p.setVisibility(8);
        this.f34661q.setVisibility(8);
        this.f34662r.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        SearchHintActivity_.S1(this).start();
        com.papa.sim.statistic.p.l(this).m2(Where.lookOther, AccountUtil_.getInstance_(this).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34647c = com.join.mgps.rpc.impl.c.P1();
        this.f34650f.setText("大家都在玩");
        E0();
        showLoding();
        getDownloadTaskInfo();
        org.greenrobot.eventbus.c.f().t(this);
        this.f34655k.setVisibility(0);
        this.f34656l.setVisibility(0);
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34658n
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34658n
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34659o
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34659o
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34658n
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34658n
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34658n
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34658n
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34659o
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34658n
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34658n
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34659o
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34659o
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PapaLookOtherActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f34658n.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f34659o.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f34657m = true;
        org.greenrobot.eventbus.c.f().y(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        changeDownloadTaskNumber(lVar.a(), lVar.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f34646b = 1;
        showLoding();
        if (this.f34651g == 0) {
            return;
        }
        this.f34650f.setText("大家都在玩");
        E0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this, this.f34649e, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f34652h.setVisibility(0);
        this.f34653i.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f34653i.setVisibility(0);
        this.f34652h.setVisibility(8);
        this.f34654j.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f34658n.size();
        int size2 = this.f34659o.size();
        this.f34656l.setDownloadGameNum(size);
        StringBuilder sb = new StringBuilder();
        sb.append("updateDownloadView: ");
        sb.append(size2);
        sb.append("::::已经进入下载队列中的数量:::");
        sb.append(size);
        if (size2 > 0) {
            this.f34656l.d();
        } else {
            this.f34656l.g();
        }
    }
}
