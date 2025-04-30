package com.join.mgps.fragment;

import android.app.Activity;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.z1;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameOLDataBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLHeadAdMain;
import com.join.mgps.dto.GameOLNoOpenTestBean;
import com.join.mgps.dto.ModInfoBean;
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
/* compiled from: GameOlNoOpenTestFragment.java */
@EFragment(R.layout.game_online_first_layout)
/* loaded from: classes.dex */
public class r2 extends Fragment implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f50027a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f50028b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f50029c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f50030d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f50031e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.d f50032f;

    /* renamed from: g  reason: collision with root package name */
    private Activity f50033g;

    /* renamed from: i  reason: collision with root package name */
    private List<DownloadTask> f50035i;

    /* renamed from: l  reason: collision with root package name */
    List<k1.a<GameOLNoOpenTestBean>> f50038l;

    /* renamed from: m  reason: collision with root package name */
    private int f50039m;

    /* renamed from: n  reason: collision with root package name */
    private int f50040n;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.adapter.z1 f50042p;

    /* renamed from: h  reason: collision with root package name */
    private boolean f50034h = false;

    /* renamed from: j  reason: collision with root package name */
    private Map<String, DownloadTask> f50036j = new ConcurrentHashMap();

    /* renamed from: k  reason: collision with root package name */
    private int f50037k = 1;

    /* renamed from: o  reason: collision with root package name */
    private boolean f50041o = false;

    /* renamed from: q  reason: collision with root package name */
    private boolean f50043q = true;

    /* compiled from: GameOlNoOpenTestFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (r2.this.f50034h) {
                return;
            }
            r2.this.f50037k = 1;
            r2.this.f50043q = true;
            r2.this.R();
        }
    }

    /* compiled from: GameOlNoOpenTestFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (r2.this.f50034h) {
                return;
            }
            r2.this.R();
        }
    }

    /* compiled from: GameOlNoOpenTestFragment.java */
    /* loaded from: classes4.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > r2.this.f50038l.size() || i2 < 0) {
                return;
            }
            k1.a<GameOLNoOpenTestBean> aVar = r2.this.f50038l.get(i2);
            if (aVar.d() == 2 && r2.this.f50038l.get(i2).c().getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(r2.this.f50033g, aVar.c().getIntentDataBean());
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
        r3 = r7.f50036j.get(r2.getMod_info().getMod_game_id());
        r5 = r7.f50036j.get(r2.getGame_id());
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
        r7.f50036j.remove(r1.getCrc_link_type_val());
        r0.remove();
        r0 = r7.f50038l.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (r0.hasNext() == false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void W(com.github.snowdream.android.app.downloader.DownloadTask r8) {
        /*
            r7 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r7.f50035i     // Catch: java.lang.Exception -> La7
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r7.f50036j     // Catch: java.lang.Exception -> La7
            java.lang.String r1 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> La7
            r2.remove(r1)     // Catch: java.lang.Exception -> La7
            r0.remove()     // Catch: java.lang.Exception -> La7
            java.util.List<k1.a<com.join.mgps.dto.GameOLNoOpenTestBean>> r0 = r7.f50038l     // Catch: java.lang.Exception -> La7
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
            com.join.mgps.dto.GameOLNoOpenTestBean r2 = (com.join.mgps.dto.GameOLNoOpenTestBean) r2     // Catch: java.lang.Exception -> La7
            com.join.mgps.dto.ModInfoBean r3 = r2.getMod_info()     // Catch: java.lang.Exception -> La7
            r4 = 0
            if (r3 == 0) goto L95
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r7.f50036j     // Catch: java.lang.Exception -> La7
            com.join.mgps.dto.ModInfoBean r5 = r2.getMod_info()     // Catch: java.lang.Exception -> La7
            java.lang.String r5 = r5.getMod_game_id()     // Catch: java.lang.Exception -> La7
            java.lang.Object r3 = r3.get(r5)     // Catch: java.lang.Exception -> La7
            com.github.snowdream.android.app.downloader.DownloadTask r3 = (com.github.snowdream.android.app.downloader.DownloadTask) r3     // Catch: java.lang.Exception -> La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r5 = r7.f50036j     // Catch: java.lang.Exception -> La7
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
            com.join.mgps.adapter.z1 r8 = r7.f50042p
            r8.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.r2.W(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    private void X(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50036j;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f50042p.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void Z(DownloadTask downloadTask) {
        UtilsMy.E3(this.f50035i, downloadTask);
        if (!this.f50036j.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50035i.add(downloadTask);
            this.f50036j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        b0(downloadTask);
        this.f50042p.notifyDataSetChanged();
    }

    private void a0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50036j;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50035i.add(downloadTask);
            this.f50036j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        b0(downloadTask);
        DownloadTask downloadTask2 = this.f50036j.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f50042p.notifyDataSetChanged();
    }

    private void b0(DownloadTask downloadTask) {
        try {
            for (k1.a<GameOLNoOpenTestBean> aVar : this.f50038l) {
                if (aVar.d() == 2) {
                    GameOLNoOpenTestBean c4 = aVar.c();
                    if (c4.getMod_info() != null) {
                        ModInfoBean mod_info = c4.getMod_info();
                        DownloadTask downloadTask2 = this.f50036j.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f50036j.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z3 = false;
                        }
                        if (z3 && z4) {
                            if (downloadTask.getCrc_link_type_val().equals(c4.getCrc_sign_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (z3) {
                            if (c4.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(c4.getMod_info().getMod_game_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (z4) {
                            if (downloadTask.getCrc_link_type_val().equals(c4.getCrc_sign_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else {
                            DownloadTask B = c4.getMod_info() != null ? g1.f.G().B(c4.getMod_info().getMod_game_id()) : null;
                            if (B == null) {
                                B = g1.f.G().B(c4.getCrc_sign_id());
                            }
                            if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        }
                    } else if (c4.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        aVar.f(downloadTask);
                        return;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void d0() {
        DownloadTask a4;
        for (int i2 = this.f50040n; i2 <= this.f50039m; i2++) {
            k1.a aVar = (k1.a) this.f50028b.getItemAtPosition(i2);
            if (aVar != null && (a4 = aVar.a()) != null && (a4.getStatus() == 2 || a4.getStatus() == 12)) {
                View childAt = this.f50028b.getChildAt(i2 - this.f50040n);
                if (childAt.getTag() instanceof z1.d) {
                    z1.d dVar = (z1.d) childAt.getTag();
                    try {
                        if (aVar.d() == 2) {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(a4.getCrc_link_type_val());
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (a4.getSize() == 0) {
                                TextView textView = dVar.f44679k;
                                textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView2 = dVar.f44679k;
                                textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            if (a4.getStatus() == 12) {
                                dVar.f44672d.setProgress((int) f4.getProgress());
                            } else {
                                dVar.f44673e.setProgress((int) f4.getProgress());
                            }
                            if (a4.getStatus() == 2) {
                                TextView textView3 = dVar.f44680l;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void Q() {
        this.f50032f = com.join.mgps.rpc.impl.c.P1();
        this.f50033g = getActivity();
        this.f50035i = g1.f.G().d();
        com.join.mgps.Util.c0.a().d(this);
        List<DownloadTask> list = this.f50035i;
        if (list != null && list.size() > 0) {
            for (DownloadTask downloadTask : this.f50035i) {
                this.f50036j.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.t0.d("infoo", this.f50035i.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.t0.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.z1 z1Var = new com.join.mgps.adapter.z1(this.f50033g);
        this.f50042p = z1Var;
        this.f50038l = z1Var.c();
        showLoding();
        R();
        this.f50028b.setPreLoadCount(10);
        this.f50028b.setPullRefreshEnable(new a());
        this.f50028b.setPullLoadEnable(new b());
        this.f50028b.setOnItemClickListener(new c());
        this.f50028b.setOnScrollListener(this);
        this.f50028b.setAdapter((ListAdapter) this.f50042p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        GameOLHeadAdBean gameOLHeadAdBean;
        GameOLHeadAdMain main;
        if (com.join.android.app.common.utils.f.j(this.f50033g)) {
            this.f50034h = true;
            try {
                try {
                    ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>> h4 = this.f50032f.h(S(this.f50037k));
                    if (h4 != null && h4.getFlag() == 1) {
                        GameOLDataBean<GameOLNoOpenTestBean> data = h4.getMessages().getData();
                        if (data != null) {
                            ArrayList arrayList = new ArrayList();
                            List<GameOLHeadAdBean> head_ad = data.getHead_ad();
                            if (head_ad != null && head_ad.size() > 0 && this.f50037k == 1 && (gameOLHeadAdBean = head_ad.get(0)) != null && (main = gameOLHeadAdBean.getMain()) != null && "1".equals(main.getAd_switch())) {
                                k1.a<GameOLNoOpenTestBean> aVar = new k1.a<>();
                                aVar.i(0);
                                aVar.g(gameOLHeadAdBean);
                                arrayList.add(aVar);
                            }
                            List<GameOLNoOpenTestBean> game_list = data.getGame_list();
                            if (game_list != null && game_list.size() > 0) {
                                boolean z3 = false;
                                for (GameOLNoOpenTestBean gameOLNoOpenTestBean : game_list) {
                                    String game_open_time = gameOLNoOpenTestBean.getGame_open_time();
                                    if (com.join.mgps.Util.d2.i(game_open_time)) {
                                        if (com.join.android.app.common.utils.c.g(Long.parseLong(game_open_time + "000"))) {
                                            this.f50043q = true;
                                            if (this.f50037k == 1 && !z3) {
                                                k1.a<GameOLNoOpenTestBean> aVar2 = new k1.a<>();
                                                aVar2.i(1);
                                                aVar2.j("今日开测");
                                                arrayList.add(aVar2);
                                                z3 = true;
                                            }
                                            k1.a<GameOLNoOpenTestBean> aVar3 = new k1.a<>();
                                            aVar3.i(2);
                                            aVar3.h(gameOLNoOpenTestBean);
                                            arrayList.add(aVar3);
                                        } else {
                                            if (this.f50043q) {
                                                k1.a<GameOLNoOpenTestBean> aVar4 = new k1.a<>();
                                                aVar4.i(1);
                                                aVar4.j("未来两周");
                                                arrayList.add(aVar4);
                                                this.f50043q = false;
                                            }
                                            k1.a<GameOLNoOpenTestBean> aVar5 = new k1.a<>();
                                            aVar5.i(2);
                                            aVar5.h(gameOLNoOpenTestBean);
                                            arrayList.add(aVar5);
                                        }
                                    }
                                }
                                if (game_list.size() < 10) {
                                    U();
                                }
                            } else if (this.f50037k == 1) {
                                showLodingFailed();
                            } else {
                                U();
                            }
                            this.f50037k++;
                            showMain(arrayList);
                            c0();
                        } else if (this.f50037k == 1) {
                            showLodingFailed();
                        } else {
                            U();
                        }
                    } else {
                        c0();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    c0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f50034h = false;
            }
        }
        c0();
        showLodingFailed();
    }

    public CommonRequestBean S(int i2) {
        return RequestBeanUtil.getInstance(this.f50033g).getGameOLRequest(i2, 20);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T() {
        this.f50037k = 1;
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        this.f50028b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void V(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.z1 z1Var = this.f50042p;
        if (z1Var != null) {
            z1Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        try {
            this.f50028b.t();
            this.f50028b.u();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void e0(List<k1.a<GameOLNoOpenTestBean>> list, List<DownloadTask> list2) {
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : list2) {
            Iterator<k1.a<GameOLNoOpenTestBean>> it2 = list.iterator();
            while (true) {
                if (it2.hasNext()) {
                    k1.a<GameOLNoOpenTestBean> next = it2.next();
                    if (next.d() == 2) {
                        if (next.c().getMod_info() != null) {
                            ModInfoBean mod_info = next.c().getMod_info();
                            DownloadTask downloadTask2 = this.f50036j.get(mod_info.getMain_game_id());
                            boolean z3 = false;
                            boolean c4 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask2.getPackageName());
                            DownloadTask downloadTask3 = this.f50036j.get(mod_info.getMod_game_id());
                            if (downloadTask3 != null && downloadTask3.getStatus() == 5) {
                                z3 = com.join.mgps.va.overmind.e.p().D(downloadTask3.getPackageName());
                            }
                            if (!z3 || !c4) {
                                if (z3) {
                                    if (next.c().getMod_info() != null && downloadTask.getCrc_link_type_val().equals(next.c().getMod_info().getMod_game_id())) {
                                        next.f(downloadTask);
                                        break;
                                    }
                                } else if (c4) {
                                    if (downloadTask.getCrc_link_type_val().equals(next.c().getCrc_sign_id())) {
                                        next.f(downloadTask);
                                        break;
                                    }
                                } else {
                                    DownloadTask B = next.c().getMod_info() != null ? g1.f.G().B(next.c().getMod_info().getMod_game_id()) : null;
                                    if (B == null) {
                                        B = g1.f.G().B(next.c().getCrc_sign_id());
                                    }
                                    if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                        next.f(downloadTask);
                                        break;
                                    }
                                }
                            } else if (downloadTask.getCrc_link_type_val().equals(next.c().getCrc_sign_id())) {
                                next.f(downloadTask);
                                break;
                            }
                        } else if (downloadTask.getCrc_link_type_val().equals(next.c().getGame_id())) {
                            next.f(downloadTask);
                            break;
                        }
                    }
                }
            }
        }
    }

    void f0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    Z(downloadTask);
                    return;
                case 3:
                    W(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    a0(downloadTask);
                    return;
                case 6:
                    X(downloadTask);
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
        int c4 = lVar.c();
        if (c4 == 2) {
            f0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    f0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    f0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    if (isHidden() || (map = this.f50036j) == null || map.isEmpty() || this.f50041o) {
                        return;
                    }
                    d0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            f0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            f0(a4, 8);
                            return;
                        case 13:
                            f0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            f0(a4, 5);
        } else {
            f0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f50039m = (i4 + i2) - 1;
        this.f50040n = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f50041o = i2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f50037k = 1;
        showLoding();
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f50029c.setVisibility(0);
            this.f50030d.setVisibility(8);
            this.f50027a.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<k1.a<GameOLNoOpenTestBean>> list = this.f50038l;
            if (list == null || list.size() == 0) {
                this.f50030d.setVisibility(0);
                this.f50029c.setVisibility(8);
                this.f50027a.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<k1.a<GameOLNoOpenTestBean>> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            this.f50030d.setVisibility(8);
            this.f50029c.setVisibility(8);
            this.f50027a.setVisibility(0);
            if (this.f50037k == 2) {
                this.f50038l.clear();
            }
            e0(list, this.f50035i);
            this.f50038l.addAll(list);
            if (this.f50037k == 2) {
                this.f50038l.size();
            }
            com.join.mgps.Util.t0.d("infoo", this.f50038l.size() + "   showMain");
            this.f50042p.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
