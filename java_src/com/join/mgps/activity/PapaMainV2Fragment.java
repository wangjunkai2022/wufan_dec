package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.presenter.HomeViewModle;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.adapter.h4;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.XListView3;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PAPAItemTitle2;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
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
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
@EFragment(R.layout.mgpapa_mainfragment_new_layout_v2)
/* loaded from: classes.dex */
public class PapaMainV2Fragment extends o0.a implements View.OnClickListener, AbsListView.OnScrollListener {

    /* renamed from: d1  reason: collision with root package name */
    private static final String f34687d1 = "MGPapaMainFragmentNewV2";
    private LinearLayout A;
    private ArrayList<String> A0;
    private h4 B;
    private int B0;
    private List<MgpapaMainItemBean> C;
    private boolean C0;
    private int D;
    private int D0;
    private int E;
    private boolean E0;
    private long F;
    @ViewById
    PtrClassicFrameLayout I;
    @ViewById
    View J;
    com.join.mgps.customview.t J0;
    private int M0;
    private int N0;
    private RecomDatabean O0;
    private RecomDatabean P0;
    private long Z0;

    /* renamed from: a1  reason: collision with root package name */
    private int f34688a1;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView3 f34690c;

    /* renamed from: c1  reason: collision with root package name */
    private String f34691c1;
    @StringRes(resName = "net_excption")

    /* renamed from: d  reason: collision with root package name */
    String f34692d;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: e  reason: collision with root package name */
    String f34693e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.d f34694f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34695g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f34696h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f34697i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f34698j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    View f34699k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    SimpleDraweeView f34700l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f34701m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f34702n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    FrameLayout f34704o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ViewFlipper f34706p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    ImageView f34708q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    AppBarLayout f34710r;

    /* renamed from: r0  reason: collision with root package name */
    com.join.android.app.component.video.c f34711r0;

    /* renamed from: s  reason: collision with root package name */
    ViewFlipper f34712s;

    /* renamed from: s0  reason: collision with root package name */
    MGMainActivity f34713s0;

    /* renamed from: t  reason: collision with root package name */
    private Context f34714t;

    /* renamed from: t0  reason: collision with root package name */
    HomeViewModle f34715t0;

    /* renamed from: u  reason: collision with root package name */
    private List<DownloadTask> f34716u;

    /* renamed from: u0  reason: collision with root package name */
    private String f34717u0;

    /* renamed from: v  reason: collision with root package name */
    private boolean f34718v;

    /* renamed from: w0  reason: collision with root package name */
    private Handler f34721w0;
    @Pref

    /* renamed from: y  reason: collision with root package name */
    PrefDef_ f34724y;

    /* renamed from: z  reason: collision with root package name */
    private LinearLayout f34726z;

    /* renamed from: z0  reason: collision with root package name */
    private String f34727z0;

    /* renamed from: w  reason: collision with root package name */
    List<RecomDatabeanBusiness> f34720w = null;

    /* renamed from: x  reason: collision with root package name */
    private Map<String, DownloadTask> f34722x = new ConcurrentHashMap();
    private boolean G = false;
    com.join.mgps.pref.f H = null;
    private boolean K = false;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f34703n0 = false;

    /* renamed from: o0  reason: collision with root package name */
    private String f34705o0 = "m1";

    /* renamed from: p0  reason: collision with root package name */
    private int f34707p0 = 1;

    /* renamed from: q0  reason: collision with root package name */
    private int f34709q0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    private List<PAPAHomeBeanV7.HomeBeanDTO> f34719v0 = null;

    /* renamed from: x0  reason: collision with root package name */
    private boolean f34723x0 = true;

    /* renamed from: y0  reason: collision with root package name */
    private List<Integer> f34725y0 = new ArrayList();
    int F0 = 0;
    boolean G0 = true;
    Handler H0 = new e();
    private String I0 = "28";
    private int K0 = 0;
    private int L0 = 0;
    private String Q0 = "";
    long R0 = 0;
    long S0 = 0;
    Handler T0 = new Handler();
    Runnable U0 = new Runnable() { // from class: com.join.mgps.activity.i2
        @Override // java.lang.Runnable
        public final void run() {
            PapaMainV2Fragment.this.L0();
        }
    };
    boolean V0 = true;
    private boolean W0 = true;
    private SparseArray X0 = new SparseArray(0);
    GestureDetector Y0 = new GestureDetector(new a());

    /* renamed from: b1  reason: collision with root package name */
    Runnable f34689b1 = new b();

    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            Fresco.getImagePipeline().I();
            return super.onFling(motionEvent, motionEvent2, f4, f5);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV2Fragment papaMainV2Fragment = PapaMainV2Fragment.this;
            papaMainV2Fragment.V0 = false;
            if (papaMainV2Fragment.C0) {
                if (PapaMainV2Fragment.this.f34724y.isFirstCommendVersion().d().booleanValue() && PapaMainV2Fragment.this.f34724y.isFirst35().d().booleanValue()) {
                    return;
                }
                PapaMainV2Fragment papaMainV2Fragment2 = PapaMainV2Fragment.this;
                XListView3 xListView3 = papaMainV2Fragment2.f34690c;
                if (xListView3 != null) {
                    papaMainV2Fragment2.D = xListView3.getLastCompletelyVisiblePosition() - 1;
                }
                for (int i2 = 0; i2 < PapaMainV2Fragment.this.C.size(); i2++) {
                    if (i2 <= PapaMainV2Fragment.this.D) {
                        MgpapaMainItemBean mgpapaMainItemBean = (MgpapaMainItemBean) PapaMainV2Fragment.this.C.get(i2);
                        if (!mgpapaMainItemBean.isHasExposure()) {
                            switch (mgpapaMainItemBean.getShowtype()) {
                                case 29:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    if (homeBeanDTO != null) {
                                        if (TextUtils.equals(homeBeanDTO.getPosition(), "22-11-1")) {
                                            PapaMainV2Fragment.this.l1("20201", homeBeanDTO.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO));
                                            break;
                                        } else if (TextUtils.equals(homeBeanDTO.getPosition(), "22-12-1")) {
                                            PapaMainV2Fragment.this.l1("20202", homeBeanDTO.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO));
                                            break;
                                        }
                                    }
                                    break;
                                case 30:
                                    List list = (List) mgpapaMainItemBean.getObject();
                                    if (list != null && list.size() > 0) {
                                        for (int i4 = 0; i4 < list.size() && i4 < 4; i4++) {
                                            PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = (PAPAHomeBeanV7.NgSelectionDTO) list.get(i4);
                                            if (ngSelectionDTO != null) {
                                                PapaMainV2Fragment.this.l1("204", ngSelectionDTO.getPosition(), ngSelectionDTO.getId());
                                                ngSelectionDTO.setHasExposure(true);
                                                list.set(i4, ngSelectionDTO);
                                            }
                                        }
                                        mgpapaMainItemBean.setObject(list);
                                        PapaMainV2Fragment.this.C.set(i2, mgpapaMainItemBean);
                                        break;
                                    }
                                    break;
                                case 32:
                                    PAPAHomeBeanV7.RankingListDTO rankingListDTO = (PAPAHomeBeanV7.RankingListDTO) mgpapaMainItemBean.getObject();
                                    if (rankingListDTO != null && rankingListDTO.getList() != null && rankingListDTO.getList().size() > 0) {
                                        PapaMainV2Fragment.this.p0(0, rankingListDTO.getList(), "20501");
                                        break;
                                    }
                                    break;
                                case 34:
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list2 = (List) mgpapaMainItemBean.getObject();
                                    if (list2 != null && list2.size() > 0) {
                                        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 : list2) {
                                            if (homeBeanDTO2 != null) {
                                                PapaMainV2Fragment.this.l1("206", homeBeanDTO2.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO2));
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case 35:
                                    List list3 = (List) mgpapaMainItemBean.getObject();
                                    if (list3 != null && list3.size() > 0) {
                                        for (int i5 = 0; i5 < list3.size() && i5 < 4; i5++) {
                                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) list3.get(i5);
                                            if (homeBeanDTO3 != null) {
                                                PapaMainV2Fragment.this.l1("206", homeBeanDTO3.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO3));
                                                homeBeanDTO3.setHasExposure(true);
                                                list3.set(i5, homeBeanDTO3);
                                            }
                                        }
                                        mgpapaMainItemBean.setObject(list3);
                                        PapaMainV2Fragment.this.C.set(i2, mgpapaMainItemBean);
                                        break;
                                    }
                                    break;
                                case 36:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO4 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    PapaMainV2Fragment.this.l1("206", homeBeanDTO4.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO4));
                                    break;
                                case 37:
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list4 = (List) mgpapaMainItemBean.getObject();
                                    if (list4 != null && list4.size() > 0) {
                                        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO5 : list4) {
                                            if (homeBeanDTO5 != null) {
                                                PapaMainV2Fragment.this.l1("201", homeBeanDTO5.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO5));
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case 38:
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list5 = (List) mgpapaMainItemBean.getObject();
                                    if (list5 != null && list5.size() > 0) {
                                        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO6 : list5) {
                                            if (homeBeanDTO6 != null) {
                                                PapaMainV2Fragment.this.l1("203", homeBeanDTO6.getPosition(), PapaMainV2Fragment.this.y0(homeBeanDTO6));
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case 39:
                                    PapaMainV2Fragment.V(PapaMainV2Fragment.this);
                                    PapaMainV2Fragment papaMainV2Fragment3 = PapaMainV2Fragment.this;
                                    papaMainV2Fragment3.k1(papaMainV2Fragment3.f34688a1);
                                    break;
                            }
                            mgpapaMainItemBean.setHasExposure(true);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VipPopData f34732a;

        c(VipPopData vipPopData) {
            this.f34732a = vipPopData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f34732a.getIntentDataBean();
            if (intentDataBean.getLink_type() == 777) {
                IntentUtil.getInstance().goShareWebActivity(PapaMainV2Fragment.this.f34714t, "http://www.baidu.com");
            } else if (intentDataBean.getLink_type() == 888) {
                IntentUtil.getInstance().goShareWebActivity(PapaMainV2Fragment.this.f34714t, "http://www.baidu.com");
            } else if (intentDataBean.getLink_type() == 999) {
                IntentUtil.getInstance().goVip(PapaMainV2Fragment.this.f34714t);
            } else if (intentDataBean.getLink_type() == 0) {
            } else {
                IntentUtil.getInstance().intentActivity(PapaMainV2Fragment.this.f34714t, intentDataBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f34734a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ VipPopData f34735b;

        d(View view, VipPopData vipPopData) {
            this.f34734a = view;
            this.f34735b = vipPopData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV2Fragment.this.f34712s.removeView(this.f34734a);
            PapaMainV2Fragment papaMainV2Fragment = PapaMainV2Fragment.this;
            int i2 = papaMainV2Fragment.F0 - 1;
            papaMainV2Fragment.F0 = i2;
            if (i2 == 1) {
                papaMainV2Fragment.f34712s.stopFlipping();
            } else if (i2 == 0) {
                papaMainV2Fragment.f34712s.setVisibility(8);
            }
            PapaMainV2Fragment.this.E0(this.f34735b.getId(), this.f34735b.getType());
        }
    }

    /* loaded from: classes3.dex */
    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                PapaMainV2Fragment papaMainV2Fragment = PapaMainV2Fragment.this;
                com.join.android.app.component.video.c cVar = papaMainV2Fragment.f34711r0;
                if (cVar != null) {
                    cVar.C(papaMainV2Fragment.G0);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements l1.a {
        f() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements o1.e {
        g() {
        }

        @Override // o1.e
        public void a(String str, int i2) {
            if (i2 == 1 || IntentUtil.getInstance().goLoginNetGame(PapaMainV2Fragment.this.f34714t)) {
                return;
            }
            PapaMainV2Fragment.this.t0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements com.join.mgps.customview.j {
        h() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (PapaMainV2Fragment.this.G) {
                return;
            }
            PapaMainV2Fragment.this.f34705o0 = "m1";
            PapaMainV2Fragment.this.f34707p0 = 1;
            PapaMainV2Fragment.this.f34709q0 = 0;
            PapaMainV2Fragment.this.f34723x0 = true;
            PapaMainV2Fragment papaMainV2Fragment = PapaMainV2Fragment.this;
            papaMainV2Fragment.O0(papaMainV2Fragment.f34705o0, PapaMainV2Fragment.this.f34707p0);
            PapaMainV2Fragment.this.B0();
            PapaMainV2Fragment.this.v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements com.join.mgps.customview.i {
        i() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            StringBuilder sb = new StringBuilder();
            sb.append("onLoadMore: ");
            sb.append(PapaMainV2Fragment.this.f34707p0);
            sb.append("  ");
            sb.append(PapaMainV2Fragment.this.f34723x0);
            if (PapaMainV2Fragment.this.f34723x0) {
                PapaMainV2Fragment papaMainV2Fragment = PapaMainV2Fragment.this;
                papaMainV2Fragment.O0(papaMainV2Fragment.f34705o0, PapaMainV2Fragment.this.f34707p0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements h4.l1 {
        j() {
        }

        @Override // com.join.mgps.adapter.h4.l1
        public void a(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            PapaMainV2Fragment.this.u0(homeBeanDTO.getG_info().getId(), homeBeanDTO);
        }

        @Override // com.join.mgps.adapter.h4.l1
        public void b(int i2, List<List<PAPAHomeBeanV7.HomeBeanDTO>> list) {
            PapaMainV2Fragment.this.p0(i2, list, i2 != 0 ? i2 != 1 ? i2 != 2 ? "" : "20503" : "20502" : "20501");
        }

        @Override // com.join.mgps.adapter.h4.l1
        public void c(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnTouchListener {
        k() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PapaMainV2Fragment.this.Y0.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class l {

        /* renamed from: a  reason: collision with root package name */
        int f34744a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f34745b = 0;

        l() {
        }
    }

    /* loaded from: classes3.dex */
    class m {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f34747a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f34748b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f34749c;

        m() {
        }
    }

    private int A0() {
        int i2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = this.E;
            if (i4 >= i2) {
                break;
            }
            l lVar = (l) this.X0.get(i4);
            if (lVar != null) {
                i5 += lVar.f34744a;
            }
            i4++;
        }
        l lVar2 = (l) this.X0.get(i2);
        if (lVar2 == null) {
            lVar2 = new l();
        }
        return i5 - lVar2.f34745b;
    }

    private void F0() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 11) {
            this.f34698j.setVisibility(8);
        }
        this.E0 = com.join.android.app.common.utils.f.j(this.f34714t);
        HomeViewModle homeViewModle = (HomeViewModle) new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(MApplication.f9223q)).get(HomeViewModle.class);
        this.f34715t0 = homeViewModle;
        homeViewModle.initStat(this.f34714t);
        this.f34715t0.getLists().clear();
        if (i2 >= 21) {
            int v3 = com.join.android.app.common.utils.j.v(getContext());
            if (v3 > this.f34714t.getResources().getDimension(R.dimen.wdp62)) {
                this.f34704o.setPadding(0, v3, 0, 0);
            }
        }
        this.f34720w = new ArrayList();
        this.f34719v0 = new ArrayList();
        this.C = new ArrayList();
        this.B = new h4(this.f34714t, this, this.C, this.f34711r0, new g());
        View inflate = LayoutInflater.from(this.f34714t).inflate(R.layout.mg_papa_title_include_v2, (ViewGroup) null, false);
        this.f34690c.setPullRefreshEnable(new h());
        this.f34690c.setPreLoadCount(10);
        this.f34690c.setPullLoadEnable(new i());
        this.f34690c.addHeaderView(inflate);
        this.B.b0(new j());
        this.f34690c.setAdapter((ListAdapter) this.B);
        this.f34690c.setOnScrollListener(this);
        this.f34690c.setOnTouchListener(new k());
        this.I.j(true);
        this.f34712s = (ViewFlipper) inflate.findViewById(R.id.topLineView);
        this.f34710r.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.join.mgps.activity.h2
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i4) {
                PapaMainV2Fragment.this.J0(appBarLayout, i4);
            }
        });
    }

    private void F1(DownloadTask downloadTask) {
        try {
            List<RecomDatabeanBusiness> list = this.f34720w;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i2 = 0; i2 < this.f34720w.size(); i2++) {
                AppBean game_info = this.f34720w.get(i2).getSub().get(0).getGame_info();
                if (game_info != null) {
                    if (game_info.getMod_info() != null) {
                        ModInfoBean mod_info = game_info.getMod_info();
                        DownloadTask downloadTask2 = this.f34722x.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f34722x.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z3 = false;
                        }
                        if (z3 && z4) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.f34720w.get(i2).d(downloadTask);
                            }
                        } else if (z3) {
                            if (game_info.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(game_info.getMod_info().getMod_game_id())) {
                                this.f34720w.get(i2).d(downloadTask);
                            }
                        } else if (z4) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.f34720w.get(i2).d(downloadTask);
                            }
                        } else {
                            DownloadTask downloadTask4 = game_info.getMod_info() != null ? this.f34722x.get(game_info.getMod_info().getMod_game_id()) : null;
                            if (downloadTask4 == null) {
                                downloadTask4 = this.f34722x.get(game_info.getCrc_sign_id());
                            }
                            if (downloadTask4 != null && downloadTask.getCrc_link_type_val().equals(downloadTask4.getCrc_link_type_val())) {
                                this.f34720w.get(i2).d(downloadTask);
                            }
                        }
                    } else if (game_info.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        this.f34720w.get(i2).d(downloadTask);
                        this.f34722x.put(downloadTask.getCrc_link_type_val(), downloadTask);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void G0(PAPAHomeBeanV7.SScrollingTxtDTO sScrollingTxtDTO) {
        if (sScrollingTxtDTO == null) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>(sScrollingTxtDTO.getText());
        this.A0 = arrayList;
        if (arrayList.size() <= 0) {
            this.A0 = new ArrayList<>();
        }
        this.f34706p.stopFlipping();
        this.f34706p.removeAllViews();
        Iterator<String> it2 = this.A0.iterator();
        while (it2.hasNext()) {
            TextView textView = (TextView) LayoutInflater.from(this.f34714t).inflate(R.layout.item_search_hint_viewflipper, (ViewGroup) null);
            textView.setText(it2.next());
            this.f34706p.addView(textView);
        }
        int interval = sScrollingTxtDTO.getInterval();
        this.B0 = interval;
        if (interval < 1) {
            this.B0 = 1;
        }
        this.f34706p.setFlipInterval(this.B0 * 1000);
        this.f34706p.startFlipping();
    }

    private void I1(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) {
                View childAt = this.f34690c.getChildAt(i2 - this.E);
                if (childAt.getTag() instanceof h4.h2) {
                    h4.h2 h2Var = (h4.h2) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = h2Var.f41877h;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = h2Var.f41877h;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            h2Var.f41881l.setProgress((int) f4.getProgress());
                        } else {
                            h2Var.f41880k.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = h2Var.f41878i;
                            textView3.setText(f4.getSpeed() + "/S");
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J0(AppBarLayout appBarLayout, int i2) {
        this.I.setEnabled(i2 >= 0);
    }

    private void J1() {
        RecyclerView recyclerView;
        com.join.mgps.adapter.m2 m2Var;
        if (this.E < 0 || this.D >= this.f34690c.getCount()) {
            return;
        }
        for (int i2 = this.E; i2 <= this.D; i2++) {
            MgpapaMainItemBean mgpapaMainItemBean = (MgpapaMainItemBean) this.f34690c.getItemAtPosition(i2);
            if (mgpapaMainItemBean != null) {
                int showtype = mgpapaMainItemBean.getShowtype();
                if (showtype != 28) {
                    if (showtype != 29) {
                        switch (showtype) {
                            case 35:
                                try {
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list = (List) mgpapaMainItemBean.getObject();
                                    View childAt = this.f34690c.getChildAt(i2 - this.E);
                                    if (childAt.getTag() instanceof h4.i2) {
                                        h4.i2 i2Var = (h4.i2) childAt.getTag();
                                        if (list != null && (recyclerView = i2Var.f41893a) != null && (m2Var = (com.join.mgps.adapter.m2) recyclerView.getAdapter()) != null && m2Var.getData() != null) {
                                            for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list) {
                                                if (homeBeanDTO != null && homeBeanDTO.getDownloadTask() != null) {
                                                    DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(homeBeanDTO.getDownloadTask().getCrc_link_type_val());
                                                    if (f4 != null) {
                                                        homeBeanDTO.setDownloadTask(f4);
                                                    }
                                                }
                                            }
                                            m2Var.setNewData(list);
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                    break;
                                }
                                break;
                        }
                    }
                    try {
                        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                        View childAt2 = this.f34690c.getChildAt(i2 - this.E);
                        if (childAt2.getTag() instanceof h4.p1) {
                            h4.p1 p1Var = (h4.p1) childAt2.getTag();
                            if (homeBeanDTO2 != null && homeBeanDTO2.getDownloadTask() != null) {
                                DownloadTask downloadTask = homeBeanDTO2.getDownloadTask();
                                DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                                if (f5 != null) {
                                    long parseDouble = (long) (Double.parseDouble(f5.getShowSize()) * 1024.0d * 1024.0d);
                                    if (downloadTask.getSize() == 0) {
                                        TextView textView = p1Var.f41993e;
                                        textView.setText(UtilsMy.f(f5.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble));
                                    } else {
                                        TextView textView2 = p1Var.f41993e;
                                        textView2.setText(UtilsMy.f(f5.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble));
                                    }
                                    if (downloadTask.getStatus() == 12) {
                                        p1Var.f41995g.setProgress((int) f5.getProgress());
                                    } else {
                                        p1Var.f41996h.setProgress((int) f5.getProgress());
                                    }
                                    if (downloadTask.getStatus() == 2) {
                                        TextView textView3 = p1Var.f41994f;
                                        textView3.setText(f5.getSpeed() + "/S");
                                    }
                                }
                            }
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                try {
                    List list2 = (List) mgpapaMainItemBean.getObject();
                    View childAt3 = this.f34690c.getChildAt(i2 - this.E);
                    if (childAt3.getTag() instanceof h4.s1) {
                        h4.s1 s1Var = (h4.s1) childAt3.getTag();
                        if (list2 != null && list2.size() > 1) {
                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(0);
                            if (homeBeanDTO3 != null && homeBeanDTO3.getDownloadTask() != null) {
                                DownloadTask downloadTask2 = homeBeanDTO3.getDownloadTask();
                                DownloadTask f6 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                                if (f6 != null) {
                                    long parseDouble2 = (long) (Double.parseDouble(f6.getShowSize()) * 1024.0d * 1024.0d);
                                    if (downloadTask2.getSize() == 0) {
                                        TextView textView4 = s1Var.f42055e;
                                        textView4.setText(UtilsMy.f(f6.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble2));
                                    } else {
                                        TextView textView5 = s1Var.f42055e;
                                        textView5.setText(UtilsMy.f(f6.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble2));
                                    }
                                    if (downloadTask2.getStatus() == 12) {
                                        s1Var.f42057g.setProgress((int) f6.getProgress());
                                    } else {
                                        s1Var.f42058h.setProgress((int) f6.getProgress());
                                    }
                                    if (downloadTask2.getStatus() == 2) {
                                        TextView textView6 = s1Var.f42056f;
                                        textView6.setText(f6.getSpeed() + "/S");
                                    }
                                }
                            }
                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO4 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(1);
                            if (homeBeanDTO4 != null && homeBeanDTO4.getDownloadTask() != null) {
                                DownloadTask downloadTask3 = homeBeanDTO4.getDownloadTask();
                                DownloadTask f7 = com.join.android.app.common.servcie.a.e().f(downloadTask3.getCrc_link_type_val());
                                if (f7 != null) {
                                    long parseDouble3 = (long) (Double.parseDouble(f7.getShowSize()) * 1024.0d * 1024.0d);
                                    if (downloadTask3.getSize() == 0) {
                                        TextView textView7 = s1Var.f42067q;
                                        textView7.setText(UtilsMy.f(f7.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble3));
                                    } else {
                                        TextView textView8 = s1Var.f42067q;
                                        textView8.setText(UtilsMy.f(f7.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble3));
                                    }
                                    if (downloadTask3.getStatus() == 12) {
                                        s1Var.f42069s.setProgress((int) f7.getProgress());
                                    } else {
                                        s1Var.f42070t.setProgress((int) f7.getProgress());
                                    }
                                    if (downloadTask3.getStatus() == 2) {
                                        TextView textView9 = s1Var.f42068r;
                                        textView9.setText(f7.getSpeed() + "/S");
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K0() {
        this.I.f();
    }

    private PAPAHomeBeanV7.HomeBeanDTO M1(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, int i2, int i4) {
        List<PAPAHomeBeanV7.HomeBeanDTO> N1 = N1(new ArrayList<PAPAHomeBeanV7.HomeBeanDTO>(homeBeanDTO) { // from class: com.join.mgps.activity.PapaMainV2Fragment.10

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f34728a;

            {
                this.f34728a = homeBeanDTO;
                add(homeBeanDTO);
            }
        }, i2, i4);
        return (N1 == null || N1.size() <= 0) ? homeBeanDTO : N1.get(0);
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> N1(List<PAPAHomeBeanV7.HomeBeanDTO> list, int i2, int i4) {
        if (list != null && list.size() > 0) {
            List<DownloadTask> d4 = g1.f.G().d();
            for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list) {
                Iterator<DownloadTask> it2 = d4.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        DownloadTask next = it2.next();
                        if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                            homeBeanDTO.setDownloadTask(next);
                            break;
                        } else if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                            homeBeanDTO.setDownloadTask(next);
                        }
                    }
                }
                homeBeanDTO.set_from(i2);
                homeBeanDTO.set_from_type(i4);
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> O1(List<PAPAHomeBeanV7.HomeBeanDTO> list, String str) {
        if (list != null && list.size() > 0) {
            int i2 = 0;
            while (i2 < list.size()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                i2++;
                sb.append(i2);
                list.get(i2).setPosition(sb.toString());
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> P1(List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        if (list != null && list.size() > 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.get(i2).setPosition("22-18-" + (this.D0 + 1));
                this.D0 = this.D0 + 1;
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.NgSelectionDTO> Q1(List<PAPAHomeBeanV7.NgSelectionDTO> list, int i2) {
        if (list != null && list.size() > 0) {
            int i4 = 0;
            while (i4 < list.size()) {
                StringBuilder sb = new StringBuilder();
                sb.append("22-14-");
                int i5 = i4 + 1;
                sb.append(i5);
                list.get(i4).setPosition(sb.toString());
                list.get(i4).set_from(i2);
                list.get(i4).set_from_type(i2);
                i4 = i5;
            }
        }
        return list;
    }

    static /* synthetic */ int V(PapaMainV2Fragment papaMainV2Fragment) {
        int i2 = papaMainV2Fragment.f34688a1;
        papaMainV2Fragment.f34688a1 = i2 + 1;
        return i2;
    }

    private RecomDatabeanBusiness Z0(RecomDatabean recomDatabean) {
        if (recomDatabean != null) {
            return new RecomDatabeanBusiness(recomDatabean);
        }
        return null;
    }

    private List<RecomDatabeanBusiness> a1(List<RecomDatabean> list, List<RecomDatabeanBusiness> list2) {
        if (list2 == null) {
            list2 = new ArrayList<>();
        } else {
            list2.clear();
        }
        if (list != null) {
            for (RecomDatabean recomDatabean : list) {
                list2.add(new RecomDatabeanBusiness(recomDatabean));
            }
        }
        return list2;
    }

    private void b1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34719v0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(null);
            }
        }
        V0();
    }

    private void c1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34719v0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        V0();
    }

    private void d1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34719v0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        V0();
    }

    private void e1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34719v0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1(int i2) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setReMarks(String.valueOf(i2));
        StringBuilder sb = new StringBuilder();
        sb.append("sendExposurePoint: ");
        sb.append(i2);
        com.papa.sim.statistic.p.l(this.f34714t).h0(Event.pullDownModelExp, ext, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l1(String str, String str2, String str3) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setFrom(str);
        ext.setGameId(str3);
        ext.setPosition(str2);
        com.papa.sim.statistic.p.l(this.f34714t).h0(Event.expGameAdPage, ext, str3);
    }

    private void m1(boolean z3) {
        Ext ext = new Ext();
        ext.setPage(ExtFrom.home.name());
        ext.setPosition(z3 ? this.f34691c1 : null);
        com.papa.sim.statistic.p.l(this.f34714t).i1(Event.appPageVisit, ext);
        this.f34691c1 = null;
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.setCanLoadMore();
            this.f34723x0 = true;
        }
    }

    private void n1(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("22-");
        sb.append(str);
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f34714t);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f34714t).getUid());
    }

    private void o0() {
        if (this.f34721w0 == null) {
            this.f34721w0 = new Handler();
        }
        this.f34721w0.post(this.f34689b1);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o1(java.lang.String r12, java.lang.String r13, com.psk.eventmodule.StatFactory.VolcanoOther r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PapaMainV2Fragment.o1(java.lang.String, java.lang.String, com.psk.eventmodule.StatFactory$VolcanoOther, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(int i2, List<List<PAPAHomeBeanV7.HomeBeanDTO>> list, String str) {
        List<Integer> list2 = this.f34725y0;
        if (list2 == null || list2.contains(Integer.valueOf(i2)) || list == null || i2 > list.size() - 1) {
            return;
        }
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list.get(i2)) {
            l1(str, homeBeanDTO.getPosition(), y0(homeBeanDTO));
        }
        this.f34725y0.add(Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p1 */
    public void L0() {
        MgpapaMainItemBean mgpapaMainItemBean;
        int showtype;
        List<AppBeanMain> sub;
        XListView3 xListView3;
        if (this.E == 0 && this.D == 1 && (xListView3 = this.f34690c) != null) {
            this.D = xListView3.getLastVisiblePosition();
            this.E = this.f34690c.getFirstVisiblePosition();
        }
        int i2 = this.E;
        if (i2 == 0 && this.D == 0) {
            return;
        }
        if (i2 == 0 && this.D == 1) {
            return;
        }
        this.V0 = false;
        for (int i4 = 0; i4 < this.C.size(); i4++) {
            if (i4 <= this.D && i4 >= this.E && (((showtype = (mgpapaMainItemBean = this.C.get(i4)).getShowtype()) == 3 || showtype == 13) && (sub = mgpapaMainItemBean.getRecomDatabeanLeft().getSub()) != null && sub.size() > 0)) {
                AppBean game_info = sub.get(0).getGame_info();
                o1(mgpapaMainItemBean.getMoreType2(), game_info.getGame_id(), game_info.getPosition_path(), UtilsMy.F1(game_info.getTag_info()));
            }
        }
    }

    private void r1(List<RecomDatabean> list, int i2, int i4) {
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

    private void t1(MgpapaMainItemBean mgpapaMainItemBean) {
        List<AppBeanMain> sub;
        String str;
        int showtype = mgpapaMainItemBean.getShowtype();
        if ((showtype == 3 || showtype == 13) && (sub = mgpapaMainItemBean.getRecomDatabeanLeft().getSub()) != null && sub.size() > 0) {
            AppBean game_info = sub.get(0).getGame_info();
            String[] split = mgpapaMainItemBean.getMoreType2().split("-");
            str = "0";
            String str2 = "模块";
            if (split.length <= 0) {
                str2 = "";
            } else if (split[0].equals("4")) {
                str = split.length > 1 ? split[1] : "0";
                str2 = "大家都在玩";
            } else if (split[0].equals("7")) {
                str = split.length > 1 ? split[1] : "0";
                str2 = "网游推荐";
            } else if (split[0].equals("5")) {
                str = split.length > 1 ? split[1] : "0";
                str2 = "最新网游";
            } else {
                str = split.length > 2 ? split[2] : "0";
                if (split.length > 3) {
                    str2 = "模块" + split[1];
                    str = split[3];
                }
            }
            game_info.setRecPosition("home-" + str2 + "-" + str);
        }
    }

    private void u1(List<RecomDatabean> list, List<RecomDatabean> list2, String str) {
        List<RecomDatabeanBusiness> a12 = a1(list, null);
        this.f34720w.addAll(a12);
        if (a12 == null || a12.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < a12.size(); i2++) {
            MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
            if (i2 != 0) {
                mgpapaMainItemBean.setMoreType2(str + (i2 + 1) + "-");
                mgpapaMainItemBean.setShowtype(3);
            } else if (list2 != null) {
                RecomDatabean recomDatabean = list2.get(0);
                mgpapaMainItemBean.setShowtype(13);
                a12.get(i2).getMain().setPic_remote(recomDatabean.getMain().getPic_remote());
                a12.get(i2).getMain().setVedio_url(recomDatabean.getMain().getVedio_url());
                mgpapaMainItemBean.setMoreType2(str + "x");
            }
            mgpapaMainItemBean.setMoreType(i2);
            mgpapaMainItemBean.setRecomDatabeanLeft(a12.get(i2));
            t1(mgpapaMainItemBean);
            this.C.add(mgpapaMainItemBean);
        }
    }

    private void x0() {
        Bundle bundle = new Bundle();
        bundle.putInt("localType", 1);
        com.join.mgps.pref.f fVar = this.H;
        if (fVar != null) {
            fVar.callOnlineCoupon(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String y0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        if (homeBeanDTO == null || homeBeanDTO.getG_info() == null) {
            return null;
        }
        if (!TextUtils.isEmpty(homeBeanDTO.getG_info().getId()) && !TextUtils.equals(homeBeanDTO.getG_info().getId(), "0")) {
            return homeBeanDTO.getG_info().getId();
        }
        return homeBeanDTO.getG_info().getMod_id();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A1(List<VipPopData> list) {
        this.f34712s.setInAnimation(AnimationUtils.loadAnimation(this.f34714t, R.anim.slide_in_topline));
        this.f34712s.setOutAnimation(AnimationUtils.loadAnimation(this.f34714t, R.anim.slide_out_topline));
        this.f34712s.setFlipInterval(5000);
        if (list != null && list.size() > 0) {
            this.F0 = list.size();
            this.f34712s.setVisibility(0);
            LayoutInflater from = LayoutInflater.from(this.f34714t);
            this.f34712s.removeAllViews();
            for (int i2 = 0; i2 < list.size(); i2++) {
                VipPopData vipPopData = list.get(i2);
                View inflate = from.inflate(R.layout.vip_pop_layout_item, (ViewGroup) null);
                TextView textView = (TextView) com.join.mgps.Util.o2.a(inflate, R.id.message);
                MyImageLoader.d((SimpleDraweeView) com.join.mgps.Util.o2.a(inflate, R.id.image), R.drawable.laba, vipPopData.getPic_remote());
                textView.setOnClickListener(new c(vipPopData));
                ((TextView) com.join.mgps.Util.o2.a(inflate, R.id.closeNotice)).setOnClickListener(new d(inflate, vipPopData));
                textView.setText(Html.fromHtml("<u>" + vipPopData.getTitle() + "</u>"));
                IntentDateBean intentDataBean = vipPopData.getIntentDataBean();
                if (intentDataBean.getLink_type() != 777 && intentDataBean.getLink_type() != 888 && intentDataBean.getLink_type() != 999 && intentDataBean.getLink_type() == 0) {
                    textView.setText(vipPopData.getTitle());
                }
                this.f34712s.addView(inflate);
            }
        }
        this.f34712s.startFlipping();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void B0() {
        if (com.join.android.app.common.utils.f.j(this.f34714t)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f34714t).getAccountData();
                if (accountData == null) {
                    return;
                }
                ResultMainBean<List<VipPopData>> R0 = this.f34694f.R0(RequestBeanUtil.getInstance(this.f34714t).vipMessage(accountData.getUid()));
                if (R0 != null && R0.getFlag() == 1) {
                    List<VipPopData> data = R0.getMessages().getData();
                    if (data != null && data.size() > 0) {
                        A1(data);
                    } else {
                        L1();
                    }
                } else {
                    L1();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                L1();
                return;
            }
        }
        L1();
    }

    public void B1() {
        com.join.android.app.component.video.c cVar = this.f34711r0;
        if (cVar != null) {
            cVar.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.papa.maintab.clicked"})
    public void C0(Intent intent) {
        if (this.W0) {
            this.f34690c.setSelection(this.f34709q0 + 1);
        } else {
            this.f34690c.setSelection(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void C1() {
        IntentUtil.getInstance().goSearchHintActivity(this.f34714t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void D0() {
        TextView textView = this.f34695g;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007b, code lost:
        if (r1.getSub() == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008f, code lost:
        if (r1.getSub().get(0).getCrc_link_type_val().equals(r8) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0091, code lost:
        r1 = r1.getSub().get(0).getGame_info();
        r1.setIs_bespeak(1);
        r1.setBespeak_count((java.lang.Integer.parseInt(r1.getBespeak_count()) + 1) + "");
        U0();
        w1();
     */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void D1(java.lang.String r8) {
        /*
            r7 = this;
            java.util.List<com.join.mgps.dto.MgpapaMainItemBean> r0 = r7.C
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lc5
            java.lang.Object r1 = r0.next()
            com.join.mgps.dto.MgpapaMainItemBean r1 = (com.join.mgps.dto.MgpapaMainItemBean) r1
            int r2 = r1.getShowtype()
            r3 = 11
            if (r2 != r3) goto L6
            com.join.mgps.business.RecomDatabeanBusiness r2 = r1.getRecomDatabeanLeft()
            com.join.mgps.business.RecomDatabeanBusiness r1 = r1.getRecomDatabeanRight()
            java.lang.String r3 = ""
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L75
            java.util.List r6 = r2.getSub()
            if (r6 == 0) goto L75
            java.util.List r6 = r2.getSub()
            java.lang.Object r6 = r6.get(r5)
            com.join.mgps.dto.AppBeanMain r6 = (com.join.mgps.dto.AppBeanMain) r6
            java.lang.String r6 = r6.getCrc_link_type_val()
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L75
            java.util.List r1 = r2.getSub()
            java.lang.Object r1 = r1.get(r5)
            com.join.mgps.dto.AppBeanMain r1 = (com.join.mgps.dto.AppBeanMain) r1
            com.join.mgps.dto.AppBean r1 = r1.getGame_info()
            r1.setIs_bespeak(r4)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = r1.getBespeak_count()
            int r5 = java.lang.Integer.parseInt(r5)
            int r5 = r5 + r4
            r2.append(r5)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.setBespeak_count(r2)
            r7.U0()
            r7.w1()
            goto L6
        L75:
            if (r1 == 0) goto L6
            java.util.List r2 = r1.getSub()
            if (r2 == 0) goto L6
            java.util.List r2 = r1.getSub()
            java.lang.Object r2 = r2.get(r5)
            com.join.mgps.dto.AppBeanMain r2 = (com.join.mgps.dto.AppBeanMain) r2
            java.lang.String r2 = r2.getCrc_link_type_val()
            boolean r2 = r2.equals(r8)
            if (r2 == 0) goto L6
            java.util.List r1 = r1.getSub()
            java.lang.Object r1 = r1.get(r5)
            com.join.mgps.dto.AppBeanMain r1 = (com.join.mgps.dto.AppBeanMain) r1
            com.join.mgps.dto.AppBean r1 = r1.getGame_info()
            r1.setIs_bespeak(r4)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = r1.getBespeak_count()
            int r5 = java.lang.Integer.parseInt(r5)
            int r5 = r5 + r4
            r2.append(r5)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.setBespeak_count(r2)
            r7.U0()
            r7.w1()
            goto L6
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PapaMainV2Fragment.D1(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E0(int i2, String str) {
        try {
            this.f34694f.e0(RequestBeanUtil.getInstance(this.f34714t).getIgnoreMessageRequest(AccountUtil_.getInstance_(this.f34714t).getAccountData().getUid(), i2, str));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E1(PAPAHomeBeanV7 pAPAHomeBeanV7, String str, int i2, boolean z3) {
        try {
            MGMainActivity mGMainActivity = (MGMainActivity) getActivity();
            if (mGMainActivity != null) {
                mGMainActivity.setHomeTabImage(true);
            }
            G0(pAPAHomeBeanV7.getS_scrolling_txt());
            new MgpapaMainItemBean();
            if (i2 == 1) {
                this.C0 = z3;
                this.f34688a1 = 0;
                this.D0 = 0;
                this.f34715t0.getLists().clear();
                this.C.clear();
                MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
                mgpapaMainItemBean.setShowtype(26);
                if (this.f34727z0 != null) {
                    pAPAHomeBeanV7.getTop_channel().setBg_color(this.f34727z0);
                }
                mgpapaMainItemBean.setObject(pAPAHomeBeanV7.getTop_channel());
                this.C.add(mgpapaMainItemBean);
                MgpapaMainItemBean mgpapaMainItemBean2 = new MgpapaMainItemBean();
                mgpapaMainItemBean2.setShowtype(27);
                mgpapaMainItemBean2.setObject(pAPAHomeBeanV7.getFast_entry());
                this.C.add(mgpapaMainItemBean2);
                MgpapaMainItemBean mgpapaMainItemBean3 = new MgpapaMainItemBean();
                mgpapaMainItemBean3.setShowtype(33);
                mgpapaMainItemBean3.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp8)));
                this.C.add(mgpapaMainItemBean3);
                List<PAPAHomeBeanV7.HomeBeanDTO> eo_playing = pAPAHomeBeanV7.getEo_playing();
                if (eo_playing != null && eo_playing.size() > 0) {
                    List<PAPAHomeBeanV7.HomeBeanDTO> O1 = O1(eo_playing, "22-4-");
                    MgpapaMainItemBean mgpapaMainItemBean4 = new MgpapaMainItemBean();
                    mgpapaMainItemBean4.setShowtype(31);
                    mgpapaMainItemBean4.setObject(new PAPAItemTitle2("大家都在玩"));
                    this.C.add(mgpapaMainItemBean4);
                    MgpapaMainItemBean mgpapaMainItemBean5 = new MgpapaMainItemBean();
                    mgpapaMainItemBean5.setShowtype(33);
                    mgpapaMainItemBean5.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp12)));
                    this.C.add(mgpapaMainItemBean5);
                    int i4 = 0;
                    while (i4 < O1.size() / 2) {
                        int i5 = i4 * 2;
                        i4++;
                        List<PAPAHomeBeanV7.HomeBeanDTO> N1 = N1(O1.subList(i5, i4 * 2), 201, 201);
                        MgpapaMainItemBean mgpapaMainItemBean6 = new MgpapaMainItemBean();
                        mgpapaMainItemBean6.setShowtype(37);
                        mgpapaMainItemBean6.setObject(N1);
                        this.C.add(mgpapaMainItemBean6);
                        this.f34719v0.addAll(N1);
                    }
                    MgpapaMainItemBean mgpapaMainItemBean7 = new MgpapaMainItemBean();
                    mgpapaMainItemBean7.setShowtype(39);
                    this.C.add(mgpapaMainItemBean7);
                    MgpapaMainItemBean mgpapaMainItemBean8 = new MgpapaMainItemBean();
                    mgpapaMainItemBean8.setShowtype(33);
                    mgpapaMainItemBean8.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp26)));
                    this.C.add(mgpapaMainItemBean8);
                    if (!z3) {
                        return;
                    }
                }
                if (pAPAHomeBeanV7.getF_video_ad() != null) {
                    PAPAHomeBeanV7.HomeBeanDTO M1 = M1(pAPAHomeBeanV7.getF_video_ad(), IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS, IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS);
                    M1.setPosition("22-11-1");
                    MgpapaMainItemBean mgpapaMainItemBean9 = new MgpapaMainItemBean();
                    mgpapaMainItemBean9.setShowtype(29);
                    mgpapaMainItemBean9.setObject(M1);
                    this.C.add(mgpapaMainItemBean9);
                    this.f34719v0.add(M1);
                    MgpapaMainItemBean mgpapaMainItemBean10 = new MgpapaMainItemBean();
                    mgpapaMainItemBean10.setShowtype(39);
                    this.C.add(mgpapaMainItemBean10);
                    MgpapaMainItemBean mgpapaMainItemBean11 = new MgpapaMainItemBean();
                    mgpapaMainItemBean11.setShowtype(33);
                    mgpapaMainItemBean11.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp42)));
                    this.C.add(mgpapaMainItemBean11);
                }
                List<PAPAHomeBeanV7.HomeBeanDTO> jys_like = pAPAHomeBeanV7.getJys_like();
                if (jys_like != null && jys_like.size() > 0) {
                    List<PAPAHomeBeanV7.HomeBeanDTO> O12 = O1(jys_like, "22-13-");
                    MgpapaMainItemBean mgpapaMainItemBean12 = new MgpapaMainItemBean();
                    mgpapaMainItemBean12.setShowtype(31);
                    mgpapaMainItemBean12.setObject(new PAPAItemTitle2("像你一样的玩家都喜欢"));
                    this.C.add(mgpapaMainItemBean12);
                    MgpapaMainItemBean mgpapaMainItemBean13 = new MgpapaMainItemBean();
                    mgpapaMainItemBean13.setShowtype(33);
                    mgpapaMainItemBean13.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp12)));
                    this.C.add(mgpapaMainItemBean13);
                    int i6 = 0;
                    while (i6 < O12.size() / 2) {
                        int i7 = i6 * 2;
                        i6++;
                        List<PAPAHomeBeanV7.HomeBeanDTO> N12 = N1(O12.subList(i7, i6 * 2), 203, 203);
                        MgpapaMainItemBean mgpapaMainItemBean14 = new MgpapaMainItemBean();
                        mgpapaMainItemBean14.setShowtype(38);
                        mgpapaMainItemBean14.setObject(N12);
                        this.C.add(mgpapaMainItemBean14);
                        this.f34719v0.addAll(N12);
                    }
                    MgpapaMainItemBean mgpapaMainItemBean15 = new MgpapaMainItemBean();
                    mgpapaMainItemBean15.setShowtype(39);
                    this.C.add(mgpapaMainItemBean15);
                    MgpapaMainItemBean mgpapaMainItemBean16 = new MgpapaMainItemBean();
                    mgpapaMainItemBean16.setShowtype(33);
                    mgpapaMainItemBean16.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp26)));
                    this.C.add(mgpapaMainItemBean16);
                }
                List<PAPAHomeBeanV7.NgSelectionDTO> Q1 = Q1(pAPAHomeBeanV7.getNg_selection(), 204);
                if (Q1 != null && Q1.size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean17 = new MgpapaMainItemBean();
                    mgpapaMainItemBean17.setShowtype(31);
                    mgpapaMainItemBean17.setObject(new PAPAItemTitle2("新游精选"));
                    this.C.add(mgpapaMainItemBean17);
                    MgpapaMainItemBean mgpapaMainItemBean18 = new MgpapaMainItemBean();
                    mgpapaMainItemBean18.setShowtype(33);
                    mgpapaMainItemBean18.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp24)));
                    this.C.add(mgpapaMainItemBean18);
                    MgpapaMainItemBean mgpapaMainItemBean19 = new MgpapaMainItemBean();
                    mgpapaMainItemBean19.setShowtype(30);
                    mgpapaMainItemBean19.setObject(Q1);
                    this.C.add(mgpapaMainItemBean19);
                    MgpapaMainItemBean mgpapaMainItemBean20 = new MgpapaMainItemBean();
                    mgpapaMainItemBean20.setShowtype(39);
                    this.C.add(mgpapaMainItemBean20);
                    MgpapaMainItemBean mgpapaMainItemBean21 = new MgpapaMainItemBean();
                    mgpapaMainItemBean21.setShowtype(33);
                    mgpapaMainItemBean21.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp42)));
                    this.C.add(mgpapaMainItemBean21);
                }
                if (pAPAHomeBeanV7.getS_video_ad() != null) {
                    PAPAHomeBeanV7.HomeBeanDTO M12 = M1(pAPAHomeBeanV7.getS_video_ad(), IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS, IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS);
                    M12.setPosition("22-12-1");
                    MgpapaMainItemBean mgpapaMainItemBean22 = new MgpapaMainItemBean();
                    mgpapaMainItemBean22.setShowtype(29);
                    mgpapaMainItemBean22.setObject(M12);
                    this.C.add(mgpapaMainItemBean22);
                    this.f34719v0.add(M12);
                    MgpapaMainItemBean mgpapaMainItemBean23 = new MgpapaMainItemBean();
                    mgpapaMainItemBean23.setShowtype(39);
                    this.C.add(mgpapaMainItemBean23);
                    MgpapaMainItemBean mgpapaMainItemBean24 = new MgpapaMainItemBean();
                    mgpapaMainItemBean24.setShowtype(33);
                    mgpapaMainItemBean24.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp42)));
                    this.C.add(mgpapaMainItemBean24);
                }
                if (pAPAHomeBeanV7.getRanking_list() != null && !TextUtils.isEmpty(pAPAHomeBeanV7.getRanking_list().getTxt()) && pAPAHomeBeanV7.getRanking_list().getList() != null) {
                    List<List<PAPAHomeBeanV7.HomeBeanDTO>> list = pAPAHomeBeanV7.getRanking_list().getList();
                    for (int i8 = 0; i8 < list.size(); i8++) {
                        List<PAPAHomeBeanV7.HomeBeanDTO> list2 = list.get(i8);
                        if (i8 == 0) {
                            list.set(0, N1(O1(list2, "22-15-"), 20501, 20501));
                        } else if (i8 == 1) {
                            list.set(1, N1(O1(list2, "22-16-"), 20502, 20502));
                        } else if (i8 == 2) {
                            list.set(2, N1(O1(list2, "22-17-"), 20503, 20503));
                        }
                    }
                    pAPAHomeBeanV7.getRanking_list().setList(list);
                    MgpapaMainItemBean mgpapaMainItemBean25 = new MgpapaMainItemBean();
                    mgpapaMainItemBean25.setShowtype(32);
                    mgpapaMainItemBean25.setObject(pAPAHomeBeanV7.getRanking_list());
                    this.C.add(mgpapaMainItemBean25);
                    MgpapaMainItemBean mgpapaMainItemBean26 = new MgpapaMainItemBean();
                    mgpapaMainItemBean26.setShowtype(39);
                    this.C.add(mgpapaMainItemBean26);
                    MgpapaMainItemBean mgpapaMainItemBean27 = new MgpapaMainItemBean();
                    mgpapaMainItemBean27.setShowtype(33);
                    mgpapaMainItemBean27.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp32)));
                    this.C.add(mgpapaMainItemBean27);
                }
            }
            List<PAPAHomeBeanV7.RecommendListDTO> recommend_list = pAPAHomeBeanV7.getRecommend_list();
            if (recommend_list != null && recommend_list.size() > 0) {
                for (PAPAHomeBeanV7.RecommendListDTO recommendListDTO : recommend_list) {
                    if (recommendListDTO.getList() != null && recommendListDTO.getList().size() > 0 && (recommendListDTO.getTpl_type().intValue() != 0 || recommendListDTO.getList().size() >= 2)) {
                        MgpapaMainItemBean mgpapaMainItemBean28 = new MgpapaMainItemBean();
                        mgpapaMainItemBean28.setShowtype(31);
                        mgpapaMainItemBean28.setObject(new PAPAItemTitle2(recommendListDTO.getTitle(), recommendListDTO.getSub_title()));
                        this.C.add(mgpapaMainItemBean28);
                        List<PAPAHomeBeanV7.HomeBeanDTO> N13 = N1(recommendListDTO.getList(), 206, 206);
                        if (recommendListDTO.getTpl_type().intValue() == 0) {
                            MgpapaMainItemBean mgpapaMainItemBean29 = new MgpapaMainItemBean();
                            mgpapaMainItemBean29.setShowtype(33);
                            mgpapaMainItemBean29.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp12)));
                            this.C.add(mgpapaMainItemBean29);
                            List<PAPAHomeBeanV7.HomeBeanDTO> P1 = P1(N13.subList(0, 2));
                            MgpapaMainItemBean mgpapaMainItemBean30 = new MgpapaMainItemBean();
                            mgpapaMainItemBean30.setShowtype(34);
                            mgpapaMainItemBean30.setObject(P1);
                            this.C.add(mgpapaMainItemBean30);
                            this.f34719v0.addAll(P1);
                            MgpapaMainItemBean mgpapaMainItemBean31 = new MgpapaMainItemBean();
                            mgpapaMainItemBean31.setShowtype(39);
                            this.C.add(mgpapaMainItemBean31);
                            MgpapaMainItemBean mgpapaMainItemBean32 = new MgpapaMainItemBean();
                            mgpapaMainItemBean32.setShowtype(33);
                            mgpapaMainItemBean32.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp26)));
                            this.C.add(mgpapaMainItemBean32);
                        } else if (recommendListDTO.getTpl_type().intValue() == 1) {
                            MgpapaMainItemBean mgpapaMainItemBean33 = new MgpapaMainItemBean();
                            mgpapaMainItemBean33.setShowtype(33);
                            mgpapaMainItemBean33.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp24)));
                            this.C.add(mgpapaMainItemBean33);
                            List<PAPAHomeBeanV7.HomeBeanDTO> P12 = P1(N13);
                            MgpapaMainItemBean mgpapaMainItemBean34 = new MgpapaMainItemBean();
                            mgpapaMainItemBean34.setShowtype(35);
                            mgpapaMainItemBean34.setObject(P12);
                            this.C.add(mgpapaMainItemBean34);
                            this.f34719v0.addAll(P12);
                            MgpapaMainItemBean mgpapaMainItemBean35 = new MgpapaMainItemBean();
                            mgpapaMainItemBean35.setShowtype(39);
                            this.C.add(mgpapaMainItemBean35);
                            MgpapaMainItemBean mgpapaMainItemBean36 = new MgpapaMainItemBean();
                            mgpapaMainItemBean36.setShowtype(33);
                            mgpapaMainItemBean36.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp42)));
                            this.C.add(mgpapaMainItemBean36);
                        } else if (recommendListDTO.getTpl_type().intValue() == 2) {
                            MgpapaMainItemBean mgpapaMainItemBean37 = new MgpapaMainItemBean();
                            mgpapaMainItemBean37.setShowtype(33);
                            mgpapaMainItemBean37.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp24)));
                            this.C.add(mgpapaMainItemBean37);
                            List<PAPAHomeBeanV7.HomeBeanDTO> P13 = P1(N13);
                            MgpapaMainItemBean mgpapaMainItemBean38 = new MgpapaMainItemBean();
                            mgpapaMainItemBean38.setShowtype(36);
                            mgpapaMainItemBean38.setObject(P13.get(0));
                            this.C.add(mgpapaMainItemBean38);
                            this.f34719v0.add(P13.get(0));
                            MgpapaMainItemBean mgpapaMainItemBean39 = new MgpapaMainItemBean();
                            mgpapaMainItemBean39.setShowtype(39);
                            this.C.add(mgpapaMainItemBean39);
                            MgpapaMainItemBean mgpapaMainItemBean40 = new MgpapaMainItemBean();
                            mgpapaMainItemBean40.setShowtype(33);
                            mgpapaMainItemBean40.setObject(Float.valueOf(this.f34714t.getResources().getDimension(R.dimen.wdp42)));
                            this.C.add(mgpapaMainItemBean40);
                        }
                    }
                }
            }
            this.B.Z(this.C);
            if (i2 == 1) {
                onScrollStateChanged(null, 0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void G1(List<RecomDatabeanBusiness> list) {
        try {
            if (this.f34722x == null || list == null || list.size() <= 0) {
                return;
            }
            for (RecomDatabeanBusiness recomDatabeanBusiness : list) {
                List<AppBeanMain> sub = recomDatabeanBusiness.getSub();
                if (sub != null && sub.size() != 0) {
                    boolean z3 = false;
                    AppBean game_info = sub.get(0).getGame_info();
                    if (game_info != null) {
                        if (game_info.getMod_info() != null) {
                            ModInfoBean mod_info = game_info.getMod_info();
                            DownloadTask downloadTask = this.f34722x.get(mod_info.getMain_game_id());
                            boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                            DownloadTask downloadTask2 = this.f34722x.get(mod_info.getMod_game_id());
                            if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                                z3 = true;
                            }
                            if (z3 && z4) {
                                if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.d(downloadTask);
                                }
                            } else if (z3) {
                                if (game_info.getMod_info() != null && downloadTask2.getRef_crc_sign_id().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.d(downloadTask2);
                                }
                            } else if (z4) {
                                if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.d(downloadTask);
                                }
                            } else {
                                DownloadTask downloadTask3 = this.f34722x.get(mod_info.getMod_game_id());
                                if (downloadTask3 == null) {
                                    downloadTask3 = this.f34722x.get(game_info.getCrc_sign_id());
                                }
                                if (downloadTask3 != null && (downloadTask3.getCrc_link_type_val().equals(game_info.getCrc_sign_id()) || downloadTask3.getRef_crc_sign_id().equals(game_info.getCrc_sign_id()))) {
                                    recomDatabeanBusiness.d(downloadTask3);
                                }
                            }
                        } else {
                            DownloadTask downloadTask4 = this.f34722x.get(game_info.getCrc_sign_id());
                            if (downloadTask4 != null && downloadTask4.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                recomDatabeanBusiness.d(downloadTask4);
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        try {
            if (com.join.mgps.Util.d2.i(this.O0.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(this.f34714t, this.O0.getSub().get(0).getIntentDataBean());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H1() {
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.v();
            this.f34690c.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        TextView textView = (TextView) this.f34706p.getCurrentView();
        if (textView != null && !TextUtils.isEmpty(textView.getText().toString())) {
            SearchListActivity1_.s1(this.f34714t).d(textView.getText().toString()).c(false).a(0).start();
            com.papa.sim.statistic.p.l(this.f34714t).h1(Event.clickSearchButton, textView.getText().toString(), ExtFrom.home.name());
        } else {
            IntentUtil.getInstance().goSearchHintActivity(this.f34714t);
        }
        this.f34691c1 = null;
    }

    void K1(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    d1(downloadTask);
                    return;
                case 3:
                    b1(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    e1(downloadTask);
                    return;
                case 6:
                    c1(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L1() {
        this.f34712s.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        String d4 = this.f34724y.homeAllData().d();
        PAPAHomeBeanV7 pAPAHomeBeanV7 = com.join.mgps.Util.d2.i(d4) ? (PAPAHomeBeanV7) JsonMapper.getInstance().fromJson(d4, PAPAHomeBeanV7.class) : null;
        if (pAPAHomeBeanV7 != null) {
            E1(pAPAHomeBeanV7, "m1", 1, false);
            com.join.mgps.Util.t0.c("显示主界面   " + System.currentTimeMillis());
            z1();
            this.f34718v = false;
            if (pAPAHomeBeanV7.getTop_channel() != null) {
                this.f34717u0 = pAPAHomeBeanV7.getTop_channel().getBg_color();
            } else {
                this.f34717u0 = "";
            }
            h1();
        } else {
            com.join.mgps.Util.t0.c("数据库没有数据不显示主界面   " + System.currentTimeMillis());
            this.f34718v = true;
        }
        P0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 3000)
    public void N0() {
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0(String str, int i2) {
        com.join.mgps.Util.t0.c("开始加载数据   " + System.currentTimeMillis());
        if (com.join.android.app.common.utils.f.j(this.f34714t) && !this.G) {
            this.G = true;
            PAPAHomeBeanV7 pAPAHomeBeanV7 = null;
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this.f34714t).getAccountData();
                    RequestModel requestModel = new RequestModel();
                    requestModel.setDefault(this.f34714t);
                    LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
                    luckHistoryrequest.setPage(i2);
                    luckHistoryrequest.setUid(accountData.getUid());
                    requestModel.setArgs(luckHistoryrequest);
                    ResponseModel<PAPAHomeBeanV7> body = com.join.mgps.rpc.impl.h.L().J().C0(requestModel.makeSign()).execute().body();
                    com.join.mgps.Util.t0.c("开始加载数据完成   " + System.currentTimeMillis());
                    if (body != null && body.getCode() == 200) {
                        PAPAHomeBeanV7 data = body.getData();
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("lodeBannerDate: ");
                            sb.append(data.isEmpty());
                            sb.append("  ");
                            sb.append(this.f34707p0);
                            sb.append("  ");
                            sb.append(this.f34723x0);
                            if (data.isEmpty()) {
                                this.f34723x0 = false;
                                T0();
                            } else {
                                this.f34707p0 = i2 + 1;
                            }
                            if (i2 == 1) {
                                i1(data);
                                if (data.getTop_channel() != null) {
                                    this.f34717u0 = data.getTop_channel().getBg_color();
                                } else {
                                    this.f34717u0 = "";
                                }
                                h1();
                            }
                            z1();
                            pAPAHomeBeanV7 = data;
                        } catch (Exception e4) {
                            e = e4;
                            pAPAHomeBeanV7 = data;
                            e.printStackTrace();
                            this.f34723x0 = false;
                            T0();
                            if (this.f34718v && i2 == 1) {
                                showLodingFailed();
                            }
                            H1();
                            this.G = false;
                            if (pAPAHomeBeanV7 == null) {
                                return;
                            }
                            E1(pAPAHomeBeanV7, str, i2, true);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            pAPAHomeBeanV7 = data;
                            H1();
                            this.G = false;
                            if (pAPAHomeBeanV7 != null) {
                                E1(pAPAHomeBeanV7, str, i2, true);
                            }
                            throw th;
                        }
                    } else {
                        this.f34723x0 = false;
                        T0();
                        if (this.f34718v && i2 == 1) {
                            showLodingFailed();
                        } else {
                            z1();
                        }
                    }
                    H1();
                    this.G = false;
                    if (pAPAHomeBeanV7 == null) {
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e5) {
                e = e5;
            }
            E1(pAPAHomeBeanV7, str, i2, true);
            return;
        }
        if (this.f34718v && i2 == 1 && !this.G) {
            showLodingFailed();
        }
        H1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void P() {
        if (!this.G) {
            this.f34705o0 = "m1";
            this.f34707p0 = 1;
            this.f34723x0 = true;
            this.f34690c.l();
            O0(this.f34705o0, this.f34707p0);
            B0();
        }
        this.f34715t0.initStat(this.f34714t);
        if (isVisible()) {
            x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0() {
        O0("m1", 1);
    }

    public void Q0() {
        if (this.G) {
            return;
        }
        R0();
        this.I.postDelayed(new Runnable() { // from class: com.join.mgps.activity.j2
            @Override // java.lang.Runnable
            public final void run() {
                PapaMainV2Fragment.this.K0();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        this.f34690c.smoothScrollToPositionFromTop(0, 0);
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f34710r.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() != 0) {
                behavior2.setTopAndBottomOffset(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        com.join.android.app.common.manager.a.h().j(this.f34714t, this.f34692d, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.setNoMore();
        }
    }

    void U0() {
        h4 h4Var = this.B;
        if (h4Var != null) {
            h4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0() {
        h4 h4Var = this.B;
        if (h4Var != null) {
            h4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    public void W0(Intent intent) {
        if (this.f34690c != null && !this.E0 && com.join.android.app.common.utils.f.j(this.f34714t)) {
            this.f34690c.setCanLoadMore();
            this.f34723x0 = true;
        }
        this.E0 = com.join.android.app.common.utils.f.j(this.f34714t);
    }

    public void X0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void Y0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        h4 h4Var = this.B;
        if (h4Var != null) {
            h4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.t0.c("MGPapaMainFragmentNew afterview   " + System.currentTimeMillis());
        this.f34694f = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f34714t = getActivity();
        this.F = System.currentTimeMillis();
        this.f34711r0 = new com.join.android.app.component.video.c(this.f34714t, "PapaMainAdapter");
        this.f34713s0 = (MGMainActivity) getActivity();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.J.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.topMargin = com.join.android.app.common.utils.j.v(this.f34714t);
        }
        this.J.setLayoutParams(layoutParams);
        F0();
        showLoding();
        M0();
        B0();
        w0();
        v0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void f1(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            if (com.join.mgps.Util.d2.i(stringExtra)) {
                D1(stringExtra);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        homeBeanDTO.setRequesting(false);
        this.B.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1() {
        int measuredHeight;
        FrameLayout frameLayout = this.f34704o;
        if (frameLayout != null && (measuredHeight = frameLayout.getMeasuredHeight()) > 0) {
            double d4 = measuredHeight;
            Double.isNaN(d4);
            double dimension = measuredHeight + this.f34714t.getResources().getDimension(R.dimen.wdp300);
            Double.isNaN(dimension);
            String s12 = UtilsMy.s1(this.f34717u0);
            this.f34717u0 = s12;
            this.f34727z0 = UtilsMy.R(s12, "#F7F8F9", (d4 * 1.0d) / dimension);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor(this.f34717u0), Color.parseColor(this.f34727z0)});
            gradientDrawable.setGradientType(0);
            this.f34704o.setBackground(gradientDrawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i1(PAPAHomeBeanV7 pAPAHomeBeanV7) {
        this.f34724y.homeAllData().g(JsonMapper.toJsonString(pAPAHomeBeanV7));
        com.join.mgps.Util.t0.c("保存数据完成   " + System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void j1() {
        IntentUtil.getInstance().goSearchHintActivity(this.f34714t, "");
    }

    public void k0() {
        com.join.android.app.component.video.c cVar;
        if (this.f34690c == null || (cVar = this.f34711r0) == null) {
            return;
        }
        cVar.F(1);
        this.f34711r0.m(this.f34690c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m0(String str) {
        String str2;
        if (com.join.android.app.common.utils.f.j(this.f34714t)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f34714t).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f34714t.getPackageManager().getPackageInfo(this.f34714t.getPackageName(), 0);
                str2 = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str2 = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str2);
            requestdetialFolowAndBeSpeak.setGame_id(str);
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
            ResultMainBean d02 = this.f34694f.d0(RequestBeanUtil.getInstance(this.f34714t).getDetialFollowAnd(requestdetialFolowAndBeSpeak));
            if (d02 == null || d02.getFlag() != 1) {
                return;
            }
            D1(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        String plugin_num = gameBean.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(gameBean.getDown_url_remote());
            if (downloadTask == null) {
                downloadTask = gameBean.getDownloadtaskDown();
            }
            UtilsMy.h2(downloadTask, this.f34714t);
            IntentUtil.getInstance().intentActivity(this.f34714t, intentDateBean);
        } else if (downloadTask == null) {
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (gameBean.getMod_info() == null) {
                    if (com.join.android.app.common.utils.a.g0(this.f34714t).c(this.f34714t, gameBean.getPackageName())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f34714t).k(this.f34714t, gameBean.getPackageName());
                        if (!com.join.mgps.Util.d2.i(gameBean.getVer()) || k4.d() >= Integer.parseInt(gameBean.getVer())) {
                            com.join.android.app.common.utils.a.g0(this.f34714t);
                            APKUtils.X(this.f34714t, gameBean.getPackageName());
                            return;
                        }
                    }
                } else {
                    boolean c4 = com.join.android.app.common.utils.a.g0(this.f34714t).c(this.f34714t, gameBean.getPackageName());
                    boolean D = com.join.mgps.va.overmind.e.p().D(gameBean.getPackageName());
                    if (c4 || D) {
                        com.join.android.app.common.utils.a.g0(this.f34714t);
                        APKUtils.S(this.f34714t, gameBean.getMod_info());
                        return;
                    }
                }
            }
            if (UtilsMy.o0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.f34714t, gameBean.getCrc_sign_id());
            } else {
                UtilsMy.J0(this.f34714t, gameBean);
            }
        } else {
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            downloadTask.set_from(homeBeanDTO.get_from());
            downloadTask.set_from_type(homeBeanDTO.get_from_type());
            if (UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(this.f34714t, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(gameBean.getVer());
                                        downloadTask.setVer_name(gameBean.getVer_name());
                                        downloadTask.setUrl(gameBean.getDown_url_remote());
                                        UtilsMy.w3(this.f34714t, downloadTask);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(this.f34714t)) {
                                                    com.join.mgps.Util.i2.a(this.f34714t).b("无网络连接");
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                    if (UtilsMy.T0(this.f34714t, downloadTask)) {
                                                        return;
                                                    }
                                                    if (gameBean.getDown_status() == 5) {
                                                        UtilsMy.R0(this.f34714t, downloadTask);
                                                        return;
                                                    }
                                                    downloadTask.setId(B.getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(gameBean.getVer());
                                                    downloadTask.setVer_name(gameBean.getVer_name());
                                                    downloadTask.setUrl(gameBean.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, this.f34714t);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, this.f34714t);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, this.f34714t);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(this.f34714t, downloadTask);
                return;
            }
            if (UtilsMy.o0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.f34714t, gameBean.getCrc_sign_id());
                return;
            }
            UtilsMy.c1(downloadTask, gameBean);
            if (UtilsMy.T0(this.f34714t, downloadTask)) {
                return;
            }
            if (gameBean.getDown_status() == 5) {
                UtilsMy.R0(this.f34714t, downloadTask);
            } else {
                UtilsMy.F0(this.f34714t, downloadTask, gameBean.getTp_down_url(), gameBean.getOther_down_switch(), gameBean.getCdn_down_switch());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getActivity() instanceof MGMainActivity) {
            this.H = (MGMainActivity) getActivity();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.android.app.component.video.c cVar;
        com.join.mgps.Util.c0.a().e(this);
        this.f34703n0 = true;
        MGMainActivity mGMainActivity = this.f34713s0;
        if (mGMainActivity != null && mGMainActivity.getPositionNum() == 3 && (cVar = this.f34711r0) != null) {
            cVar.z();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            K1(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    K1(a4, 6);
                } else if (c4 == 7) {
                    K1(a4, 3);
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f34722x;
                    if (map != null && !map.isEmpty()) {
                        J1();
                    }
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            K1(a4, 7);
                            break;
                        case 12:
                            K1(a4, 8);
                            break;
                        case 13:
                            K1(a4, 9);
                            break;
                    }
                }
            }
            K1(a4, 5);
        } else {
            K1(a4, 2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("receiveStart: ");
        sb.append(lVar.c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        com.join.mgps.Util.t0.d("notify time", com.join.mgps.Util.x.w(currentTimeMillis));
        long j4 = this.F;
        if (currentTimeMillis - j4 > 3600000 && j4 != 0) {
            long currentTimeMillis2 = System.currentTimeMillis();
            this.F = currentTimeMillis2;
            com.join.mgps.Util.t0.d("notify time lastUpdateTime", com.join.mgps.Util.x.w(currentTimeMillis2));
            this.K = true;
            O0(this.f34705o0, this.f34707p0);
        } else if (j4 == 0) {
            this.F = System.currentTimeMillis();
            com.join.mgps.Util.t0.d("notify time lastUpdateTime2", com.join.mgps.Util.x.w(currentTimeMillis));
        }
        x0();
        m1(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar;
        super.onPause();
        this.G0 = false;
        if (this.f34713s0.getPositionNum() != 3 || (cVar = this.f34711r0) == null) {
            return;
        }
        cVar.A();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        List<MgpapaMainItemBean> list;
        super.onResume();
        this.G0 = true;
        setUserVisibleHint(true);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f34716u = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f34716u) {
                this.f34722x.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        } else {
            this.f34716u = new ArrayList();
        }
        G1(this.f34720w);
        if (this.f34713s0.getPositionNum() == 3) {
            com.join.android.app.component.video.c cVar = this.f34711r0;
            if (cVar != null) {
                cVar.B();
            }
            this.H0.sendEmptyMessageDelayed(1, 700L);
        }
        if (this.V0 && (list = this.C) != null && list.size() > 0) {
            onScrollStateChanged(null, 0);
        }
        m1(true);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.D = (i2 + i4) - 1;
        this.E = i2;
        com.join.android.app.component.video.c cVar = this.f34711r0;
        if (cVar != null) {
            cVar.e(absListView, i2, i4, i5);
        }
        MGMainActivity mGMainActivity = (MGMainActivity) getActivity();
        int i6 = this.E;
        int i7 = this.f34709q0;
        if (i6 >= i7 && i7 != 0) {
            if (this.W0) {
                mGMainActivity.setHomeTabImage(false);
            }
            this.W0 = false;
        } else if (this.D + 1 < i7) {
            if (!this.W0) {
                mGMainActivity.setHomeTabImage(true);
            }
            this.W0 = true;
        }
        if (System.currentTimeMillis() - this.Z0 > 500) {
            o0();
            this.Z0 = System.currentTimeMillis();
        }
        this.f34690c.k();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 0) {
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
            this.T0.removeCallbacks(this.U0);
            this.T0.postDelayed(this.U0, 500L);
        }
        com.join.android.app.component.video.c cVar = this.f34711r0;
        if (cVar != null) {
            cVar.i(absListView, i2);
        }
        o0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.M0 = getResources().getDimensionPixelOffset(R.dimen.round_pointmagin_l_r_size);
        this.N0 = getResources().getDimensionPixelOffset(R.dimen.round_point_size);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        setUserVisibleHint(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void q0() {
        ArrayList<String> arrayList = this.A0;
        if (arrayList != null && arrayList.size() > 0) {
            ViewFlipper viewFlipper = this.f34706p;
            if (viewFlipper != null && viewFlipper.getCurrentView() != null && !TextUtils.isEmpty(((TextView) this.f34706p.getCurrentView()).getText())) {
                int indexOf = this.A0.indexOf(((TextView) this.f34706p.getCurrentView()).getText().toString());
                if (indexOf >= 0) {
                    ArrayList<String> arrayList2 = this.A0;
                    List<String> subList = arrayList2.subList(indexOf, arrayList2.size());
                    List<String> subList2 = this.A0.subList(0, indexOf);
                    ArrayList<String> arrayList3 = new ArrayList<>();
                    arrayList3.addAll(subList);
                    arrayList3.addAll(subList2);
                    this.A0 = arrayList3;
                }
            }
            IntentUtil.getInstance().goSearchHintActivity(this.f34714t, this.A0, this.B0);
        } else {
            IntentUtil.getInstance().goSearchHintActivity(this.f34714t);
        }
        this.f34691c1 = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q1() {
        com.join.android.app.common.manager.a.h().j(this.f34714t, this.f34693e, 1);
    }

    void r0(String str) {
        m0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        this.f34705o0 = "m1";
        this.f34707p0 = 1;
        this.f34723x0 = true;
        O0("m1", 1);
    }

    public void s1(String str) {
        this.f34691c1 = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.t0.c("显示加载中");
        LinearLayout linearLayout = this.f34696h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f34697i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f34697i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f34696h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.setVisibility(8);
        }
        FrameLayout frameLayout = this.f34704o;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f34714t).b(str);
    }

    void t0(String str) {
        r0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void u0(String str, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        CollectionBeanSub data;
        if (homeBeanDTO.getGameBean() != null) {
            n0(homeBeanDTO);
            return;
        }
        if (com.join.android.app.common.utils.f.j(this.f34714t)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f34714t).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f34714t);
                requestModel.setArgs(new RequestGameIdArgs(str, 1, accountData.getUid()));
                ResponseModel<CollectionBeanSub> body = com.join.mgps.rpc.impl.h.L().J().A0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    data.set_from(homeBeanDTO.get_from());
                    data.set_from_type(homeBeanDTO.get_from_type());
                    homeBeanDTO.setGameBean(data);
                    n0(homeBeanDTO);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                com.join.mgps.Util.i2.a(this.f34714t).b("获取下载信息失败");
            }
        } else {
            com.join.mgps.Util.i2.a(this.f34714t).b("当前网络不可用");
        }
        g1(homeBeanDTO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void v0() {
        if (com.join.android.app.common.utils.f.j(this.f34714t)) {
            try {
                HomeFloatData data = this.f34694f.K0(z0()).getMessages().getData();
                if (data != null) {
                    x1(data);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void v1() {
        com.join.mgps.Util.r.i(this.f34714t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w0() {
        List<RecomDatabean> data;
        try {
            ResultMainBean<List<RecomDatabean>> l12 = this.f34694f.l1(RequestBeanUtil.getInstance(this.f34714t).getRequestPnAndPc(1, 1));
            if (l12 == null || l12.getFlag() != 1 || (data = l12.getMessages().getData()) == null || data.size() <= 0) {
                return;
            }
            this.I0 = data.get(0).getSub().get(0).getLink_type_val();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w1() {
        if (getUserVisibleHint()) {
            com.join.mgps.Util.a0.c0(this.f34714t).O(this.f34714t, 1, new f()).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x1(HomeFloatData homeFloatData) {
        try {
            List<RecomDatabean> pendant = homeFloatData.getPendant();
            List<RecomDatabean> coin_entrance = homeFloatData.getCoin_entrance();
            if (this.f34700l != null) {
                if (pendant != null && pendant.size() > 0) {
                    RecomDatabean recomDatabean = pendant.get(0);
                    this.O0 = recomDatabean;
                    if (recomDatabean != null && recomDatabean.getMain().getAd_switch() == 1) {
                        this.f34700l.setVisibility(0);
                        if (com.join.mgps.Util.d2.i(this.O0.getMain().getPic_remote())) {
                            if (!this.Q0.equals(this.O0.getMain().getPic_remote())) {
                                this.Q0 = this.O0.getMain().getPic_remote();
                                MyImageLoader.d(this.f34700l, R.drawable.translate_drawable, this.O0.getMain().getPic_remote());
                            }
                        } else {
                            this.f34700l.setVisibility(8);
                        }
                    } else {
                        this.f34700l.setVisibility(8);
                    }
                } else {
                    this.f34700l.setVisibility(8);
                }
            }
            if (coin_entrance == null || coin_entrance.size() <= 0) {
                return;
            }
            this.P0 = coin_entrance.get(0);
            Intent intent = new Intent(f1.a.E);
            intent.putExtra("coinFloatData", this.P0);
            this.f34714t.sendBroadcast(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1() {
        v0();
    }

    public CommonRequestBean z0() {
        return RequestBeanUtil.getInstance(this.f34714t).getFloatadRequestBean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z1() {
        com.join.mgps.Util.t0.c("显示主界面main");
        LinearLayout linearLayout = this.f34697i;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f34696h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView3 xListView3 = this.f34690c;
        if (xListView3 != null) {
            xListView3.setVisibility(0);
        }
        FrameLayout frameLayout = this.f34704o;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        if (this.K) {
            this.K = false;
            TextView textView = this.f34695g;
            if (textView != null) {
                textView.setVisibility(0);
            }
            D0();
        }
    }
}
