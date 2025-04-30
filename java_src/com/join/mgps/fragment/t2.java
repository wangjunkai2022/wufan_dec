package com.join.mgps.fragment;

import android.app.Activity;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.a2;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameOLDataBean;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLHeadAdMain;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: GameOlOpenTestFragment.java */
@EFragment
/* loaded from: classes.dex */
public class t2 extends com.join.mgps.basefragment.a implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f50329b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f50330c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f50331d;

    /* renamed from: e  reason: collision with root package name */
    private Activity f50332e;

    /* renamed from: g  reason: collision with root package name */
    private List<DownloadTask> f50334g;

    /* renamed from: j  reason: collision with root package name */
    List<k1.a<GameOLFirstBean>> f50337j;

    /* renamed from: k  reason: collision with root package name */
    private int f50338k;

    /* renamed from: l  reason: collision with root package name */
    private int f50339l;

    /* renamed from: n  reason: collision with root package name */
    private com.join.mgps.adapter.a2 f50341n;

    /* renamed from: f  reason: collision with root package name */
    private boolean f50333f = false;

    /* renamed from: h  reason: collision with root package name */
    private Map<String, DownloadTask> f50335h = new ConcurrentHashMap();

    /* renamed from: i  reason: collision with root package name */
    private int f50336i = 1;

    /* renamed from: m  reason: collision with root package name */
    private boolean f50340m = false;

    /* renamed from: o  reason: collision with root package name */
    int f50342o = -1;

    /* renamed from: p  reason: collision with root package name */
    private boolean f50343p = true;

    /* compiled from: GameOlOpenTestFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (t2.this.f50333f) {
                return;
            }
            t2.this.f50336i = 1;
            t2.this.f50343p = true;
            t2.this.c0();
        }
    }

    /* compiled from: GameOlOpenTestFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (t2.this.f50333f) {
                return;
            }
            t2.this.c0();
        }
    }

    /* compiled from: GameOlOpenTestFragment.java */
    /* loaded from: classes4.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > t2.this.f50337j.size() || i2 < 0) {
                return;
            }
            k1.a<GameOLFirstBean> aVar = t2.this.f50337j.get(i2);
            if (aVar.d() == 2 && t2.this.f50337j.get(i2).c().getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(t2.this.f50332e, aVar.c().getIntentDataBean());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
        r1 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r1.d() == 2) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        r2 = r1.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        if (r2.getMod_info() == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        r3 = r7.f50335h.get(r2.getMod_info().getMod_game_id());
        r5 = r7.f50335h.get(r2.getGame_id());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        if (r3 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0071, code lost:
        if (r5 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
        r1.f(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
        if (r3 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
        r1.f(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007d, code lost:
        if (r5 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        r1.f(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008f, code lost:
        if (r2.getGame_id().equals(r8.getCrc_link_type_val()) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
        r1.f(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        if (r2.getCrc_sign_id().equals(r8.getCrc_link_type_val()) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a3, code lost:
        r1.f(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        r7.f50335h.remove(r1.getCrc_link_type_val());
        r0.remove();
        r0 = r7.f50337j.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (r0.hasNext() == false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void h0(com.github.snowdream.android.app.downloader.DownloadTask r8) {
        /*
            r7 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r7.f50334g     // Catch: java.lang.Exception -> La7
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> La7
        L6:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> La7
            if (r1 == 0) goto Lab
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> La7
            com.github.snowdream.android.app.downloader.DownloadTask r1 = (com.github.snowdream.android.app.downloader.DownloadTask) r1     // Catch: java.lang.Exception -> La7
            java.lang.String r2 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> La7
            java.lang.String r3 = r8.getCrc_link_type_val()     // Catch: java.lang.Exception -> La7
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> La7
            if (r2 == 0) goto L6
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r7.f50335h     // Catch: java.lang.Exception -> La7
            java.lang.String r1 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> La7
            r2.remove(r1)     // Catch: java.lang.Exception -> La7
            r0.remove()     // Catch: java.lang.Exception -> La7
            java.util.List<k1.a<com.join.mgps.dto.GameOLFirstBean>> r0 = r7.f50337j     // Catch: java.lang.Exception -> La7
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> La7
        L32:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> La7
            if (r1 == 0) goto Lab
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> La7
            k1.a r1 = (k1.a) r1     // Catch: java.lang.Exception -> La7
            int r2 = r1.d()     // Catch: java.lang.Exception -> La7
            r3 = 2
            if (r2 == r3) goto L46
            goto L32
        L46:
            java.lang.Object r2 = r1.c()     // Catch: java.lang.Exception -> La7
            com.join.mgps.dto.CollectionBeanSub r2 = (com.join.mgps.dto.CollectionBeanSub) r2     // Catch: java.lang.Exception -> La7
            com.join.mgps.dto.ModInfoBean r3 = r2.getMod_info()     // Catch: java.lang.Exception -> La7
            r4 = 0
            if (r3 == 0) goto L95
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r7.f50335h     // Catch: java.lang.Exception -> La7
            com.join.mgps.dto.ModInfoBean r5 = r2.getMod_info()     // Catch: java.lang.Exception -> La7
            java.lang.String r5 = r5.getMod_game_id()     // Catch: java.lang.Exception -> La7
            java.lang.Object r3 = r3.get(r5)     // Catch: java.lang.Exception -> La7
            com.github.snowdream.android.app.downloader.DownloadTask r3 = (com.github.snowdream.android.app.downloader.DownloadTask) r3     // Catch: java.lang.Exception -> La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r5 = r7.f50335h     // Catch: java.lang.Exception -> La7
            java.lang.String r6 = r2.getGame_id()     // Catch: java.lang.Exception -> La7
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Exception -> La7
            com.github.snowdream.android.app.downloader.DownloadTask r5 = (com.github.snowdream.android.app.downloader.DownloadTask) r5     // Catch: java.lang.Exception -> La7
            if (r3 != 0) goto L77
            if (r5 != 0) goto L77
            r1.f(r4)     // Catch: java.lang.Exception -> La7
            goto L32
        L77:
            if (r3 == 0) goto L7d
            r1.f(r3)     // Catch: java.lang.Exception -> La7
            goto L32
        L7d:
            if (r5 == 0) goto L83
            r1.f(r5)     // Catch: java.lang.Exception -> La7
            goto L32
        L83:
            java.lang.String r2 = r2.getGame_id()     // Catch: java.lang.Exception -> La7
            java.lang.String r3 = r8.getCrc_link_type_val()     // Catch: java.lang.Exception -> La7
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> La7
            if (r2 == 0) goto L32
            r1.f(r4)     // Catch: java.lang.Exception -> La7
            goto L32
        L95:
            java.lang.String r2 = r2.getCrc_sign_id()     // Catch: java.lang.Exception -> La7
            java.lang.String r3 = r8.getCrc_link_type_val()     // Catch: java.lang.Exception -> La7
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> La7
            if (r2 == 0) goto L32
            r1.f(r4)     // Catch: java.lang.Exception -> La7
            goto L32
        La7:
            r8 = move-exception
            r8.printStackTrace()
        Lab:
            com.join.mgps.adapter.a2 r8 = r7.f50341n
            r8.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.t2.h0(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    private void i0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50335h;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f50341n.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void j0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f50334g, downloadTask);
        if (!this.f50335h.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50334g.add(downloadTask);
            Iterator<k1.a<GameOLFirstBean>> it2 = this.f50337j.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                k1.a<GameOLFirstBean> next = it2.next();
                if (next.d() == 2 && next.c().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    next.f(downloadTask);
                    break;
                }
            }
            this.f50335h.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        this.f50341n.notifyDataSetChanged();
    }

    private void k0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50335h;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50334g.add(downloadTask);
            Iterator<k1.a<GameOLFirstBean>> it2 = this.f50337j.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                k1.a<GameOLFirstBean> next = it2.next();
                if (next.d() == 2 && next.c().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    next.f(downloadTask);
                    break;
                }
            }
            this.f50335h.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f50335h.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f50341n.notifyDataSetChanged();
    }

    private void m0() {
        DownloadTask a4;
        for (int i2 = this.f50339l; i2 <= this.f50338k; i2++) {
            k1.a aVar = (k1.a) this.f50330c.getItemAtPosition(i2);
            if (aVar != null && (a4 = aVar.a()) != null && (a4.getStatus() == 2 || a4.getStatus() == 12)) {
                View childAt = this.f50330c.getChildAt(i2 - this.f50339l);
                if (childAt.getTag() instanceof a2.d) {
                    a2.d dVar = (a2.d) childAt.getTag();
                    try {
                        if (aVar.d() == 2) {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(a4.getCrc_link_type_val());
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (a4.getSize() == 0) {
                                TextView textView = dVar.f41257j;
                                textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView2 = dVar.f41257j;
                                textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            if (a4.getStatus() == 12) {
                                dVar.f41251d.setProgress((int) f4.getProgress());
                            } else {
                                dVar.f41252e.setProgress((int) f4.getProgress());
                            }
                            if (a4.getStatus() == 2) {
                                TextView textView3 = dVar.f41258k;
                                textView3.setText(f4.getSpeed() + "/S");
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.fragment_olopen_test;
    }

    @Override // com.join.mgps.basefragment.a
    protected int O() {
        return R.id.game_online_first_layout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void b0() {
        this.f50331d = com.join.mgps.rpc.impl.c.P1();
        this.f50332e = getActivity();
        getView();
        try {
            this.f50342o = getArguments().getInt("intentTo");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.join.mgps.Util.c0.a().d(this);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f50334g = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f50334g) {
                this.f50335h.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.t0.d("infoo", this.f50334g.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.t0.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.a2 a2Var = new com.join.mgps.adapter.a2(this.f50332e);
        this.f50341n = a2Var;
        this.f50337j = a2Var.c();
        this.f50330c.setPreLoadCount(10);
        this.f50330c.setPullRefreshEnable(new a());
        this.f50330c.setPullLoadEnable(new b());
        this.f50330c.setOnItemClickListener(new c());
        loadData();
        this.f50330c.setOnScrollListener(this);
        this.f50330c.setAdapter((ListAdapter) this.f50341n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c0() {
        ResultMainBean<GameOLDataBean<GameOLFirstBean>> Y;
        GameOLHeadAdBean gameOLHeadAdBean;
        GameOLHeadAdMain main;
        if (com.join.android.app.common.utils.f.j(this.f50332e)) {
            this.f50333f = true;
            try {
                try {
                    CommonRequestBean<RequestPnAndPcArgs> d02 = d0(this.f50336i);
                    int i2 = this.f50342o;
                    if (i2 == -1) {
                        Y = this.f50331d.Y(d02);
                    } else if (i2 == 0) {
                        Y = this.f50331d.z1(d02);
                    } else if (i2 == 1) {
                        Y = this.f50331d.i1(d02);
                    } else if (i2 == 2) {
                        Y = this.f50331d.p1(d02);
                    } else if (i2 != 3) {
                        Y = this.f50331d.Y(d02);
                    } else {
                        Y = this.f50331d.j(d02);
                    }
                    if (Y != null && Y.getFlag() == 1) {
                        GameOLDataBean<GameOLFirstBean> data = Y.getMessages().getData();
                        if (data != null) {
                            ArrayList arrayList = new ArrayList();
                            List<GameOLHeadAdBean> head_ad = data.getHead_ad();
                            if (head_ad != null && head_ad.size() > 0 && this.f50336i == 1 && (gameOLHeadAdBean = head_ad.get(0)) != null && (main = gameOLHeadAdBean.getMain()) != null && "1".equals(main.getAd_switch())) {
                                k1.a<GameOLFirstBean> aVar = new k1.a<>();
                                aVar.i(0);
                                aVar.g(gameOLHeadAdBean);
                                arrayList.add(aVar);
                            }
                            List<GameOLFirstBean> game_list = data.getGame_list();
                            if (game_list != null && game_list.size() > 0) {
                                boolean z3 = false;
                                for (GameOLFirstBean gameOLFirstBean : game_list) {
                                    String game_open_time = gameOLFirstBean.getGame_open_time();
                                    if (this.f50342o == -1) {
                                        if (com.join.mgps.Util.d2.i(game_open_time)) {
                                            if (com.join.android.app.common.utils.c.g(Long.parseLong(game_open_time + "000"))) {
                                                this.f50343p = true;
                                                int i4 = this.f50342o;
                                                if ((i4 == -1 || i4 == 0) && this.f50336i == 1 && !z3) {
                                                    k1.a<GameOLFirstBean> aVar2 = new k1.a<>();
                                                    aVar2.i(1);
                                                    if (this.f50342o == -1) {
                                                        aVar2.j("今日开测");
                                                    } else {
                                                        aVar2.j("今日上新");
                                                    }
                                                    arrayList.add(aVar2);
                                                    z3 = true;
                                                }
                                                k1.a<GameOLFirstBean> aVar3 = new k1.a<>();
                                                aVar3.i(2);
                                                aVar3.h(gameOLFirstBean);
                                                arrayList.add(aVar3);
                                            } else {
                                                int i5 = this.f50342o;
                                                if ((i5 == -1 || i5 == 0) && this.f50343p) {
                                                    k1.a<GameOLFirstBean> aVar4 = new k1.a<>();
                                                    aVar4.i(1);
                                                    aVar4.j("过去两周");
                                                    arrayList.add(aVar4);
                                                    this.f50343p = false;
                                                }
                                                k1.a<GameOLFirstBean> aVar5 = new k1.a<>();
                                                aVar5.i(2);
                                                aVar5.h(gameOLFirstBean);
                                                arrayList.add(aVar5);
                                            }
                                        } else if (this.f50336i == 1) {
                                            showLodingFailed();
                                        } else {
                                            f0();
                                        }
                                    } else {
                                        k1.a<GameOLFirstBean> aVar6 = new k1.a<>();
                                        aVar6.i(2);
                                        aVar6.h(gameOLFirstBean);
                                        arrayList.add(aVar6);
                                    }
                                }
                                if (game_list.size() < 10) {
                                    f0();
                                }
                            } else if (this.f50336i == 1) {
                                showLodingFailed();
                            } else {
                                f0();
                            }
                            this.f50336i++;
                            showMain(arrayList);
                            l0();
                        } else if (this.f50336i == 1) {
                            showLodingFailed();
                        } else {
                            f0();
                        }
                    } else {
                        l0();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    l0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f50333f = false;
            }
        }
        l0();
        showLodingFailed();
    }

    public CommonRequestBean d0(int i2) {
        return RequestBeanUtil.getInstance(this.f50332e).getGameOLRequest(i2, 20);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e0() {
        this.f50336i = 1;
        c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        try {
            this.f50330c.setNoMore();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void g0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.a2 a2Var = this.f50341n;
        if (a2Var != null) {
            a2Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0() {
        try {
            this.f50330c.t();
            this.f50330c.u();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.basefragment.a
    @Background
    public void loadData() {
        c0();
    }

    public void n0(List<k1.a<GameOLFirstBean>> list, List<DownloadTask> list2) {
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : list2) {
            Iterator<k1.a<GameOLFirstBean>> it2 = list.iterator();
            while (true) {
                if (it2.hasNext()) {
                    k1.a<GameOLFirstBean> next = it2.next();
                    if (next.d() == 2 && downloadTask.getCrc_link_type_val().equals(next.c().getGame_id())) {
                        next.f(downloadTask);
                        break;
                    }
                }
            }
        }
    }

    void o0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    j0(downloadTask);
                    return;
                case 3:
                    h0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    k0(downloadTask);
                    return;
                case 6:
                    i0(downloadTask);
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        Map<String, DownloadTask> map;
        DownloadTask a4 = lVar.a();
        switch (lVar.c()) {
            case 2:
                o0(a4, 1);
                return;
            case 3:
                o0(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                o0(a4, 5);
                return;
            case 6:
                o0(a4, 6);
                return;
            case 7:
                o0(a4, 3);
                return;
            case 8:
                if (isHidden() || (map = this.f50335h) == null || map.isEmpty() || this.f50340m) {
                    return;
                }
                m0();
                return;
            case 10:
                o0(a4, 7);
                return;
            case 12:
                o0(a4, 8);
                return;
            case 13:
                o0(a4, 9);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f50338k = (i4 + i2) - 1;
        this.f50339l = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f50340m = i2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<k1.a<GameOLFirstBean>> list = this.f50337j;
        if (list == null || list.size() == 0) {
            S();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<k1.a<GameOLFirstBean>> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                Q();
                if (this.f50336i == 2) {
                    this.f50337j.clear();
                }
                n0(list, this.f50334g);
                this.f50337j.addAll(list);
                if (this.f50336i == 2) {
                    this.f50337j.size();
                }
                com.join.mgps.Util.t0.d("infoo", this.f50337j.size() + "   showMain");
                this.f50341n.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }
}
