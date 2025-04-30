package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.JpInfoBean;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.fragment.k0;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import i1.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: FindMiniGameFragment.java */
@EFragment(R.layout.fragment_find_mini_game)
/* loaded from: classes.dex */
public class k0 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XQuickRecyclerView f49133a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f49134b;

    /* renamed from: c  reason: collision with root package name */
    d f49135c;

    /* renamed from: d  reason: collision with root package name */
    Context f49136d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f49137e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    PtrClassicFrameLayout f49138f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49139g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.j f49140h;

    /* renamed from: j  reason: collision with root package name */
    com.join.android.app.component.video.d f49142j;

    /* renamed from: i  reason: collision with root package name */
    int f49141i = 1;

    /* renamed from: k  reason: collision with root package name */
    private boolean f49143k = true;

    /* renamed from: l  reason: collision with root package name */
    List<DownloadTask> f49144l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    Map<String, DownloadTask> f49145m = new ConcurrentHashMap();

    /* renamed from: n  reason: collision with root package name */
    boolean f49146n = false;

    /* compiled from: FindMiniGameFragment.java */
    /* loaded from: classes4.dex */
    class a implements XQuickRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.f
        public void onLoadMore() {
            k0 k0Var = k0.this;
            int i2 = k0Var.f49141i + 1;
            k0Var.f49141i = i2;
            k0Var.R(i2);
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.f
        public void onRefresh() {
            k0.this.f49133a.u1();
            k0.this.f49143k = false;
            k0 k0Var = k0.this;
            k0Var.f49141i = 1;
            k0Var.R(1);
        }
    }

    /* compiled from: FindMiniGameFragment.java */
    /* loaded from: classes4.dex */
    class b extends i1.a {
        b() {
        }

        @Override // i1.a
        public a.b getItemOffsets(int i2) {
            a.C0442a c0442a = new a.C0442a();
            c0442a.f65702f = 0;
            c0442a.f65703a = (int) k0.this.getResources().getDimension(R.dimen.wdp10);
            c0442a.f65704b = (int) k0.this.getResources().getDimension(R.dimen.wdp10);
            if (i2 != 0 && i2 != 1) {
                c0442a.f65705c = (int) k0.this.getResources().getDimension(R.dimen.wdp10);
            } else {
                c0442a.f65705c = (int) k0.this.getResources().getDimension(R.dimen.wdp20);
            }
            c0442a.f65706d = (int) k0.this.getResources().getDimension(R.dimen.wdp10);
            return c0442a;
        }
    }

    /* compiled from: FindMiniGameFragment.java */
    /* loaded from: classes4.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            if (i2 == 0) {
                com.join.android.app.component.video.d dVar = k0.this.f49142j;
                if (dVar != null) {
                    dVar.a(2);
                }
                k0.this.a0();
            }
        }
    }

    /* compiled from: FindMiniGameFragment.java */
    /* loaded from: classes4.dex */
    public class d extends com.join.mgps.base.a<CommonGameInfoBean, com.join.mgps.base.b> {

        /* renamed from: e  reason: collision with root package name */
        public static final int f49150e = 1;

        /* renamed from: f  reason: collision with root package name */
        public static final int f49151f = 2;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FindMiniGameFragment.java */
        /* loaded from: classes4.dex */
        public class a extends l1.m {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CommonGameInfoBean f49153a;

            a(CommonGameInfoBean commonGameInfoBean) {
                this.f49153a = commonGameInfoBean;
            }

            @Override // l1.m, c2.h
            public void b0(String str, Object... objArr) {
                super.b0(str, objArr);
                this.f49153a.set_from_type(150);
                IntentUtil.getInstance().intentActivity(k0.this.f49136d, this.f49153a.getIntentDataBean());
            }

            @Override // l1.m, l1.n
            public void d0() {
                super.d0();
                this.f49153a.set_from_type(150);
                IntentUtil.getInstance().intentActivity(k0.this.f49136d, this.f49153a.getIntentDataBean());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FindMiniGameFragment.java */
        /* loaded from: classes4.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            CommonGameInfoBean f49155a;

            public b(CommonGameInfoBean commonGameInfoBean) {
                this.f49155a = commonGameInfoBean;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Unit b(Context context, View view) {
                if (!com.join.android.app.common.utils.f.j(context)) {
                    com.join.mgps.Util.i2.a(context).b("网络连接异常");
                    return null;
                }
                View findViewById = view.findViewById(R.id.pb_loading);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                if (textView != null) {
                    textView.setText("");
                }
                UtilsMy.V1(context, this.f49155a);
                return null;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                final Context context = view.getContext();
                DownloadTask downloadTask = this.f49155a.getDownloadTask();
                GInfoBean g_info = this.f49155a.getG_info();
                if (g_info != null) {
                    if (downloadTask == null) {
                        d.this.i(this.f49155a);
                        if (this.f49155a.isMiniGame() && this.f49155a.is64Bit() && (APKUtils.b(context, this.f49155a) || APKUtils.f(context, new Function0() { // from class: com.join.mgps.fragment.m0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                Unit b4;
                                b4 = k0.d.b.this.b(context, view);
                                return b4;
                            }
                        }))) {
                            return;
                        }
                        if (!com.join.android.app.common.utils.f.j(context)) {
                            com.join.mgps.Util.i2.a(context).b("网络连接异常");
                            return;
                        }
                        View findViewById = view.findViewById(R.id.pb_loading);
                        if (findViewById != null) {
                            findViewById.setVisibility(0);
                        }
                        TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                        if (textView != null) {
                            textView.setText("");
                        }
                        UtilsMy.V1(context, this.f49155a);
                        return;
                    }
                    String plugin_num = g_info.getPlugin_num();
                    if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                        IntentDateBean intentDateBean = new IntentDateBean();
                        ExtBean extBean = new ExtBean();
                        extBean.setReMarks(this.f49155a.getReMarks());
                        intentDateBean.setExtBean(extBean);
                        intentDateBean.setLink_type(4);
                        intentDateBean.setLink_type_val(downloadTask.getDown_url_remote());
                        UtilsMy.h2(downloadTask, context);
                        IntentUtil.getInstance().intentActivity(context, intentDateBean);
                        return;
                    }
                    int status = downloadTask != null ? downloadTask.getStatus() : 0;
                    if (UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId()) > 0) {
                        status = 43;
                    }
                    if (status != 0) {
                        if (status != 13) {
                            if (status != 2) {
                                if (status != 3) {
                                    if (status == 5) {
                                        UtilsMy.c3(context, downloadTask);
                                        return;
                                    } else if (status != 6) {
                                        if (status != 7) {
                                            if (status == 42) {
                                                d.this.i(this.f49155a);
                                                UtilsMy.x3(context, this.f49155a);
                                                return;
                                            } else if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        if (!com.join.android.app.common.utils.f.j(context)) {
                                                            com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                            return;
                                                        }
                                                        d.this.i(this.f49155a);
                                                        UtilsMy.X1(context, downloadTask.getCrc_link_type_val(), this.f49155a);
                                                        return;
                                                    case 10:
                                                        break;
                                                    case 11:
                                                        UtilsMy.j3(downloadTask, context);
                                                        return;
                                                    default:
                                                        return;
                                                }
                                            }
                                        }
                                    }
                                }
                                d.this.i(this.f49155a);
                                if (downloadTask.isMiniGame() && downloadTask.isSingleGame()) {
                                    APKUtils.R(context, downloadTask);
                                }
                                com.php25.PDownload.d.c(downloadTask, context);
                                return;
                            }
                            if (downloadTask.isMiniGame() && downloadTask.isSingleGame()) {
                                APKUtils.R(context, downloadTask);
                                return;
                            } else {
                                com.php25.PDownload.d.h(downloadTask);
                                return;
                            }
                        }
                        com.php25.PDownload.d.k(context, downloadTask);
                        return;
                    }
                    d.this.i(this.f49155a);
                    UtilsMy.V1(context, this.f49155a);
                }
            }
        }

        public d() {
            super(null);
            a(1, R.layout.item_find_mini_game);
            a(2, R.layout.item_find_mini_game_video);
        }

        private void j(com.join.mgps.base.b bVar, final CommonGameInfoBean commonGameInfoBean) {
            MultiStandVideo multiStandVideo;
            DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
            JpInfoBean jp_info = commonGameInfoBean.getJp_info();
            if (jp_info != null) {
                if (jp_info.isGame()) {
                    GInfoBean g_info = commonGameInfoBean.getG_info();
                    if (g_info != null) {
                        bVar.K(R.id.mgListviewItemAppname, g_info.getName());
                        ((TextView) bVar.k(R.id.mgListviewItemAppname)).setTypeface(Typeface.DEFAULT, 0);
                        if (com.join.mgps.Util.d2.h(commonGameInfoBean.getV_url())) {
                            if (com.join.mgps.Util.d2.i(commonGameInfoBean.getBig_pic())) {
                                MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), commonGameInfoBean.getBig_pic());
                            } else {
                                List<String> pic_info = g_info.getPic_info();
                                if (com.join.mgps.Util.d2.h("") && pic_info != null && pic_info.size() > 0) {
                                    MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), pic_info.get(0));
                                }
                            }
                        }
                        bVar.u(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
                        if (g_info.getScore().doubleValue() > 0.0d && g_info.showScore()) {
                            bVar.K(R.id.tv_score, String.valueOf(g_info.getScore()));
                            bVar.u(R.id.tv_score, true);
                        } else {
                            bVar.u(R.id.tv_score, false);
                        }
                        bVar.K(R.id.tv_label, UtilsMy.o1(g_info.getSp_tag_info(), g_info.getTag_info()));
                        UtilsMy.v2(g_info.getSp_tag_info(), bVar.k(R.id.relateLayoutApp), downloadTask);
                    }
                } else {
                    bVar.K(R.id.appName, commonGameInfoBean.getTitle());
                    MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), commonGameInfoBean.getBig_pic());
                }
                if (com.join.mgps.Util.d2.i(commonGameInfoBean.getV_url()) && (multiStandVideo = (MultiStandVideo) bVar.k(R.id.wf_video)) != null) {
                    multiStandVideo.i(commonGameInfoBean.getBig_pic());
                    multiStandVideo.setPlayTag(k0.this.f49142j.k());
                    multiStandVideo.setPlayPosition(commonGameInfoBean.hashCode());
                    multiStandVideo.setUpLazy(commonGameInfoBean.getV_url(), false, null, null, "");
                    multiStandVideo.setRotateViewAuto(false);
                    multiStandVideo.setLockLand(true);
                    multiStandVideo.setReleaseWhenLossAudio(false);
                    multiStandVideo.setShowFullAnimation(false);
                    multiStandVideo.setIsTouchWiget(false);
                    multiStandVideo.setNeedLockFull(false);
                    multiStandVideo.setVideoAllCallBack(new a(commonGameInfoBean));
                }
                if (com.join.mgps.Util.d2.i(commonGameInfoBean.getBg_color())) {
                    try {
                        if (commonGameInfoBean.getBg_color().startsWith("#")) {
                            bVar.q(R.id.ll_bottom_container, Color.parseColor(commonGameInfoBean.getBg_color()));
                        } else {
                            bVar.q(R.id.ll_bottom_container, Color.parseColor("#" + commonGameInfoBean.getBg_color()));
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    bVar.q(R.id.ll_bottom_container, Color.parseColor("#994558"));
                }
                bVar.k(R.id.rLayoutRight).setOnClickListener(new b(commonGameInfoBean));
                bVar.k(R.id.relateLayoutApp).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.l0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        k0.d.this.l(commonGameInfoBean, view);
                    }
                });
            }
            if (commonGameInfoBean.getRequestStatus() == 47) {
                bVar.u(R.id.pb_loading, true);
                bVar.K(R.id.mgListviewItemInstall, "");
                return;
            }
            bVar.u(R.id.pb_loading, false);
            bVar.K(R.id.mgListviewItemInstall, "打开");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(CommonGameInfoBean commonGameInfoBean, View view) {
            commonGameInfoBean.set_from_type(150);
            IntentUtil.getInstance().intentActivity(k0.this.f49136d, commonGameInfoBean.getIntentDataBean());
        }

        @Override // com.join.mgps.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return (getItem(i2) == 0 || !com.join.mgps.Util.d2.i(((CommonGameInfoBean) getItem(i2)).getV_url())) ? 1 : 2;
        }

        void i(CommonGameInfoBean commonGameInfoBean) {
            ExtBean extBean;
            commonGameInfoBean.set_from(150);
            commonGameInfoBean.set_from_type(150);
            if (com.join.mgps.Util.d2.h(commonGameInfoBean.getExt())) {
                extBean = new ExtBean();
            } else {
                extBean = (ExtBean) JsonMapper.getInstance().fromJson(commonGameInfoBean.getExt(), ExtBean.class);
            }
            extBean.setFrom("150");
            commonGameInfoBean.setExt(JsonMapper.toJsonString(extBean));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* renamed from: k */
        public void convert(@NonNull com.join.mgps.base.b bVar, CommonGameInfoBean commonGameInfoBean) {
            if (commonGameInfoBean == null) {
                return;
            }
            j(bVar, commonGameInfoBean);
        }
    }

    private void U(DownloadTask downloadTask) {
        GInfoBean g_info;
        Iterator<DownloadTask> it2 = this.f49144l.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f49145m.remove(next.getCrc_link_type_val());
                it2.remove();
                for (T t3 : this.f49135c.getData()) {
                    if (t3.isGame() && (g_info = t3.getG_info()) != null) {
                        if (t3.isModGameVm()) {
                            DownloadTask downloadTask2 = this.f49145m.get(g_info.getMod_id());
                            DownloadTask downloadTask3 = this.f49145m.get(g_info.getId());
                            if (downloadTask2 == null && downloadTask3 == null) {
                                t3.setDownloadTask(null);
                            } else if (downloadTask2 != null) {
                                t3.setDownloadTask(downloadTask2);
                            } else if (downloadTask3 != null) {
                                t3.setDownloadTask(downloadTask3);
                            } else if (g_info.getId().equals(downloadTask.getCrc_link_type_val())) {
                                t3.setDownloadTask(null);
                            }
                        } else if (g_info.getId().equals(downloadTask.getCrc_link_type_val())) {
                            t3.setDownloadTask(null);
                        }
                    }
                }
            }
        }
        d dVar = this.f49135c;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }

    private void V(DownloadTask downloadTask) {
        T(downloadTask);
    }

    private void W(DownloadTask downloadTask) {
        if (!this.f49145m.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49144l.add(downloadTask);
            this.f49145m.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        f0(downloadTask);
    }

    private void X(DownloadTask downloadTask) {
        if (!this.f49145m.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49144l.add(downloadTask);
            this.f49145m.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        T(downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        d dVar;
        if (this.f49133a == null || (dVar = this.f49135c) == null || dVar.getItemCount() <= 0) {
            return;
        }
        int lastCompletelyVisiblePosition = this.f49133a.getLastCompletelyVisiblePosition();
        for (int firstCompletelyVisiblePosition = this.f49133a.getFirstCompletelyVisiblePosition(); firstCompletelyVisiblePosition <= lastCompletelyVisiblePosition; firstCompletelyVisiblePosition++) {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.f49135c.getItem(firstCompletelyVisiblePosition);
            if (commonGameInfoBean != null && commonGameInfoBean.getG_info() != null && commonGameInfoBean.isMiniGame() && !commonGameInfoBean.isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("");
                ext.setFrom("104");
                ext.setGameId(commonGameInfoBean.getG_info().getId());
                commonGameInfoBean.setHasExposure(true);
                com.papa.sim.statistic.p.l(this.f49136d).h0(Event.expSmallGameAdPage, ext, commonGameInfoBean.getG_info().getId());
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
    private void e0(java.util.List<com.join.mgps.dto.CommonGameInfoBean> r11) {
        /*
            r10 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r10.f49144l
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
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r2 = r10.f49144l
            java.util.Iterator r2 = r2.iterator()
        L21:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L9
            java.lang.Object r3 = r2.next()
            com.github.snowdream.android.app.downloader.DownloadTask r3 = (com.github.snowdream.android.app.downloader.DownloadTask) r3
            boolean r4 = r0.isModGameVm()
            if (r4 == 0) goto Ld0
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r10.f49145m
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r8 = r10.f49145m
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r10.f49145m
            java.lang.String r5 = r1.getMod_id()
            java.lang.Object r4 = r4.get(r5)
            com.github.snowdream.android.app.downloader.DownloadTask r4 = (com.github.snowdream.android.app.downloader.DownloadTask) r4
            if (r4 != 0) goto Lbb
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r10.f49145m
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.k0.e0(java.util.List):void");
    }

    private void f0(DownloadTask downloadTask) {
        for (int i2 = 0; i2 < this.f49135c.getItemCount(); i2++) {
            try {
                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.f49135c.getItem(i2);
                GInfoBean g_info = commonGameInfoBean.getG_info();
                if (g_info != null) {
                    if (commonGameInfoBean.isModGameVm()) {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(g_info.getId());
                        boolean z3 = true;
                        boolean z4 = f4 != null && f4.getStatus() == 5;
                        DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(g_info.getMod_id());
                        if (f5 == null || f5.getStatus() != 5) {
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

    private void g0(String str, int i2) {
        if (com.join.mgps.Util.d2.h(str)) {
            return;
        }
        for (int i4 = 0; i4 < this.f49135c.getItemCount(); i4++) {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.f49135c.getItem(i4);
            GInfoBean g_info = commonGameInfoBean.getG_info();
            if (g_info != null && (str.equals(g_info.getId()) || str.equals(g_info.getMod_id()))) {
                commonGameInfoBean.setRequestStatus(i2);
                this.f49135c.notifyItemChanged(i4);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        this.f49136d = getActivity();
        com.join.mgps.Util.c0.a().d(this);
        this.f49140h = com.join.mgps.rpc.impl.h.L();
        this.f49135c = new d();
        this.f49133a.setLayoutManager(new GridLayoutManager(this.f49136d, 2));
        this.f49133a.setAdapter(this.f49135c);
        this.f49133a.setPreLoadCount(10);
        this.f49133a.setPtrFrameLayout(this.f49138f);
        this.f49142j = new com.join.android.app.component.video.d(this.f49133a, "FindMiniGameFragmentVideoHelper");
        this.f49133a.setLoadingListener(new a());
        RecyclerView.ItemAnimator itemAnimator = this.f49133a.getItemAnimator();
        if (itemAnimator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        }
        this.f49133a.addItemDecoration(new b());
        this.f49133a.addOnScrollListener(new c());
        Z();
        R(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N() {
        LinearLayout linearLayout = this.f49134b;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        S();
        XQuickRecyclerView xQuickRecyclerView = this.f49133a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void Q() {
        com.join.android.app.component.video.d dVar = this.f49142j;
        if (dVar != null) {
            dVar.a(2);
        }
        a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R(int i2) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f49136d)) {
                if (i2 == 1 && this.f49143k) {
                    showLoding();
                }
                RequestModel requestModel = new RequestModel(this.f49136d);
                RequestMiniGameArgs requestMiniGameArgs = new RequestMiniGameArgs();
                requestMiniGameArgs.setPage(i2);
                requestMiniGameArgs.setPageSize(20);
                requestModel.setArgs(requestMiniGameArgs);
                ResponseModel<List<CommonGameInfoBean>> r3 = this.f49140h.r(requestModel.makeSign());
                if (r3 != null && r3.getData() != null && r3.getData().size() > 0) {
                    S();
                    d0();
                    c0(r3.getData());
                    return;
                } else if (i2 == 1) {
                    N();
                    return;
                } else {
                    b0();
                    return;
                }
            }
            showLodingFailed();
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        LinearLayout linearLayout = this.f49137e;
        if (linearLayout == null || this.f49139g == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49139g.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(DownloadTask downloadTask) {
        d dVar;
        if (downloadTask == null || (dVar = this.f49135c) == null || dVar.getItemCount() <= 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 < this.f49135c.getItemCount()) {
                GInfoBean g_info = ((CommonGameInfoBean) this.f49135c.getItem(i2)).getG_info();
                if (g_info != null && com.join.mgps.Util.d2.i(g_info.getId()) && g_info.getId().equals(downloadTask.getCrc_link_type_val())) {
                    ((CommonGameInfoBean) this.f49135c.getItem(i2)).setDownloadTask(downloadTask);
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        this.f49135c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f49144l = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f49144l) {
            if (downloadTask.getCrc_link_type_val() != null) {
                this.f49145m.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        XQuickRecyclerView xQuickRecyclerView = this.f49133a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(List<CommonGameInfoBean> list) {
        if (list != null) {
            S();
        }
        d dVar = this.f49135c;
        if (dVar != null) {
            if (this.f49141i == 1) {
                dVar.setNewData(list);
                Q();
            } else {
                dVar.addData((Collection) list);
            }
            e0(list);
        }
        XQuickRecyclerView xQuickRecyclerView = this.f49133a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.r1();
        }
        if (this.f49146n) {
            b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        XQuickRecyclerView xQuickRecyclerView = this.f49133a;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f49134b;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
    }

    void h0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    W(downloadTask);
                    return;
                case 3:
                    U(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    X(downloadTask);
                    return;
                case 6:
                    V(downloadTask);
                    return;
            }
        }
    }

    public void i0() {
        com.join.android.app.component.video.d dVar = this.f49142j;
        if (dVar != null) {
            dVar.o();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
        com.join.android.app.component.video.d dVar = this.f49142j;
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
            h0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    h0(a4, 6);
                    return;
                } else if (c4 != 7) {
                    switch (c4) {
                        case 10:
                            h0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            h0(a4, 8);
                            return;
                        case 13:
                            h0(a4, 9);
                            return;
                        default:
                            switch (c4) {
                                case 48:
                                    break;
                                case 49:
                                case 50:
                                    g0(lVar.b(), lVar.c());
                                    return;
                                default:
                                    return;
                            }
                    }
                } else {
                    h0(a4, 3);
                    return;
                }
            }
            h0(a4, 5);
        } else {
            h0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.d dVar = this.f49142j;
        if (dVar != null) {
            dVar.m();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        i0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        R(this.f49141i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49136d);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (z3) {
            i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f49137e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f49139g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f49139g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49137e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }
}
