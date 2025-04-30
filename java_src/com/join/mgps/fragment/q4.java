package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.adapter.h5;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.SearchGameListBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import i1.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: SearchGameListFragment.java */
@EFragment(R.layout.fragment_search_game_list)
/* loaded from: classes.dex */
public class q4 extends d implements h5.e, l1.i {
    @ViewById(R.id.rv_list_data)

    /* renamed from: a  reason: collision with root package name */
    XQuickRecyclerView f49940a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f49941b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f49942c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f49943d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.j f49944e;

    /* renamed from: f  reason: collision with root package name */
    h5 f49945f;

    /* renamed from: g  reason: collision with root package name */
    com.join.android.app.component.video.d f49946g;
    @FragmentArg

    /* renamed from: h  reason: collision with root package name */
    int f49947h;
    @FragmentArg

    /* renamed from: i  reason: collision with root package name */
    String f49948i;

    /* renamed from: k  reason: collision with root package name */
    int f49950k;

    /* renamed from: l  reason: collision with root package name */
    int f49951l;

    /* renamed from: m  reason: collision with root package name */
    int f49952m;

    /* renamed from: o  reason: collision with root package name */
    int f49954o;

    /* renamed from: p  reason: collision with root package name */
    private Context f49955p;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    View f49959t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    View f49960u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    View f49961v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    TextView f49962w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TextView f49963x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    TextView f49964y;
    @FragmentArg

    /* renamed from: j  reason: collision with root package name */
    String f49949j = "";

    /* renamed from: n  reason: collision with root package name */
    int f49953n = 20;

    /* renamed from: q  reason: collision with root package name */
    private boolean f49956q = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f49957r = false;

    /* renamed from: s  reason: collision with root package name */
    private boolean f49958s = false;

    /* renamed from: z  reason: collision with root package name */
    List<DownloadTask> f49965z = new ArrayList();
    Map<String, DownloadTask> A = new ConcurrentHashMap();
    private int B = 0;
    private int C = 0;

    /* compiled from: SearchGameListFragment.java */
    /* loaded from: classes4.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            if (i2 == 0) {
                com.join.android.app.component.video.d dVar = q4.this.f49946g;
                if (dVar != null) {
                    dVar.b(2);
                }
                q4.this.g0();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
            q4 q4Var = q4.this;
            q4Var.B = q4Var.f49940a.getLastVisiblePosition();
            q4 q4Var2 = q4.this;
            q4Var2.C = q4Var2.f49940a.getFirstVisiblePosition();
        }
    }

    /* compiled from: SearchGameListFragment.java */
    /* loaded from: classes4.dex */
    class b extends i1.a {
        b() {
        }

        @Override // i1.a
        public a.b getItemOffsets(int i2) {
            a.C0442a c0442a = new a.C0442a();
            c0442a.f65702f = 0;
            c0442a.f65703a = (int) q4.this.getResources().getDimension(R.dimen.wdp10);
            c0442a.f65704b = (int) q4.this.getResources().getDimension(R.dimen.wdp10);
            c0442a.f65705c = (int) q4.this.getResources().getDimension(R.dimen.wdp10);
            c0442a.f65706d = (int) q4.this.getResources().getDimension(R.dimen.wdp10);
            return c0442a;
        }
    }

    /* compiled from: SearchGameListFragment.java */
    /* loaded from: classes4.dex */
    class c implements XQuickRecyclerView.f {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.f
        public void onLoadMore() {
            if (q4.this.f49958s) {
                q4 q4Var = q4.this;
                q4Var.f49952m = 1;
                q4Var.f49958s = false;
            }
            q4 q4Var2 = q4.this;
            q4Var2.X(q4Var2.f49952m + 1);
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.f
        public void onRefresh() {
            q4.this.J();
        }
    }

    private void b0(DownloadTask downloadTask) {
        CommonGameInfoBean commonGameInfoBean;
        GInfoBean g_info;
        Iterator<DownloadTask> it2 = this.f49965z.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.A.remove(next.getCrc_link_type_val());
                it2.remove();
                for (T t3 : this.f49945f.getData()) {
                    if (t3.f42225a == 7 && (g_info = (commonGameInfoBean = (CommonGameInfoBean) t3.f42226b).getG_info()) != null) {
                        if (commonGameInfoBean.isModGameVm()) {
                            DownloadTask downloadTask2 = this.A.get(g_info.getMod_id());
                            DownloadTask downloadTask3 = this.A.get(g_info.getId());
                            if (downloadTask2 == null && downloadTask3 == null) {
                                commonGameInfoBean.setDownloadTask(null);
                            } else if (downloadTask2 != null) {
                                commonGameInfoBean.setDownloadTask(downloadTask2);
                            } else if (downloadTask3 != null) {
                                commonGameInfoBean.setDownloadTask(downloadTask3);
                            } else if (g_info.getId().equals(downloadTask.getCrc_link_type_val())) {
                                commonGameInfoBean.setDownloadTask(null);
                            }
                        } else if (g_info.getId().equals(downloadTask.getCrc_link_type_val())) {
                            commonGameInfoBean.setDownloadTask(null);
                        }
                    }
                }
            }
        }
        a0();
    }

    private void c0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.A;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            a0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void d0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f49965z);
        if (!this.A.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49965z.add(downloadTask);
            this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        l0(downloadTask);
        a0();
    }

    private void e0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.A;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49965z.add(downloadTask);
            this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        l0(downloadTask);
        DownloadTask downloadTask2 = this.A.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0() {
        h5 h5Var;
        CommonGameInfoBean commonGameInfoBean;
        if (this.f49940a == null || (h5Var = this.f49945f) == null || h5Var.getItemCount() <= 0) {
            return;
        }
        int lastCompletelyVisiblePosition = this.f49940a.getLastCompletelyVisiblePosition();
        for (int firstCompletelyVisiblePosition = this.f49940a.getFirstCompletelyVisiblePosition(); firstCompletelyVisiblePosition <= lastCompletelyVisiblePosition; firstCompletelyVisiblePosition++) {
            h5.h hVar = (h5.h) this.f49945f.getItem(firstCompletelyVisiblePosition);
            if (hVar != null && (hVar.a() instanceof CommonGameInfoBean) && (commonGameInfoBean = (CommonGameInfoBean) hVar.a()) != null && commonGameInfoBean.getG_info() != null && commonGameInfoBean.isMiniGame() && commonGameInfoBean.isMiniGame() && !commonGameInfoBean.isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("");
                ext.setFrom("101");
                ext.setFrom("101");
                ext.setGameId(commonGameInfoBean.getG_info().getId());
                commonGameInfoBean.setHasExposure(true);
                com.papa.sim.statistic.p.l(this.f49955p).h0(Event.expSmallGameAdPage, ext, commonGameInfoBean.getG_info().getId());
            }
        }
    }

    private void l0(DownloadTask downloadTask) {
        CommonGameInfoBean commonGameInfoBean;
        GInfoBean g_info;
        for (int i2 = 0; i2 < this.f49945f.getItemCount(); i2++) {
            try {
                Object obj = ((h5.h) this.f49945f.getItem(i2)).f42226b;
                if ((obj instanceof CommonGameInfoBean) && (g_info = (commonGameInfoBean = (CommonGameInfoBean) obj).getG_info()) != null) {
                    if (commonGameInfoBean.isModGameVm()) {
                        DownloadTask downloadTask2 = this.A.get(g_info.getId());
                        boolean z3 = true;
                        boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.A.get(g_info.getMod_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z3 = false;
                        }
                        if (z3 && z4 && downloadTask.getCrc_link_type_val().equals(g_info.getId())) {
                            commonGameInfoBean.setDownloadTask(downloadTask);
                        } else if (z3 && downloadTask.getCrc_link_type_val().equals(g_info.getMod_id())) {
                            commonGameInfoBean.setDownloadTask(downloadTask);
                        } else if (z4 && downloadTask.getCrc_link_type_val().equals(g_info.getId())) {
                            commonGameInfoBean.setDownloadTask(downloadTask);
                        } else {
                            DownloadTask B = g1.f.G().B(g_info.getMod_id());
                            if (B == null) {
                                B = g1.f.G().B(g_info.getId());
                            }
                            if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                commonGameInfoBean.setDownloadTask(downloadTask);
                            }
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(g_info.getId())) {
                        commonGameInfoBean.setDownloadTask(downloadTask);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        if (r3.getCrc_link_type_val().equals(r1.getMod_id()) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0089, code lost:
        r0.setDownloadTask(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m0(java.util.List<com.join.mgps.dto.CommonGameInfoBean> r11) {
        /*
            r10 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r10.f49965z
            if (r0 != 0) goto L5
            return
        L5:
            java.util.Iterator r11 = r11.iterator()
        L9:
            boolean r0 = r11.hasNext()
            if (r0 == 0) goto Le3
            java.lang.Object r0 = r11.next()
            com.join.mgps.dto.CommonGameInfoBean r0 = (com.join.mgps.dto.CommonGameInfoBean) r0
            com.join.mgps.dto.GInfoBean r1 = r0.getG_info()
            if (r1 == 0) goto L9
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r2 = r10.f49965z
            java.util.Iterator r2 = r2.iterator()
        L21:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L9
            java.lang.Object r3 = r2.next()
            com.github.snowdream.android.app.downloader.DownloadTask r3 = (com.github.snowdream.android.app.downloader.DownloadTask) r3
            boolean r4 = r0.isModGameVm()
            if (r4 == 0) goto Ld0
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r10.A
            java.lang.String r5 = r1.getId()
            java.lang.Object r4 = r4.get(r5)
            com.github.snowdream.android.app.downloader.DownloadTask r4 = (com.github.snowdream.android.app.downloader.DownloadTask) r4
            r5 = 1
            r6 = 5
            r7 = 0
            if (r4 == 0) goto L4c
            int r4 = r4.getStatus()
            if (r4 != r6) goto L4c
            r4 = 1
            goto L4d
        L4c:
            r4 = 0
        L4d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r8 = r10.A
            java.lang.String r9 = r1.getMod_id()
            java.lang.Object r8 = r8.get(r9)
            com.github.snowdream.android.app.downloader.DownloadTask r8 = (com.github.snowdream.android.app.downloader.DownloadTask) r8
            if (r8 == 0) goto L62
            int r8 = r8.getStatus()
            if (r8 != r6) goto L62
            goto L63
        L62:
            r5 = 0
        L63:
            if (r5 == 0) goto L79
            if (r4 == 0) goto L79
            java.lang.String r6 = r3.getCrc_link_type_val()
            java.lang.String r7 = r1.getId()
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L79
            r0.setDownloadTask(r3)
            goto L21
        L79:
            if (r5 == 0) goto L8d
            java.lang.String r5 = r3.getCrc_link_type_val()
            java.lang.String r6 = r1.getMod_id()
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L8d
            r0.setDownloadTask(r3)
            goto L21
        L8d:
            if (r4 == 0) goto La1
            java.lang.String r4 = r3.getCrc_link_type_val()
            java.lang.String r5 = r1.getId()
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto La1
            r0.setDownloadTask(r3)
            goto L21
        La1:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r10.A
            java.lang.String r5 = r1.getMod_id()
            java.lang.Object r4 = r4.get(r5)
            com.github.snowdream.android.app.downloader.DownloadTask r4 = (com.github.snowdream.android.app.downloader.DownloadTask) r4
            if (r4 != 0) goto Lbb
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r10.A
            java.lang.String r5 = r1.getId()
            java.lang.Object r4 = r4.get(r5)
            com.github.snowdream.android.app.downloader.DownloadTask r4 = (com.github.snowdream.android.app.downloader.DownloadTask) r4
        Lbb:
            if (r4 == 0) goto L21
            java.lang.String r5 = r3.getCrc_link_type_val()
            java.lang.String r4 = r4.getCrc_link_type_val()
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L21
            r0.setDownloadTask(r3)
            goto L21
        Ld0:
            java.lang.String r4 = r3.getCrc_link_type_val()
            java.lang.String r5 = r1.getId()
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L21
            r0.setDownloadTask(r3)
            goto L21
        Le3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.q4.m0(java.util.List):void");
    }

    private void n0(String str, int i2) {
        CommonGameInfoBean commonGameInfoBean;
        GInfoBean g_info;
        if (com.join.mgps.Util.d2.h(str)) {
            return;
        }
        for (int i4 = 0; i4 < this.f49945f.getItemCount(); i4++) {
            Object obj = ((h5.h) this.f49945f.getItem(i4)).f42226b;
            if ((obj instanceof CommonGameInfoBean) && (g_info = (commonGameInfoBean = (CommonGameInfoBean) obj).getG_info()) != null && (str.equals(g_info.getId()) || str.equals(g_info.getMod_id()))) {
                commonGameInfoBean.setRequestStatus(i2);
                this.f49945f.notifyItemChanged(i4);
                return;
            }
        }
    }

    private void o0() {
        DownloadTask downloadTask;
        Object a4;
        if (this.C < 0 || this.B >= this.f49945f.getItemCount()) {
            return;
        }
        for (int i2 = this.C; i2 <= this.B; i2++) {
            CommonGameInfoBean commonGameInfoBean = null;
            try {
                a4 = ((h5.h) this.f49945f.getItem(i2)).a();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (CommonGameInfoBean.class.isInstance(a4)) {
                commonGameInfoBean = (CommonGameInfoBean) a4;
                if (commonGameInfoBean != null && (downloadTask = commonGameInfoBean.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    RecyclerView.ViewHolder childViewHolder = this.f49940a.getChildViewHolder(this.f49940a.getChildAt(i2 - this.C));
                    if (childViewHolder instanceof com.join.mgps.base.b) {
                        com.join.mgps.base.b bVar = (com.join.mgps.base.b) childViewHolder;
                        try {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                ((TextView) bVar.k(R.id.appSize)).setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                ((TextView) bVar.k(R.id.appSize)).setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            if (downloadTask.getStatus() == 12) {
                                ((ProgressBar) bVar.k(R.id.progressBarZip)).setProgress((int) f4.getProgress());
                            } else {
                                ((ProgressBar) bVar.k(R.id.progressBar)).setProgress((int) f4.getProgress());
                            }
                            if (downloadTask.getStatus() == 2) {
                                bVar.K(R.id.loding_info, f4.getSpeed() + "/S");
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    @Override // l1.i
    public void J() {
        this.f49952m = 0;
        this.f49954o = 0;
        Context context = this.f49955p;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f49950k = ((SearchListActivity1) context).M0();
            this.f49951l = ((SearchListActivity1) this.f49955p).L0();
            this.f49948i = ((SearchListActivity1) this.f49955p).getGameId();
        }
        showLoadingView();
        this.f49949j = W();
        this.f49957r = false;
        this.f49958s = false;
        XQuickRecyclerView xQuickRecyclerView = this.f49940a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.u1();
        }
        Z(1, false);
    }

    void M(Context context, String str, String str2, String str3, String str4) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, GameDetailActivity_.class);
        intent.putExtra("fromid", str);
        intent.putExtra(DownloadMethodPromptDialog_.F, 11102);
        intent.putExtra("groupuid", TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2));
        intent.putExtra("gameid", str3);
        intent.putExtra("company_id", str4);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void S() {
        com.join.android.app.component.video.d dVar = this.f49946g;
        if (dVar != null) {
            dVar.b(2);
        }
        g0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d
    @UiThread
    public void T(String str) {
        com.join.mgps.Util.i2.a(this.f49955p).b(str);
    }

    List<CommonGameInfoBean> U(List<CommonGameInfoBean> list, CommonGameInfoBean commonGameInfoBean) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            arrayList.addAll(list);
            if (commonGameInfoBean != null) {
                try {
                    commonGameInfoBean.setAdInfo(true);
                    arrayList.add(Math.min(commonGameInfoBean.getPosition(), arrayList.size() - 1), commonGameInfoBean);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    boolean V(String str) {
        Context context = this.f49955p;
        if (context == null || !(context instanceof SearchListActivity1)) {
            return false;
        }
        return ((SearchListActivity1) context).R0(str);
    }

    String W() {
        Context context = this.f49955p;
        return (context == null || !(context instanceof SearchListActivity1)) ? "" : ((SearchListActivity1) context).S0();
    }

    void X(int i2) {
        Context context = this.f49955p;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f49950k = ((SearchListActivity1) context).M0();
            this.f49951l = ((SearchListActivity1) this.f49955p).L0();
        }
        Z(i2, this.f49957r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:123:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0196, code lost:
        if (r1 != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a3, code lost:
        if (r1 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a5, code lost:
        r6.f49954o = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a8, code lost:
        r6.f49952m = r7;
        r6.f49954o = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01ac, code lost:
        k0();
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0149 A[Catch: all -> 0x0181, Exception -> 0x0184, TryCatch #8 {Exception -> 0x0184, all -> 0x0181, blocks: (B:40:0x00e2, B:42:0x00e8, B:44:0x00f4, B:46:0x0104, B:48:0x0119, B:53:0x012e, B:55:0x013a, B:56:0x013d, B:58:0x0149, B:63:0x0162, B:68:0x017c), top: B:120:0x00e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x015c  */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Z(int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.q4.Z(int, boolean):void");
    }

    void a0() {
        h5 h5Var = this.f49945f;
        if (h5Var != null) {
            h5Var.P(W());
            this.f49945f.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49955p = getActivity();
        this.f49944e = com.join.mgps.rpc.impl.h.M();
        com.join.mgps.Util.c0.a().d(this);
        this.f49946g = new com.join.android.app.component.video.d(this.f49940a, "SearchGameListFragmentVideoHelper");
        h5 h5Var = new h5(this.f49955p, this.f49946g);
        this.f49945f = h5Var;
        h5Var.M(this);
        this.f49945f.P(W());
        this.f49940a.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        RecyclerView.ItemAnimator itemAnimator = this.f49940a.getItemAnimator();
        if (itemAnimator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        }
        this.f49940a.addOnScrollListener(new a());
        this.f49940a.addItemDecoration(new b());
        XQuickRecyclerView xQuickRecyclerView = this.f49940a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setLoadingListener(new c());
        }
        this.f49940a.setAdapter(this.f49945f);
        this.f49940a.setPreLoadCount(10);
        f0();
        J();
        this.f49956q = true;
    }

    @Override // com.join.mgps.adapter.h5.e
    public void b(String str) {
    }

    @Override // com.join.mgps.adapter.h5.e
    public void c(String str) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(str));
        com.join.mgps.Util.i0.v0(this.f49955p, forumPostsBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f49965z = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f49965z) {
            if (downloadTask.getCrc_link_type_val() != null) {
                this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    @Override // com.join.mgps.adapter.h5.e
    public void h(String str) {
        com.papa.sim.statistic.p.l(this.f49955p).b0(this.f49947h == 0 ? "searchTotalList" : "searchGameList", str, AccountUtil_.getInstance_(this.f49955p).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0(SearchGameListBean searchGameListBean, int i2) {
        if (searchGameListBean == null) {
            return;
        }
        if (i2 == 1) {
            searchGameListBean.setKeyword(this.f49949j);
            com.join.mgps.Util.i0.t1("1", JsonMapper.toJsonString(searchGameListBean));
        }
        ArrayList arrayList = new ArrayList();
        List<CommonGameInfoBean> U = U(searchGameListBean.getList(), searchGameListBean.getAd_info());
        if (U != null && U.size() != 0) {
            j0(false);
            m0(U);
            for (CommonGameInfoBean commonGameInfoBean : U) {
                if (commonGameInfoBean.isAdInfo()) {
                    commonGameInfoBean.set_from(147);
                    commonGameInfoBean.set_from_type(147);
                } else {
                    commonGameInfoBean.set_from(112);
                    commonGameInfoBean.set_from_type(112);
                }
                int i4 = this.f49947h;
                if (i4 == 0) {
                    commonGameInfoBean.setReMarks("1");
                } else if (i4 == 1) {
                    commonGameInfoBean.setReMarks(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                }
                if (commonGameInfoBean.isMiniGame()) {
                    arrayList.add(new h5.h(com.join.mgps.Util.d2.i(commonGameInfoBean.getV_url()) ? 12 : 11, commonGameInfoBean));
                } else {
                    arrayList.add(new h5.h(7, commonGameInfoBean));
                }
            }
        } else {
            j0(true);
            if (searchGameListBean.getRecommend_list() != null && searchGameListBean.getRecommend_list().size() != 0) {
                m0(searchGameListBean.getRecommend_list());
                for (CommonGameInfoBean commonGameInfoBean2 : searchGameListBean.getRecommend_list()) {
                    commonGameInfoBean2.set_from(112);
                    commonGameInfoBean2.set_from_type(112);
                    int i5 = this.f49947h;
                    if (i5 == 0) {
                        commonGameInfoBean2.setReMarks("1");
                    } else if (i5 == 1) {
                        commonGameInfoBean2.setReMarks(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    }
                    if (commonGameInfoBean2.isMiniGame()) {
                        arrayList.add(new h5.h(com.join.mgps.Util.d2.i(commonGameInfoBean2.getV_url()) ? 12 : 11, commonGameInfoBean2));
                    } else {
                        arrayList.add(new h5.h(7, commonGameInfoBean2));
                    }
                }
            }
        }
        if (i2 == 1) {
            if (searchGameListBean.getList() != null && searchGameListBean.getList().size() < this.f49953n) {
                arrayList.add(new h5.h(13, 1));
            }
            h5 h5Var = new h5(this.f49955p, this.f49946g);
            this.f49945f = h5Var;
            XQuickRecyclerView xQuickRecyclerView = this.f49940a;
            if (xQuickRecyclerView != null) {
                xQuickRecyclerView.setAdapter(h5Var);
            }
            this.f49945f.setNewData(arrayList);
            S();
            return;
        }
        this.f49945f.addData((Collection) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        View view = this.f49959t;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f49960u;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        XQuickRecyclerView xQuickRecyclerView = this.f49940a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(0);
        }
    }

    @Override // com.join.mgps.adapter.h5.e
    public void i(String str) {
        com.papa.sim.statistic.p.l(this.f49955p).D(this.f49947h == 0 ? "searchTotalList" : "searchGameList", str, AccountUtil_.getInstance_(this.f49955p).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0(List<CommonGameInfoBean> list, boolean z3) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (list.size() != 0) {
            m0(list);
            for (CommonGameInfoBean commonGameInfoBean : list) {
                commonGameInfoBean.set_from(103);
                commonGameInfoBean.set_from_type(112);
                int i2 = this.f49947h;
                if (i2 == 0) {
                    commonGameInfoBean.setReMarks("1");
                } else if (i2 == 1) {
                    commonGameInfoBean.setReMarks(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                }
                if (commonGameInfoBean.isMiniGame()) {
                    arrayList.add(new h5.h(com.join.mgps.Util.d2.i(commonGameInfoBean.getV_url()) ? 12 : 11, commonGameInfoBean));
                } else {
                    arrayList.add(new h5.h(7, commonGameInfoBean));
                }
            }
            m0(list);
        }
        if (z3) {
            h5 h5Var = new h5(this.f49955p, this.f49946g);
            this.f49945f = h5Var;
            XQuickRecyclerView xQuickRecyclerView = this.f49940a;
            if (xQuickRecyclerView != null) {
                xQuickRecyclerView.setAdapter(h5Var);
            }
            this.f49945f.setNewData(arrayList);
            S();
            return;
        }
        this.f49945f.addData((Collection) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j0(boolean z3) {
        if (z3) {
            View view = this.f49941b;
            if (view != null) {
                view.setVisibility(0);
            }
            ImageView imageView = this.f49942c;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.img_bg_game);
            }
            TextView textView = this.f49943d;
            if (textView != null) {
                textView.setText("未搜索到相应游戏\n已为您推荐其它游戏");
                return;
            }
            return;
        }
        View view2 = this.f49941b;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k0() {
        XQuickRecyclerView xQuickRecyclerView = this.f49940a;
        if (xQuickRecyclerView == null) {
            return;
        }
        if (this.f49954o == -1) {
            xQuickRecyclerView.setNoMore();
        } else {
            xQuickRecyclerView.z1();
        }
    }

    @Override // com.join.mgps.adapter.h5.e
    public void l(Context context, String str, String str2, String str3, String str4) {
        String str5 = !TextUtils.isEmpty(this.f49948i) ? "fromSearchP2" : "fromSearchP3";
        if (this.f49947h == 0) {
            str5 = "fromSearchP4";
        }
        M(context, str, str2, str3, str4);
        com.papa.sim.statistic.p.l(context).g0(str5, str, str2);
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
        com.join.android.app.component.video.d dVar = this.f49946g;
        if (dVar != null) {
            dVar.l();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            p0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    p0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    p0(a4, 3);
                    return;
                } else if (c4 != 8) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
                            p0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            p0(a4, 8);
                            return;
                        case 13:
                            p0(a4, 9);
                            return;
                        default:
                            switch (c4) {
                                case 48:
                                    break;
                                case 49:
                                case 50:
                                    n0(lVar.b(), lVar.c());
                                    return;
                                default:
                                    return;
                            }
                    }
                } else {
                    Map<String, DownloadTask> map = this.A;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    o0();
                    return;
                }
            }
            p0(a4, 5);
        } else {
            p0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.d dVar = this.f49946g;
        if (dVar != null) {
            dVar.m();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.d dVar = this.f49946g;
        if (dVar != null) {
            dVar.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void onVisible() {
        super.onVisible();
        if (this.f49956q && V(this.f49949j)) {
            J();
        }
    }

    void p0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    d0(downloadTask);
                    return;
                case 3:
                    b0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    e0(downloadTask);
                    return;
                case 6:
                    c0(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49955p);
    }

    @Override // com.join.mgps.fragment.d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        com.join.android.app.component.video.d dVar;
        super.setUserVisibleHint(z3);
        if (!z3 || (dVar = this.f49946g) == null) {
            return;
        }
        dVar.r();
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadingView() {
        h5 h5Var = this.f49945f;
        if (h5Var != null && h5Var.getItemCount() > 0) {
            XQuickRecyclerView xQuickRecyclerView = this.f49940a;
            if (xQuickRecyclerView != null && xQuickRecyclerView.getVisibility() == 8) {
                this.f49940a.setVisibility(0);
            }
            View view = this.f49959t;
            if (view != null && view.getVisibility() == 0) {
                this.f49959t.setVisibility(8);
            }
        } else {
            XQuickRecyclerView xQuickRecyclerView2 = this.f49940a;
            if (xQuickRecyclerView2 != null) {
                xQuickRecyclerView2.setVisibility(8);
            }
            View view2 = this.f49959t;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        View view3 = this.f49960u;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadFailed(String str) {
        XQuickRecyclerView xQuickRecyclerView = this.f49940a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(8);
        }
        View view = this.f49959t;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f49960u;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
