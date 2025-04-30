package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseActivity;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.SlidingTabLayoutDownloadCenter;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadCenterBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.download_center_layout)
/* loaded from: classes.dex */
public class DownloadCenterActivity extends BaseActivity implements AbsListView.OnScrollListener {

    /* renamed from: b  reason: collision with root package name */
    private Context f29597b;

    /* renamed from: c  reason: collision with root package name */
    DownloadCenterBean f29598c;
    @Pref

    /* renamed from: d  reason: collision with root package name */
    PrefDef_ f29599d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f29600e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f29601f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f29602g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f29603h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f29604i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f29605j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f29606k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f29607l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ViewPager f29608m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    SlidingTabLayoutDownloadCenter f29609n;

    /* renamed from: o  reason: collision with root package name */
    private com.join.mgps.customview.d0 f29610o;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.adapter.p f29613r;

    /* renamed from: s  reason: collision with root package name */
    public List<DownloadTask> f29614s;

    /* renamed from: t  reason: collision with root package name */
    public List<DownloadTask> f29615t;

    /* renamed from: u  reason: collision with root package name */
    public List<DownloadTask> f29616u;

    /* renamed from: v  reason: collision with root package name */
    public List<DownloadTask> f29617v;

    /* renamed from: x  reason: collision with root package name */
    com.join.mgps.rpc.d f29619x;

    /* renamed from: z  reason: collision with root package name */
    IntentDateBean f29621z;

    /* renamed from: a  reason: collision with root package name */
    private final String f29596a = "DownloadCenterActivity";

    /* renamed from: p  reason: collision with root package name */
    private ArrayList<Fragment> f29611p = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private List<String> f29612q = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    public boolean f29618w = false;

    /* renamed from: y  reason: collision with root package name */
    String[] f29620y = {"进行中", "需更新", "下载记录"};
    private int A = 0;
    private int B = 0;

    private void F0(DownloadTask downloadTask) {
        if (this.f29613r == null || TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
            return;
        }
        this.f29613r.h(downloadTask.getPlugin_num());
    }

    private void updateProgressPartly() {
        long parseLong;
        long j4;
        long parseLong2;
        long j5 = 0;
        try {
            for (DownloadTask downloadTask : this.f29614s) {
                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                if (f4 != null) {
                    String speed = f4.getSpeed();
                    if (speed.endsWith("M")) {
                        j4 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                        parseLong2 = Long.parseLong(speed.replace("M", ""));
                        Long.signum(parseLong2);
                    } else if (speed.endsWith("KB")) {
                        j4 = 1024;
                        parseLong2 = Long.parseLong(speed.replace("KB", ""));
                    } else {
                        parseLong = Long.parseLong(speed.replace("B", ""));
                        j5 += parseLong;
                    }
                    parseLong = parseLong2 * j4;
                    j5 += parseLong;
                }
            }
            TextView textView = this.f29607l;
            textView.setText(UtilsMy.c(j5) + "/S");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0() {
        boolean z3;
        if ((((this.f29614s.size() + this.f29615t.size()) + this.f29616u.size()) + this.f29617v.size() == 0 ? (char) 0 : '\b') == 0) {
            this.f29603h.setVisibility(8);
            this.f29602g.setVisibility(8);
        }
        if (this.f29614s.size() > 0) {
            Iterator<DownloadTask> it2 = this.f29614s.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z3 = false;
                    break;
                }
                if (!UtilsMy.i0(this.f29597b, it2.next())) {
                    z3 = true;
                    break;
                }
            }
            if (z3) {
                if (UtilsMy.h0(this.f29597b, null)) {
                    this.f29603h.setVisibility(0);
                    this.f29602g.setVisibility(8);
                    if (AccountUtil_.getInstance_(this.f29597b).getAccountData().getVip_level() > 0) {
                        return;
                    }
                    this.f29603h.setVisibility(8);
                    return;
                }
                this.f29603h.setVisibility(8);
                return;
            } else if (UtilsMy.h0(this.f29597b, null)) {
                this.f29603h.setVisibility(0);
                this.f29602g.setVisibility(8);
                if (AccountUtil_.getInstance_(this.f29597b).getAccountData().getVip_level() > 0) {
                    return;
                }
                this.f29603h.setVisibility(8);
                return;
            } else {
                this.f29603h.setVisibility(8);
                this.f29602g.setVisibility(8);
                return;
            }
        }
        this.f29603h.setVisibility(8);
        this.f29602g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        IntentUtil.getInstance().intentActivity(this.f29597b, this.f29621z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        this.f29600e.setText("下载管理");
        this.f29601f.setImageResource(R.drawable.setting_butn);
        this.f29601f.setVisibility(0);
        com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getSupportFragmentManager(), this.f29611p, this.f29612q);
        this.f29610o = d0Var;
        this.f29608m.setAdapter(d0Var);
        this.f29609n.setViewPager(this.f29608m);
        this.f29611p.add(com.join.mgps.fragment.g0.a0(0, this.f29620y[0]));
        this.f29612q.add(this.f29620y[0]);
        this.f29611p.add(com.join.mgps.fragment.g0.a0(1, this.f29620y[1]));
        this.f29612q.add(this.f29620y[1]);
        this.f29611p.add(com.join.mgps.fragment.g0.a0(2, this.f29620y[2]));
        this.f29612q.add(this.f29620y[2]);
        this.f29608m.setOffscreenPageLimit(3);
        this.f29610o.d(this.f29611p, this.f29612q);
        this.f29610o.notifyDataSetChanged();
        this.f29609n.e();
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        List<PurchasedListTable> d4 = n1.e0.o().d();
        HashMap hashMap = new HashMap();
        for (PurchasedListTable purchasedListTable : d4) {
            hashMap.put(purchasedListTable.getGame_id(), purchasedListTable);
        }
        List<DownloadTask> P = g1.f.G().P();
        this.f29614s.clear();
        for (int i2 = 0; i2 < P.size(); i2++) {
            if (!J0(P.get(i2))) {
                this.f29614s.add(0, P.get(i2));
            }
        }
        List<DownloadTask> J = g1.f.G().J(true);
        for (int i4 = 0; i4 < J.size(); i4++) {
            this.f29614s.add(0, J.get(i4));
        }
        List<DownloadTask> v3 = g1.f.G().v();
        List<DownloadTask> J2 = g1.f.G().J(false);
        new ArrayList();
        J2.iterator();
        this.f29615t.clear();
        for (int i5 = 0; i5 < J2.size(); i5++) {
            if (J2.get(i5).getStatus() == 11) {
                this.f29615t.add(J2.get(i5));
            }
        }
        for (int i6 = 0; i6 < v3.size(); i6++) {
            if (!J0(v3.get(i6))) {
                this.f29615t.add(0, v3.get(i6));
            }
        }
        this.f29616u.clear();
        List<DownloadHistoryTable> o3 = n1.k.n().o();
        if (o3 != null) {
            for (DownloadHistoryTable downloadHistoryTable : o3) {
                DownloadTask B = g1.f.G().B(downloadHistoryTable.getCrc_link_type_val());
                if (B != null && (B.getStatus() == 5 || B.getStatus() == 42)) {
                    if (!J0(B)) {
                        this.f29616u.add(B);
                    }
                }
            }
        }
        List<DownloadTask> w3 = g1.f.G().w();
        this.f29617v.clear();
        if (w3 != null) {
            for (int i7 = 0; i7 < w3.size(); i7++) {
                if (!J0(w3.get(i7))) {
                    this.f29617v.add(0, w3.get(i7));
                }
            }
        }
        M0();
        E0();
        this.f29618w = true;
    }

    boolean J0(DownloadTask downloadTask) {
        return downloadTask != null && !TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.android.name()) && UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0;
    }

    public void K0() {
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        List<DownloadTask> list = this.f29614s;
        int size = list != null ? list.size() + 0 : 0;
        List<DownloadTask> list2 = this.f29615t;
        if (list2 != null) {
            size += list2.size();
        }
        O0();
        List<DownloadTask> list3 = this.f29617v;
        int size2 = list3 != null ? list3.size() + 0 : 0;
        List<DownloadTask> list4 = this.f29616u;
        int size3 = list4 != null ? 0 + list4.size() : 0;
        if (size3 > 0) {
            String[] strArr = this.f29620y;
            strArr[2] = "下载记录(" + size3 + ")";
        } else {
            this.f29620y[2] = "下载记录";
        }
        this.f29610o.e(Arrays.asList(this.f29620y));
        this.f29609n.setBadgeSize(size, size2, size3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        com.join.mgps.adapter.p pVar = this.f29613r;
        if (pVar != null) {
            pVar.notifyDataSetChanged();
        }
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void N0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        try {
            I0();
            M0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void O0() {
        List<DownloadTask> w3 = g1.f.G().w();
        this.f29617v.clear();
        if (w3 != null) {
            for (int i2 = 0; i2 < w3.size(); i2++) {
                if (!J0(w3.get(i2))) {
                    this.f29617v.add(0, w3.get(i2));
                }
            }
        }
    }

    public void P0() {
        E0();
        updateHistory();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        DownloadSettingActivity_.Z0(this.f29597b).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        this.f29599d.FirstShowMYgameTopTip().g(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S0(Context context, String str) {
        g1.f.G().e0(str, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0(String str) {
        this.f29604i.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29603h.setVisibility(8);
        this.f29602g.setVisibility(8);
        this.f29619x = com.join.mgps.rpc.impl.c.P1();
        this.f29597b = this;
        com.join.mgps.adapter.p pVar = new com.join.mgps.adapter.p(this);
        this.f29613r = pVar;
        DownloadCenterBean f4 = pVar.f();
        this.f29598c = f4;
        this.f29614s = f4.getDownloadFiles();
        this.f29615t = this.f29598c.getStayInstalledDownloadTasks();
        this.f29616u = this.f29598c.getHistoryDownloadFiles();
        this.f29617v = this.f29598c.getDownloadUpdateFiles();
        IntentDateBean intentDateBean = new IntentDateBean();
        this.f29621z = intentDateBean;
        intentDateBean.setLink_type(4);
        IntentDateBean intentDateBean2 = this.f29621z;
        intentDateBean2.setLink_type_val(com.join.mgps.rpc.g.f51524k + "/member/vip_view/welcome?go=vip");
        H0();
        getData();
        com.join.mgps.Util.c0.a().d(this);
        MobclickAgent.onEvent(this, "enterdc4.2.0.6");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            ResultMainBean<List<RecomDatabean>> y12 = this.f29619x.y1(RequestBeanUtil.getInstance(this.f29597b).getSimulatorRequest("", "", 0));
            if (y12 == null || y12.getMessages() == null || y12.getMessages().getData() == null || y12.getMessages().getData().size() <= 0) {
                return;
            }
            RecomDatabean recomDatabean = y12.getMessages().getData().get(0);
            this.f29621z = recomDatabean.getSub().get(0).getIntentDataBean();
            T0(recomDatabean.getMain().getTitle());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        E0();
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    updateUI(a4, 4);
                    return;
                } else if (c4 == 27) {
                    updateUI(a4, 10);
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
                            updateUI(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            updateUI(a4, 8);
                            return;
                        case 13:
                            updateUI(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getRepeatCount() == 0) {
            finish();
            this.f29599d.isNewFinishedGame().g(Boolean.FALSE);
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            I0();
            updateAndroidApp();
            M0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.B = (i4 + i2) - 1;
        this.A = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        finish();
        Intent intent = new Intent();
        intent.setClass(this.f29597b, MGMainActivity_.class);
        intent.setFlags(67108864);
        intent.addFlags(536870912);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 3);
        intent.putExtras(bundle);
        startActivity(intent);
        MApplication.f9221p = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void updateAndroidApp() {
        APKUtils.a l4;
        try {
            for (DownloadTask downloadTask : g1.f.G().v()) {
                com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(this);
                String packageName = downloadTask.getPackageName();
                APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                if (g02.d(this, packageName, device_type) && (l4 = com.join.android.app.common.utils.a.g0(this).l(this, downloadTask.getPackageName(), device_type)) != null && com.join.mgps.Util.d2.i(downloadTask.getVer()) && l4.d() == Integer.parseInt(downloadTask.getVer())) {
                    UtilsMy.g2(downloadTask, 5);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void updateHistory() {
        this.f29616u.clear();
        List<DownloadHistoryTable> o3 = n1.k.n().o();
        if (o3 != null) {
            for (DownloadHistoryTable downloadHistoryTable : o3) {
                DownloadTask B = g1.f.G().B(downloadHistoryTable.getCrc_link_type_val());
                if (B != null && (B.getStatus() == 5 || B.getStatus() == 42)) {
                    if (!J0(B)) {
                        this.f29616u.add(B);
                    }
                }
            }
        }
        K0();
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        boolean z3;
        boolean z4;
        if (i2 == 4) {
            updateProgressPartly();
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        UtilsMy.D3(this.f29614s);
        boolean z5 = true;
        if (status == 2 || status == 10 || status == 0) {
            Iterator<DownloadTask> it2 = this.f29614s.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z3 = false;
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next.setPath(downloadTask.getPath());
                    next.setStatus(2);
                    if (i2 == 7) {
                        next.setStatus(10);
                    }
                    z3 = true;
                }
            }
            if (!z3) {
                DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                if (B == null) {
                    return;
                }
                B.setStatus(2);
                if (i2 == 7) {
                    B.setStatus(10);
                }
                String fileType = downloadTask.getFileType();
                Dtype dtype = Dtype.chajian;
                if (fileType.equals(dtype.name())) {
                    this.f29614s.add(0, B);
                } else if (this.f29614s.size() == 0) {
                    this.f29614s.add(B);
                } else if (this.f29614s.get(0).getFileType().equals(dtype.name())) {
                    this.f29614s.add(1, B);
                } else {
                    this.f29614s.add(0, B);
                }
                M0();
                E0();
                return;
            }
            M0();
        } else if (status == 3 || status == 6) {
            Iterator<DownloadTask> it3 = this.f29614s.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z4 = false;
                    break;
                }
                DownloadTask next2 = it3.next();
                if (next2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next2.setPath(downloadTask.getPath());
                    UtilsMy.C3(next2);
                    next2.setStatus(status);
                    z4 = true;
                    break;
                }
            }
            if (!z4) {
                DownloadTask B2 = g1.f.G().B(downloadTask.getCrc_link_type_val());
                if (B2 == null) {
                    return;
                }
                String fileType2 = downloadTask.getFileType();
                Dtype dtype2 = Dtype.chajian;
                if (fileType2.equals(dtype2.name())) {
                    this.f29614s.add(0, B2);
                } else if (this.f29614s.size() == 0) {
                    this.f29614s.add(B2);
                } else if (this.f29614s.get(0).getFileType().equals(dtype2.name())) {
                    this.f29614s.add(1, B2);
                } else {
                    this.f29614s.add(0, B2);
                }
            }
            M0();
        } else if (status == 12 || status == 13) {
            Iterator<DownloadTask> it4 = this.f29614s.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    break;
                }
                DownloadTask next3 = it4.next();
                if (next3.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.C3(next3);
                    next3.setStatus(status);
                    break;
                }
            }
            M0();
        } else if (status == 11) {
            Iterator<DownloadTask> it5 = this.f29614s.iterator();
            while (true) {
                if (!it5.hasNext()) {
                    break;
                }
                DownloadTask next4 = it5.next();
                if (next4.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next4.setStatus(status);
                    if (next4.getFileType().equals(Dtype.chajian.name()) && next4.getDown_type() == 2) {
                        onResume();
                        return;
                    }
                }
            }
            M0();
        } else if (status == 7) {
            com.join.mgps.Util.t0.c("收到删除消息");
            Iterator<DownloadTask> it6 = this.f29614s.iterator();
            while (true) {
                if (!it6.hasNext()) {
                    break;
                } else if (it6.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    it6.remove();
                    com.join.mgps.Util.t0.c("移除数据");
                    break;
                }
            }
            com.join.mgps.Util.t0.c("开始刷新数据 downloadTasks。size=" + this.f29614s.size());
            M0();
            E0();
        } else if (status == 5) {
            Iterator<DownloadTask> it7 = this.f29614s.iterator();
            while (true) {
                if (!it7.hasNext()) {
                    break;
                }
                DownloadTask next5 = it7.next();
                if (next5.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next5.setGameZipPath(downloadTask.getGameZipPath());
                    next5.setStatus(5);
                    it7.remove();
                    break;
                }
            }
            Iterator<DownloadTask> it8 = this.f29616u.iterator();
            while (true) {
                if (!it8.hasNext()) {
                    z5 = false;
                    break;
                }
                DownloadTask next6 = it8.next();
                if (next6.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next6.setGameZipPath(downloadTask.getGameZipPath());
                    next6.setStatus(5);
                    break;
                }
            }
            if (!z5 && (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name()))) {
                this.f29616u.add(0, downloadTask);
            }
            M0();
            E0();
            F0(downloadTask);
        } else {
            Iterator<DownloadTask> it9 = this.f29613r.f().getDownloadFiles().iterator();
            while (true) {
                if (!it9.hasNext()) {
                    break;
                }
                DownloadTask next7 = it9.next();
                if (downloadTask != null) {
                    if (downloadTask.getCrc_link_type_val().equals(next7.getCrc_link_type_val())) {
                        next7.setStatus(downloadTask.getStatus());
                        M0();
                        break;
                    }
                } else {
                    return;
                }
            }
            E0();
        }
    }
}
