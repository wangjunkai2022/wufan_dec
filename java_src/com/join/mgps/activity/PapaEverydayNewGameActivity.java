package com.join.mgps.activity;

import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.EverydayNewGameAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView4NewGame;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.EverydayNewGameResponse;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameBeanCollection;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_everyday_new_game)
/* loaded from: classes.dex */
public class PapaEverydayNewGameActivity extends BaseActivity {

    /* renamed from: u  reason: collision with root package name */
    private static final String f34595u = "PapaEverydayNewGameActivity";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f34596a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f34597b;
    @ViewById(R.id.title_textview)

    /* renamed from: c  reason: collision with root package name */
    TextView f34598c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ForumLoadingView f34599d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView4NewGame f34600e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    PtrClassicFrameLayout f34601f;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: g  reason: collision with root package name */
    ImageView f34602g;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: h  reason: collision with root package name */
    CustomerDownloadView f34603h;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.customview.j f34605j;

    /* renamed from: k  reason: collision with root package name */
    EverydayNewGameAdapter f34606k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.rpc.d f34607l;

    /* renamed from: m  reason: collision with root package name */
    int f34608m;

    /* renamed from: n  reason: collision with root package name */
    int f34609n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    ExtBean f34610o;

    /* renamed from: p  reason: collision with root package name */
    volatile EverydayNewGameResponse f34611p;

    /* renamed from: t  reason: collision with root package name */
    private List<DownloadTask> f34615t;

    /* renamed from: i  reason: collision with root package name */
    Handler f34604i = new Handler();

    /* renamed from: q  reason: collision with root package name */
    private Map<String, DownloadTask> f34612q = new ConcurrentHashMap();

    /* renamed from: r  reason: collision with root package name */
    Map<String, DownloadTask> f34613r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    Map<String, DownloadTask> f34614s = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        private void a() {
            PapaEverydayNewGameActivity papaEverydayNewGameActivity = PapaEverydayNewGameActivity.this;
            papaEverydayNewGameActivity.M0(papaEverydayNewGameActivity.f34608m + 1);
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (PapaEverydayNewGameActivity.this.J0()) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        private void a() {
            PapaEverydayNewGameActivity papaEverydayNewGameActivity = PapaEverydayNewGameActivity.this;
            papaEverydayNewGameActivity.f34609n = 0;
            papaEverydayNewGameActivity.M0(1);
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (PapaEverydayNewGameActivity.this.J0()) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements EverydayNewGameAdapter.k {
        c() {
        }

        @Override // com.join.mgps.adapter.EverydayNewGameAdapter.k
        public void a(String str) {
            PapaEverydayNewGameActivity.this.S0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaEverydayNewGameActivity.this.f34600e.u();
            PapaEverydayNewGameActivity.this.f34600e.t();
            PapaEverydayNewGameActivity papaEverydayNewGameActivity = PapaEverydayNewGameActivity.this;
            if (papaEverydayNewGameActivity.f34609n == -1) {
                papaEverydayNewGameActivity.f34600e.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            PapaEverydayNewGameActivity.this.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends ForumLoadingView.e {
        f(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            PapaEverydayNewGameActivity.this.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends ForumLoadingView.e {
        g(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            PapaEverydayNewGameActivity.this.O0();
        }
    }

    private String H0(String str) {
        ConstantIntEnum[] values = ConstantIntEnum.values();
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < values.length; i2++) {
            hashMap.put(values[i2].value() + "", values[i2].nickName());
        }
        if (hashMap.containsKey(str) && com.join.mgps.Util.d2.i((String) hashMap.get(str))) {
            String str2 = (String) hashMap.get(str);
            if (com.join.mgps.Util.d2.h(str2)) {
                return "最新";
            }
            return "最新" + str2;
        }
        return "";
    }

    private void I0() {
        this.f34601f.j(true);
        getDownloadTaskInfo();
        this.f34602g.setVisibility(0);
        this.f34603h.setVisibility(0);
        this.f34598c.setText("每日上新");
        com.join.mgps.Util.c0.a().d(this);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f34615t = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f34615t) {
                this.f34612q.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.t0.d("infoo", this.f34615t.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.t0.d("infoo", downloadTask.toString());
            }
        }
        this.f34600e.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f34600e.setPullLoadEnable(new a());
        b bVar = new b();
        this.f34605j = bVar;
        this.f34600e.setPullRefreshEnable(bVar);
        EverydayNewGameAdapter everydayNewGameAdapter = new EverydayNewGameAdapter(this);
        this.f34606k = everydayNewGameAdapter;
        everydayNewGameAdapter.p(new c());
        this.f34600e.setAdapter((ListAdapter) this.f34606k);
    }

    private void N0() {
        M0(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        G0(1);
        if (com.join.android.app.common.utils.f.j(this)) {
            N0();
            return;
        }
        G0(9);
        showToast(getString(R.string.net_connect_failed));
    }

    private void Q0() {
        ArrayList arrayList = new ArrayList();
        try {
            if (this.f34611p == null) {
                return;
            }
            if (this.f34611p.getHead_ad() != null && this.f34611p.getHead_ad().size() > 0) {
                RecomDatabean recomDatabean = this.f34611p.getHead_ad().get(0);
                if (recomDatabean.getMain().getAd_switch() == 1) {
                    arrayList.add(new EverydayNewGameAdapter.l(EverydayNewGameAdapter.ViewType.VIEW_AD, new EverydayNewGameAdapter.l.a(recomDatabean)));
                }
            }
            if (this.f34611p.getThe_explosion() != null && this.f34611p.getThe_explosion().size() > 0) {
                RecomDatabean recomDatabean2 = this.f34611p.getThe_explosion().get(0);
                if (recomDatabean2.getMain() != null && recomDatabean2.getMain().getAd_switch() == 1) {
                    RecomDatabeanBusiness recomDatabeanBusiness = new RecomDatabeanBusiness(recomDatabean2);
                    for (DownloadTask downloadTask : this.f34615t) {
                        try {
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        if (downloadTask.getCrc_link_type_val().equals(recomDatabeanBusiness.getSub().get(0).getGame_info().getCrc_sign_id())) {
                            recomDatabeanBusiness.d(downloadTask);
                            break;
                        }
                        continue;
                    }
                    arrayList.add(new EverydayNewGameAdapter.l(EverydayNewGameAdapter.ViewType.VIEW_EXPLOSION, new EverydayNewGameAdapter.l.b(recomDatabeanBusiness)));
                }
            }
            if (this.f34611p.getGame_list() != null && this.f34611p.getGame_list().size() > 0) {
                for (int i2 = 0; i2 < this.f34611p.getGame_list().size(); i2++) {
                    GameBeanCollection gameBeanCollection = this.f34611p.getGame_list().get(i2);
                    String str = gameBeanCollection.getType() + "";
                    String H0 = H0(str);
                    if (L0(str)) {
                        arrayList.add(new EverydayNewGameAdapter.l(EverydayNewGameAdapter.ViewType.VIEW_SECTION_TITLE, new EverydayNewGameAdapter.l.d(H0)));
                        ArrayList arrayList2 = new ArrayList();
                        for (int i4 = 0; i4 < gameBeanCollection.getList().size(); i4++) {
                            arrayList2.add(new CollectionBeanSubBusiness(gameBeanCollection.getList().get(i4)));
                        }
                        Z0(arrayList2, this.f34615t);
                        arrayList.add(new EverydayNewGameAdapter.l(EverydayNewGameAdapter.ViewType.VIEW_GAME_LIST, new EverydayNewGameAdapter.l.c(gameBeanCollection.getType() + "", arrayList2)));
                    }
                }
            }
            P0(arrayList);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0(String str) {
        if (this.f34611p == null || this.f34611p.getThe_explosion() == null || this.f34611p.getThe_explosion().size() <= 0) {
            return;
        }
        RecomDatabean recomDatabean = this.f34611p.getThe_explosion().get(0);
        if (recomDatabean.getSub() == null || recomDatabean.getSub().size() == 0 || recomDatabean.getSub().get(0).getGame_info() == null) {
            return;
        }
        recomDatabean.getSub().get(0).getGame_info().setResidual_time(str);
    }

    private void T0(int i2, EverydayNewGameResponse everydayNewGameResponse) {
        try {
            V0(everydayNewGameResponse.getHead_ad(), 129, 129);
            V0(everydayNewGameResponse.getThe_explosion(), 129, 129);
            if (everydayNewGameResponse.getGame_list() != null) {
                for (GameBeanCollection gameBeanCollection : everydayNewGameResponse.getGame_list()) {
                    for (CollectionBeanSub collectionBeanSub : gameBeanCollection.getList()) {
                        collectionBeanSub.set_from(129);
                        collectionBeanSub.set_from_type(129);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (i2 == 1) {
            this.f34611p = everydayNewGameResponse;
        } else {
            List<GameBeanCollection> game_list = this.f34611p.getGame_list();
            if (game_list != null) {
                game_list.addAll(everydayNewGameResponse.getGame_list());
            }
        }
        Q0();
    }

    private void V0(List<RecomDatabean> list, int i2, int i4) {
        AppBean game_info;
        if (list != null) {
            for (RecomDatabean recomDatabean : list) {
                if (recomDatabean.getSub() != null && recomDatabean.getSub().size() > 0 && (game_info = recomDatabean.getSub().get(0).getGame_info()) != null) {
                    game_info.set_from(i2);
                    game_info.set_from_type(i4);
                }
            }
        }
    }

    private void W0() {
        this.f34604i.postDelayed(new d(), 800L);
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f34615t.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f34612q.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            R0(downloadTask, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f34612q;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            R0(downloadTask, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.f34615t, downloadTask);
        if (!this.f34612q.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f34615t.add(downloadTask);
            this.f34612q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        R0(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f34612q;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f34615t.add(downloadTask);
            this.f34612q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f34612q.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        R0(downloadTask, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(int i2) {
        if (i2 == 1) {
            this.f34599d.m();
            this.f34599d.j(1);
        } else if (i2 == 2) {
            this.f34599d.j(2);
        } else if (i2 == 4) {
            this.f34599d.j(4);
        } else if (i2 == 16) {
            this.f34599d.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView = this.f34599d;
            forumLoadingView.setListener(new g(forumLoadingView));
            this.f34599d.j(16);
        } else if (i2 == 9) {
            ForumLoadingView forumLoadingView2 = this.f34599d;
            forumLoadingView2.setListener(new e(forumLoadingView2));
            this.f34599d.j(9);
        } else if (i2 != 10) {
        } else {
            this.f34599d.setFailedMsg("没有更多更新哦~");
            ForumLoadingView forumLoadingView3 = this.f34599d;
            forumLoadingView3.setListener(new f(forumLoadingView3));
            this.f34599d.setReloadingVisibility(0);
            this.f34599d.j(10);
        }
    }

    boolean J0() {
        if (com.join.android.app.common.utils.f.j(getBaseContext())) {
            return true;
        }
        showToast(getString(R.string.net_connect_failed));
        G0(9);
        W0();
        return false;
    }

    boolean K0(List<GameBeanCollection> list) {
        boolean z3 = list == null || list.size() == 0;
        if (z3) {
            W0();
        }
        return z3;
    }

    boolean L0(String str) {
        ConstantIntEnum[] values = ConstantIntEnum.values();
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < values.length; i2++) {
            hashMap.put(values[i2].value() + "", values[i2].nickName());
        }
        return hashMap.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
        if (r5.f34609n != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
        if (r5.f34609n == (-1)) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008a, code lost:
        r5.f34609n = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008c, code lost:
        W0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void M0(int r6) {
        /*
            r5 = this;
            boolean r0 = com.join.android.app.common.utils.f.j(r5)
            if (r0 == 0) goto L9a
            r0 = 0
            r1 = -1
            boolean r2 = r5.a1(r6)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r2 != 0) goto L21
            boolean r6 = com.join.android.app.common.utils.f.j(r5)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r6 != 0) goto L17
            r5.W0()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
        L17:
            int r6 = r5.f34609n
            if (r6 == r1) goto L1d
            r5.f34609n = r0
        L1d:
            r5.W0()
            return
        L21:
            com.join.mgps.Util.RequestBeanUtil r2 = com.join.mgps.Util.RequestBeanUtil.getInstance(r5)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            int r3 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r4 = 0
            com.join.mgps.dto.CommonRequestBean r2 = r2.getEverdayNewGame(r6, r3, r4)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            com.join.mgps.rpc.d r3 = r5.f34607l     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            com.join.mgps.dto.ResultMainBean r2 = r3.x(r2)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r2 == 0) goto L72
            int r3 = r2.getCode()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r4 = 600(0x258, float:8.41E-43)
            if (r3 != r4) goto L72
            com.join.mgps.dto.ResultMessageBean r2 = r2.getMessages()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            java.lang.Object r2 = r2.getData()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            com.join.mgps.dto.EverydayNewGameResponse r2 = (com.join.mgps.dto.EverydayNewGameResponse) r2     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r5.T0(r6, r2)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r2 == 0) goto L63
            java.util.List r3 = r2.getGame_list()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r3 == 0) goto L63
            java.util.List r2 = r2.getGame_list()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            boolean r2 = r5.K0(r2)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r2 == 0) goto L5c
            goto L63
        L5c:
            r5.f34608m = r6     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r6 = 2
            r5.G0(r6)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            goto L76
        L63:
            r5.f34609n = r1     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r5.W0()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            int r6 = r5.f34609n
            if (r6 == r1) goto L6e
            r5.f34609n = r0
        L6e:
            r5.W0()
            return
        L72:
            r6 = 4
            r5.G0(r6)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
        L76:
            int r6 = r5.f34609n
            if (r6 == r1) goto L8c
            goto L8a
        L7b:
            r6 = move-exception
            goto L90
        L7d:
            r6 = move-exception
            r2 = 16
            r5.G0(r2)     // Catch: java.lang.Throwable -> L7b
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L7b
            int r6 = r5.f34609n
            if (r6 == r1) goto L8c
        L8a:
            r5.f34609n = r0
        L8c:
            r5.W0()
            goto Lac
        L90:
            int r2 = r5.f34609n
            if (r2 == r1) goto L96
            r5.f34609n = r0
        L96:
            r5.W0()
            throw r6
        L9a:
            r6 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r6 = r5.getString(r6)
            r5.showToast(r6)
            r6 = 9
            r5.G0(r6)
            r5.W0()
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PapaEverydayNewGameActivity.M0(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(List<EverydayNewGameAdapter.l> list) {
        this.f34606k.o(list);
        this.f34606k.notifyDataSetChanged();
    }

    void R0(DownloadTask downloadTask, int i2) {
        EverydayNewGameAdapter everydayNewGameAdapter = this.f34606k;
        if (everydayNewGameAdapter != null) {
            everydayNewGameAdapter.l(downloadTask, this.f34612q, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void U0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        EverydayNewGameAdapter everydayNewGameAdapter = this.f34606k;
        if (everydayNewGameAdapter != null) {
            everydayNewGameAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Y0() {
        SearchHintActivity_.S1(this).start();
        com.papa.sim.statistic.p.l(this).m2(Where.everdayNew, AccountUtil_.getInstance_(this).getUid());
    }

    public void Z0(List<CollectionBeanSubBusiness> list, List<DownloadTask> list2) {
        if (list2 == null) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f34612q.get(mod_info.getMain_game_id());
                        boolean z3 = false;
                        boolean c4 = (downloadTask == null || downloadTask.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName());
                        DownloadTask downloadTask2 = this.f34612q.get(mod_info.getMod_game_id());
                        if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                            z3 = com.join.mgps.va.overmind.e.p().D(downloadTask2.getPackageName());
                        }
                        if (!z3 || !c4) {
                            if (z3) {
                                if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else if (c4) {
                                if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else {
                                DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                                if (B == null) {
                                    B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                                }
                                if (B != null && next.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            }
                        } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(next);
                            break;
                        }
                    } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                        collectionBeanSubBusiness.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
    }

    boolean a1(int i2) {
        int i4 = this.f34609n;
        if (i4 != -1 && i2 != i4) {
            this.f34609n = i2;
            return true;
        }
        W0();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        try {
            this.f34607l = com.join.mgps.rpc.impl.c.P1();
            I0();
            O0();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34613r
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34613r
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34614s
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34614s
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34613r
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34613r
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34613r
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34613r
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34614s
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34613r
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34613r
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34614s
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34614s
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PapaEverydayNewGameActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f34613r.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f34614s.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    updateUI(a4, 3);
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f34613r.size();
        int size2 = this.f34614s.size();
        this.f34603h.setDownloadGameNum(size);
        StringBuilder sb = new StringBuilder();
        sb.append("updateDownloadView: ");
        sb.append(size2);
        sb.append("::::已经进入下载队列中的数量:::");
        sb.append(size);
        if (size2 > 0) {
            this.f34603h.d();
        } else {
            this.f34603h.g();
        }
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    return;
                case 3:
                    receiveDelete(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }
}
