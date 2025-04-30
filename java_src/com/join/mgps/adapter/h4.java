package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MGInformationActivity_;
import com.join.mgps.activity.NowWufunActivity_;
import com.join.mgps.activity.PapaMainV2Fragment;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.activity.vipzone.bean.IconGame;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.CubeRotateView;
import com.join.mgps.customview.HorizontalRecyclerView;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.AppMoreBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameDiscoverTheNewBean;
import com.join.mgps.dto.GameRankingBean;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PAPAItemTitle2;
import com.join.mgps.dto.PapaMainGameBespeakInfo;
import com.join.mgps.dto.PapaMainLive;
import com.join.mgps.dto.PapaMainLivelistItem;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: PapaMainAdapter.java */
/* loaded from: classes3.dex */
public class h4 extends BaseAdapter {
    public static final int A = 13;
    public static final int A0 = 38;
    public static final int B = 14;
    public static final int B0 = 39;
    public static final int C = 15;
    private static u2 C0 = null;
    public static final int D = 16;
    public static final int E = 18;
    public static final int F = 19;
    public static final int G = 20;
    public static final int H = 21;
    public static final int I = 22;
    public static final int J = 23;
    public static final int K = 24;

    /* renamed from: n  reason: collision with root package name */
    public static final int f41715n = 0;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f41716n0 = 25;

    /* renamed from: o  reason: collision with root package name */
    public static final int f41717o = 1;

    /* renamed from: o0  reason: collision with root package name */
    public static final int f41718o0 = 26;

    /* renamed from: p  reason: collision with root package name */
    public static final int f41719p = 2;

    /* renamed from: p0  reason: collision with root package name */
    public static final int f41720p0 = 27;

    /* renamed from: q  reason: collision with root package name */
    public static final int f41721q = 3;

    /* renamed from: q0  reason: collision with root package name */
    public static final int f41722q0 = 28;

    /* renamed from: r  reason: collision with root package name */
    public static final int f41723r = 4;

    /* renamed from: r0  reason: collision with root package name */
    public static final int f41724r0 = 29;

    /* renamed from: s  reason: collision with root package name */
    public static final int f41725s = 5;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f41726s0 = 30;

    /* renamed from: t  reason: collision with root package name */
    public static final int f41727t = 6;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f41728t0 = 31;

    /* renamed from: u  reason: collision with root package name */
    public static final int f41729u = 7;

    /* renamed from: u0  reason: collision with root package name */
    public static final int f41730u0 = 32;

    /* renamed from: v  reason: collision with root package name */
    public static final int f41731v = 8;

    /* renamed from: v0  reason: collision with root package name */
    public static final int f41732v0 = 33;

    /* renamed from: w  reason: collision with root package name */
    public static final int f41733w = 9;

    /* renamed from: w0  reason: collision with root package name */
    public static final int f41734w0 = 34;

    /* renamed from: x  reason: collision with root package name */
    public static final int f41735x = 10;

    /* renamed from: x0  reason: collision with root package name */
    public static final int f41736x0 = 35;

    /* renamed from: y  reason: collision with root package name */
    public static final int f41737y = 11;

    /* renamed from: y0  reason: collision with root package name */
    public static final int f41738y0 = 36;

    /* renamed from: z  reason: collision with root package name */
    public static final int f41739z = 12;

    /* renamed from: z0  reason: collision with root package name */
    public static final int f41740z0 = 37;

    /* renamed from: a  reason: collision with root package name */
    private final LayoutInflater f41741a;

    /* renamed from: b  reason: collision with root package name */
    private Context f41742b;

    /* renamed from: c  reason: collision with root package name */
    Fragment f41743c;

    /* renamed from: d  reason: collision with root package name */
    private List<MgpapaMainItemBean> f41744d;

    /* renamed from: f  reason: collision with root package name */
    private CountDownTimer f41746f;

    /* renamed from: g  reason: collision with root package name */
    private CountDownTimer f41747g;

    /* renamed from: h  reason: collision with root package name */
    private o1.e f41748h;

    /* renamed from: i  reason: collision with root package name */
    public int f41749i;

    /* renamed from: k  reason: collision with root package name */
    com.join.android.app.component.video.c f41751k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.customview.d0 f41752l;

    /* renamed from: j  reason: collision with root package name */
    private Handler f41750j = new k();

    /* renamed from: m  reason: collision with root package name */
    private l1 f41753m = null;

    /* renamed from: e  reason: collision with root package name */
    private Map<Integer, y1> f41745e = new HashMap();

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41742b.startActivity(new Intent(h4.this.f41742b, EverdayNewGameActivity.class));
            h4.this.T("3-3");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41755a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41756b;

        a0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41755a = recomDatabeanBusiness;
            this.f41756b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f41755a.getSub().get(0).getIntentDataBean();
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setRecPosition(this.f41756b.getMoreType2());
            extBean.setReMarks(this.f41756b.getReMarks());
            intentDataBean.setExtBean(extBean);
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
            if (this.f41755a.getSub() != null && this.f41755a.getSub().size() > 0) {
                AppBean game_info = this.f41755a.getSub().get(0).getGame_info();
                h4.this.W(this.f41756b.getMoreType2(), intentDataBean.getCrc_link_type_val(), game_info.getPosition_path(), UtilsMy.F1(game_info.getTag_info()));
            }
            h4 h4Var = h4.this;
            h4Var.T(this.f41756b.getMoreType2().replace("-x", "-1") + "-0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class a1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41758a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AppBean f41759b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f41760c;

        a1(RecomDatabeanBusiness recomDatabeanBusiness, AppBean appBean, int i2) {
            this.f41758a = recomDatabeanBusiness;
            this.f41759b = appBean;
            this.f41760c = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask a4 = this.f41758a.a();
            String plugin_num = this.f41759b.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f41759b.getDown_url_remote());
                if (a4 == null) {
                    a4 = this.f41759b.getDownloadtaskDown();
                }
                UtilsMy.h2(a4, h4.this.f41742b);
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDateBean);
            } else if (a4 == null) {
                if (UtilsMy.e0(this.f41759b.getTag_info()) && com.join.android.app.common.utils.a.g0(h4.this.f41742b).c(h4.this.f41742b, this.f41759b.getPackageName())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(h4.this.f41742b).k(h4.this.f41742b, this.f41759b.getPackageName());
                    if (!com.join.mgps.Util.d2.i(this.f41759b.getVer()) || k4.d() >= Integer.parseInt(this.f41759b.getVer())) {
                        com.join.android.app.common.utils.a.g0(h4.this.f41742b);
                        APKUtils.X(h4.this.f41742b, this.f41759b.getPackageName());
                        return;
                    }
                }
                if (UtilsMy.o0(this.f41759b.getPay_tag_info(), this.f41759b.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(h4.this.f41742b, this.f41759b.getCrc_sign_id());
                } else {
                    UtilsMy.H0(h4.this.f41742b, this.f41759b);
                }
                h4 h4Var = h4.this;
                h4Var.T("10-" + this.f41760c + "-1");
            } else {
                int status = a4 != null ? a4.getStatus() : 0;
                if (UtilsMy.m0(this.f41759b.getPay_tag_info(), this.f41759b.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 13) {
                        com.php25.PDownload.d.k(h4.this.f41742b, a4);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(h4.this.f41742b, a4);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                        a4.setVer(this.f41759b.getVer());
                                        a4.setVer_name(this.f41759b.getVer_name());
                                        a4.setUrl(this.f41759b.getDown_url_remote());
                                        UtilsMy.w3(h4.this.f41742b, a4);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(h4.this.f41742b)) {
                                                    com.join.mgps.Util.i2.a(h4.this.f41742b).b("无网络连接");
                                                    return;
                                                }
                                                int downloadType = this.f41759b.getDownloadType();
                                                if (downloadType != 0 && downloadType != 1) {
                                                    if (downloadType != 2) {
                                                        return;
                                                    }
                                                    UtilsMy.z3(a4);
                                                    return;
                                                } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    DownloadTask B = g1.f.G().B(a4.getCrc_link_type_val());
                                                    if (UtilsMy.T0(h4.this.f41742b, a4)) {
                                                        return;
                                                    }
                                                    if (this.f41759b.getDown_status() == 5) {
                                                        UtilsMy.R0(h4.this.f41742b, a4);
                                                        return;
                                                    }
                                                    a4.setId(B.getId());
                                                    com.php25.PDownload.d.b(a4);
                                                    a4.setVer(this.f41759b.getVer());
                                                    a4.setVer_name(this.f41759b.getVer_name());
                                                    a4.setUrl(this.f41759b.getDown_url_remote());
                                                    com.php25.PDownload.d.c(a4, h4.this.f41742b);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(a4, h4.this.f41742b);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(a4, h4.this.f41742b);
                        return;
                    }
                    com.php25.PDownload.d.h(a4);
                    return;
                }
                h4 h4Var2 = h4.this;
                h4Var2.T("10-" + this.f41760c + 1);
                AppBean appBean = this.f41759b;
                if (appBean != null) {
                    if (UtilsMy.o0(appBean.getPay_tag_info(), this.f41759b.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(h4.this.f41742b, this.f41759b.getCrc_sign_id());
                        return;
                    }
                    UtilsMy.b1(a4, this.f41759b);
                    if (UtilsMy.T0(h4.this.f41742b, a4)) {
                        return;
                    }
                    if (this.f41759b.getDown_status() == 5) {
                        UtilsMy.R0(h4.this.f41742b, a4);
                    } else {
                        UtilsMy.F0(h4.this.f41742b, a4, this.f41759b.getTp_down_url(), this.f41759b.getOther_down_switch(), this.f41759b.getCdn_down_switch());
                    }
                }
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class a2 {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41762a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f41763b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f41764c;

        /* renamed from: d  reason: collision with root package name */
        public View f41765d;

        a2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41767a;

        b(RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f41767a = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppMoreBean> more = this.f41767a.getMore();
            if (more == null || more.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, more.get(0).getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41769a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41770b;

        b0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41769a = recomDatabeanBusiness;
            this.f41770b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f41769a.getSub().get(0).getIntentDataBean();
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setRecPosition(this.f41770b.getMoreType2());
            extBean.setReMarks(this.f41770b.getReMarks());
            intentDataBean.setExtBean(extBean);
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
            if (this.f41769a.getSub() != null && this.f41769a.getSub().size() > 0) {
                AppBean game_info = this.f41769a.getSub().get(0).getGame_info();
                h4.this.W(this.f41770b.getMoreType2(), intentDataBean.getCrc_link_type_val(), game_info.getPosition_path(), UtilsMy.F1(game_info.getTag_info()));
            }
            h4 h4Var = h4.this;
            h4Var.T(this.f41770b.getMoreType2().replace("-x", "-0") + "-1");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class b1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f41772a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f41773b;

        b1(IntentDateBean intentDateBean, int i2) {
            this.f41772a = intentDateBean;
            this.f41773b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41772a);
            h4 h4Var = h4.this;
            h4Var.T("10-" + this.f41773b + "-1");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class b2 {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f41775a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f41776b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f41777c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f41778d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41779e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41780f;

        /* renamed from: g  reason: collision with root package name */
        public RelativeLayout f41781g;

        /* renamed from: h  reason: collision with root package name */
        public RelativeLayout f41782h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f41783i;

        /* renamed from: j  reason: collision with root package name */
        public LinearLayout f41784j;

        b2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41786a;

        c(RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f41786a = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppMoreBean> more = this.f41786a.getMore();
            if (more == null || more.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, more.get(0).getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41788a;

        c0(int i2) {
            this.f41788a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41751k.y(this.f41788a);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class c1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v2 f41790a;

        c1(v2 v2Var) {
            this.f41790a = v2Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f41790a.f42150a.setVisibility(8);
            new PrefDef_(h4.this.f41742b).lastTopTip().g(this.f41790a.f42151b.getText().toString());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class c2 {
        public TextView A;

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f41792a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f41793b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f41794c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f41795d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41796e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41797f;

        /* renamed from: g  reason: collision with root package name */
        public RelativeLayout f41798g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f41799h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f41800i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f41801j;

        /* renamed from: k  reason: collision with root package name */
        public SimpleDraweeView f41802k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f41803l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f41804m;

        /* renamed from: n  reason: collision with root package name */
        public RelativeLayout f41805n;

        /* renamed from: o  reason: collision with root package name */
        public LinearLayout f41806o;

        /* renamed from: p  reason: collision with root package name */
        public TextView f41807p;

        /* renamed from: q  reason: collision with root package name */
        public TextView f41808q;

        /* renamed from: r  reason: collision with root package name */
        public SimpleDraweeView f41809r;

        /* renamed from: s  reason: collision with root package name */
        public TextView f41810s;

        /* renamed from: t  reason: collision with root package name */
        public TextView f41811t;

        /* renamed from: u  reason: collision with root package name */
        public RelativeLayout f41812u;

        /* renamed from: v  reason: collision with root package name */
        public LinearLayout f41813v;

        /* renamed from: w  reason: collision with root package name */
        public TextView f41814w;

        /* renamed from: x  reason: collision with root package name */
        public TextView f41815x;

        /* renamed from: y  reason: collision with root package name */
        public TextView f41816y;

        /* renamed from: z  reason: collision with root package name */
        public TextView f41817z;

        c2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41818a;

        d(MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41818a = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGInformationActivity_.T0(h4.this.f41742b).start();
            h4.this.T(this.f41818a.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class d0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41820a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41821b;

        d0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41820a = recomDatabeanBusiness;
            this.f41821b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41820a.getSub().get(0).getIntentDataBean());
            h4.this.T(this.f41821b.getMoreType2());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class d1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f41823a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f41824b;

        d1(IntentDateBean intentDateBean, int i2) {
            this.f41823a = intentDateBean;
            this.f41824b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41823a);
            h4 h4Var = h4.this;
            h4Var.T("10-" + this.f41824b + "-1");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class d2 {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41826a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f41827b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f41828c;

        d2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41830a;

        e(MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41830a = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.T(this.f41830a.getMoreType2());
            MGInformationActivity_.T0(h4.this.f41742b).start();
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = h4.this.f41742b;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51560w + "/live/index.html");
            h4.this.T("9-1-0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class e1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41833a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f41834b;

        e1(int i2, IntentDateBean intentDateBean) {
            this.f41833a = i2;
            this.f41834b = intentDateBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4 h4Var = h4.this;
            h4Var.T("10-" + this.f41833a + "-0");
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41834b);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class e2 {

        /* renamed from: a  reason: collision with root package name */
        private CubeRotateView f41836a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f41837b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f41838c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f41839d;

        e2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41841a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41842b;

        f(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41841a = recomDatabeanBusiness;
            this.f41842b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppMoreBean> more = this.f41841a.getMore();
            if (more != null && more.size() > 0) {
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, more.get(0).getIntentDataBean());
            }
            h4.this.T(this.f41842b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = h4.this.f41742b;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51560w + "/live/index.html");
            h4.this.T("9-2-0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class f1 extends CountDownTimer {

        /* compiled from: PapaMainAdapter.java */
        /* loaded from: classes3.dex */
        class a extends Thread {
            a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(2000L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                h4.this.f41750j.sendEmptyMessage(1);
            }
        }

        f1(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (h4.C0 == null) {
                return;
            }
            h4.C0.f42128m.setVisibility(0);
            h4.C0.f42125j.setVisibility(8);
            new a().start();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class f2 {

        /* renamed from: a  reason: collision with root package name */
        private ConstraintLayout f41847a;

        /* renamed from: b  reason: collision with root package name */
        private SlidingTabLayout6 f41848b;

        /* renamed from: c  reason: collision with root package name */
        private ViewPager f41849c;

        /* renamed from: d  reason: collision with root package name */
        private LinearLayout f41850d;

        f2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41852a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41853b;

        g(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41852a = recomDatabeanBusiness;
            this.f41853b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppMoreBean> more = this.f41852a.getMore();
            if (more != null && more.size() > 0) {
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, more.get(0).getIntentDataBean());
            }
            h4.this.T(this.f41853b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerBean f41855a;

        g0(BannerBean bannerBean) {
            this.f41855a = bannerBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41855a.getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class g1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f41857a;

        g1(List list) {
            this.f41857a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (Build.VERSION.SDK_INT < 15) {
                return;
            }
            try {
                com.join.mgps.Util.t0.h(PapayPayDetialActivity_.f34856k, System.currentTimeMillis() + "  onclick");
                IntentDateBean intentDataBean = ((RecomDatabeanBusiness) this.f41857a.get(0)).getSub().get(0).getIntentDataBean();
                h4.this.T("3-1");
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class g2 {

        /* renamed from: a  reason: collision with root package name */
        private SlidingTabLayout6 f41859a;

        /* renamed from: b  reason: collision with root package name */
        private ViewPager f41860b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f41861c;

        g2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f41863a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41864b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AppBean f41865c;

        h(AppBeanMain appBeanMain, MgpapaMainItemBean mgpapaMainItemBean, AppBean appBean) {
            this.f41863a = appBeanMain;
            this.f41864b = mgpapaMainItemBean;
            this.f41865c = appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f41863a.getIntentDataBean();
            if (!this.f41864b.getMoreType2().startsWith("4-")) {
                this.f41864b.getMoreType2().startsWith("6-");
            }
            h4.this.W(this.f41864b.getMoreType2(), this.f41865c.getGame_id(), this.f41865c.getPosition_path(), UtilsMy.F1(this.f41865c.getTag_info()));
            h4 h4Var = h4.this;
            h4Var.T(this.f41864b.getMoreType2() + 0);
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setRecPosition(this.f41864b.getMoreType2());
            extBean.setReMarks(this.f41864b.getReMarks());
            intentDataBean.setExtBean(extBean);
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = h4.this.f41742b;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51560w + "/live/index.html");
            h4.this.T("9-3-0");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class h1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f41868a;

        h1(List list) {
            this.f41868a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                IntentDateBean intentDataBean = ((RecomDatabeanBusiness) this.f41868a.get(0)).getSub().get(0).getIntentDataBean();
                h4.this.T("3-2");
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class h2 {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41870a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41871b;

        /* renamed from: c  reason: collision with root package name */
        RelativeLayout f41872c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41873d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41874e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f41875f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f41876g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f41877h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f41878i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f41879j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f41880k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f41881l;

        /* renamed from: m  reason: collision with root package name */
        public RelativeLayout f41882m;

        /* renamed from: n  reason: collision with root package name */
        ImageView f41883n;

        /* renamed from: o  reason: collision with root package name */
        View f41884o;

        public h2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41886a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41887b;

        i(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41886a = recomDatabeanBusiness;
            this.f41887b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f41886a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentDateBean intentDataBean = sub.get(0).getIntentDataBean();
            if (this.f41887b.getMoreType() == 1) {
                intentDataBean.setExtBean(new ExtBean("home", "9-1000"));
            } else if (this.f41887b.getMoreType() == 2) {
                intentDataBean.setExtBean(new ExtBean("home", "10-1000"));
            } else {
                intentDataBean.setExtBean(new ExtBean("home", "6-1-1"));
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class i0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41889a;

        i0(RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f41889a = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.T("0-1-0-0");
            try {
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41889a.getSub().get(0).getIntentDataBean());
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class i1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f41891a;

        i1(List list) {
            this.f41891a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                IntentDateBean intentDataBean = ((RecomDatabeanBusiness) this.f41891a.get(0)).getSub().get(0).getIntentDataBean();
                h4.this.T("3-4");
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class i2 {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView f41893a;

        public i2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class j implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f41895a;

        j(ArrayList arrayList) {
            this.f41895a = arrayList;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            h4.this.C(this.f41895a, i2);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class j0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41897a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41898b;

        j0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41897a = recomDatabeanBusiness;
            this.f41898b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41897a.getSub().get(0).getIntentDataBean());
            h4 h4Var = h4.this;
            h4Var.T(this.f41898b.getMoreType2() + "0");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class j1 implements View.OnClickListener {
        j1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41742b.startActivity(new Intent(h4.this.f41742b, EverdayNewGameActivity.class));
            h4.this.T("3-3");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class j2 {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f41901a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f41902b;

        j2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                h4.this.d0();
            } else if (i2 != 2) {
            } else {
                h4.this.c0();
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class k0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41905a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41906b;

        k0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41905a = recomDatabeanBusiness;
            this.f41906b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41905a.getSub().get(0).getIntentDataBean());
            h4 h4Var = h4.this;
            h4Var.T(this.f41906b.getMoreType2() + "0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class k1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        AppBean f41908a;

        /* renamed from: b  reason: collision with root package name */
        RecomDatabeanBusiness f41909b;

        /* renamed from: c  reason: collision with root package name */
        int f41910c;

        /* renamed from: d  reason: collision with root package name */
        String f41911d;

        public k1(RecomDatabeanBusiness recomDatabeanBusiness, int i2, String str, String str2) {
            List<AppBeanMain> sub = recomDatabeanBusiness.getSub();
            if (sub != null && sub.size() > 0) {
                AppBean game_info = sub.get(0).getGame_info();
                this.f41908a = game_info;
                game_info.setReMarks(str2);
            }
            this.f41909b = recomDatabeanBusiness;
            this.f41910c = i2;
            this.f41911d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask a4 = this.f41909b.a();
            if (!this.f41911d.startsWith("4-") && !this.f41911d.startsWith("6-")) {
                this.f41911d.startsWith("5-");
            }
            h4.this.V(Event.check, this.f41911d, this.f41908a.getGame_id(), this.f41908a.getPosition_path(), UtilsMy.F1(this.f41908a.getTag_info()));
            h4 h4Var = h4.this;
            h4Var.T(this.f41911d + 1);
            String plugin_num = this.f41908a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f41908a.getDown_url_remote());
                if (a4 == null) {
                    a4 = this.f41908a.getDownloadtaskDown();
                }
                UtilsMy.h2(a4, h4.this.f41742b);
                IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDateBean);
            } else if (a4 == null) {
                if (UtilsMy.e0(this.f41908a.getTag_info())) {
                    if (this.f41908a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(h4.this.f41742b).c(h4.this.f41742b, this.f41908a.getPackageName())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(h4.this.f41742b).k(h4.this.f41742b, this.f41908a.getPackageName());
                            if (!com.join.mgps.Util.d2.i(this.f41908a.getVer()) || k4.d() >= Integer.parseInt(this.f41908a.getVer())) {
                                com.join.android.app.common.utils.a.g0(h4.this.f41742b);
                                APKUtils.X(h4.this.f41742b, this.f41908a.getPackageName());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(h4.this.f41742b).c(h4.this.f41742b, this.f41908a.getPackageName());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f41908a.getPackageName());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(h4.this.f41742b);
                            APKUtils.S(h4.this.f41742b, this.f41908a.getMod_info());
                            return;
                        }
                    }
                }
                if (UtilsMy.o0(this.f41908a.getPay_tag_info(), this.f41908a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(h4.this.f41742b, this.f41908a.getCrc_sign_id());
                } else {
                    UtilsMy.H0(h4.this.f41742b, this.f41908a);
                }
            } else {
                int status = a4 != null ? a4.getStatus() : 0;
                AppBean appBean = this.f41908a;
                if (appBean != null && UtilsMy.m0(appBean.getPay_tag_info(), this.f41908a.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 13) {
                        com.php25.PDownload.d.k(h4.this.f41742b, a4);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(h4.this.f41742b, a4);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                        a4.setVer(this.f41908a.getVer());
                                        a4.setVer_name(this.f41908a.getVer_name());
                                        a4.setUrl(this.f41908a.getDown_url_remote());
                                        UtilsMy.w3(h4.this.f41742b, a4);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(h4.this.f41742b)) {
                                                    com.join.mgps.Util.i2.a(h4.this.f41742b).b("无网络连接");
                                                    return;
                                                }
                                                int downloadType = this.f41908a.getDownloadType();
                                                if (downloadType != 0 && downloadType != 1) {
                                                    if (downloadType != 2) {
                                                        return;
                                                    }
                                                    UtilsMy.z3(a4);
                                                    return;
                                                } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    DownloadTask B = g1.f.G().B(a4.getCrc_link_type_val());
                                                    if (UtilsMy.T0(h4.this.f41742b, a4)) {
                                                        return;
                                                    }
                                                    if (this.f41908a.getDown_status() == 5) {
                                                        UtilsMy.R0(h4.this.f41742b, a4);
                                                        return;
                                                    }
                                                    a4.setId(B.getId());
                                                    com.php25.PDownload.d.b(a4);
                                                    a4.setVer(this.f41908a.getVer());
                                                    a4.setVer_name(this.f41908a.getVer_name());
                                                    a4.setUrl(this.f41908a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(a4, h4.this.f41742b);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(a4, h4.this.f41742b);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(a4, h4.this.f41742b);
                        return;
                    }
                    com.php25.PDownload.d.h(a4);
                    return;
                }
                h4 h4Var2 = h4.this;
                h4Var2.T(this.f41911d + 1);
                AppBean appBean2 = this.f41908a;
                if (appBean2 != null) {
                    if (UtilsMy.o0(appBean2.getPay_tag_info(), this.f41908a.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(h4.this.f41742b, this.f41908a.getCrc_sign_id());
                        return;
                    }
                    UtilsMy.b1(a4, this.f41908a);
                    if (UtilsMy.T0(h4.this.f41742b, a4)) {
                        return;
                    }
                    if (this.f41908a.getDown_status() == 5) {
                        UtilsMy.R0(h4.this.f41742b, a4);
                    } else {
                        UtilsMy.F0(h4.this.f41742b, a4, this.f41908a.getTp_down_url(), this.f41908a.getOther_down_switch(), this.f41908a.getCdn_down_switch());
                    }
                }
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class k2 {

        /* renamed from: a  reason: collision with root package name */
        private RecyclerView f41913a;

        k2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41915a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41916b;

        l(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41915a = recomDatabeanBusiness;
            this.f41916b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f41915a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, sub.get(0).getIntentDataBean());
            h4.this.T(this.f41916b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class l0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41918a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41919b;

        l0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41918a = recomDatabeanBusiness;
            this.f41919b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41918a.getSub().get(0).getIntentDataBean());
            h4 h4Var = h4.this;
            h4Var.T(this.f41919b.getMoreType2() + "0");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public interface l1 {
        void a(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO);

        void b(int i2, List<List<PAPAHomeBeanV7.HomeBeanDTO>> list);

        void c(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO);
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class l2 {

        /* renamed from: a  reason: collision with root package name */
        private View f41921a;

        l2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41923a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41924b;

        m(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41923a = recomDatabeanBusiness;
            this.f41924b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f41923a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, sub.get(0).getIntentDataBean());
            h4.this.T(this.f41924b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class m0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41926a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41927b;

        m0(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41926a = recomDatabeanBusiness;
            this.f41927b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41926a.getSub().get(0).getIntentDataBean());
            h4 h4Var = h4.this;
            h4Var.T(this.f41927b.getMoreType2() + "0");
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class m1 {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f41929a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41930b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41931c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41932d;

        /* renamed from: e  reason: collision with root package name */
        public RelativeLayout f41933e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41934f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f41935g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f41936h;

        /* renamed from: i  reason: collision with root package name */
        public FrameLayout f41937i;

        m1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class m2 {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f41939a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f41940b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41941c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f41942d;

        /* renamed from: e  reason: collision with root package name */
        public LinearLayout f41943e;

        m2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41945a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41946b;

        n(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41945a = recomDatabeanBusiness;
            this.f41946b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f41945a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, sub.get(0).getIntentDataBean());
            h4.this.T(this.f41946b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class n0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41948a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41949b;

        n0(MgpapaMainItemBean mgpapaMainItemBean, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f41948a = mgpapaMainItemBean;
            this.f41949b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4 h4Var = h4.this;
            h4Var.T(this.f41948a.getMoreType2() + "1-0");
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41949b.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class n1 {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41951a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f41952b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f41953c;

        n1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class n2 {

        /* renamed from: a  reason: collision with root package name */
        View f41955a;

        n2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41957a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41958b;

        o(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41957a = recomDatabeanBusiness;
            this.f41958b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f41957a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, sub.get(0).getIntentDataBean());
            h4.this.T(this.f41958b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class o0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41960a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41961b;

        o0(MgpapaMainItemBean mgpapaMainItemBean, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f41960a = mgpapaMainItemBean;
            this.f41961b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4 h4Var = h4.this;
            h4Var.T(this.f41960a.getMoreType2() + "2-0");
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41961b.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class o1 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f41963a;

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f41964b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f41965c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f41966d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f41967e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f41968f;

        /* renamed from: g  reason: collision with root package name */
        private SimpleDraweeView f41969g;

        /* renamed from: h  reason: collision with root package name */
        private SimpleDraweeView f41970h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f41971i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f41972j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f41973k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f41974l;

        o1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class o2 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f41976a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f41977b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f41978c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f41979d;

        /* renamed from: e  reason: collision with root package name */
        private SimpleDraweeView f41980e;

        /* renamed from: f  reason: collision with root package name */
        private SimpleDraweeView f41981f;

        o2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41983a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41984b;

        p(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f41983a = recomDatabeanBusiness;
            this.f41984b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f41983a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, sub.get(0).getIntentDataBean());
            h4.this.T(this.f41984b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class p0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f41986a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f41987b;

        p0(MgpapaMainItemBean mgpapaMainItemBean, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f41986a = mgpapaMainItemBean;
            this.f41987b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4 h4Var = h4.this;
            h4Var.T(this.f41986a.getMoreType2() + "3-0");
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f41987b.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class p1 {

        /* renamed from: a  reason: collision with root package name */
        public ConstraintLayout f41989a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41990b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41991c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f41992d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41993e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41994f;

        /* renamed from: g  reason: collision with root package name */
        public ProgressBar f41995g;

        /* renamed from: h  reason: collision with root package name */
        public ProgressBar f41996h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f41997i;

        /* renamed from: j  reason: collision with root package name */
        public FrameLayout f41998j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f41999k;

        /* renamed from: l  reason: collision with root package name */
        public SimpleDraweeView f42000l;

        /* renamed from: m  reason: collision with root package name */
        public FrameLayout f42001m;

        /* renamed from: n  reason: collision with root package name */
        public ProgressBar f42002n;

        public p1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class p2 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f42004a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42005b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42006c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f42007d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f42008e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f42009f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f42010g;

        /* renamed from: h  reason: collision with root package name */
        public RelativeLayout f42011h;

        /* renamed from: i  reason: collision with root package name */
        public RelativeLayout f42012i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f42013j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f42014k;

        p2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f42016a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f42017b;

        q(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f42016a = recomDatabeanBusiness;
            this.f42017b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f42016a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentDateBean intentDataBean = sub.get(0).getIntentDataBean();
            try {
                try {
                    this.f42016a.getSub().get(0).getCrc_link_type_val();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                h4 h4Var = h4.this;
                h4Var.T(this.f42017b.getMoreType2() + "-2");
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.O0(h4.this.f41742b).a(0).start();
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class q1 {

        /* renamed from: a  reason: collision with root package name */
        private FrameLayout f42020a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f42021b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f42022c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42023d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42024e;

        /* renamed from: f  reason: collision with root package name */
        public RelativeLayout f42025f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f42026g;

        /* renamed from: h  reason: collision with root package name */
        public RelativeLayout f42027h;

        q1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class q2 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f42029a;

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f42030b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42031c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f42032d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f42033e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f42034f;

        /* renamed from: g  reason: collision with root package name */
        private SimpleDraweeView f42035g;

        /* renamed from: h  reason: collision with root package name */
        private SimpleDraweeView f42036h;

        /* renamed from: i  reason: collision with root package name */
        private SimpleDraweeView f42037i;

        q2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f42039a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f42040b;

        r(RecomDatabeanBusiness recomDatabeanBusiness, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f42039a = recomDatabeanBusiness;
            this.f42040b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f42039a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            AppBeanMain appBeanMain = sub.get(0);
            IntentUtil.getInstance().goGameDetialActivity(h4.this.f41742b, appBeanMain.getGame_info().getCrc_sign_id(), appBeanMain.getGame_info().getGame_info_tpl_type(), appBeanMain.getGame_info().getSp_tpl_two_position(), appBeanMain.getGame_info().get_from_type());
            try {
                try {
                    this.f42039a.getSub().get(0).getCrc_link_type_val();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                h4 h4Var = h4.this;
                h4Var.T(this.f42040b.getMoreType2() + "-0");
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42042a;

        r0(AppBeanMain appBeanMain) {
            this.f42042a = appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f42042a.getIntentDataBean();
            intentDataBean.setExtBean(new ExtBean("home", "3-0"));
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class r1 {

        /* renamed from: a  reason: collision with root package name */
        private RecyclerView f42044a;

        r1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class r2 {

        /* renamed from: a  reason: collision with root package name */
        private HListView f42046a;

        r2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val("http://h5.5fun.com/team.html");
            intentDateBean.setObject("悟饭有你更精彩");
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDateBean);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class s0 implements BaseQuickAdapter.i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42049a;

        s0(List list) {
            this.f42049a = list;
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.i
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
            int i4;
            h4 h4Var = h4.this;
            h4Var.T("2-" + (i2 + 1));
            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) this.f42049a.get(i2);
            IntentDateBean intentDataBean = homeBeanDTO.getIntentDataBean();
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (com.join.mgps.Util.d2.i(intentDataBean.getLink_type_val())) {
                i4 = Integer.parseInt(intentDataBean.getLink_type_val());
                if (intentDataBean.getLink_type() != 3 && intentDataBean.getJump_type() == 31) {
                    com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(1));
                } else if (intentDataBean.getLink_type() != 3 && intentDataBean.getJump_type() == 2 && i4 == 1) {
                    com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(2));
                } else {
                    intentDataBean.setExt1(homeBeanDTO.getSub_title());
                    IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
                }
                h4.this.a0(null);
            }
            i4 = 1;
            if (intentDataBean.getLink_type() != 3) {
            }
            if (intentDataBean.getLink_type() != 3) {
            }
            intentDataBean.setExt1(homeBeanDTO.getSub_title());
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, intentDataBean);
            h4.this.a0(null);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class s1 {

        /* renamed from: a  reason: collision with root package name */
        public ConstraintLayout f42051a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f42052b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42053c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f42054d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42055e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f42056f;

        /* renamed from: g  reason: collision with root package name */
        public ProgressBar f42057g;

        /* renamed from: h  reason: collision with root package name */
        public ProgressBar f42058h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f42059i;

        /* renamed from: j  reason: collision with root package name */
        public FrameLayout f42060j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f42061k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f42062l;

        /* renamed from: m  reason: collision with root package name */
        public ConstraintLayout f42063m;

        /* renamed from: n  reason: collision with root package name */
        public SimpleDraweeView f42064n;

        /* renamed from: o  reason: collision with root package name */
        public TextView f42065o;

        /* renamed from: p  reason: collision with root package name */
        public LinearLayout f42066p;

        /* renamed from: q  reason: collision with root package name */
        public TextView f42067q;

        /* renamed from: r  reason: collision with root package name */
        public TextView f42068r;

        /* renamed from: s  reason: collision with root package name */
        public ProgressBar f42069s;

        /* renamed from: t  reason: collision with root package name */
        public ProgressBar f42070t;

        /* renamed from: u  reason: collision with root package name */
        public TextView f42071u;

        /* renamed from: v  reason: collision with root package name */
        public FrameLayout f42072v;

        /* renamed from: w  reason: collision with root package name */
        public TextView f42073w;

        /* renamed from: x  reason: collision with root package name */
        public ProgressBar f42074x;

        public s1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class s2 {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f42076a;

        s2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42078a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f42079b;

        t(AppBeanMain appBeanMain, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f42078a = appBeanMain;
            this.f42079b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f42078a.getIntentDataBean());
            h4 h4Var = h4.this;
            h4Var.T(this.f42079b.b() + 0);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class t0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42081a;

        t0(int i2) {
            this.f42081a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41751k.y(this.f42081a);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class t1 {

        /* renamed from: a  reason: collision with root package name */
        private ConstraintLayout f42083a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f42084b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42085c;

        /* renamed from: d  reason: collision with root package name */
        private LinearLayout f42086d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f42087e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f42088f;

        /* renamed from: g  reason: collision with root package name */
        private ProgressBar f42089g;

        /* renamed from: h  reason: collision with root package name */
        private ProgressBar f42090h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f42091i;

        /* renamed from: j  reason: collision with root package name */
        private FrameLayout f42092j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f42093k;

        t1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class t2 {

        /* renamed from: a  reason: collision with root package name */
        private View f42095a;

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f42096b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42097c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f42098d;

        /* renamed from: e  reason: collision with root package name */
        private RelativeLayout f42099e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f42100f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f42101g;

        /* renamed from: h  reason: collision with root package name */
        private SimpleDraweeView f42102h;

        /* renamed from: i  reason: collision with root package name */
        private RelativeLayout f42103i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f42104j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f42105k;

        /* renamed from: l  reason: collision with root package name */
        private LinearLayout f42106l;

        t2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42108a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f42109b;

        u(AppBeanMain appBeanMain, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f42108a = appBeanMain;
            this.f42109b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41748h.a(this.f42108a.getGame_info().getCrc_sign_id(), this.f42108a.getGame_info().getIs_bespeak());
            h4 h4Var = h4.this;
            h4Var.T(this.f42109b.b() + 1);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f42111a;

        u0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f42111a = homeBeanDTO;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f42111a.getIntentDataBean());
            h4.this.a0(this.f42111a.getPosition());
            h4.this.U(this.f42111a.getPosition());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class u1 {

        /* renamed from: a  reason: collision with root package name */
        private FrameLayout f42113a;

        /* renamed from: b  reason: collision with root package name */
        private HorizontalRecyclerView f42114b;

        u1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class u2 {

        /* renamed from: a  reason: collision with root package name */
        private RelativeLayout f42116a;

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f42117b;

        /* renamed from: c  reason: collision with root package name */
        private RelativeLayout f42118c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f42119d;

        /* renamed from: e  reason: collision with root package name */
        private LinearLayout f42120e;

        /* renamed from: f  reason: collision with root package name */
        private SimpleDraweeView f42121f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f42122g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f42123h;

        /* renamed from: i  reason: collision with root package name */
        private SimpleDraweeView f42124i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f42125j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f42126k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f42127l;

        /* renamed from: m  reason: collision with root package name */
        private LinearLayout f42128m;

        /* renamed from: n  reason: collision with root package name */
        private TextView f42129n;

        /* renamed from: o  reason: collision with root package name */
        private TextView f42130o;

        /* renamed from: p  reason: collision with root package name */
        private SimpleDraweeView f42131p;

        /* renamed from: q  reason: collision with root package name */
        private SimpleDraweeView f42132q;

        /* renamed from: r  reason: collision with root package name */
        private SimpleDraweeView f42133r;

        /* renamed from: s  reason: collision with root package name */
        private SimpleDraweeView f42134s;

        /* renamed from: t  reason: collision with root package name */
        public LinearLayout f42135t;

        u2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerBean f42137a;

        v(BannerBean bannerBean) {
            this.f42137a = bannerBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f42137a.getIntentDataBean());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class v0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f42139a;

        v0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f42139a = homeBeanDTO;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f42139a.getIntentDataBean());
            h4.this.a0(this.f42139a.getPosition());
            h4.this.U(this.f42139a.getPosition());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class v1 {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f42141a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f42142b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f42143c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f42144d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f42145e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f42146f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f42147g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f42148h;

        v1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class v2 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f42150a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42151b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f42152c;

        v2() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42154a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f42155b;

        w(AppBeanMain appBeanMain, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f42154a = appBeanMain;
            this.f42155b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(h4.this.f41742b, this.f42154a.getIntentDataBean());
            h4 h4Var = h4.this;
            h4Var.T(this.f42155b.b() + 0);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class w0 extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42157a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ u1 f42158b;

        w0(List list, u1 u1Var) {
            this.f42157a = list;
            this.f42158b = u1Var;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            h4.this.R(this.f42157a, this.f42158b.f42114b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class w1 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f42160a;

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f42161b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f42162c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f42163d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f42164e;

        /* renamed from: f  reason: collision with root package name */
        private SimpleDraweeView f42165f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f42166g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f42167h;

        w1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42169a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecomDatabeanBusiness f42170b;

        x(AppBeanMain appBeanMain, RecomDatabeanBusiness recomDatabeanBusiness) {
            this.f42169a = appBeanMain;
            this.f42170b = recomDatabeanBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41748h.a(this.f42169a.getGame_info().getCrc_sign_id(), this.f42169a.getGame_info().getIs_bespeak());
            h4 h4Var = h4.this;
            h4Var.T(this.f42170b.b() + 1);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class x0 implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42172a;

        x0(List list) {
            this.f42172a = list;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (h4.this.f41753m != null) {
                h4.this.f41753m.b(i2, this.f42172a);
            }
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class x1 {

        /* renamed from: a  reason: collision with root package name */
        private TextView f42174a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42175b;

        x1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PapaMainGameBespeakInfo f42177a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MgpapaMainItemBean f42178b;

        y(PapaMainGameBespeakInfo papaMainGameBespeakInfo, MgpapaMainItemBean mgpapaMainItemBean) {
            this.f42177a = papaMainGameBespeakInfo;
            this.f42178b = mgpapaMainItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(h4.this.f41742b, this.f42177a.getBespeak_list_url());
            h4.this.T(this.f42178b.getMoreType2());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class y0 extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42180a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i2 f42181b;

        y0(List list, i2 i2Var) {
            this.f42180a = list;
            this.f42181b = i2Var;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            h4.this.S(this.f42180a, this.f42181b.f41893a);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class y1 {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f42183a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42184b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f42185c;

        y1() {
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42187a;

        z(int i2) {
            this.f42187a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.f41751k.y(this.f42187a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    public class z0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.e f42189a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AppBean f42190b;

        z0(com.papa.sim.statistic.e eVar, AppBean appBean) {
            this.f42189a = eVar;
            this.f42190b = appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h4.this.X(this.f42189a);
            IntentUtil.getInstance().goGameDetialActivity(h4.this.f41742b, this.f42190b.getCrc_sign_id(), this.f42190b.getGame_info_tpl_type(), this.f42190b.getSp_tpl_two_position(), this.f42190b.get_from_type());
        }
    }

    /* compiled from: PapaMainAdapter.java */
    /* loaded from: classes3.dex */
    class z1 {

        /* renamed from: a  reason: collision with root package name */
        private TextView f42192a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42193b;

        z1() {
        }
    }

    public h4(Context context, Fragment fragment, List<MgpapaMainItemBean> list, com.join.android.app.component.video.c cVar, o1.e eVar) {
        this.f41742b = context;
        this.f41743c = fragment;
        this.f41751k = cVar;
        this.f41741a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f41748h = eVar;
        this.f41744d = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(List<RecomDatabeanBusiness> list, int i4) {
        if (i4 < list.size()) {
            RecomDatabeanBusiness recomDatabeanBusiness = list.get(i4);
            IntentUtil.getInstance().intentActivity(this.f41742b, recomDatabeanBusiness.getSub().get(0).getIntentDataBean());
            T(recomDatabeanBusiness.b() + "0");
        }
    }

    private String D(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        if (homeBeanDTO == null || homeBeanDTO.getG_info() == null) {
            return null;
        }
        if (!TextUtils.isEmpty(homeBeanDTO.getG_info().getId()) && !TextUtils.equals(homeBeanDTO.getG_info().getId(), "0")) {
            return homeBeanDTO.getG_info().getId();
        }
        return homeBeanDTO.getG_info().getMod_id();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(View view) {
        com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F(View view) {
        com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(List list, int i4, BaseQuickAdapter baseQuickAdapter, View view, int i5) {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) list.get(i5);
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        try {
            ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.loading_progress);
            TextView textView = (TextView) view.findViewById(R.id.tvBtn);
            progressBar.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
            textView.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        l1 l1Var = this.f41753m;
        if (l1Var != null) {
            l1Var.a(i4, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f41742b, homeBeanDTO.getIntentDataBean());
        a0(null);
        T("3-1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(View view) {
        this.f41742b.startActivity(new Intent(this.f41742b, EverdayNewGameActivity.class));
        a0(null);
        T("3-3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f41742b, homeBeanDTO.getIntentDataBean());
        a0(null);
        T("3-2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, p1 p1Var, int i4, View view) {
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        p1Var.f42002n.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        p1Var.f41999k.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        l1 l1Var = this.f41753m;
        if (l1Var != null) {
            l1Var.a(i4, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f41742b, homeBeanDTO.getIntentDataBean());
        a0(homeBeanDTO.getPosition());
        U(homeBeanDTO.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(List list, BaseQuickAdapter baseQuickAdapter, View view, int i4) {
        PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = (PAPAHomeBeanV7.NgSelectionDTO) list.get(i4);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(ngSelectionDTO.getId());
        if (intentDateBean.getExtBean() == null) {
            intentDateBean.setExtBean(new ExtBean());
        }
        intentDateBean.getExtBean().setFrom(String.valueOf(ngSelectionDTO.get_from()));
        intentDateBean.getExtBean().set_from_type(ngSelectionDTO.get_from_type());
        IntentUtil.getInstance().intentActivity(this.f41742b, intentDateBean);
        a0(ngSelectionDTO.getPosition());
        U(ngSelectionDTO.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(View view) {
        com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(1));
        a0(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(List list, BaseQuickAdapter baseQuickAdapter, View view, int i4) {
        IntentUtil.getInstance().intentActivity(this.f41742b, ((PAPAHomeBeanV7.HomeBeanDTO) list.get(i4)).getIntentDataBean());
        a0(((PAPAHomeBeanV7.HomeBeanDTO) list.get(i4)).getPosition());
        U(((PAPAHomeBeanV7.HomeBeanDTO) list.get(i4)).getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f41742b, homeBeanDTO.getIntentDataBean());
        a0(homeBeanDTO.getPosition());
        U(homeBeanDTO.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, ProgressBar progressBar, TextView textView, int i4, View view) {
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        progressBar.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        textView.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        l1 l1Var = this.f41753m;
        if (l1Var != null) {
            l1Var.a(i4, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(List<PAPAHomeBeanV7.NgSelectionDTO> list, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager;
        if (recyclerView == null || list == null || (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) == null) {
            return;
        }
        int findLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        for (int i4 = 0; i4 <= Math.min(findLastCompletelyVisibleItemPosition, list.size() - 1); i4++) {
            if (!list.get(i4).isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("home");
                ext.setFrom("204");
                ext.setGameId(list.get(i4).getId());
                ext.setPosition(list.get(i4).getPosition());
                com.papa.sim.statistic.p.l(this.f41742b).h0(com.papa.sim.statistic.Event.expGameAdPage, ext, list.get(i4).getId());
                list.get(i4).setHasExposure(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(List<PAPAHomeBeanV7.HomeBeanDTO> list, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager;
        if (recyclerView == null || list == null || (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) == null) {
            return;
        }
        int findLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        for (int i4 = 0; i4 <= Math.min(findLastCompletelyVisibleItemPosition, list.size() - 1); i4++) {
            if (!list.get(i4).isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("home");
                ext.setFrom("206");
                ext.setGameId(D(list.get(i4)));
                ext.setPosition(list.get(i4).getPosition());
                com.papa.sim.statistic.p.l(this.f41742b).h0(com.papa.sim.statistic.Event.expGameAdPage, ext, D(list.get(i4)));
                list.get(i4).setHasExposure(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(String str) {
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f41742b);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f41742b).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(String str) {
        com.papa.sim.statistic.p.l(this.f41742b).s(ExtFrom.home.name(), str, AccountUtil_.getInstance_(this.f41742b).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(Event event, String str, String str2, StatFactory.VolcanoOther volcanoOther, boolean z3) {
        String str3;
        String str4;
        String str5;
        String[] split = str.split("-");
        String str6 = "模块";
        str3 = "0";
        if (split.length > 0) {
            if (split[0].equals("4")) {
                str5 = split.length > 1 ? split[1] : "0";
                str4 = "大家都在玩";
            } else if (split[0].equals("7")) {
                str5 = split.length > 1 ? split[1] : "0";
                str4 = "网游推荐";
            } else if (split[0].equals("5")) {
                str5 = split.length > 1 ? split[1] : "0";
                str4 = "最新网游";
            } else if (split[0].equals("0")) {
                str3 = split.length > 2 ? split[2] : "0";
                if (split.length > 3) {
                    str6 = "模块" + split[1];
                    str3 = split[3];
                }
                str4 = str6;
                str5 = str3;
            }
            com.join.mgps.Util.t0.d("volcannoEvent", str4 + "  " + str5);
            StatFactory.Companion.getInstance(this.f41742b).sendEvent(new StatFactory.VolcanoEvent(event, str2, new StatFactory.SpmData("wufun", "home", str4, str5, false), volcanoOther, z3));
        }
        str6 = "";
        str4 = str6;
        str5 = str3;
        com.join.mgps.Util.t0.d("volcannoEvent", str4 + "  " + str5);
        StatFactory.Companion.getInstance(this.f41742b).sendEvent(new StatFactory.VolcanoEvent(event, str2, new StatFactory.SpmData("wufun", "home", str4, str5, false), volcanoOther, z3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(String str, String str2, StatFactory.VolcanoOther volcanoOther, boolean z3) {
        V(Event.click, str, str2, volcanoOther, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(com.papa.sim.statistic.e eVar) {
        eVar.j(AccountUtil_.getInstance_(this.f41742b).getUid());
        com.papa.sim.statistic.p.l(this.f41742b).r(eVar);
    }

    private void Y(AppBean appBean, TextView textView, SimpleDraweeView simpleDraweeView, com.papa.sim.statistic.e eVar) {
        textView.setText(appBean.getGame_name());
        textView.setVisibility(0);
        simpleDraweeView.setVisibility(0);
        MyImageLoader.d(simpleDraweeView, R.drawable.banner_normal_icon, appBean.getIco_remote());
        simpleDraweeView.setOnClickListener(new z0(eVar, appBean));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(String str) {
        Fragment fragment = this.f41743c;
        if (fragment instanceof PapaMainV2Fragment) {
            ((PapaMainV2Fragment) fragment).s1(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        if (C0 == null) {
            return;
        }
        long time = com.join.mgps.Util.x.E(com.join.mgps.Util.x.l() + " 23:59:59").getTime() - System.currentTimeMillis();
        if (time <= 0 || this.f41746f != null) {
            return;
        }
        f1 f1Var = new f1(time, 1000L);
        this.f41746f = f1Var;
        f1Var.start();
    }

    private void e0(TextView textView, RecomDatabeanBusiness recomDatabeanBusiness, SimpleDraweeView simpleDraweeView, TextView textView2, TextView textView3, RelativeLayout relativeLayout, String str, String str2) {
        AppBean game_info = recomDatabeanBusiness.getSub().get(0).getGame_info();
        if (game_info == null) {
            return;
        }
        MyImageLoader.d(simpleDraweeView, R.drawable.main_normal_icon, game_info.getIco_remote());
        textView2.setText(game_info.getGame_name());
        if (textView3 != null) {
            textView3.setText(game_info.getSize() + "M");
        }
        DownloadTask a4 = recomDatabeanBusiness.a();
        UtilsMy.v2(game_info.getSp_tag_info(), relativeLayout, a4);
        if (textView3 != null) {
            textView3.setVisibility(0);
        }
        if ((ConstantIntEnum.H5.value() + "").equals(game_info.getPlugin_num())) {
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
            textView.setText("开始");
            textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
            textView3.setVisibility(8);
        } else if (a4 == null) {
            if (UtilsMy.e0(game_info.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f41742b).c(this.f41742b, game_info.getPackageName()) && UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41742b).k(this.f41742b, game_info.getPackageName());
                    if (com.join.mgps.Util.d2.i(game_info.getVer()) && k4.d() < Integer.parseInt(game_info.getVer())) {
                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                        textView.setText("更新");
                        textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                    } else {
                        textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        textView.setText(this.f41742b.getResources().getString(R.string.download_status_finished));
                        textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_main_color));
                    }
                } else {
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                    UtilsMy.m2(textView, relativeLayout, game_info);
                }
            } else {
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                UtilsMy.m2(textView, relativeLayout, game_info);
            }
        } else {
            int status = a4.getStatus();
            if (UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    textView.setText("暂停中");
                } else if (status == 48) {
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("安装中");
                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                    textView.setText("更新");
                                                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                    break;
                                                case 10:
                                                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    textView.setText("等待");
                                                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                                case 11:
                                                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                    textView.setText("安装");
                                                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                    break;
                                                case 12:
                                                    textView.setBackgroundResource(R.drawable.extract);
                                                    textView.setText("解压中");
                                                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    textView.setBackgroundResource(R.drawable.reextract);
                                                    textView.setText("解压");
                                                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        textView.setText(this.f41742b.getResources().getString(R.string.download_status_finished));
                        textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_main_color));
                    }
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("继续");
                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                } else {
                    UtilsMy.C3(a4);
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("暂停");
                    textView.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                }
            }
            textView.setBackgroundResource(R.drawable.recom_green_butn);
            UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
            UtilsMy.m2(textView, relativeLayout, game_info);
        }
        relativeLayout.setOnClickListener(new k1(recomDatabeanBusiness, 1, str, str2));
    }

    private void f0(s1 s1Var, final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, boolean z3, final int i4) {
        if (s1Var == null) {
            return;
        }
        ConstraintLayout constraintLayout = z3 ? s1Var.f42051a : s1Var.f42063m;
        SimpleDraweeView simpleDraweeView = z3 ? s1Var.f42052b : s1Var.f42064n;
        TextView textView = z3 ? s1Var.f42053c : s1Var.f42065o;
        TextView textView2 = z3 ? s1Var.f42059i : s1Var.f42071u;
        FrameLayout frameLayout = z3 ? s1Var.f42060j : s1Var.f42072v;
        TextView textView3 = z3 ? s1Var.f42061k : s1Var.f42073w;
        LinearLayout linearLayout = z3 ? s1Var.f42054d : s1Var.f42066p;
        TextView textView4 = z3 ? s1Var.f42055e : s1Var.f42067q;
        TextView textView5 = z3 ? s1Var.f42056f : s1Var.f42068r;
        ProgressBar progressBar = z3 ? s1Var.f42057g : s1Var.f42069s;
        ProgressBar progressBar2 = z3 ? s1Var.f42058h : s1Var.f42070t;
        final ProgressBar progressBar3 = z3 ? s1Var.f42062l : s1Var.f42074x;
        MyImageLoader.i(simpleDraweeView, homeBeanDTO.getBig_pic(), r.c.f12144g);
        PAPAHomeBeanV7.GInfoDTO g_info = homeBeanDTO.getG_info();
        textView.setText(g_info == null ? homeBeanDTO.getTitle() : g_info.getName());
        textView3.setVisibility(0);
        progressBar3.setVisibility(4);
        if (g_info != null && !TextUtils.isEmpty(g_info.getTag_name())) {
            StringBuilder sb = new StringBuilder();
            String[] split = g_info.getTag_name().split(",");
            for (int i5 = 0; i5 < split.length; i5++) {
                sb.append(split[i5]);
                sb.append(" | ");
                if (i5 >= 1) {
                    break;
                }
            }
            textView2.setText(sb.substring(0, sb.length() - 3));
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h4.this.P(homeBeanDTO, view);
            }
        });
        final TextView textView6 = textView3;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.d4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h4.this.Q(homeBeanDTO, progressBar3, textView6, i4, view);
            }
        });
        update(homeBeanDTO, textView, textView2, frameLayout, textView3, linearLayout, textView4, textView5, progressBar, progressBar2);
    }

    private void h0(TextView textView, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, boolean z3, boolean z4) {
        if (z3) {
            textView.setVisibility(0);
            linearLayout.setVisibility(8);
            progressBar.setVisibility(8);
            progressBar2.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        textView.setVisibility(8);
        if (z4) {
            progressBar2.setVisibility(0);
            progressBar.setVisibility(8);
            return;
        }
        progressBar.setVisibility(0);
        progressBar2.setVisibility(8);
    }

    private void update(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, TextView textView, TextView textView2, FrameLayout frameLayout, TextView textView3, LinearLayout linearLayout, TextView textView4, TextView textView5, ProgressBar progressBar, ProgressBar progressBar2) {
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                textView3.setText("开始");
                textView.setVisibility(8);
                return;
            }
        }
        if (downloadTask == null) {
            h0(textView2, linearLayout, progressBar2, progressBar, true, false);
            textView3.setText("获取");
            if (gameBean == null) {
                return;
            }
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f41742b).c(this.f41742b, gameBean.getPackageName()) && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41742b).k(this.f41742b, gameBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(gameBean.getVer()) && k4.d() < Integer.parseInt(gameBean.getVer())) {
                        textView3.setText("更新");
                        return;
                    } else {
                        textView3.setText("启动");
                        return;
                    }
                }
                UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.t2(textView3, frameLayout, gameBean);
                return;
            }
            UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
            UtilsMy.t2(textView3, frameLayout, gameBean);
            return;
        }
        int status = downloadTask.getStatus();
        if (gameBean != null && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                textView3.setText("暂停");
                return;
            } else if (status == 48) {
                textView3.setText("安装中");
                h0(textView2, linearLayout, progressBar2, progressBar, true, false);
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7) {
                                if (status != 42) {
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                textView3.setText("更新");
                                                h0(textView2, linearLayout, progressBar2, progressBar, true, false);
                                                return;
                                            case 10:
                                                textView3.setText("等待");
                                                h0(textView2, linearLayout, progressBar2, progressBar, false, false);
                                                textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                try {
                                                    progressBar2.setProgress((int) downloadTask.getProgress());
                                                } catch (Exception e4) {
                                                    e4.printStackTrace();
                                                }
                                                textView5.setText("等待中");
                                                return;
                                            case 11:
                                                textView3.setText("安装");
                                                h0(textView2, linearLayout, progressBar2, progressBar, true, false);
                                                return;
                                            case 12:
                                                h0(textView2, linearLayout, progressBar2, progressBar, false, true);
                                                textView4.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                textView5.setText("解压中..");
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                                textView3.setText("解压中");
                                                return;
                                            case 13:
                                                h0(textView2, linearLayout, progressBar2, progressBar, false, true);
                                                textView4.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                textView5.setText("点击重新解压");
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                                textView3.setText("解压");
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    textView3.setText("启动");
                    h0(textView2, linearLayout, progressBar2, progressBar, true, true);
                    return;
                }
                textView3.setText("继续");
                h0(textView2, linearLayout, progressBar2, progressBar, false, false);
                try {
                    if (downloadTask.getSize() == 0) {
                        textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    } else {
                        textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    }
                    progressBar2.setProgress((int) downloadTask.getProgress());
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                textView5.setText("暂停中");
                return;
            } else {
                UtilsMy.C3(downloadTask);
                textView3.setText("暂停");
                h0(textView2, linearLayout, progressBar2, progressBar, false, false);
                if (downloadTask.getSize() == 0) {
                    textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                } else {
                    textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                }
                progressBar2.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                textView5.setText(speed + "/S");
                return;
            }
        }
        textView3.setText("获取");
        UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
        UtilsMy.t2(textView3, frameLayout, gameBean);
        h0(textView2, linearLayout, progressBar2, progressBar, true, false);
    }

    public void Z(List<MgpapaMainItemBean> list) {
        this.f41744d = list;
        notifyDataSetChanged();
    }

    public void b0(l1 l1Var) {
        this.f41753m = l1Var;
    }

    public void d0() {
        u2 u2Var = C0;
        if (u2Var == null) {
            return;
        }
        u2Var.f42128m.setVisibility(8);
        C0.f42125j.setVisibility(0);
        TextView textView = C0.f42126k;
        textView.setText(this.f41749i + "");
    }

    void g0(w1 w1Var, RecomDatabeanBusiness recomDatabeanBusiness, int i4, int i5) {
        TextView textView;
        TextView textView2;
        int i6;
        TextView textView3;
        List<AppBeanMain> sub;
        ConstantIntEnum constantIntEnum;
        SimpleDraweeView simpleDraweeView = null;
        if (i5 == 0) {
            simpleDraweeView = w1Var.f42162c;
            textView = w1Var.f42163d;
            textView2 = w1Var.f42164e;
            i6 = (i4 * 2) - 1;
            textView3 = (TextView) w1Var.f42160a.findViewById(R.id.moneyText);
        } else if (i5 != 1) {
            textView = null;
            textView2 = null;
            textView3 = null;
            i6 = 0;
        } else if (recomDatabeanBusiness == null) {
            w1Var.f42161b.setVisibility(4);
            return;
        } else {
            TextView textView4 = (TextView) w1Var.f42161b.findViewById(R.id.moneyText2);
            w1Var.f42161b.setVisibility(0);
            i6 = i4 * 2;
            simpleDraweeView = w1Var.f42165f;
            textView = w1Var.f42166g;
            textView2 = w1Var.f42167h;
            textView3 = textView4;
        }
        if (recomDatabeanBusiness == null || (sub = recomDatabeanBusiness.getSub()) == null || sub.size() <= 0) {
            return;
        }
        AppBeanMain appBeanMain = sub.get(0);
        IntentDateBean intentDataBean = appBeanMain.getIntentDataBean();
        ModleBean main = recomDatabeanBusiness.getMain();
        if (main != null) {
            int link_type = intentDataBean.getLink_type();
            if (link_type == 1) {
                AppBean game_info = appBeanMain.getGame_info();
                if (game_info != null) {
                    UtilsMy.w2(game_info.getSp_tag_info(), textView3);
                    MyImageLoader.f(simpleDraweeView, R.drawable.rect_normal_icon, main.getPic_remote(), MyImageLoader.C(this.f41742b));
                    textView.setText(game_info.getGame_name());
                    StringBuilder sb = new StringBuilder();
                    sb.append(ConstantIntEnum.H5.value());
                    sb.append("");
                    if (sb.toString().equals(game_info.getPlugin_num())) {
                        textView2.setBackgroundResource(R.drawable.recom_blue_butn);
                        textView2.setText("开始");
                        textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                    } else {
                        if (game_info.getPlugin_num().equals(constantIntEnum.value() + "")) {
                            textView2.setBackgroundResource(R.drawable.recom_blue_butn);
                            textView2.setText("开始");
                            textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                        } else if (recomDatabeanBusiness.a() == null) {
                            if (UtilsMy.e0(game_info.getTag_info())) {
                                boolean c4 = com.join.android.app.common.utils.a.g0(this.f41742b).c(this.f41742b, game_info.getPackageName());
                                if (UtilsMy.m0(appBeanMain.getGame_info().getPay_tag_info(), appBeanMain.getGame_info().getCrc_sign_id()) > 0) {
                                    c4 = false;
                                }
                                if (c4) {
                                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41742b).k(this.f41742b, game_info.getPackageName());
                                    if (com.join.mgps.Util.d2.i(game_info.getVer()) && k4.d() < Integer.parseInt(game_info.getVer())) {
                                        textView2.setBackgroundResource(R.drawable.app_green_butn);
                                        textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                        textView2.setText("更新");
                                    } else {
                                        textView2.setBackgroundResource(R.drawable.app_maincolor_butn);
                                        textView2.setText(this.f41742b.getResources().getString(R.string.download_status_finished));
                                        textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_main_color));
                                    }
                                } else {
                                    textView2.setBackgroundResource(R.drawable.app_green_butn);
                                    if (appBeanMain.getGame_info() == null || appBeanMain.getGame_info().getPay_tag_info() == null || appBeanMain.getGame_info().getPay_tag_info().getPay_game_amount() <= 0 || n1.e0.o().p(appBeanMain.getGame_info().getCrc_sign_id())) {
                                        textView2.setText(this.f41742b.getResources().getString(R.string.download_status_download));
                                    } else {
                                        textView2.setText(this.f41742b.getResources().getString(R.string.pay_game_amount, appBeanMain.getGame_info().getPay_tag_info().getPayGameAmount()));
                                    }
                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                    UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                                    UtilsMy.q2(textView2, game_info);
                                }
                            } else {
                                textView2.setBackgroundResource(R.drawable.app_green_butn);
                                if (appBeanMain.getGame_info() == null || appBeanMain.getGame_info().getPay_tag_info() == null || appBeanMain.getGame_info().getPay_tag_info().getPay_game_amount() <= 0 || n1.e0.o().p(appBeanMain.getGame_info().getCrc_sign_id())) {
                                    textView2.setText(this.f41742b.getResources().getString(R.string.download_status_download));
                                } else {
                                    textView2.setText(this.f41742b.getResources().getString(R.string.pay_game_amount, appBeanMain.getGame_info().getPay_tag_info().getPayGameAmount()));
                                }
                                textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                                UtilsMy.q2(textView2, game_info);
                            }
                        } else {
                            if (UtilsMy.m0(appBeanMain.getGame_info().getPay_tag_info(), appBeanMain.getGame_info().getCrc_sign_id()) > 0) {
                                recomDatabeanBusiness.a().setStatus(43);
                            }
                            int status = recomDatabeanBusiness.a().getStatus();
                            if (status != 0) {
                                if (status == 27) {
                                    textView2.setText("暂停中");
                                } else if (status == 48) {
                                    textView2.setBackgroundResource(R.drawable.app_blue_butn);
                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                    textView2.setText("安装中");
                                } else if (status != 2) {
                                    if (status != 3) {
                                        if (status != 5) {
                                            if (status != 6) {
                                                if (status != 7) {
                                                    if (status != 42) {
                                                        if (status != 43) {
                                                            switch (status) {
                                                                case 9:
                                                                    textView2.setBackgroundResource(R.drawable.app_green_butn);
                                                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                                    textView2.setText("更新");
                                                                    break;
                                                                case 10:
                                                                    textView2.setBackgroundResource(R.drawable.app_blue_butn);
                                                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                                    textView2.setText("等待");
                                                                    break;
                                                                case 11:
                                                                    textView2.setBackgroundResource(R.drawable.app_green_butn);
                                                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                                    textView2.setText("安装");
                                                                    break;
                                                                case 12:
                                                                    textView2.setBackgroundResource(R.drawable.app_extract);
                                                                    textView2.setText("解压中");
                                                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_grey_color));
                                                                    break;
                                                                case 13:
                                                                    textView2.setBackgroundResource(R.drawable.app_blue_butn);
                                                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                                    textView2.setText("解压");
                                                                    break;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        textView2.setBackgroundResource(R.drawable.app_maincolor_butn);
                                        textView2.setText(this.f41742b.getResources().getString(R.string.download_status_finished));
                                        textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_main_color));
                                    }
                                    textView2.setBackgroundResource(R.drawable.app_blue_butn);
                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                    textView2.setText("继续");
                                } else {
                                    textView2.setBackgroundResource(R.drawable.app_blue_butn);
                                    textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                    textView2.setText("暂停");
                                }
                            }
                            textView2.setBackgroundResource(R.drawable.app_blue_butn);
                            textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                            if (appBeanMain.getGame_info() == null || appBeanMain.getGame_info().getPay_tag_info() == null || appBeanMain.getGame_info().getPay_tag_info().getPay_game_amount() <= 0 || n1.e0.o().p(appBeanMain.getGame_info().getCrc_sign_id())) {
                                textView2.setText(this.f41742b.getResources().getString(R.string.download_status_download));
                            } else {
                                textView2.setText(this.f41742b.getResources().getString(R.string.pay_game_amount, appBeanMain.getGame_info().getPay_tag_info().getPayGameAmount()));
                            }
                            UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                            UtilsMy.q2(textView2, game_info);
                        }
                    }
                    textView2.setOnClickListener(new a1(recomDatabeanBusiness, game_info, i6));
                }
            } else if (link_type != 4 && link_type != 5) {
                MyImageLoader.f(simpleDraweeView, R.drawable.rect_normal_icon, main.getPic_remote(), MyImageLoader.C(this.f41742b));
                textView.setText(main.getSub_title());
                textView2.setBackgroundResource(R.drawable.app_green_butn);
                textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                textView2.setText("查看");
                textView2.setTextSize(2, 12.0f);
                textView2.setOnClickListener(new d1(intentDataBean, i6));
            } else {
                MyImageLoader.f(simpleDraweeView, R.drawable.rect_normal_icon, main.getPic_remote(), MyImageLoader.C(this.f41742b));
                textView.setText(main.getSub_title());
                textView2.setBackgroundResource(R.drawable.app_green_butn);
                textView2.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                textView2.setText("打开");
                textView2.setTextSize(2, 12.0f);
                textView2.setOnClickListener(new b1(intentDataBean, i6));
            }
        }
        simpleDraweeView.setOnClickListener(new e1(i6, intentDataBean));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41744d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i4) {
        return this.f41744d.get(i4);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i4) {
        return this.f41744d.get(i4).getShowtype();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v104, types: [com.join.mgps.adapter.h4$b2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v93, types: [com.join.mgps.adapter.h4$p2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v98, types: [com.join.mgps.adapter.h4$m1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v158 */
    /* JADX WARN: Type inference failed for: r14v165 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v44 */
    /* JADX WARN: Type inference failed for: r16v19 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v38 */
    /* JADX WARN: Type inference failed for: r16v39 */
    /* JADX WARN: Type inference failed for: r16v54 */
    /* JADX WARN: Type inference failed for: r16v55 */
    /* JADX WARN: Type inference failed for: r16v57 */
    /* JADX WARN: Type inference failed for: r16v58 */
    /* JADX WARN: Type inference failed for: r16v59 */
    /* JADX WARN: Type inference failed for: r16v60 */
    /* JADX WARN: Type inference failed for: r16v61 */
    /* JADX WARN: Type inference failed for: r16v62 */
    /* JADX WARN: Type inference failed for: r16v63 */
    /* JADX WARN: Type inference failed for: r16v64 */
    /* JADX WARN: Type inference failed for: r16v65 */
    /* JADX WARN: Type inference failed for: r16v66 */
    /* JADX WARN: Type inference failed for: r16v67 */
    /* JADX WARN: Type inference failed for: r16v68 */
    /* JADX WARN: Type inference failed for: r16v69 */
    /* JADX WARN: Type inference failed for: r16v70 */
    /* JADX WARN: Type inference failed for: r16v71 */
    /* JADX WARN: Type inference failed for: r16v72 */
    /* JADX WARN: Type inference failed for: r16v73 */
    /* JADX WARN: Type inference failed for: r16v74 */
    /* JADX WARN: Type inference failed for: r16v75 */
    /* JADX WARN: Type inference failed for: r16v76 */
    /* JADX WARN: Type inference failed for: r16v77 */
    /* JADX WARN: Type inference failed for: r16v78 */
    /* JADX WARN: Type inference failed for: r16v79 */
    /* JADX WARN: Type inference failed for: r16v80 */
    /* JADX WARN: Type inference failed for: r16v81 */
    /* JADX WARN: Type inference failed for: r16v82 */
    /* JADX WARN: Type inference failed for: r16v83 */
    /* JADX WARN: Type inference failed for: r16v85 */
    /* JADX WARN: Type inference failed for: r16v86 */
    /* JADX WARN: Type inference failed for: r16v87 */
    /* JADX WARN: Type inference failed for: r16v88 */
    /* JADX WARN: Type inference failed for: r16v89 */
    /* JADX WARN: Type inference failed for: r16v90 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v19 */
    /* JADX WARN: Type inference failed for: r17v20 */
    /* JADX WARN: Type inference failed for: r17v21 */
    /* JADX WARN: Type inference failed for: r17v38 */
    /* JADX WARN: Type inference failed for: r17v39, types: [com.join.mgps.adapter.h4$l2] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v87 */
    /* JADX WARN: Type inference failed for: r17v88 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r19v81 */
    /* JADX WARN: Type inference failed for: r20v77 */
    /* JADX WARN: Type inference failed for: r21v19, types: [com.join.mgps.adapter.h4$s1] */
    /* JADX WARN: Type inference failed for: r21v77 */
    /* JADX WARN: Type inference failed for: r22v77 */
    /* JADX WARN: Type inference failed for: r24v33 */
    /* JADX WARN: Type inference failed for: r24v37 */
    /* JADX WARN: Type inference failed for: r24v38 */
    /* JADX WARN: Type inference failed for: r24v40 */
    /* JADX WARN: Type inference failed for: r24v42 */
    /* JADX WARN: Type inference failed for: r24v43 */
    /* JADX WARN: Type inference failed for: r24v44 */
    /* JADX WARN: Type inference failed for: r24v45 */
    /* JADX WARN: Type inference failed for: r24v46 */
    /* JADX WARN: Type inference failed for: r24v47 */
    /* JADX WARN: Type inference failed for: r24v48 */
    /* JADX WARN: Type inference failed for: r24v49 */
    /* JADX WARN: Type inference failed for: r24v50 */
    /* JADX WARN: Type inference failed for: r24v51 */
    /* JADX WARN: Type inference failed for: r24v52 */
    /* JADX WARN: Type inference failed for: r24v53 */
    /* JADX WARN: Type inference failed for: r24v54 */
    /* JADX WARN: Type inference failed for: r24v55 */
    /* JADX WARN: Type inference failed for: r24v56 */
    /* JADX WARN: Type inference failed for: r24v57 */
    /* JADX WARN: Type inference failed for: r24v58 */
    /* JADX WARN: Type inference failed for: r24v59 */
    /* JADX WARN: Type inference failed for: r24v60 */
    /* JADX WARN: Type inference failed for: r24v61 */
    /* JADX WARN: Type inference failed for: r24v62 */
    /* JADX WARN: Type inference failed for: r24v63 */
    /* JADX WARN: Type inference failed for: r24v64 */
    /* JADX WARN: Type inference failed for: r24v65 */
    /* JADX WARN: Type inference failed for: r24v66 */
    /* JADX WARN: Type inference failed for: r24v67 */
    /* JADX WARN: Type inference failed for: r24v68 */
    /* JADX WARN: Type inference failed for: r24v69 */
    /* JADX WARN: Type inference failed for: r24v70 */
    /* JADX WARN: Type inference failed for: r24v71 */
    /* JADX WARN: Type inference failed for: r24v72 */
    /* JADX WARN: Type inference failed for: r24v73 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v103 */
    /* JADX WARN: Type inference failed for: r25v104 */
    /* JADX WARN: Type inference failed for: r25v11 */
    /* JADX WARN: Type inference failed for: r25v12 */
    /* JADX WARN: Type inference failed for: r25v13 */
    /* JADX WARN: Type inference failed for: r25v14 */
    /* JADX WARN: Type inference failed for: r25v15 */
    /* JADX WARN: Type inference failed for: r25v17 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v22 */
    /* JADX WARN: Type inference failed for: r25v23 */
    /* JADX WARN: Type inference failed for: r25v24 */
    /* JADX WARN: Type inference failed for: r25v36 */
    /* JADX WARN: Type inference failed for: r25v38, types: [com.join.mgps.adapter.h4$t2] */
    /* JADX WARN: Type inference failed for: r25v39 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v40 */
    /* JADX WARN: Type inference failed for: r25v41 */
    /* JADX WARN: Type inference failed for: r25v42 */
    /* JADX WARN: Type inference failed for: r25v43 */
    /* JADX WARN: Type inference failed for: r25v44 */
    /* JADX WARN: Type inference failed for: r25v45 */
    /* JADX WARN: Type inference failed for: r25v46 */
    /* JADX WARN: Type inference failed for: r25v47 */
    /* JADX WARN: Type inference failed for: r25v48 */
    /* JADX WARN: Type inference failed for: r25v49 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v50 */
    /* JADX WARN: Type inference failed for: r25v51 */
    /* JADX WARN: Type inference failed for: r25v52 */
    /* JADX WARN: Type inference failed for: r25v53 */
    /* JADX WARN: Type inference failed for: r25v54 */
    /* JADX WARN: Type inference failed for: r25v56 */
    /* JADX WARN: Type inference failed for: r25v57 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v10 */
    /* JADX WARN: Type inference failed for: r27v11 */
    /* JADX WARN: Type inference failed for: r27v13 */
    /* JADX WARN: Type inference failed for: r27v16 */
    /* JADX WARN: Type inference failed for: r27v17 */
    /* JADX WARN: Type inference failed for: r27v18 */
    /* JADX WARN: Type inference failed for: r27v28 */
    /* JADX WARN: Type inference failed for: r27v29, types: [com.join.mgps.adapter.h4$o2] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r27v71 */
    /* JADX WARN: Type inference failed for: r27v72 */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r27v9 */
    /* JADX WARN: Type inference failed for: r28v29 */
    /* JADX WARN: Type inference failed for: r28v30 */
    /* JADX WARN: Type inference failed for: r28v32 */
    /* JADX WARN: Type inference failed for: r28v33 */
    /* JADX WARN: Type inference failed for: r28v34 */
    /* JADX WARN: Type inference failed for: r28v35 */
    /* JADX WARN: Type inference failed for: r28v36 */
    /* JADX WARN: Type inference failed for: r28v37 */
    /* JADX WARN: Type inference failed for: r28v38 */
    /* JADX WARN: Type inference failed for: r28v39 */
    /* JADX WARN: Type inference failed for: r28v40 */
    /* JADX WARN: Type inference failed for: r28v41 */
    /* JADX WARN: Type inference failed for: r28v42 */
    /* JADX WARN: Type inference failed for: r28v43 */
    /* JADX WARN: Type inference failed for: r28v44 */
    /* JADX WARN: Type inference failed for: r28v45 */
    /* JADX WARN: Type inference failed for: r28v46 */
    /* JADX WARN: Type inference failed for: r28v47 */
    /* JADX WARN: Type inference failed for: r28v48 */
    /* JADX WARN: Type inference failed for: r28v50 */
    /* JADX WARN: Type inference failed for: r28v51 */
    /* JADX WARN: Type inference failed for: r28v52 */
    /* JADX WARN: Type inference failed for: r28v53 */
    /* JADX WARN: Type inference failed for: r28v54 */
    /* JADX WARN: Type inference failed for: r28v55 */
    /* JADX WARN: Type inference failed for: r28v56 */
    /* JADX WARN: Type inference failed for: r28v57 */
    /* JADX WARN: Type inference failed for: r28v58 */
    /* JADX WARN: Type inference failed for: r28v59 */
    /* JADX WARN: Type inference failed for: r28v60 */
    /* JADX WARN: Type inference failed for: r28v61 */
    /* JADX WARN: Type inference failed for: r28v62 */
    /* JADX WARN: Type inference failed for: r28v63 */
    /* JADX WARN: Type inference failed for: r28v64 */
    /* JADX WARN: Type inference failed for: r28v65 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v10 */
    /* JADX WARN: Type inference failed for: r29v11 */
    /* JADX WARN: Type inference failed for: r29v12 */
    /* JADX WARN: Type inference failed for: r29v13 */
    /* JADX WARN: Type inference failed for: r29v14 */
    /* JADX WARN: Type inference failed for: r29v15 */
    /* JADX WARN: Type inference failed for: r29v17, types: [com.join.mgps.adapter.h4$f2] */
    /* JADX WARN: Type inference failed for: r29v18 */
    /* JADX WARN: Type inference failed for: r29v19 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r29v20 */
    /* JADX WARN: Type inference failed for: r29v21 */
    /* JADX WARN: Type inference failed for: r29v22 */
    /* JADX WARN: Type inference failed for: r29v23 */
    /* JADX WARN: Type inference failed for: r29v24 */
    /* JADX WARN: Type inference failed for: r29v25, types: [com.join.mgps.adapter.h4$f2] */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Type inference failed for: r29v5 */
    /* JADX WARN: Type inference failed for: r29v6 */
    /* JADX WARN: Type inference failed for: r29v67 */
    /* JADX WARN: Type inference failed for: r29v68 */
    /* JADX WARN: Type inference failed for: r29v7 */
    /* JADX WARN: Type inference failed for: r29v8 */
    /* JADX WARN: Type inference failed for: r29v9 */
    /* JADX WARN: Type inference failed for: r33v23 */
    /* JADX WARN: Type inference failed for: r33v24 */
    /* JADX WARN: Type inference failed for: r33v26 */
    /* JADX WARN: Type inference failed for: r33v27 */
    /* JADX WARN: Type inference failed for: r33v28 */
    /* JADX WARN: Type inference failed for: r33v29 */
    /* JADX WARN: Type inference failed for: r33v30 */
    /* JADX WARN: Type inference failed for: r33v31 */
    /* JADX WARN: Type inference failed for: r33v32 */
    /* JADX WARN: Type inference failed for: r33v33 */
    /* JADX WARN: Type inference failed for: r33v34 */
    /* JADX WARN: Type inference failed for: r33v35 */
    /* JADX WARN: Type inference failed for: r33v36 */
    /* JADX WARN: Type inference failed for: r33v37 */
    /* JADX WARN: Type inference failed for: r33v38 */
    /* JADX WARN: Type inference failed for: r33v39 */
    /* JADX WARN: Type inference failed for: r33v40 */
    /* JADX WARN: Type inference failed for: r33v41 */
    /* JADX WARN: Type inference failed for: r33v42 */
    /* JADX WARN: Type inference failed for: r33v43 */
    /* JADX WARN: Type inference failed for: r33v44 */
    /* JADX WARN: Type inference failed for: r33v46 */
    /* JADX WARN: Type inference failed for: r33v47 */
    /* JADX WARN: Type inference failed for: r33v48 */
    /* JADX WARN: Type inference failed for: r33v49 */
    /* JADX WARN: Type inference failed for: r33v50 */
    /* JADX WARN: Type inference failed for: r33v51 */
    /* JADX WARN: Type inference failed for: r33v52 */
    /* JADX WARN: Type inference failed for: r33v53 */
    /* JADX WARN: Type inference failed for: r33v54 */
    /* JADX WARN: Type inference failed for: r33v55 */
    /* JADX WARN: Type inference failed for: r33v56 */
    /* JADX WARN: Type inference failed for: r33v57 */
    /* JADX WARN: Type inference failed for: r33v58 */
    /* JADX WARN: Type inference failed for: r33v59 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v11, types: [com.join.mgps.adapter.h4$k2] */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v14 */
    /* JADX WARN: Type inference failed for: r34v15 */
    /* JADX WARN: Type inference failed for: r34v16 */
    /* JADX WARN: Type inference failed for: r34v17 */
    /* JADX WARN: Type inference failed for: r34v18 */
    /* JADX WARN: Type inference failed for: r34v19, types: [com.join.mgps.adapter.h4$k2] */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Type inference failed for: r34v61 */
    /* JADX WARN: Type inference failed for: r34v62 */
    /* JADX WARN: Type inference failed for: r34v7 */
    /* JADX WARN: Type inference failed for: r34v8 */
    /* JADX WARN: Type inference failed for: r34v9 */
    /* JADX WARN: Type inference failed for: r36v1, types: [com.join.mgps.adapter.h4$b2] */
    /* JADX WARN: Type inference failed for: r5v230 */
    /* JADX WARN: Type inference failed for: r5v231 */
    /* JADX WARN: Type inference failed for: r5v248, types: [com.join.mgps.adapter.h4$x1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v249, types: [com.join.mgps.adapter.h4$w1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v250, types: [com.join.mgps.adapter.h4$o2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v268, types: [java.lang.Object, com.join.mgps.adapter.h4$m2] */
    /* JADX WARN: Type inference failed for: r5v339, types: [com.join.mgps.adapter.h4$v1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v341 */
    /* JADX WARN: Type inference failed for: r5v344, types: [com.join.mgps.adapter.h4$t2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v346, types: [com.join.mgps.adapter.h4$s1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v349, types: [com.join.mgps.adapter.h4$u1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v351, types: [com.join.mgps.adapter.h4$f2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v352, types: [java.lang.Object, com.join.mgps.adapter.h4$l2] */
    /* JADX WARN: Type inference failed for: r5v364 */
    /* JADX WARN: Type inference failed for: r5v365 */
    /* JADX WARN: Type inference failed for: r6v205, types: [com.join.mgps.adapter.h4$q1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v237, types: [java.lang.Object, com.join.mgps.adapter.h4$k2] */
    /* JADX WARN: Type inference failed for: r7v179 */
    /* JADX WARN: Type inference failed for: r7v192 */
    /* JADX WARN: Type inference failed for: r7v212 */
    /* JADX WARN: Type inference failed for: r7v217 */
    /* JADX WARN: Type inference failed for: r7v246 */
    /* JADX WARN: Type inference failed for: r7v247 */
    /* JADX WARN: Type inference failed for: r7v255 */
    /* JADX WARN: Type inference failed for: r7v280 */
    /* JADX WARN: Type inference failed for: r7v300 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v336 */
    /* JADX WARN: Type inference failed for: r7v346 */
    /* JADX WARN: Type inference failed for: r7v347 */
    /* JADX WARN: Type inference failed for: r7v350 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v366 */
    /* JADX WARN: Type inference failed for: r7v367 */
    /* JADX WARN: Type inference failed for: r7v368 */
    /* JADX WARN: Type inference failed for: r7v369 */
    /* JADX WARN: Type inference failed for: r7v370 */
    /* JADX WARN: Type inference failed for: r7v380 */
    /* JADX WARN: Type inference failed for: r7v402 */
    /* JADX WARN: Type inference failed for: r7v428 */
    /* JADX WARN: Type inference failed for: r7v439 */
    /* JADX WARN: Type inference failed for: r7v440 */
    /* JADX WARN: Type inference failed for: r7v445 */
    /* JADX WARN: Type inference failed for: r7v482 */
    /* JADX WARN: Type inference failed for: r7v487 */
    /* JADX WARN: Type inference failed for: r7v561 */
    /* JADX WARN: Type inference failed for: r7v564 */
    /* JADX WARN: Type inference failed for: r7v572 */
    /* JADX WARN: Type inference failed for: r7v580 */
    /* JADX WARN: Type inference failed for: r7v594 */
    /* JADX WARN: Type inference failed for: r7v598 */
    /* JADX WARN: Type inference failed for: r7v599 */
    /* JADX WARN: Type inference failed for: r7v604 */
    /* JADX WARN: Type inference failed for: r7v608 */
    /* JADX WARN: Type inference failed for: r7v609 */
    /* JADX WARN: Type inference failed for: r7v610 */
    /* JADX WARN: Type inference failed for: r8v82, types: [com.join.mgps.adapter.h4$b2] */
    @Override // android.widget.Adapter
    public View getView(final int i4, View view, ViewGroup viewGroup) {
        View view2;
        View view3;
        Exception exc;
        View view4;
        v2 v2Var;
        final p1 p1Var;
        x1 x1Var;
        Object obj;
        x1 x1Var2;
        v1 v1Var;
        e2 e2Var;
        d2 d2Var;
        n1 n1Var;
        n1 n1Var2;
        n1 n1Var3;
        r1 r1Var;
        z1 z1Var;
        ?? r17;
        u1 u1Var;
        q1 q1Var;
        p2 p2Var;
        m1 m1Var;
        s2 s2Var;
        r2 r2Var;
        q2 q2Var;
        ?? r27;
        j2 j2Var;
        ?? r29;
        o1 o1Var;
        g2 g2Var;
        ?? r34;
        m2 m2Var;
        m2 m2Var2;
        h2 h2Var;
        c2 c2Var;
        c2 c2Var2;
        x1 x1Var3;
        e2 e2Var2;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        s2 s2Var2;
        x1 x1Var4;
        e2 e2Var3;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        m1 m1Var2;
        x1 x1Var5;
        Object obj13;
        Object obj14;
        x1 x1Var6;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        Object obj19;
        x1 x1Var7;
        Object obj20;
        x1 x1Var8;
        Object obj21;
        Object obj22;
        x1 x1Var9;
        Object obj23;
        Object obj24;
        Object obj25;
        ?? r292;
        x1 x1Var10;
        Object obj26;
        x1 x1Var11;
        x1 x1Var12;
        x1 x1Var13;
        Object obj27;
        Object obj28;
        x1 x1Var14;
        Object obj29;
        Object obj30;
        g2 g2Var2;
        ?? r342;
        x1 x1Var15;
        Object obj31;
        Object obj32;
        m2 m2Var3;
        x1 x1Var16;
        Object obj33;
        Object obj34;
        Object obj35;
        e2 e2Var4;
        x1 x1Var17;
        Object obj36;
        Object obj37;
        x1 x1Var18;
        Object obj38;
        x1 x1Var19;
        Object obj39;
        Object obj40;
        g2 g2Var3;
        Object obj41;
        Object obj42;
        x1 x1Var20;
        View view5;
        Exception e4;
        TextView textView;
        SimpleDraweeView simpleDraweeView;
        v2 v2Var2;
        ModleBean main;
        ModleBean main2;
        RecomDatabeanBusiness recomDatabeanBusiness;
        ModleBean main3;
        h2 h2Var2;
        RecomDatabeanBusiness recomDatabeanBusiness2;
        p2 p2Var2;
        m1 m1Var3;
        m2 m2Var4;
        long j4;
        String str;
        int i5;
        c2 c2Var3;
        String str2;
        int i6;
        View inflate;
        d2 d2Var2;
        h2 h2Var3;
        n1 n1Var4;
        n1 n1Var5;
        a2 a2Var;
        r1 r1Var2;
        h2 h2Var4;
        p1 p1Var2;
        p1 p1Var3;
        h2 h2Var5;
        i2 i2Var;
        s2 s2Var3;
        q2 q2Var2;
        q2 q2Var3;
        h2 h2Var6;
        o1 o1Var2;
        o1 o1Var3;
        o1 o1Var4;
        h2 h2Var7;
        h2 h2Var8;
        c2 c2Var4;
        c2 c2Var5;
        c2 c2Var6;
        n1 n1Var6;
        v2 v2Var3;
        d2 d2Var3;
        n1 n1Var7;
        a2 a2Var2;
        r1 r1Var3;
        h2 h2Var9;
        s2 s2Var4;
        q2 q2Var4;
        q2 q2Var5;
        h2 h2Var10;
        o1 o1Var5;
        h2 h2Var11;
        n1 n1Var8;
        n1 n1Var9;
        n1 n1Var10;
        n1 n1Var11;
        h2 h2Var12;
        v2 v2Var4;
        s2 s2Var5;
        i2 i2Var2;
        q2 q2Var6;
        q2 q2Var7;
        h2 h2Var13;
        o1 o1Var6;
        h2 h2Var14;
        h2 h2Var15;
        c2 c2Var7;
        n1 n1Var12;
        n1 n1Var13;
        n1 n1Var14;
        View inflate2;
        x1 x1Var21;
        d2 d2Var4;
        h2 h2Var16;
        Object obj43;
        r1 r1Var4;
        h2 h2Var17;
        v2 v2Var5;
        h2 h2Var18;
        s2 s2Var6;
        q2 q2Var8;
        q2 q2Var9;
        h2 h2Var19;
        o1 o1Var7;
        h2 h2Var20;
        h2 h2Var21;
        n1 n1Var15;
        c2 c2Var8;
        x1 x1Var22;
        d2 d2Var5;
        r1 r1Var5;
        h2 h2Var22;
        s2 s2Var7;
        q2 q2Var10;
        q2 q2Var11;
        h2 h2Var23;
        o1 o1Var8;
        h2 h2Var24;
        n1 n1Var16;
        h2 h2Var25;
        try {
            int itemViewType = getItemViewType(i4);
            i2 i2Var3 = null;
            if (itemViewType == 21) {
                return LayoutInflater.from(this.f41742b).inflate(R.layout.line_layout, (ViewGroup) null);
            }
            try {
                if (view == null) {
                    ?? r5 = 2131298205;
                    try {
                        try {
                            switch (itemViewType) {
                                case 0:
                                    v2 v2Var6 = new v2();
                                    inflate = this.f41741a.inflate(R.layout.toptip_layout, (ViewGroup) null);
                                    v2Var6.f42150a = (LinearLayout) inflate.findViewById(R.id.topTip);
                                    v2Var6.f42152c = (ImageView) inflate.findViewById(R.id.topTipClose);
                                    v2Var6.f42151b = (TextView) inflate.findViewById(R.id.toptipText);
                                    inflate.setTag(v2Var6);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    v2Var3 = v2Var6;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 1:
                                    C0 = new u2();
                                    View inflate3 = this.f41741a.inflate(R.layout.mgpapa_localfight_include, (ViewGroup) null);
                                    C0.f42116a = (RelativeLayout) inflate3.findViewById(R.id.localfight_layout);
                                    C0.f42117b = (RelativeLayout) inflate3.findViewById(R.id.recommendTop);
                                    C0.f42118c = (RelativeLayout) inflate3.findViewById(R.id.recommendRight);
                                    C0.f42119d = (TextView) inflate3.findViewById(R.id.fight_appname);
                                    C0.f42120e = (LinearLayout) inflate3.findViewById(R.id.everdayGame);
                                    C0.f42121f = (SimpleDraweeView) inflate3.findViewById(R.id.fightapp_image);
                                    C0.f42122g = (TextView) inflate3.findViewById(R.id.recomenTopName);
                                    C0.f42123h = (TextView) inflate3.findViewById(R.id.recomenTopSubTitle);
                                    C0.f42124i = (SimpleDraweeView) inflate3.findViewById(R.id.recomenTopImage);
                                    C0.f42125j = (LinearLayout) inflate3.findViewById(R.id.updatedmore);
                                    C0.f42126k = (TextView) inflate3.findViewById(R.id.everday_newnumber);
                                    C0.f42127l = (TextView) inflate3.findViewById(R.id.everday_newtime);
                                    C0.f42128m = (LinearLayout) inflate3.findViewById(R.id.everdaytimetick);
                                    C0.f42129n = (TextView) inflate3.findViewById(R.id.recomenRightName);
                                    C0.f42130o = (TextView) inflate3.findViewById(R.id.recomenRightLabel);
                                    C0.f42135t = (LinearLayout) inflate3.findViewById(R.id.main);
                                    C0.f42131p = (SimpleDraweeView) inflate3.findViewById(R.id.recomenRightImage);
                                    C0.f42132q = (SimpleDraweeView) inflate3.findViewById(R.id.game1);
                                    C0.f42133r = (SimpleDraweeView) inflate3.findViewById(R.id.game2);
                                    C0.f42134s = (SimpleDraweeView) inflate3.findViewById(R.id.game3);
                                    inflate3.setTag(C0);
                                    e2Var = null;
                                    d2Var3 = null;
                                    h2Var3 = null;
                                    n1Var7 = null;
                                    n1Var5 = null;
                                    a2Var2 = null;
                                    r1Var3 = null;
                                    z1Var = null;
                                    h2Var9 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var4 = null;
                                    r2Var = null;
                                    q2Var4 = null;
                                    q2Var = null;
                                    q2Var5 = null;
                                    j2Var = null;
                                    h2Var10 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var5 = null;
                                    g2Var = null;
                                    h2Var11 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    r5 = inflate3;
                                    inflate = r5;
                                    d2Var2 = d2Var3;
                                    n1Var4 = n1Var7;
                                    a2Var = a2Var2;
                                    r1Var2 = r1Var3;
                                    h2Var4 = h2Var9;
                                    s2Var3 = s2Var4;
                                    q2Var2 = q2Var4;
                                    q2Var3 = q2Var5;
                                    h2Var6 = h2Var10;
                                    o1Var4 = o1Var5;
                                    h2Var7 = h2Var11;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 2:
                                    a2 a2Var3 = new a2();
                                    inflate = this.f41741a.inflate(R.layout.papmain_item_title_layout, (ViewGroup) null);
                                    a2Var3.f41762a = (TextView) inflate.findViewById(R.id.titleText);
                                    a2Var3.f41763b = (TextView) inflate.findViewById(R.id.subtitle);
                                    a2Var3.f41764c = (LinearLayout) inflate.findViewById(R.id.look_other);
                                    a2Var3.f41765d = inflate.findViewById(R.id.line);
                                    inflate.setTag(a2Var3);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    a2Var = a2Var3;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 3:
                                    h2 h2Var26 = new h2();
                                    View inflate4 = this.f41741a.inflate(R.layout.app_listview_item, (ViewGroup) null);
                                    try {
                                        h2Var26.f41870a = (SimpleDraweeView) inflate4.findViewById(R.id.mgListviewItemIcon);
                                        h2Var26.f41883n = (ImageView) inflate4.findViewById(R.id.giftPackageSwich);
                                        h2Var26.f41882m = (RelativeLayout) inflate4.findViewById(R.id.relateLayoutApp);
                                        h2Var26.f41871b = (TextView) inflate4.findViewById(R.id.mgListviewItemAppname);
                                        h2Var26.f41872c = (RelativeLayout) inflate4.findViewById(R.id.rLayoutRight);
                                        h2Var26.f41873d = (TextView) inflate4.findViewById(R.id.mgListviewItemInstall);
                                        h2Var26.f41874e = (TextView) inflate4.findViewById(R.id.mgListviewItemDescribe);
                                        h2Var26.f41875f = (LinearLayout) inflate4.findViewById(R.id.linearLayout2);
                                        h2Var26.f41876g = (LinearLayout) inflate4.findViewById(R.id.tipsLayout);
                                        h2Var26.f41877h = (TextView) inflate4.findViewById(R.id.appSize);
                                        h2Var26.f41878i = (TextView) inflate4.findViewById(R.id.loding_info);
                                        h2Var26.f41880k = (ProgressBar) inflate4.findViewById(R.id.progressBar);
                                        h2Var26.f41881l = (ProgressBar) inflate4.findViewById(R.id.progressBarZip);
                                        h2Var26.f41879j = (TextView) inflate4.findViewById(R.id.moneyText);
                                        h2Var26.f41884o = inflate4.findViewById(R.id.line);
                                        inflate4.findViewById(R.id.line).setVisibility(0);
                                        inflate4.setTag(h2Var26);
                                        e2Var = null;
                                        n1Var8 = null;
                                        n1Var9 = null;
                                        n1Var10 = null;
                                        n1Var3 = null;
                                        n1Var11 = null;
                                        z1Var = null;
                                        h2Var12 = null;
                                        v2Var4 = null;
                                        p1Var2 = null;
                                        p1Var3 = null;
                                        s2Var5 = null;
                                        i2Var = null;
                                        i2Var2 = null;
                                        r2Var = null;
                                        q2Var6 = null;
                                        q2Var = null;
                                        q2Var7 = null;
                                        j2Var = null;
                                        h2Var13 = null;
                                        o1Var3 = null;
                                        o1Var6 = null;
                                        g2Var = null;
                                        h2Var14 = null;
                                        h2Var15 = null;
                                        c2Var4 = null;
                                        c2Var5 = null;
                                        c2Var7 = null;
                                        n1Var12 = null;
                                        o1Var2 = h2Var26;
                                        inflate = inflate4;
                                        n1Var13 = null;
                                        n1Var14 = null;
                                        v2Var = v2Var4;
                                        p1Var = p1Var2;
                                        m2Var = p1Var3;
                                        m2Var2 = s2Var5;
                                        i2Var3 = i2Var;
                                        h2Var = o1Var2;
                                        u1Var = o1Var3;
                                        q1Var = h2Var15;
                                        c2Var = c2Var4;
                                        c2Var2 = c2Var5;
                                        p2Var = c2Var7;
                                        m1Var = n1Var12;
                                        n1 n1Var17222 = n1Var10;
                                        view4 = inflate;
                                        v1Var = n1Var17222;
                                        x1Var2 = n1Var13;
                                        d2Var = n1Var14;
                                        n1Var = n1Var8;
                                        n1Var2 = n1Var9;
                                        r1Var = n1Var11;
                                        r17 = h2Var12;
                                        s2Var = i2Var2;
                                        view2 = q2Var6;
                                        r27 = q2Var7;
                                        r29 = h2Var13;
                                        o1Var = o1Var6;
                                        r34 = h2Var14;
                                        break;
                                    } catch (Exception e5) {
                                        exc = e5;
                                        view3 = inflate4;
                                        exc.printStackTrace();
                                        return view3;
                                    }
                                case 4:
                                    s2 s2Var8 = new s2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_intersting_top_layout, (ViewGroup) null);
                                    s2Var8.f42076a = (SimpleDraweeView) inflate.findViewById(R.id.intersting_top_image);
                                    inflate.setTag(s2Var8);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    s2Var3 = s2Var8;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 5:
                                    r2 r2Var2 = new r2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_intersting_midle_layout, (ViewGroup) null);
                                    r2Var2.f42046a = (HListView) inflate.findViewById(R.id.interstinglist);
                                    inflate.setTag(r2Var2);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    r2Var = r2Var2;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 6:
                                    q2 q2Var12 = new q2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_broadcase_top_layout, (ViewGroup) null);
                                    q2Var12.f42029a = (LinearLayout) inflate.findViewById(R.id.gamebroadcastTop);
                                    q2Var12.f42030b = (LinearLayout) inflate.findViewById(R.id.topTextLayout);
                                    q2Var12.f42031c = (TextView) inflate.findViewById(R.id.gamebroadcastTopText1);
                                    q2Var12.f42032d = (TextView) inflate.findViewById(R.id.gamebroadcastTopText2);
                                    q2Var12.f42033e = (TextView) inflate.findViewById(R.id.readNumber);
                                    q2Var12.f42034f = (TextView) inflate.findViewById(R.id.commentNumber);
                                    q2Var12.f42035g = (SimpleDraweeView) inflate.findViewById(R.id.gamebroadcastTopImage1);
                                    q2Var12.f42036h = (SimpleDraweeView) inflate.findViewById(R.id.gamebroadcastTopImage2);
                                    q2Var12.f42037i = (SimpleDraweeView) inflate.findViewById(R.id.gamebroadcastTopImage3);
                                    inflate.setTag(q2Var12);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    q2Var = q2Var12;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 7:
                                    ?? p2Var3 = new p2();
                                    inflate2 = this.f41741a.inflate(R.layout.papamain_broadcase_bottom1_layout, (ViewGroup) null);
                                    ((p2) p2Var3).f42004a = (LinearLayout) inflate2.findViewById(R.id.gamebroadcastbottom1);
                                    ((p2) p2Var3).f42007d = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastbottom1Image);
                                    p2Var3.f42008e = (SimpleDraweeView) inflate2.findViewById(R.id.gameIcon);
                                    p2Var3.f42009f = (TextView) inflate2.findViewById(R.id.appname);
                                    ((p2) p2Var3).f42005b = (TextView) inflate2.findViewById(R.id.gamebroadcastbottom1Text1);
                                    p2Var3.f42010g = (TextView) inflate2.findViewById(R.id.appSize);
                                    ((p2) p2Var3).f42006c = (TextView) inflate2.findViewById(R.id.gamebroadcastbottom1Text2);
                                    p2Var3.f42011h = (RelativeLayout) inflate2.findViewById(R.id.rLayoutRight);
                                    p2Var3.f42012i = (RelativeLayout) inflate2.findViewById(R.id.gameLayout);
                                    p2Var3.f42013j = (TextView) inflate2.findViewById(R.id.itemInstall);
                                    p2Var3.f42014k = (TextView) inflate2.findViewById(R.id.emptyView);
                                    inflate2.setTag(p2Var3);
                                    x1Var21 = null;
                                    e2Var = null;
                                    d2Var4 = null;
                                    h2Var16 = null;
                                    obj43 = null;
                                    r1Var4 = null;
                                    z1Var = null;
                                    h2Var17 = null;
                                    v2Var5 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var18 = null;
                                    i2Var = null;
                                    s2Var6 = null;
                                    r2Var = null;
                                    q2Var8 = null;
                                    q2Var = null;
                                    q2Var9 = null;
                                    j2Var = null;
                                    h2Var19 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var7 = null;
                                    g2Var = null;
                                    h2Var20 = null;
                                    h2Var21 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    n1Var15 = null;
                                    c2Var8 = p2Var3;
                                    inflate = inflate2;
                                    n1Var16 = n1Var15;
                                    x1Var22 = x1Var21;
                                    d2Var5 = d2Var4;
                                    r1Var5 = r1Var4;
                                    h2Var22 = h2Var17;
                                    s2Var7 = s2Var6;
                                    q2Var10 = q2Var8;
                                    q2Var11 = q2Var9;
                                    h2Var23 = h2Var19;
                                    o1Var8 = o1Var7;
                                    h2Var24 = h2Var20;
                                    n1Var10 = n1Var16;
                                    n1Var13 = x1Var22;
                                    n1Var14 = d2Var5;
                                    n1Var8 = h2Var16;
                                    n1Var9 = n1Var16;
                                    n1Var3 = obj43;
                                    n1Var11 = r1Var5;
                                    h2Var12 = h2Var22;
                                    v2Var4 = v2Var5;
                                    s2Var5 = h2Var18;
                                    i2Var2 = s2Var7;
                                    q2Var6 = q2Var10;
                                    q2Var7 = q2Var11;
                                    h2Var13 = h2Var23;
                                    o1Var6 = o1Var8;
                                    h2Var14 = h2Var24;
                                    h2Var15 = h2Var21;
                                    c2Var7 = c2Var8;
                                    n1Var12 = n1Var15;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 8:
                                    ?? x1Var23 = new x1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_guessyoulike_top_layout, (ViewGroup) null);
                                    ((x1) x1Var23).f42174a = (TextView) inflate.findViewById(R.id.guessyoulikeTitle);
                                    ((x1) x1Var23).f42175b = (TextView) inflate.findViewById(R.id.hideh5);
                                    inflate.setTag(x1Var23);
                                    e2Var = null;
                                    h2Var25 = x1Var23;
                                    n1 n1Var18 = e2Var;
                                    n1 n1Var19 = n1Var18;
                                    n1 n1Var20 = n1Var19;
                                    n1 n1Var21 = n1Var20;
                                    n1 n1Var22 = n1Var21;
                                    n1 n1Var23 = n1Var22;
                                    z1Var = n1Var23;
                                    i2 i2Var4 = z1Var;
                                    v2 v2Var7 = i2Var4;
                                    p1Var2 = v2Var7;
                                    p1Var3 = p1Var2;
                                    s2 s2Var9 = p1Var3;
                                    i2Var = s2Var9;
                                    i2 i2Var5 = i2Var;
                                    r2Var = i2Var5;
                                    q2 q2Var13 = r2Var;
                                    q2Var = q2Var13;
                                    q2 q2Var14 = q2Var;
                                    j2Var = q2Var14;
                                    o1 o1Var9 = j2Var;
                                    o1Var2 = o1Var9;
                                    o1Var3 = o1Var2;
                                    o1 o1Var10 = o1Var3;
                                    g2Var = o1Var10;
                                    c2 c2Var9 = g2Var;
                                    h2 h2Var27 = c2Var9;
                                    c2Var4 = h2Var27;
                                    c2Var5 = c2Var4;
                                    c2 c2Var10 = c2Var5;
                                    n1Var12 = c2Var10;
                                    n1Var13 = h2Var25;
                                    n1Var14 = n1Var18;
                                    n1Var8 = n1Var19;
                                    n1Var9 = n1Var20;
                                    n1Var10 = n1Var21;
                                    n1Var3 = n1Var22;
                                    n1Var11 = n1Var23;
                                    h2Var12 = i2Var4;
                                    v2Var4 = v2Var7;
                                    s2Var5 = s2Var9;
                                    i2Var2 = i2Var5;
                                    q2Var6 = q2Var13;
                                    q2Var7 = q2Var14;
                                    h2Var13 = o1Var9;
                                    o1Var6 = o1Var10;
                                    h2Var14 = c2Var9;
                                    h2Var15 = h2Var27;
                                    c2Var7 = c2Var10;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 9:
                                    ?? w1Var = new w1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_guessyoulike_item_layout, (ViewGroup) null);
                                    ((w1) w1Var).f42160a = (LinearLayout) inflate.findViewById(R.id.itemLeft);
                                    ((w1) w1Var).f42161b = (LinearLayout) inflate.findViewById(R.id.itemRight);
                                    ((w1) w1Var).f42162c = (SimpleDraweeView) inflate.findViewById(R.id.appimage);
                                    ((w1) w1Var).f42165f = (SimpleDraweeView) inflate.findViewById(R.id.appimage2);
                                    ((w1) w1Var).f42163d = (TextView) inflate.findViewById(R.id.appname);
                                    ((w1) w1Var).f42166g = (TextView) inflate.findViewById(R.id.appname2);
                                    ((w1) w1Var).f42164e = (TextView) inflate.findViewById(R.id.downloadapp);
                                    ((w1) w1Var).f42167h = (TextView) inflate.findViewById(R.id.downloadapp2);
                                    inflate.setTag(w1Var);
                                    e2Var = null;
                                    d2Var2 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    h2Var3 = w1Var;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 10:
                                    ?? o2Var = new o2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_broadcase_bottom_layout, (ViewGroup) null);
                                    ((o2) o2Var).f41976a = (LinearLayout) inflate.findViewById(R.id.gamebroadcastBottom);
                                    ((o2) o2Var).f41977b = (TextView) inflate.findViewById(R.id.gamebroadcastBottomText1);
                                    ((o2) o2Var).f41978c = (TextView) inflate.findViewById(R.id.gamebroadcastBottomText2);
                                    ((o2) o2Var).f41979d = (SimpleDraweeView) inflate.findViewById(R.id.gamebroadcastBottomImage1);
                                    ((o2) o2Var).f41980e = (SimpleDraweeView) inflate.findViewById(R.id.gamebroadcastBottomImage2);
                                    ((o2) o2Var).f41981f = (SimpleDraweeView) inflate.findViewById(R.id.gamebroadcastBottomImage3);
                                    inflate.setTag(o2Var);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    q2Var3 = o2Var;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 11:
                                    o1 o1Var11 = new o1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_bespeak_item_layout, (ViewGroup) null);
                                    o1Var11.f41963a = (LinearLayout) inflate.findViewById(R.id.itemLeft);
                                    o1Var11.f41964b = (LinearLayout) inflate.findViewById(R.id.itemRight);
                                    o1Var11.f41965c = (SimpleDraweeView) inflate.findViewById(R.id.appimage);
                                    o1Var11.f41969g = (SimpleDraweeView) inflate.findViewById(R.id.appimage2);
                                    o1Var11.f41966d = (SimpleDraweeView) inflate.findViewById(R.id.gameIcon);
                                    o1Var11.f41970h = (SimpleDraweeView) inflate.findViewById(R.id.gameIcon2);
                                    o1Var11.f41967e = (TextView) inflate.findViewById(R.id.appname);
                                    o1Var11.f41971i = (TextView) inflate.findViewById(R.id.appname2);
                                    o1Var11.f41968f = (TextView) inflate.findViewById(R.id.downloadapp);
                                    o1Var11.f41972j = (TextView) inflate.findViewById(R.id.downloadapp2);
                                    o1Var11.f41974l = (TextView) inflate.findViewById(R.id.bespeakNumber2);
                                    o1Var11.f41973k = (TextView) inflate.findViewById(R.id.bespeakNumber);
                                    inflate.setTag(o1Var11);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    o1Var4 = o1Var11;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 12:
                                    n1 n1Var24 = new n1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_bespeak_bottom_layout, (ViewGroup) null);
                                    n1Var24.f41951a = (TextView) inflate.findViewById(R.id.title);
                                    n1Var24.f41952b = (TextView) inflate.findViewById(R.id.subtitle);
                                    n1Var24.f41953c = (TextView) inflate.findViewById(R.id.butn);
                                    inflate.setTag(n1Var24);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    n1Var4 = n1Var24;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 13:
                                    ?? m1Var4 = new m1();
                                    View inflate5 = this.f41741a.inflate(R.layout.papamain_video_banner_layout, (ViewGroup) null);
                                    ((m1) m1Var4).f41929a = (SimpleDraweeView) inflate5.findViewById(R.id.bannerView);
                                    m1Var4.f41937i = (FrameLayout) inflate5.findViewById(R.id.videoContner);
                                    m1Var4.f41930b = (SimpleDraweeView) inflate5.findViewById(R.id.gameIcon);
                                    m1Var4.f41931c = (TextView) inflate5.findViewById(R.id.appname);
                                    m1Var4.f41932d = (TextView) inflate5.findViewById(R.id.appSize);
                                    m1Var4.f41933e = (RelativeLayout) inflate5.findViewById(R.id.rLayoutRight);
                                    m1Var4.f41934f = (TextView) inflate5.findViewById(R.id.itemInstall);
                                    m1Var4.f41935g = (LinearLayout) inflate5.findViewById(R.id.bannerLayout);
                                    m1Var4.f41936h = (LinearLayout) inflate5.findViewById(R.id.tipsLayout);
                                    inflate5.setTag(m1Var4);
                                    x1Var22 = null;
                                    e2Var = null;
                                    d2Var5 = null;
                                    h2Var16 = null;
                                    obj43 = null;
                                    r1Var5 = null;
                                    z1Var = null;
                                    h2Var22 = null;
                                    v2Var5 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var18 = null;
                                    i2Var = null;
                                    s2Var7 = null;
                                    r2Var = null;
                                    q2Var10 = null;
                                    q2Var = null;
                                    q2Var11 = null;
                                    j2Var = null;
                                    h2Var23 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var8 = null;
                                    g2Var = null;
                                    h2Var24 = null;
                                    h2Var21 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var8 = null;
                                    n1Var15 = m1Var4;
                                    inflate = inflate5;
                                    n1Var16 = null;
                                    n1Var10 = n1Var16;
                                    n1Var13 = x1Var22;
                                    n1Var14 = d2Var5;
                                    n1Var8 = h2Var16;
                                    n1Var9 = n1Var16;
                                    n1Var3 = obj43;
                                    n1Var11 = r1Var5;
                                    h2Var12 = h2Var22;
                                    v2Var4 = v2Var5;
                                    s2Var5 = h2Var18;
                                    i2Var2 = s2Var7;
                                    q2Var6 = q2Var10;
                                    q2Var7 = q2Var11;
                                    h2Var13 = h2Var23;
                                    o1Var6 = o1Var8;
                                    h2Var14 = h2Var24;
                                    h2Var15 = h2Var21;
                                    c2Var7 = c2Var8;
                                    n1Var12 = n1Var15;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 14:
                                    ?? q1Var2 = new q1();
                                    View inflate6 = this.f41741a.inflate(R.layout.papamain_broadcast_sptop_layout, (ViewGroup) null);
                                    try {
                                        ((q1) q1Var2).f42020a = (FrameLayout) inflate6.findViewById(R.id.videoContner);
                                        ((q1) q1Var2).f42021b = (SimpleDraweeView) inflate6.findViewById(R.id.bannerView);
                                        q1Var2.f42022c = (SimpleDraweeView) inflate6.findViewById(R.id.gameIcon);
                                        q1Var2.f42023d = (TextView) inflate6.findViewById(R.id.appname);
                                        q1Var2.f42024e = (TextView) inflate6.findViewById(R.id.describe);
                                        q1Var2.f42025f = (RelativeLayout) inflate6.findViewById(R.id.rLayoutRight);
                                        q1Var2.f42026g = (TextView) inflate6.findViewById(R.id.itemInstall);
                                        q1Var2.f42027h = (RelativeLayout) inflate6.findViewById(R.id.bannerLayout);
                                        inflate6.setTag(q1Var2);
                                        n1Var13 = null;
                                        e2Var = null;
                                        n1Var14 = null;
                                        n1Var8 = null;
                                        n1Var10 = null;
                                        n1Var3 = null;
                                        n1Var11 = null;
                                        z1Var = null;
                                        h2Var12 = null;
                                        v2Var4 = null;
                                        p1Var2 = null;
                                        p1Var3 = null;
                                        s2Var5 = null;
                                        i2Var = null;
                                        i2Var2 = null;
                                        r2Var = null;
                                        q2Var6 = null;
                                        q2Var = null;
                                        q2Var7 = null;
                                        j2Var = null;
                                        h2Var13 = null;
                                        o1Var2 = null;
                                        o1Var3 = null;
                                        o1Var6 = null;
                                        g2Var = null;
                                        h2Var14 = null;
                                        c2Var4 = null;
                                        c2Var5 = null;
                                        c2Var7 = null;
                                        n1Var12 = null;
                                        h2Var15 = q1Var2;
                                        inflate = inflate6;
                                        n1Var9 = null;
                                        v2Var = v2Var4;
                                        p1Var = p1Var2;
                                        m2Var = p1Var3;
                                        m2Var2 = s2Var5;
                                        i2Var3 = i2Var;
                                        h2Var = o1Var2;
                                        u1Var = o1Var3;
                                        q1Var = h2Var15;
                                        c2Var = c2Var4;
                                        c2Var2 = c2Var5;
                                        p2Var = c2Var7;
                                        m1Var = n1Var12;
                                        n1 n1Var1722222222222222 = n1Var10;
                                        view4 = inflate;
                                        v1Var = n1Var1722222222222222;
                                        x1Var2 = n1Var13;
                                        d2Var = n1Var14;
                                        n1Var = n1Var8;
                                        n1Var2 = n1Var9;
                                        r1Var = n1Var11;
                                        r17 = h2Var12;
                                        s2Var = i2Var2;
                                        view2 = q2Var6;
                                        r27 = q2Var7;
                                        r29 = h2Var13;
                                        o1Var = o1Var6;
                                        r34 = h2Var14;
                                        break;
                                    } catch (Exception e6) {
                                        exc = e6;
                                        view3 = inflate6;
                                        exc.printStackTrace();
                                        return view3;
                                    }
                                case 15:
                                    ?? m2Var5 = new m2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_live_layout, (ViewGroup) null);
                                    m2Var5.f41942d = (LinearLayout) inflate.findViewById(R.id.goLive);
                                    m2Var5.f41939a = (SimpleDraweeView) inflate.findViewById(R.id.picImage);
                                    m2Var5.f41940b = (TextView) inflate.findViewById(R.id.subtitle);
                                    m2Var5.f41943e = (LinearLayout) inflate.findViewById(R.id.tvLiveListLayout);
                                    m2Var5.f41941c = (TextView) inflate.findViewById(R.id.title);
                                    inflate.setTag(m2Var5);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    p1Var3 = m2Var5;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 16:
                                    ?? b2Var = new b2();
                                    inflate2 = this.f41741a.inflate(R.layout.papamain_mode_five, (ViewGroup) null);
                                    ((b2) b2Var).f41775a = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastTopImage1);
                                    ((b2) b2Var).f41776b = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastTopImage2);
                                    ((b2) b2Var).f41777c = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastTopImage3);
                                    b2Var.f41778d = (SimpleDraweeView) inflate2.findViewById(R.id.gameIcon);
                                    b2Var.f41779e = (TextView) inflate2.findViewById(R.id.appname);
                                    b2Var.f41780f = (TextView) inflate2.findViewById(R.id.appSize);
                                    b2Var.f41781g = (RelativeLayout) inflate2.findViewById(R.id.rLayoutRight);
                                    b2Var.f41782h = (RelativeLayout) inflate2.findViewById(R.id.gameLayout);
                                    b2Var.f41783i = (TextView) inflate2.findViewById(R.id.itemInstall);
                                    b2Var.f41784j = (LinearLayout) inflate2.findViewById(R.id.tipsLayout);
                                    inflate2.setTag(b2Var);
                                    x1Var21 = null;
                                    e2Var = null;
                                    d2Var4 = null;
                                    h2Var16 = null;
                                    obj43 = null;
                                    r1Var4 = null;
                                    z1Var = null;
                                    h2Var17 = null;
                                    v2Var5 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var18 = null;
                                    i2Var = null;
                                    s2Var6 = null;
                                    r2Var = null;
                                    q2Var8 = null;
                                    q2Var = null;
                                    q2Var9 = null;
                                    j2Var = null;
                                    h2Var19 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var7 = null;
                                    g2Var = null;
                                    h2Var20 = null;
                                    h2Var21 = null;
                                    c2Var5 = null;
                                    c2Var8 = null;
                                    n1Var15 = null;
                                    c2Var4 = b2Var;
                                    inflate = inflate2;
                                    n1Var16 = n1Var15;
                                    x1Var22 = x1Var21;
                                    d2Var5 = d2Var4;
                                    r1Var5 = r1Var4;
                                    h2Var22 = h2Var17;
                                    s2Var7 = s2Var6;
                                    q2Var10 = q2Var8;
                                    q2Var11 = q2Var9;
                                    h2Var23 = h2Var19;
                                    o1Var8 = o1Var7;
                                    h2Var24 = h2Var20;
                                    n1Var10 = n1Var16;
                                    n1Var13 = x1Var22;
                                    n1Var14 = d2Var5;
                                    n1Var8 = h2Var16;
                                    n1Var9 = n1Var16;
                                    n1Var3 = obj43;
                                    n1Var11 = r1Var5;
                                    h2Var12 = h2Var22;
                                    v2Var4 = v2Var5;
                                    s2Var5 = h2Var18;
                                    i2Var2 = s2Var7;
                                    q2Var6 = q2Var10;
                                    q2Var7 = q2Var11;
                                    h2Var13 = h2Var23;
                                    o1Var6 = o1Var8;
                                    h2Var14 = h2Var24;
                                    h2Var15 = h2Var21;
                                    c2Var7 = c2Var8;
                                    n1Var12 = n1Var15;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 17:
                                case 21:
                                default:
                                    inflate = view;
                                    h2Var25 = null;
                                    e2Var = null;
                                    n1 n1Var182 = e2Var;
                                    n1 n1Var192 = n1Var182;
                                    n1 n1Var202 = n1Var192;
                                    n1 n1Var212 = n1Var202;
                                    n1 n1Var222 = n1Var212;
                                    n1 n1Var232 = n1Var222;
                                    z1Var = n1Var232;
                                    i2 i2Var42 = z1Var;
                                    v2 v2Var72 = i2Var42;
                                    p1Var2 = v2Var72;
                                    p1Var3 = p1Var2;
                                    s2 s2Var92 = p1Var3;
                                    i2Var = s2Var92;
                                    i2 i2Var52 = i2Var;
                                    r2Var = i2Var52;
                                    q2 q2Var132 = r2Var;
                                    q2Var = q2Var132;
                                    q2 q2Var142 = q2Var;
                                    j2Var = q2Var142;
                                    o1 o1Var92 = j2Var;
                                    o1Var2 = o1Var92;
                                    o1Var3 = o1Var2;
                                    o1 o1Var102 = o1Var3;
                                    g2Var = o1Var102;
                                    c2 c2Var92 = g2Var;
                                    h2 h2Var272 = c2Var92;
                                    c2Var4 = h2Var272;
                                    c2Var5 = c2Var4;
                                    c2 c2Var102 = c2Var5;
                                    n1Var12 = c2Var102;
                                    n1Var13 = h2Var25;
                                    n1Var14 = n1Var182;
                                    n1Var8 = n1Var192;
                                    n1Var9 = n1Var202;
                                    n1Var10 = n1Var212;
                                    n1Var3 = n1Var222;
                                    n1Var11 = n1Var232;
                                    h2Var12 = i2Var42;
                                    v2Var4 = v2Var72;
                                    s2Var5 = s2Var92;
                                    i2Var2 = i2Var52;
                                    q2Var6 = q2Var132;
                                    q2Var7 = q2Var142;
                                    h2Var13 = o1Var92;
                                    o1Var6 = o1Var102;
                                    h2Var14 = c2Var92;
                                    h2Var15 = h2Var272;
                                    c2Var7 = c2Var102;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 18:
                                    c2 c2Var11 = new c2();
                                    inflate2 = this.f41741a.inflate(R.layout.papamain_mode_seven, (ViewGroup) null);
                                    c2Var11.f41792a = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastTopImage1);
                                    c2Var11.f41793b = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastTopImage2);
                                    c2Var11.f41794c = (SimpleDraweeView) inflate2.findViewById(R.id.gamebroadcastTopImage3);
                                    c2Var11.f41795d = (SimpleDraweeView) inflate2.findViewById(R.id.gameIcon);
                                    c2Var11.f41796e = (TextView) inflate2.findViewById(R.id.appname);
                                    c2Var11.f41797f = (TextView) inflate2.findViewById(R.id.appSize);
                                    c2Var11.f41798g = (RelativeLayout) inflate2.findViewById(R.id.rLayoutRight);
                                    c2Var11.f41799h = (LinearLayout) inflate2.findViewById(R.id.gameLayout);
                                    c2Var11.f41800i = (TextView) inflate2.findViewById(R.id.itemInstall);
                                    c2Var11.f41801j = (TextView) inflate2.findViewById(R.id.appdescribe);
                                    c2Var11.f41795d = (SimpleDraweeView) inflate2.findViewById(R.id.gameIcon);
                                    c2Var11.f41803l = (TextView) inflate2.findViewById(R.id.appname2);
                                    c2Var11.f41804m = (TextView) inflate2.findViewById(R.id.appSize2);
                                    c2Var11.f41805n = (RelativeLayout) inflate2.findViewById(R.id.rLayoutRight2);
                                    c2Var11.f41806o = (LinearLayout) inflate2.findViewById(R.id.gameLayout2);
                                    c2Var11.f41807p = (TextView) inflate2.findViewById(R.id.itemInstall2);
                                    c2Var11.f41808q = (TextView) inflate2.findViewById(R.id.appdescribe2);
                                    c2Var11.f41802k = (SimpleDraweeView) inflate2.findViewById(R.id.gameIcon2);
                                    c2Var11.f41810s = (TextView) inflate2.findViewById(R.id.appname3);
                                    c2Var11.f41811t = (TextView) inflate2.findViewById(R.id.appSize3);
                                    c2Var11.f41812u = (RelativeLayout) inflate2.findViewById(R.id.rLayoutRight3);
                                    c2Var11.f41813v = (LinearLayout) inflate2.findViewById(R.id.gameLayout3);
                                    c2Var11.f41814w = (TextView) inflate2.findViewById(R.id.itemInstall3);
                                    c2Var11.f41815x = (TextView) inflate2.findViewById(R.id.appdescribe3);
                                    c2Var11.f41809r = (SimpleDraweeView) inflate2.findViewById(R.id.gameIcon3);
                                    c2Var11.f41816y = (TextView) inflate2.findViewById(R.id.moneyText1);
                                    c2Var11.f41817z = (TextView) inflate2.findViewById(R.id.moneyText2);
                                    c2Var11.A = (TextView) inflate2.findViewById(R.id.moneyText3);
                                    inflate2.setTag(c2Var11);
                                    x1Var21 = null;
                                    e2Var = null;
                                    d2Var4 = null;
                                    h2Var16 = null;
                                    obj43 = null;
                                    r1Var4 = null;
                                    z1Var = null;
                                    h2Var17 = null;
                                    v2Var5 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var18 = null;
                                    i2Var = null;
                                    s2Var6 = null;
                                    r2Var = null;
                                    q2Var8 = null;
                                    q2Var = null;
                                    q2Var9 = null;
                                    j2Var = null;
                                    h2Var19 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var7 = null;
                                    g2Var = null;
                                    h2Var20 = null;
                                    h2Var21 = null;
                                    c2Var4 = null;
                                    c2Var8 = null;
                                    n1Var15 = null;
                                    c2Var5 = c2Var11;
                                    inflate = inflate2;
                                    n1Var16 = n1Var15;
                                    x1Var22 = x1Var21;
                                    d2Var5 = d2Var4;
                                    r1Var5 = r1Var4;
                                    h2Var22 = h2Var17;
                                    s2Var7 = s2Var6;
                                    q2Var10 = q2Var8;
                                    q2Var11 = q2Var9;
                                    h2Var23 = h2Var19;
                                    o1Var8 = o1Var7;
                                    h2Var24 = h2Var20;
                                    n1Var10 = n1Var16;
                                    n1Var13 = x1Var22;
                                    n1Var14 = d2Var5;
                                    n1Var8 = h2Var16;
                                    n1Var9 = n1Var16;
                                    n1Var3 = obj43;
                                    n1Var11 = r1Var5;
                                    h2Var12 = h2Var22;
                                    v2Var4 = v2Var5;
                                    s2Var5 = h2Var18;
                                    i2Var2 = s2Var7;
                                    q2Var6 = q2Var10;
                                    q2Var7 = q2Var11;
                                    h2Var13 = h2Var23;
                                    o1Var6 = o1Var8;
                                    h2Var14 = h2Var24;
                                    h2Var15 = h2Var21;
                                    c2Var7 = c2Var8;
                                    n1Var12 = n1Var15;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 19:
                                    d2 d2Var6 = new d2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_modle_item_title, (ViewGroup) null);
                                    d2Var6.f41826a = (TextView) inflate.findViewById(R.id.title);
                                    d2Var6.f41827b = (TextView) inflate.findViewById(R.id.subtitle);
                                    d2Var6.f41828c = (LinearLayout) inflate.findViewById(R.id.look_other);
                                    inflate.setTag(d2Var6);
                                    e2Var = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    d2Var2 = d2Var6;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 20:
                                    e2 e2Var5 = new e2();
                                    inflate = this.f41741a.inflate(R.layout.cube_roate_view_layout, (ViewGroup) null);
                                    e2Var5.f41836a = (CubeRotateView) inflate.findViewById(R.id.cubeView);
                                    e2Var5.f41837b = (SimpleDraweeView) inflate.findViewById(R.id.background);
                                    e2Var5.f41838c = (SimpleDraweeView) inflate.findViewById(R.id.foreground);
                                    e2Var5.f41839d = (TextView) inflate.findViewById(R.id.date);
                                    inflate.setTag(e2Var5);
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    e2Var = e2Var5;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 22:
                                    j2 j2Var2 = new j2();
                                    inflate = this.f41741a.inflate(R.layout.wufun_main_recom_item_layout, (ViewGroup) null);
                                    j2Var2.f41901a = (SimpleDraweeView) inflate.findViewById(R.id.leftImage);
                                    j2Var2.f41902b = (SimpleDraweeView) inflate.findViewById(R.id.rightImage);
                                    inflate.setTag(j2Var2);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    j2Var = j2Var2;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 23:
                                    ?? v1Var2 = new v1();
                                    inflate = this.f41741a.inflate(R.layout.wufun_main_games_item_layout, (ViewGroup) null);
                                    ((v1) v1Var2).f42141a = (SimpleDraweeView) inflate.findViewById(R.id.appIcon1);
                                    ((v1) v1Var2).f42142b = (SimpleDraweeView) inflate.findViewById(R.id.appIcon2);
                                    ((v1) v1Var2).f42143c = (SimpleDraweeView) inflate.findViewById(R.id.appIcon3);
                                    ((v1) v1Var2).f42144d = (SimpleDraweeView) inflate.findViewById(R.id.appIcon4);
                                    ((v1) v1Var2).f42145e = (TextView) inflate.findViewById(R.id.appname1);
                                    ((v1) v1Var2).f42146f = (TextView) inflate.findViewById(R.id.appname2);
                                    ((v1) v1Var2).f42147g = (TextView) inflate.findViewById(R.id.appname3);
                                    ((v1) v1Var2).f42148h = (TextView) inflate.findViewById(R.id.appname4);
                                    inflate.setTag(v1Var2);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    n1Var5 = v1Var2;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 24:
                                    g2 g2Var4 = new g2();
                                    inflate = this.f41741a.inflate(R.layout.home_rank_layout, (ViewGroup) null);
                                    g2Var4.f41859a = (SlidingTabLayout6) inflate.findViewById(R.id.tabLayout);
                                    g2Var4.f41860b = (ViewPager) inflate.findViewById(R.id.viewPager);
                                    g2Var4.f41861c = (TextView) inflate.findViewById(R.id.moreLayout);
                                    inflate.setTag(g2Var4);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    g2Var = g2Var4;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 25:
                                    View inflate7 = this.f41741a.inflate(R.layout.choice_gamelist_layout, (ViewGroup) null);
                                    ?? k2Var = new k2();
                                    ((k2) k2Var).f41913a = (RecyclerView) inflate7.findViewById(R.id.recycleView);
                                    LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f41742b);
                                    linearLayoutManager.setOrientation(0);
                                    ((k2) k2Var).f41913a.setLayoutManager(linearLayoutManager);
                                    inflate7.setTag(k2Var);
                                    e2Var = null;
                                    d2Var3 = null;
                                    h2Var3 = null;
                                    n1Var7 = null;
                                    n1Var5 = null;
                                    a2Var2 = null;
                                    r1Var3 = null;
                                    z1Var = null;
                                    h2Var9 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var4 = null;
                                    r2Var = null;
                                    q2Var4 = null;
                                    q2Var = null;
                                    q2Var5 = null;
                                    j2Var = null;
                                    h2Var10 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var5 = null;
                                    g2Var = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    h2Var11 = k2Var;
                                    r5 = inflate7;
                                    inflate = r5;
                                    d2Var2 = d2Var3;
                                    n1Var4 = n1Var7;
                                    a2Var = a2Var2;
                                    r1Var2 = r1Var3;
                                    h2Var4 = h2Var9;
                                    s2Var3 = s2Var4;
                                    q2Var2 = q2Var4;
                                    q2Var3 = q2Var5;
                                    h2Var6 = h2Var10;
                                    o1Var4 = o1Var5;
                                    h2Var7 = h2Var11;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 26:
                                    ?? t2Var = new t2();
                                    inflate = this.f41741a.inflate(R.layout.mgpapa_localfight_include_v2, (ViewGroup) null);
                                    ((t2) t2Var).f42095a = inflate.findViewById(R.id.gradientView);
                                    ((t2) t2Var).f42096b = (RelativeLayout) inflate.findViewById(R.id.rlDailyDiscovery);
                                    ((t2) t2Var).f42097c = (TextView) inflate.findViewById(R.id.fight_appname);
                                    ((t2) t2Var).f42098d = (SimpleDraweeView) inflate.findViewById(R.id.fightapp_image);
                                    ((t2) t2Var).f42099e = (RelativeLayout) inflate.findViewById(R.id.rlDzg);
                                    ((t2) t2Var).f42100f = (TextView) inflate.findViewById(R.id.tvDzg);
                                    ((t2) t2Var).f42101g = (TextView) inflate.findViewById(R.id.tvDzgSub);
                                    ((t2) t2Var).f42102h = (SimpleDraweeView) inflate.findViewById(R.id.ivDzg);
                                    ((t2) t2Var).f42103i = (RelativeLayout) inflate.findViewById(R.id.rlDailyNew);
                                    ((t2) t2Var).f42104j = (TextView) inflate.findViewById(R.id.tvDialyNew);
                                    ((t2) t2Var).f42105k = (TextView) inflate.findViewById(R.id.tvDailyNewCount);
                                    ((t2) t2Var).f42106l = (LinearLayout) inflate.findViewById(R.id.llDailyNewIcon);
                                    inflate.setTag(t2Var);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    q2Var2 = t2Var;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 27:
                                    r1 r1Var6 = new r1();
                                    inflate = this.f41741a.inflate(R.layout.mgpapa_fast_entry_item, (ViewGroup) null);
                                    r1Var6.f42044a = (RecyclerView) inflate.findViewById(R.id.rvFastEntry);
                                    inflate.setTag(r1Var6);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    r1Var2 = r1Var6;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 28:
                                case 34:
                                case 37:
                                case 38:
                                    ?? s1Var = new s1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_gamelist_grid_layout, (ViewGroup) null);
                                    s1Var.f42051a = (ConstraintLayout) inflate.findViewById(R.id.item1);
                                    s1Var.f42052b = (SimpleDraweeView) inflate.findViewById(R.id.ivGamePic1);
                                    s1Var.f42053c = (TextView) inflate.findViewById(R.id.tvGameName1);
                                    s1Var.f42054d = (LinearLayout) inflate.findViewById(R.id.llInfo1);
                                    s1Var.f42055e = (TextView) inflate.findViewById(R.id.appSize1);
                                    s1Var.f42056f = (TextView) inflate.findViewById(R.id.loding_info1);
                                    s1Var.f42057g = (ProgressBar) inflate.findViewById(R.id.progressBarZip1);
                                    s1Var.f42058h = (ProgressBar) inflate.findViewById(R.id.progressBar1);
                                    s1Var.f42059i = (TextView) inflate.findViewById(R.id.tvGameTags1);
                                    s1Var.f42060j = (FrameLayout) inflate.findViewById(R.id.flBtn1);
                                    s1Var.f42061k = (TextView) inflate.findViewById(R.id.tvBtn1);
                                    s1Var.f42062l = (ProgressBar) inflate.findViewById(R.id.loading_progress1);
                                    s1Var.f42063m = (ConstraintLayout) inflate.findViewById(R.id.item2);
                                    s1Var.f42064n = (SimpleDraweeView) inflate.findViewById(R.id.ivGamePic2);
                                    s1Var.f42065o = (TextView) inflate.findViewById(R.id.tvGameName2);
                                    s1Var.f42066p = (LinearLayout) inflate.findViewById(R.id.llInfo2);
                                    s1Var.f42067q = (TextView) inflate.findViewById(R.id.appSize2);
                                    s1Var.f42068r = (TextView) inflate.findViewById(R.id.loding_info2);
                                    s1Var.f42069s = (ProgressBar) inflate.findViewById(R.id.progressBarZip2);
                                    s1Var.f42070t = (ProgressBar) inflate.findViewById(R.id.progressBar2);
                                    s1Var.f42071u = (TextView) inflate.findViewById(R.id.tvGameTags2);
                                    s1Var.f42072v = (FrameLayout) inflate.findViewById(R.id.flBtn2);
                                    s1Var.f42073w = (TextView) inflate.findViewById(R.id.tvBtn2);
                                    s1Var.f42074x = (ProgressBar) inflate.findViewById(R.id.loading_progress2);
                                    inflate.setTag(s1Var);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    h2Var5 = s1Var;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 29:
                                case 36:
                                    p1 p1Var4 = new p1();
                                    View inflate8 = this.f41741a.inflate(R.layout.papamain_video_game, (ViewGroup) null);
                                    try {
                                        p1Var4.f41989a = (ConstraintLayout) inflate8.findViewById(R.id.root);
                                        p1Var4.f41990b = (SimpleDraweeView) inflate8.findViewById(R.id.ivGameIcon);
                                        p1Var4.f41991c = (TextView) inflate8.findViewById(R.id.tvGameName);
                                        p1Var4.f41992d = (LinearLayout) inflate8.findViewById(R.id.llInfo);
                                        p1Var4.f41993e = (TextView) inflate8.findViewById(R.id.appSize);
                                        p1Var4.f41994f = (TextView) inflate8.findViewById(R.id.loding_info);
                                        p1Var4.f41995g = (ProgressBar) inflate8.findViewById(R.id.progressBarZip);
                                        p1Var4.f41996h = (ProgressBar) inflate8.findViewById(R.id.progressBar);
                                        p1Var4.f41997i = (TextView) inflate8.findViewById(R.id.tvGameTags);
                                        p1Var4.f41998j = (FrameLayout) inflate8.findViewById(R.id.flBtn);
                                        p1Var4.f41999k = (TextView) inflate8.findViewById(R.id.tvBtn);
                                        p1Var4.f42000l = (SimpleDraweeView) inflate8.findViewById(R.id.bannerView);
                                        p1Var4.f42001m = (FrameLayout) inflate8.findViewById(R.id.videoContner);
                                        p1Var4.f42002n = (ProgressBar) inflate8.findViewById(R.id.loading_progress);
                                        inflate8.setTag(p1Var4);
                                        n1Var14 = null;
                                        n1Var8 = null;
                                        n1Var9 = null;
                                        n1Var10 = null;
                                        n1Var3 = null;
                                        n1Var11 = null;
                                        z1Var = null;
                                        h2Var12 = null;
                                        v2Var4 = null;
                                        p1Var3 = null;
                                        s2Var5 = null;
                                        i2Var = null;
                                        i2Var2 = null;
                                        r2Var = null;
                                        q2Var6 = null;
                                        q2Var = null;
                                        q2Var7 = null;
                                        j2Var = null;
                                        h2Var13 = null;
                                        o1Var2 = null;
                                        o1Var3 = null;
                                        o1Var6 = null;
                                        g2Var = null;
                                        h2Var14 = null;
                                        h2Var15 = null;
                                        c2Var4 = null;
                                        c2Var5 = null;
                                        c2Var7 = null;
                                        n1Var12 = null;
                                        p1Var2 = p1Var4;
                                        inflate = inflate8;
                                        n1Var13 = null;
                                        e2Var = null;
                                        v2Var = v2Var4;
                                        p1Var = p1Var2;
                                        m2Var = p1Var3;
                                        m2Var2 = s2Var5;
                                        i2Var3 = i2Var;
                                        h2Var = o1Var2;
                                        u1Var = o1Var3;
                                        q1Var = h2Var15;
                                        c2Var = c2Var4;
                                        c2Var2 = c2Var5;
                                        p2Var = c2Var7;
                                        m1Var = n1Var12;
                                        n1 n1Var172222222222222222222222222222 = n1Var10;
                                        view4 = inflate;
                                        v1Var = n1Var172222222222222222222222222222;
                                        x1Var2 = n1Var13;
                                        d2Var = n1Var14;
                                        n1Var = n1Var8;
                                        n1Var2 = n1Var9;
                                        r1Var = n1Var11;
                                        r17 = h2Var12;
                                        s2Var = i2Var2;
                                        view2 = q2Var6;
                                        r27 = q2Var7;
                                        r29 = h2Var13;
                                        o1Var = o1Var6;
                                        r34 = h2Var14;
                                        break;
                                    } catch (Exception e7) {
                                        e4 = e7;
                                        exc = e4;
                                        view3 = view5;
                                        exc.printStackTrace();
                                        return view3;
                                    }
                                case 30:
                                    ?? u1Var2 = new u1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_item_game_news, (ViewGroup) null);
                                    ((u1) u1Var2).f42114b = (HorizontalRecyclerView) inflate.findViewById(R.id.recyclerView);
                                    ((u1) u1Var2).f42113a = (FrameLayout) inflate.findViewById(R.id.flRoot);
                                    inflate.setTag(u1Var2);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    o1Var3 = u1Var2;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 31:
                                    z1 z1Var2 = new z1();
                                    inflate = this.f41741a.inflate(R.layout.papamain_item_title_layout_v2, (ViewGroup) null);
                                    z1Var2.f42192a = (TextView) inflate.findViewById(R.id.tvTitle);
                                    z1Var2.f42193b = (TextView) inflate.findViewById(R.id.tvSubTitle);
                                    inflate.setTag(z1Var2);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    z1Var = z1Var2;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 32:
                                    ?? f2Var = new f2();
                                    inflate = this.f41741a.inflate(R.layout.home_rank_layout_v2, (ViewGroup) null);
                                    ((f2) f2Var).f41847a = (ConstraintLayout) inflate.findViewById(R.id.root);
                                    ((f2) f2Var).f41848b = (SlidingTabLayout6) inflate.findViewById(R.id.tabLayout);
                                    ((f2) f2Var).f41849c = (ViewPager) inflate.findViewById(R.id.viewPager);
                                    ((f2) f2Var).f41850d = (LinearLayout) inflate.findViewById(R.id.moreLayout);
                                    inflate.setTag(f2Var);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    h2Var6 = f2Var;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 33:
                                    ?? l2Var = new l2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_item_spacing_layout, (ViewGroup) null);
                                    ((l2) l2Var).f41921a = inflate.findViewById(R.id.spacingView);
                                    inflate.setTag(l2Var);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    i2Var = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    h2Var4 = l2Var;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var1722222222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var1722222222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 35:
                                    i2 i2Var6 = new i2();
                                    inflate = this.f41741a.inflate(R.layout.papamain_item_recommend_style2, (ViewGroup) null);
                                    i2Var6.f41893a = (RecyclerView) inflate.findViewById(R.id.recyclerView);
                                    inflate.setTag(i2Var6);
                                    e2Var = null;
                                    d2Var2 = null;
                                    h2Var3 = null;
                                    n1Var4 = null;
                                    n1Var5 = null;
                                    a2Var = null;
                                    r1Var2 = null;
                                    z1Var = null;
                                    h2Var4 = null;
                                    v2Var3 = null;
                                    p1Var2 = null;
                                    p1Var3 = null;
                                    h2Var5 = null;
                                    s2Var3 = null;
                                    r2Var = null;
                                    q2Var2 = null;
                                    q2Var = null;
                                    q2Var3 = null;
                                    j2Var = null;
                                    h2Var6 = null;
                                    o1Var2 = null;
                                    o1Var3 = null;
                                    o1Var4 = null;
                                    g2Var = null;
                                    h2Var7 = null;
                                    h2Var8 = null;
                                    c2Var4 = null;
                                    c2Var5 = null;
                                    c2Var6 = null;
                                    n1Var6 = null;
                                    i2Var = i2Var6;
                                    n1Var13 = n1Var6;
                                    n1Var14 = d2Var2;
                                    n1Var8 = h2Var3;
                                    n1Var9 = n1Var4;
                                    n1Var10 = n1Var5;
                                    n1Var3 = a2Var;
                                    n1Var11 = r1Var2;
                                    h2Var12 = h2Var4;
                                    v2Var4 = v2Var3;
                                    s2Var5 = h2Var5;
                                    i2Var2 = s2Var3;
                                    q2Var6 = q2Var2;
                                    q2Var7 = q2Var3;
                                    h2Var13 = h2Var6;
                                    o1Var6 = o1Var4;
                                    h2Var14 = h2Var7;
                                    h2Var15 = h2Var8;
                                    c2Var7 = c2Var6;
                                    n1Var12 = n1Var6;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var17222222222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var17222222222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                                case 39:
                                    n2 n2Var = new n2();
                                    inflate = this.f41741a.inflate(R.layout.mgpapa_home_underline, (ViewGroup) null);
                                    n2Var.f41955a = inflate.findViewById(R.id.line);
                                    inflate.setTag(n2Var);
                                    h2Var25 = null;
                                    e2Var = null;
                                    n1 n1Var1822 = e2Var;
                                    n1 n1Var1922 = n1Var1822;
                                    n1 n1Var2022 = n1Var1922;
                                    n1 n1Var2122 = n1Var2022;
                                    n1 n1Var2222 = n1Var2122;
                                    n1 n1Var2322 = n1Var2222;
                                    z1Var = n1Var2322;
                                    i2 i2Var422 = z1Var;
                                    v2 v2Var722 = i2Var422;
                                    p1Var2 = v2Var722;
                                    p1Var3 = p1Var2;
                                    s2 s2Var922 = p1Var3;
                                    i2Var = s2Var922;
                                    i2 i2Var522 = i2Var;
                                    r2Var = i2Var522;
                                    q2 q2Var1322 = r2Var;
                                    q2Var = q2Var1322;
                                    q2 q2Var1422 = q2Var;
                                    j2Var = q2Var1422;
                                    o1 o1Var922 = j2Var;
                                    o1Var2 = o1Var922;
                                    o1Var3 = o1Var2;
                                    o1 o1Var1022 = o1Var3;
                                    g2Var = o1Var1022;
                                    c2 c2Var922 = g2Var;
                                    h2 h2Var2722 = c2Var922;
                                    c2Var4 = h2Var2722;
                                    c2Var5 = c2Var4;
                                    c2 c2Var1022 = c2Var5;
                                    n1Var12 = c2Var1022;
                                    n1Var13 = h2Var25;
                                    n1Var14 = n1Var1822;
                                    n1Var8 = n1Var1922;
                                    n1Var9 = n1Var2022;
                                    n1Var10 = n1Var2122;
                                    n1Var3 = n1Var2222;
                                    n1Var11 = n1Var2322;
                                    h2Var12 = i2Var422;
                                    v2Var4 = v2Var722;
                                    s2Var5 = s2Var922;
                                    i2Var2 = i2Var522;
                                    q2Var6 = q2Var1322;
                                    q2Var7 = q2Var1422;
                                    h2Var13 = o1Var922;
                                    o1Var6 = o1Var1022;
                                    h2Var14 = c2Var922;
                                    h2Var15 = h2Var2722;
                                    c2Var7 = c2Var1022;
                                    v2Var = v2Var4;
                                    p1Var = p1Var2;
                                    m2Var = p1Var3;
                                    m2Var2 = s2Var5;
                                    i2Var3 = i2Var;
                                    h2Var = o1Var2;
                                    u1Var = o1Var3;
                                    q1Var = h2Var15;
                                    c2Var = c2Var4;
                                    c2Var2 = c2Var5;
                                    p2Var = c2Var7;
                                    m1Var = n1Var12;
                                    n1 n1Var172222222222222222222222222222222222 = n1Var10;
                                    view4 = inflate;
                                    v1Var = n1Var172222222222222222222222222222222222;
                                    x1Var2 = n1Var13;
                                    d2Var = n1Var14;
                                    n1Var = n1Var8;
                                    n1Var2 = n1Var9;
                                    r1Var = n1Var11;
                                    r17 = h2Var12;
                                    s2Var = i2Var2;
                                    view2 = q2Var6;
                                    r27 = q2Var7;
                                    r29 = h2Var13;
                                    o1Var = o1Var6;
                                    r34 = h2Var14;
                                    break;
                            }
                        } catch (Exception e8) {
                            exc = e8;
                            view3 = R.id.appSize;
                        }
                    } catch (Exception e9) {
                        exc = e9;
                        view3 = r5;
                    }
                } else {
                    switch (itemViewType) {
                        case 0:
                            view4 = view;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = null;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            v2Var = (v2) view.getTag();
                            break;
                        case 1:
                            C0 = (u2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var = null;
                            obj = null;
                            e2Var = obj;
                            obj18 = e2Var;
                            x1Var12 = x1Var;
                            obj19 = obj18;
                            x1Var11 = x1Var12;
                            e2Var2 = obj;
                            obj2 = obj18;
                            obj20 = obj19;
                            x1Var7 = x1Var11;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var4 = p2Var;
                            s2Var2 = p2Var4;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var4;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6 = m2Var3;
                            h2Var = m2Var6;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6;
                            break;
                        case 2:
                            n1Var3 = (a2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var3 = null;
                            e2Var2 = null;
                            e2Var = null;
                            obj2 = null;
                            obj3 = null;
                            obj4 = null;
                            obj5 = null;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var42 = p2Var;
                            s2Var2 = p2Var42;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var42;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62 = m2Var3;
                            h2Var = m2Var62;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62;
                            break;
                        case 3:
                            h2 h2Var28 = (h2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            c2Var = null;
                            c2Var2 = null;
                            h2Var = h2Var28;
                            break;
                        case 4:
                            s2Var2 = (s2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var4 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj7 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            r2Var = null;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622 = m2Var3;
                            h2Var = m2Var622;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622;
                            break;
                        case 5:
                            r2Var = (r2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var5 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj13 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            obj14 = null;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6222 = m2Var3;
                            h2Var = m2Var6222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222;
                            break;
                        case 6:
                            q2Var = (q2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var6 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj15 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj16 = null;
                            obj17 = null;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62222 = m2Var3;
                            h2Var = m2Var62222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62222;
                            break;
                        case 7:
                            p2 p2Var5 = (p2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            p2Var = p2Var5;
                            break;
                        case 8:
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            obj = null;
                            x1Var = (x1) view.getTag();
                            e2Var = obj;
                            obj18 = e2Var;
                            x1Var12 = x1Var;
                            obj19 = obj18;
                            x1Var11 = x1Var12;
                            e2Var2 = obj;
                            obj2 = obj18;
                            obj20 = obj19;
                            x1Var7 = x1Var11;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var422 = p2Var;
                            s2Var2 = p2Var422;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var422;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622222 = m2Var3;
                            h2Var = m2Var622222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622222;
                            break;
                        case 9:
                            obj19 = (w1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var7 = null;
                            e2Var2 = null;
                            e2Var = null;
                            obj2 = null;
                            obj20 = null;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var4222 = p2Var;
                            s2Var2 = p2Var4222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var4222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6222222 = m2Var3;
                            h2Var = m2Var6222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222222;
                            break;
                        case 10:
                            Object obj44 = (o2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var8 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj21 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj22 = null;
                            q2Var = null;
                            j2Var = null;
                            obj25 = obj44;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62222222 = m2Var3;
                            h2Var = m2Var62222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62222222;
                            break;
                        case 11:
                            o1 o1Var12 = (o1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var9 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj23 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj24 = null;
                            q2Var = null;
                            obj25 = null;
                            j2Var = null;
                            r292 = null;
                            g2Var = null;
                            g2Var2 = o1Var12;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622222222 = m2Var3;
                            h2Var = m2Var622222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622222222;
                            break;
                        case 12:
                            Object obj45 = (n1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var10 = null;
                            e2Var2 = null;
                            e2Var = null;
                            obj2 = null;
                            obj26 = null;
                            n1Var3 = null;
                            obj4 = obj45;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var42222 = p2Var;
                            s2Var2 = p2Var42222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var42222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6222222222 = m2Var3;
                            h2Var = m2Var6222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222222222;
                            break;
                        case 13:
                            m1 m1Var5 = (m1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            m1Var = m1Var5;
                            break;
                        case 14:
                            q1 q1Var3 = (q1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            q1Var = q1Var3;
                            break;
                        case 15:
                            m2 m2Var7 = (m2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            m2Var = m2Var7;
                            q1Var = null;
                            break;
                        case 16:
                            ?? r36 = (b2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var2 = null;
                            c2Var = r36;
                            break;
                        case 17:
                        case 21:
                        default:
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var = null;
                            obj = null;
                            e2Var = obj;
                            obj18 = e2Var;
                            x1Var12 = x1Var;
                            obj19 = obj18;
                            x1Var11 = x1Var12;
                            e2Var2 = obj;
                            obj2 = obj18;
                            obj20 = obj19;
                            x1Var7 = x1Var11;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var422222 = p2Var;
                            s2Var2 = p2Var422222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var422222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62222222222 = m2Var3;
                            h2Var = m2Var62222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62222222222;
                            break;
                        case 18:
                            c2 c2Var12 = (c2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = c2Var12;
                            break;
                        case 19:
                            Object obj46 = (d2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var11 = null;
                            e2Var2 = null;
                            e2Var = null;
                            obj19 = null;
                            obj2 = obj46;
                            obj20 = obj19;
                            x1Var7 = x1Var11;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var4222222 = p2Var;
                            s2Var2 = p2Var4222222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var4222222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622222222222 = m2Var3;
                            h2Var = m2Var622222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622222222222;
                            break;
                        case 20:
                            e2Var = (e2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var12 = null;
                            obj = null;
                            obj18 = null;
                            obj19 = obj18;
                            x1Var11 = x1Var12;
                            e2Var2 = obj;
                            obj2 = obj18;
                            obj20 = obj19;
                            x1Var7 = x1Var11;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var42222222 = p2Var;
                            s2Var2 = p2Var42222222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var42222222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6222222222222 = m2Var3;
                            h2Var = m2Var6222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222222222222;
                            break;
                        case 22:
                            j2Var = (j2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var13 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj27 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj28 = null;
                            q2Var = null;
                            obj25 = null;
                            r292 = null;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62222222222222 = m2Var3;
                            h2Var = m2Var62222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62222222222222;
                            break;
                        case 23:
                            p1Var = null;
                            x1Var2 = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            v1Var = (v1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            break;
                        case 24:
                            g2Var = (g2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var14 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj29 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj30 = null;
                            q2Var = null;
                            obj25 = null;
                            j2Var = null;
                            r292 = null;
                            g2Var2 = null;
                            r342 = null;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622222222222222 = m2Var3;
                            h2Var = m2Var622222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622222222222222;
                            break;
                        case 25:
                            r342 = (k2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var15 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj31 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj32 = null;
                            q2Var = null;
                            obj25 = null;
                            j2Var = null;
                            r292 = null;
                            g2Var2 = null;
                            g2Var = null;
                            m2Var3 = null;
                            m2 m2Var6222222222222222 = m2Var3;
                            h2Var = m2Var6222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222222222222222;
                            break;
                        case 26:
                            Object obj47 = (t2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var16 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj33 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            q2Var = null;
                            obj41 = obj47;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62222222222222222 = m2Var3;
                            h2Var = m2Var62222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62222222222222222;
                            break;
                        case 27:
                            obj5 = (r1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var17 = null;
                            e2Var4 = null;
                            e2Var = null;
                            obj35 = null;
                            obj3 = null;
                            obj34 = null;
                            n1Var3 = null;
                            z1Var = null;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var422222222 = p2Var;
                            s2Var2 = p2Var422222222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var422222222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622222222222222222 = m2Var3;
                            h2Var = m2Var622222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622222222222222222;
                            break;
                        case 28:
                        case 34:
                        case 37:
                        case 38:
                            ?? r21 = (s1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            m2Var2 = r21;
                            p2Var = null;
                            break;
                        case 29:
                        case 36:
                            p1 p1Var5 = (p1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            p1Var = p1Var5;
                            u1Var = null;
                            break;
                        case 30:
                            u1 u1Var3 = (u1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            q1Var = null;
                            p2Var = null;
                            m1Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            u1Var = u1Var3;
                            break;
                        case 31:
                            z1Var = (z1) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var18 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj3 = null;
                            obj37 = null;
                            n1Var3 = null;
                            obj9 = null;
                            obj36 = null;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var4222222222 = p2Var;
                            s2Var2 = p2Var4222222222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var4222222222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6222222222222222222 = m2Var3;
                            h2Var = m2Var6222222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222222222222222222;
                            break;
                        case 32:
                            r292 = (f2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var19 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj39 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj10 = null;
                            obj11 = null;
                            obj12 = null;
                            p2Var = null;
                            m1Var2 = null;
                            s2Var2 = null;
                            r2Var = null;
                            obj40 = null;
                            q2Var = null;
                            obj25 = null;
                            j2Var = null;
                            g2Var3 = null;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var62222222222222222222 = m2Var3;
                            h2Var = m2Var62222222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var62222222222222222222;
                            break;
                        case 33:
                            Object obj48 = (l2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var20 = null;
                            e2Var3 = null;
                            e2Var = null;
                            obj6 = null;
                            obj3 = null;
                            obj8 = null;
                            n1Var3 = null;
                            obj9 = null;
                            z1Var = null;
                            obj38 = null;
                            obj42 = obj48;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var42222222222 = p2Var;
                            s2Var2 = p2Var42222222222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var42222222222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var622222222222222222222 = m2Var3;
                            h2Var = m2Var622222222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var622222222222222222222;
                            break;
                        case 35:
                            i2 i2Var7 = (i2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var2 = null;
                            v1Var = null;
                            e2Var = null;
                            d2Var = null;
                            n1Var = null;
                            n1Var2 = null;
                            n1Var3 = null;
                            r1Var = null;
                            z1Var = null;
                            r17 = null;
                            u1Var = null;
                            q1Var = null;
                            p2Var = null;
                            s2Var = null;
                            r2Var = null;
                            view2 = 0;
                            q2Var = null;
                            r27 = null;
                            j2Var = null;
                            r29 = null;
                            o1Var = null;
                            g2Var = null;
                            r34 = null;
                            m2Var = null;
                            m2Var2 = null;
                            h2Var = null;
                            c2Var = null;
                            c2Var2 = null;
                            i2Var3 = i2Var7;
                            m1Var = null;
                            break;
                        case 39:
                            n2 n2Var2 = (n2) view.getTag();
                            view4 = view;
                            v2Var = null;
                            p1Var = null;
                            x1Var = null;
                            obj = null;
                            e2Var = obj;
                            obj18 = e2Var;
                            x1Var12 = x1Var;
                            obj19 = obj18;
                            x1Var11 = x1Var12;
                            e2Var2 = obj;
                            obj2 = obj18;
                            obj20 = obj19;
                            x1Var7 = x1Var11;
                            n1Var3 = obj20;
                            x1Var10 = x1Var7;
                            obj26 = obj19;
                            obj4 = obj20;
                            obj5 = n1Var3;
                            x1Var3 = x1Var10;
                            obj3 = obj26;
                            z1Var = obj5;
                            x1Var17 = x1Var3;
                            e2Var4 = e2Var2;
                            obj35 = obj2;
                            obj34 = obj4;
                            obj36 = z1Var;
                            x1Var18 = x1Var17;
                            e2Var3 = e2Var4;
                            obj6 = obj35;
                            obj37 = obj34;
                            obj9 = obj5;
                            obj38 = obj36;
                            x1Var20 = x1Var18;
                            obj8 = obj37;
                            obj42 = obj36;
                            obj12 = obj38;
                            p2Var = obj12;
                            p2 p2Var422222222222 = p2Var;
                            s2Var2 = p2Var422222222222;
                            r2Var = s2Var2;
                            x1Var4 = x1Var20;
                            obj7 = obj3;
                            obj10 = obj42;
                            obj11 = obj38;
                            m1Var2 = p2Var422222222222;
                            obj14 = r2Var;
                            x1Var5 = x1Var4;
                            obj13 = obj7;
                            q2Var = obj14;
                            x1Var16 = x1Var5;
                            obj33 = obj13;
                            obj41 = obj14;
                            obj17 = q2Var;
                            x1Var6 = x1Var16;
                            obj15 = obj33;
                            obj16 = obj41;
                            j2Var = obj17;
                            x1Var8 = x1Var6;
                            obj21 = obj15;
                            obj22 = obj16;
                            obj25 = obj17;
                            r292 = j2Var;
                            x1Var13 = x1Var8;
                            obj27 = obj21;
                            obj28 = obj22;
                            g2Var3 = r292;
                            x1Var19 = x1Var13;
                            obj39 = obj27;
                            obj40 = obj28;
                            g2Var = g2Var3;
                            x1Var9 = x1Var19;
                            obj23 = obj39;
                            obj24 = obj40;
                            g2Var2 = g2Var3;
                            r342 = g2Var;
                            x1Var14 = x1Var9;
                            obj29 = obj23;
                            obj30 = obj24;
                            m2Var3 = r342;
                            x1Var15 = x1Var14;
                            obj31 = obj29;
                            obj32 = obj30;
                            m2 m2Var6222222222222222222222 = m2Var3;
                            h2Var = m2Var6222222222222222222222;
                            c2Var = h2Var;
                            c2Var2 = c2Var;
                            x1Var2 = x1Var15;
                            v1Var = e2Var3;
                            d2Var = obj6;
                            n1Var = obj31;
                            n1Var2 = obj8;
                            r1Var = obj9;
                            r17 = obj10;
                            u1Var = obj11;
                            q1Var = obj12;
                            m1Var = m1Var2;
                            s2Var = s2Var2;
                            view2 = obj32;
                            r27 = obj25;
                            r29 = r292;
                            o1Var = g2Var2;
                            r34 = r342;
                            m2Var = m2Var3;
                            m2Var2 = m2Var6222222222222222222222;
                            break;
                    }
                }
            } catch (Exception e10) {
                exc = e10;
                view3 = view4;
            }
            try {
                MgpapaMainItemBean mgpapaMainItemBean = this.f41744d.get(i4);
                a2 a2Var4 = n1Var3;
                n1 n1Var25 = n1Var2;
                w1 w1Var2 = n1Var;
                try {
                    switch (itemViewType) {
                        case 0:
                            view5 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans = mgpapaMainItemBean.getRecomDatabeans();
                            if (recomDatabeans == null || recomDatabeans.size() <= 0) {
                                v2Var.f42150a.setVisibility(8);
                                break;
                            } else {
                                int i7 = 0;
                                while (i7 < recomDatabeans.size()) {
                                    RecomDatabeanBusiness recomDatabeanBusiness3 = recomDatabeans.get(i7);
                                    if (recomDatabeanBusiness3 == null) {
                                        v2Var2 = v2Var;
                                    } else {
                                        List<AppBeanMain> sub = recomDatabeanBusiness3.getSub();
                                        AppBeanMain appBeanMain = (sub == null || sub.size() <= 0) ? null : sub.get(0);
                                        String label = recomDatabeanBusiness3.getMain().getLabel();
                                        PrefDef_ prefDef_ = new PrefDef_(this.f41742b);
                                        if (!com.join.mgps.Util.d2.i(label) || label.equals(prefDef_.lastTopTip().d())) {
                                            v2Var.f42150a.setVisibility(8);
                                        } else {
                                            v2Var.f42150a.setVisibility(0);
                                            v2Var.f42151b.setText(recomDatabeanBusiness3.getMain().getLabel());
                                        }
                                        v2Var.f42150a.setOnClickListener(new r0(appBeanMain));
                                        v2Var2 = v2Var;
                                        v2Var.f42152c.setOnClickListener(new c1(v2Var2));
                                    }
                                    i7++;
                                    v2Var = v2Var2;
                                }
                                break;
                            }
                            break;
                        case 1:
                            view5 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans2 = mgpapaMainItemBean.getRecomDatabeans();
                            if (recomDatabeans2 != null && recomDatabeans2.size() > 0 && (main3 = (recomDatabeanBusiness = recomDatabeans2.get(0)).getMain()) != null) {
                                C0.f42119d.setText(main3.getSub_title());
                                MyImageLoader.f(C0.f42121f, R.drawable.main_normal_icon, main3.getPic_remote(), MyImageLoader.C(this.f41742b));
                                if (recomDatabeanBusiness.getSub() != null) {
                                    recomDatabeanBusiness.getSub().size();
                                }
                                C0.f42116a.setOnClickListener(new g1(recomDatabeans2));
                            }
                            List<RecomDatabeanBusiness> recomDatabeans22 = mgpapaMainItemBean.getRecomDatabeans2();
                            if (recomDatabeans22 != null && recomDatabeans22.size() > 0 && (main2 = recomDatabeans22.get(0).getMain()) != null) {
                                C0.f42122g.setText(main2.getSub_title());
                                C0.f42123h.setText(main2.getLabel());
                                MyImageLoader.f(C0.f42124i, R.drawable.main_normal_icon, main2.getPic_remote(), MyImageLoader.C(this.f41742b));
                                C0.f42117b.setOnClickListener(new h1(recomDatabeans22));
                            }
                            List<RecomDatabeanBusiness> recomDatabeans3 = mgpapaMainItemBean.getRecomDatabeans3();
                            if (recomDatabeans3 != null && recomDatabeans3.size() > 0 && (main = recomDatabeans3.get(0).getMain()) != null) {
                                C0.f42129n.setText(main.getSub_title());
                                C0.f42130o.setText(main.getLabel());
                                MyImageLoader.d(C0.f42131p, R.drawable.main_normal_icon, main.getPic_remote());
                                C0.f42118c.setOnClickListener(new i1(recomDatabeans3));
                            }
                            GameDiscoverTheNewBean gameDiscoverTheNewBean = (GameDiscoverTheNewBean) mgpapaMainItemBean.getObject();
                            if (gameDiscoverTheNewBean != null) {
                                C0.f42126k.setText(gameDiscoverTheNewBean.getGame_count() + "款");
                                List<IconGame> game_list = gameDiscoverTheNewBean.getGame_list();
                                if (game_list != null && game_list.size() > 0) {
                                    MyImageLoader.h(C0.f42132q, game_list.get(0).getGame_ico());
                                }
                                if (game_list != null && game_list.size() > 1) {
                                    MyImageLoader.h(C0.f42133r, game_list.get(1).getGame_ico());
                                }
                                if (game_list != null && game_list.size() > 2) {
                                    MyImageLoader.h(C0.f42134s, game_list.get(2).getGame_ico());
                                }
                            }
                            C0.f42120e.setOnClickListener(new j1());
                            C0.f42125j.setOnClickListener(new a());
                            break;
                        case 2:
                            view5 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans23 = mgpapaMainItemBean.getRecomDatabeans2();
                            mgpapaMainItemBean.getRecomDatabeans();
                            RecomDatabeanBusiness recomDatabeanLeft = mgpapaMainItemBean.getRecomDatabeanLeft();
                            a2Var4.f41763b.setVisibility(8);
                            a2Var4.f41764c.setVisibility(8);
                            a2Var4.f41762a.setOnClickListener(null);
                            View view6 = a2Var4.f41765d;
                            if (view6 != null) {
                                view6.setVisibility(8);
                            }
                            if (recomDatabeans23 == null || recomDatabeans23.size() <= 0) {
                                a2Var4.f41764c.setVisibility(8);
                            } else {
                                a2Var4.f41764c.setVisibility(0);
                                RecomDatabeanBusiness recomDatabeanBusiness4 = recomDatabeans23.get(0);
                                a2Var4.f41764c.setOnClickListener(new b(recomDatabeanBusiness4));
                                a2Var4.f41762a.setOnClickListener(new c(recomDatabeanBusiness4));
                            }
                            int moreType = mgpapaMainItemBean.getMoreType();
                            if (moreType != 0) {
                                if (moreType != 2) {
                                    switch (moreType) {
                                        case 4:
                                            a2Var4.f41762a.setText("最新网游");
                                            a2Var4.f41764c.setVisibility(0);
                                            if (recomDatabeanLeft != null) {
                                                a2Var4.f41762a.setText(recomDatabeanLeft.getMain().getTitle());
                                            }
                                            if (recomDatabeans23 == null || recomDatabeans23.size() <= 0) {
                                                a2Var4.f41764c.setVisibility(8);
                                                break;
                                            } else {
                                                RecomDatabeanBusiness recomDatabeanBusiness5 = recomDatabeans23.get(0);
                                                a2Var4.f41764c.setOnClickListener(new f(recomDatabeanBusiness5, mgpapaMainItemBean));
                                                a2Var4.f41762a.setOnClickListener(new g(recomDatabeanBusiness5, mgpapaMainItemBean));
                                                break;
                                            }
                                            break;
                                        case 5:
                                            a2Var4.f41762a.setText("游戏预约");
                                            if (recomDatabeanLeft != null) {
                                                a2Var4.f41762a.setText(recomDatabeanLeft.getMain().getTitle());
                                                break;
                                            }
                                            break;
                                        case 6:
                                            a2Var4.f41762a.setText("网游精选推荐");
                                            if (recomDatabeanLeft != null) {
                                                a2Var4.f41762a.setText(recomDatabeanLeft.getMain().getTitle());
                                                break;
                                            }
                                            break;
                                        case 7:
                                            a2Var4.f41762a.setText(((PapaMainLive) mgpapaMainItemBean.getObject()).getTitle());
                                            break;
                                        case 8:
                                            a2Var4.f41762a.setText("猜你喜欢");
                                            if (recomDatabeanLeft != null) {
                                                a2Var4.f41762a.setText(recomDatabeanLeft.getMain().getTitle());
                                                break;
                                            }
                                            break;
                                        case 9:
                                            a2Var4.f41762a.setText((String) mgpapaMainItemBean.getObject());
                                            break;
                                        case 10:
                                            a2Var4.f41762a.setText("热门游戏单");
                                            a2Var4.f41764c.setVisibility(0);
                                            a2Var4.f41764c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g4
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view7) {
                                                    h4.E(view7);
                                                }
                                            });
                                            break;
                                    }
                                } else {
                                    a2Var4.f41762a.setText("大总管播报");
                                    if (recomDatabeans23 == null || recomDatabeans23.size() <= 0) {
                                        a2Var4.f41763b.setVisibility(8);
                                    } else {
                                        RecomDatabeanBusiness recomDatabeanBusiness6 = recomDatabeans23.get(0);
                                        if (recomDatabeanBusiness6 != null) {
                                            a2Var4.f41762a.setText(recomDatabeanBusiness6.getMain().getTitle());
                                        }
                                    }
                                    a2Var4.f41764c.setVisibility(0);
                                    a2Var4.f41764c.setOnClickListener(new d(mgpapaMainItemBean));
                                    a2Var4.f41762a.setOnClickListener(new e(mgpapaMainItemBean));
                                    break;
                                }
                            } else {
                                a2Var4.f41762a.setText("近期热门");
                                if (recomDatabeanLeft != null) {
                                    a2Var4.f41762a.setText(recomDatabeanLeft.getMain().getTitle());
                                }
                                View findViewById = view5.findViewById(R.id.main);
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
                                layoutParams.height = this.f41742b.getResources().getDimensionPixelOffset(R.dimen.wdp60);
                                findViewById.setLayoutParams(layoutParams);
                                break;
                            }
                            break;
                        case 3:
                            view2 = view4;
                            try {
                                RecomDatabeanBusiness recomDatabeanLeft2 = mgpapaMainItemBean.getRecomDatabeanLeft();
                                List<AppBeanMain> sub2 = recomDatabeanLeft2.getSub();
                                if (sub2 != null && sub2.size() > 0) {
                                    AppBeanMain appBeanMain2 = sub2.get(0);
                                    AppBean game_info = appBeanMain2.getGame_info();
                                    DownloadTask a4 = recomDatabeanLeft2.a();
                                    if (game_info.getGift_package_switch() == 1) {
                                        h2Var2 = h2Var;
                                        h2Var2.f41883n.setVisibility(0);
                                    } else {
                                        h2Var2 = h2Var;
                                        h2Var2.f41883n.setVisibility(8);
                                    }
                                    h2Var2.f41871b.setText(game_info.getGame_name());
                                    h2Var2.f41874e.setText(game_info.getInfo());
                                    long size = a4 != null ? a4.getSize() : 0L;
                                    if (com.join.mgps.Util.d2.i(game_info.getGif_ico_remote())) {
                                        MyImageLoader.n(h2Var2.f41870a, game_info.getGif_ico_remote());
                                    } else {
                                        MyImageLoader.h(h2Var2.f41870a, game_info.getIco_remote());
                                    }
                                    UtilsMy.I(game_info.getScore(), game_info.getDown_count(), game_info.getSize(), game_info.getSp_tag_info(), game_info.getTag_info(), h2Var2.f41876g, this.f41742b, "3".equals(appBeanMain2.getTpl_type()));
                                    view5 = view2;
                                    UtilsMy.v2(game_info.getSp_tag_info(), view5, a4);
                                    h2Var2.f41872c.setEnabled(true);
                                    if ((ConstantIntEnum.H5.value() + "").equals(game_info.getPlugin_num())) {
                                        h2Var2.f41873d.setBackgroundResource(R.drawable.recom_blue_butn);
                                        h2Var2.f41873d.setText("开始");
                                        h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                        h2Var2.f41876g.setVisibility(8);
                                        h2Var2.f41883n.setVisibility(8);
                                    } else if (a4 == null) {
                                        i0(h2Var2, Boolean.TRUE, Boolean.FALSE);
                                        if (UtilsMy.e0(game_info.getTag_info())) {
                                            if (com.join.android.app.common.utils.a.g0(this.f41742b).c(this.f41742b, game_info.getPackageName()) && UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) == 0) {
                                                APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41742b).k(this.f41742b, game_info.getPackageName());
                                                if (com.join.mgps.Util.d2.i(game_info.getVer()) && k4.d() < Integer.parseInt(game_info.getVer())) {
                                                    h2Var2.f41873d.setBackgroundResource(R.drawable.recom_green_butn);
                                                    h2Var2.f41873d.setText("更新");
                                                    h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                } else {
                                                    h2Var2.f41873d.setBackgroundResource(R.drawable.recom_maincolor_butn);
                                                    h2Var2.f41873d.setText(this.f41742b.getResources().getString(R.string.download_status_finished));
                                                    h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_main_color));
                                                }
                                            } else {
                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_green_butn);
                                                UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                                                UtilsMy.m2(h2Var2.f41873d, h2Var2.f41872c, game_info);
                                            }
                                        } else {
                                            h2Var2.f41873d.setBackgroundResource(R.drawable.recom_green_butn);
                                            UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                                            UtilsMy.m2(h2Var2.f41873d, h2Var2.f41872c, game_info);
                                        }
                                    } else {
                                        int status = a4.getStatus();
                                        if (UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) > 0) {
                                            status = 43;
                                        }
                                        if (status != 0) {
                                            if (status == 27) {
                                                h2Var2.f41873d.setText("暂停中");
                                            } else if (status == 48) {
                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_blue_butn);
                                                h2Var2.f41873d.setText("安装中");
                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                i0(h2Var2, Boolean.TRUE, Boolean.FALSE);
                                            } else if (status != 2) {
                                                if (status != 3) {
                                                    if (status != 5) {
                                                        if (status != 6) {
                                                            if (status != 7) {
                                                                if (status != 42) {
                                                                    if (status != 43) {
                                                                        switch (status) {
                                                                            case 9:
                                                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_green_butn);
                                                                                h2Var2.f41873d.setText("更新");
                                                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                                                i0(h2Var2, Boolean.TRUE, Boolean.FALSE);
                                                                                break;
                                                                            case 10:
                                                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_blue_butn);
                                                                                h2Var2.f41873d.setText("等待");
                                                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                                                Boolean bool = Boolean.FALSE;
                                                                                i0(h2Var2, bool, bool);
                                                                                h2Var2.f41877h.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                                                try {
                                                                                    h2Var2.f41880k.setProgress((int) a4.getProgress());
                                                                                } catch (Exception e11) {
                                                                                    e11.printStackTrace();
                                                                                }
                                                                                h2Var2.f41878i.setText("等待中");
                                                                                break;
                                                                            case 11:
                                                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_green_butn);
                                                                                h2Var2.f41873d.setText("安装");
                                                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_green_color));
                                                                                i0(h2Var2, Boolean.TRUE, Boolean.FALSE);
                                                                                break;
                                                                            case 12:
                                                                                i0(h2Var2, Boolean.FALSE, Boolean.TRUE);
                                                                                h2Var2.f41877h.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                                                h2Var2.f41878i.setText("解压中..");
                                                                                h2Var2.f41881l.setProgress((int) a4.getProgress());
                                                                                h2Var2.f41873d.setBackgroundResource(R.drawable.extract);
                                                                                h2Var2.f41873d.setText("解压中");
                                                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_grey_color));
                                                                                break;
                                                                            case 13:
                                                                                i0(h2Var2, Boolean.FALSE, Boolean.TRUE);
                                                                                h2Var2.f41877h.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                                                h2Var2.f41878i.setText("点击重新解压");
                                                                                h2Var2.f41881l.setProgress((int) a4.getProgress());
                                                                                h2Var2.f41873d.setBackgroundResource(R.drawable.reextract);
                                                                                h2Var2.f41873d.setText("解压");
                                                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                                                break;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                    h2Var2.f41873d.setBackgroundResource(R.drawable.recom_maincolor_butn);
                                                    h2Var2.f41873d.setText(this.f41742b.getResources().getString(R.string.download_status_finished));
                                                    h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_main_color));
                                                    Boolean bool2 = Boolean.TRUE;
                                                    i0(h2Var2, bool2, bool2);
                                                }
                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_blue_butn);
                                                h2Var2.f41873d.setText("继续");
                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                Boolean bool3 = Boolean.FALSE;
                                                i0(h2Var2, bool3, bool3);
                                                try {
                                                    if (a4.getSize() == 0) {
                                                        h2Var2.f41877h.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    } else {
                                                        h2Var2.f41877h.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    }
                                                    h2Var2.f41880k.setProgress((int) a4.getProgress());
                                                } catch (Exception e12) {
                                                    e12.printStackTrace();
                                                }
                                                h2Var2.f41878i.setText("暂停中");
                                            } else {
                                                UtilsMy.C3(a4);
                                                h2Var2.f41873d.setBackgroundResource(R.drawable.recom_blue_butn);
                                                h2Var2.f41873d.setText("暂停");
                                                h2Var2.f41873d.setTextColor(this.f41742b.getResources().getColor(R.color.app_blue_color));
                                                Boolean bool4 = Boolean.FALSE;
                                                i0(h2Var2, bool4, bool4);
                                                if (a4.getSize() == 0) {
                                                    h2Var2.f41877h.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                } else {
                                                    h2Var2.f41877h.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                }
                                                h2Var2.f41880k.setProgress((int) a4.getProgress());
                                                String speed = a4.getSpeed();
                                                h2Var2.f41878i.setText(speed + "/S");
                                            }
                                        }
                                        h2Var2.f41873d.setBackgroundResource(R.drawable.recom_green_butn);
                                        UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                                        UtilsMy.m2(h2Var2.f41873d, h2Var2.f41872c, game_info);
                                        i0(h2Var2, Boolean.TRUE, Boolean.FALSE);
                                    }
                                    h2Var2.f41872c.setOnClickListener(new k1(recomDatabeanLeft2, mgpapaMainItemBean.getMoreType(), mgpapaMainItemBean.getMoreType2(), mgpapaMainItemBean.getReMarks()));
                                    h2Var2.f41882m.setOnClickListener(new h(appBeanMain2, mgpapaMainItemBean, game_info));
                                    h2Var2.f41882m.setBackgroundColor(0);
                                    h2Var2.f41884o.setVisibility(8);
                                    break;
                                }
                                view5 = view2;
                                break;
                            } catch (Exception e13) {
                                e = e13;
                                exc = e;
                                view3 = view2;
                                exc.printStackTrace();
                                return view3;
                            }
                        case 4:
                            view2 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans4 = mgpapaMainItemBean.getRecomDatabeans();
                            if (recomDatabeans4 != null && recomDatabeans4.size() > 0) {
                                RecomDatabeanBusiness recomDatabeanBusiness7 = recomDatabeans4.get(0);
                                MyImageLoader.d(s2Var.f42076a, R.drawable.banner_normal_icon, recomDatabeanBusiness7.getMain().getPic_remote());
                                s2Var.f42076a.setOnClickListener(new i(recomDatabeanBusiness7, mgpapaMainItemBean));
                            }
                            view5 = view2;
                            break;
                        case 5:
                            view2 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans5 = mgpapaMainItemBean.getRecomDatabeans();
                            ArrayList arrayList = new ArrayList();
                            com.join.mgps.adapter.q2 q2Var15 = new com.join.mgps.adapter.q2(this.f41742b, arrayList);
                            r2Var.f42046a.setAdapter((ListAdapter) q2Var15);
                            r2Var.f42046a.setOnItemClickListener(new j(arrayList));
                            arrayList.clear();
                            arrayList.addAll(recomDatabeans5);
                            q2Var15.notifyDataSetChanged();
                            view5 = view2;
                            break;
                        case 6:
                            view2 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans6 = mgpapaMainItemBean.getRecomDatabeans();
                            if (recomDatabeans6 != null && recomDatabeans6.size() > 0 && (recomDatabeanBusiness2 = recomDatabeans6.get(0)) != null) {
                                ModleBean main4 = recomDatabeanBusiness2.getMain();
                                q2Var.f42031c.setText(Html.fromHtml(main4.getSub_title()), TextView.BufferType.SPANNABLE);
                                q2Var.f42032d.setText(main4.getLabel());
                                String[] split = main4.getPic_remote().split("\\|");
                                if (split.length > 0) {
                                    MyImageLoader.d(q2Var.f42035g, R.drawable.main_normal_icon, split[0]);
                                }
                                if (split.length > 1) {
                                    MyImageLoader.d(q2Var.f42036h, R.drawable.main_normal_icon, split[1]);
                                }
                                if (split.length > 2) {
                                    MyImageLoader.d(q2Var.f42037i, R.drawable.main_normal_icon, split[2]);
                                }
                                q2Var.f42034f.setText(main4.getComment_count() + "");
                                q2Var.f42033e.setText(main4.getPv_count() + "");
                                q2Var.f42035g.setOnClickListener(new l(recomDatabeanBusiness2, mgpapaMainItemBean));
                                q2Var.f42030b.setOnClickListener(new m(recomDatabeanBusiness2, mgpapaMainItemBean));
                                q2Var.f42036h.setOnClickListener(new n(recomDatabeanBusiness2, mgpapaMainItemBean));
                                q2Var.f42029a.setOnClickListener(new o(recomDatabeanBusiness2, mgpapaMainItemBean));
                            }
                            view5 = view2;
                            break;
                        case 7:
                            view2 = view4;
                            RecomDatabeanBusiness recomDatabeanLeft3 = mgpapaMainItemBean.getRecomDatabeanLeft();
                            if (recomDatabeanLeft3 != null) {
                                ModleBean main5 = recomDatabeanLeft3.getMain();
                                p2Var.f42005b.setText(main5.getSub_title());
                                p2Var.f42006c.setText(main5.getLabel());
                                MyImageLoader.h(p2Var.f42007d, main5.getPic_remote());
                                p2Var.f42004a.setOnClickListener(new q(recomDatabeanLeft3, mgpapaMainItemBean));
                                if (recomDatabeanLeft3.getSub().get(0).getGame_info() == null) {
                                    p2Var2 = p2Var;
                                    p2Var2.f42012i.setVisibility(8);
                                    p2Var2.f42014k.setVisibility(0);
                                } else {
                                    p2Var2 = p2Var;
                                    p2Var2.f42012i.setVisibility(0);
                                    p2Var2.f42014k.setVisibility(8);
                                }
                                e0(p2Var2.f42013j, recomDatabeanLeft3, p2Var2.f42008e, p2Var2.f42009f, p2Var2.f42010g, p2Var2.f42011h, mgpapaMainItemBean.getMoreType2() + "-", mgpapaMainItemBean.getReMarks());
                                p2Var2.f42012i.setOnClickListener(new r(recomDatabeanLeft3, mgpapaMainItemBean));
                            }
                            view5 = view2;
                            break;
                        case 8:
                            view2 = view4;
                            x1Var2.f42174a.setText("猜你喜欢");
                            x1Var2.f42175b.setOnClickListener(new s());
                            view5 = view2;
                            break;
                        case 9:
                            view2 = view4;
                            RecomDatabeanBusiness recomDatabeanLeft4 = mgpapaMainItemBean.getRecomDatabeanLeft();
                            RecomDatabeanBusiness recomDatabeanRight = mgpapaMainItemBean.getRecomDatabeanRight();
                            g0(w1Var2, recomDatabeanLeft4, mgpapaMainItemBean.getMoreType(), 0);
                            g0(w1Var2, recomDatabeanRight, mgpapaMainItemBean.getMoreType(), 1);
                            view5 = view2;
                            break;
                        case 10:
                            view2 = view4;
                            List<RecomDatabeanBusiness> recomDatabeans7 = mgpapaMainItemBean.getRecomDatabeans();
                            if (recomDatabeans7 != null && recomDatabeans7.size() > 2) {
                                RecomDatabeanBusiness recomDatabeanBusiness8 = recomDatabeans7.get(0);
                                if (recomDatabeanBusiness8 != null) {
                                    ModleBean main6 = recomDatabeanBusiness8.getMain();
                                    ((o2) r27).f41977b.setText(main6.getTitle());
                                    ((o2) r27).f41978c.setText(main6.getSub_title());
                                    MyImageLoader.h(((o2) r27).f41979d, main6.getPic_remote());
                                    ((o2) r27).f41976a.setOnClickListener(new p(recomDatabeanBusiness8, mgpapaMainItemBean));
                                }
                                RecomDatabeanBusiness recomDatabeanBusiness9 = recomDatabeans7.get(1);
                                if (recomDatabeanBusiness9 != null) {
                                    MyImageLoader.h(((o2) r27).f41980e, recomDatabeanBusiness9.getMain().getPic_remote());
                                }
                                RecomDatabeanBusiness recomDatabeanBusiness10 = recomDatabeans7.get(2);
                                if (recomDatabeanBusiness9 != null) {
                                    MyImageLoader.h(((o2) r27).f41981f, recomDatabeanBusiness10.getMain().getPic_remote());
                                }
                            }
                            view5 = view2;
                            break;
                        case 11:
                            view2 = view4;
                            RecomDatabeanBusiness recomDatabeanLeft5 = mgpapaMainItemBean.getRecomDatabeanLeft();
                            RecomDatabeanBusiness recomDatabeanRight2 = mgpapaMainItemBean.getRecomDatabeanRight();
                            if (recomDatabeanLeft5.getSub() != null && recomDatabeanLeft5.getSub().size() > 0) {
                                AppBeanMain appBeanMain3 = recomDatabeanLeft5.getSub().get(0);
                                o1Var.f41965c.setHierarchy(com.facebook.drawee.generic.b.t(this.f41742b.getResources()).Y(RoundingParams.d(10.0f)).a());
                                MyImageLoader.d(o1Var.f41966d, R.drawable.main_normal_icon, appBeanMain3.getGame_info().getIco_remote());
                                MyImageLoader.d(o1Var.f41965c, R.drawable.main_normal_icon, recomDatabeanLeft5.getMain().getPic_remote());
                                o1Var.f41967e.setText(appBeanMain3.getGame_info().getGame_name());
                                o1Var.f41973k.setText(Html.fromHtml("已有<font color = '#000000'>" + appBeanMain3.getGame_info().getBespeak_count() + "</font>人预约"), TextView.BufferType.SPANNABLE);
                                o1Var.f41963a.setOnClickListener(new t(appBeanMain3, recomDatabeanLeft5));
                                if (appBeanMain3.getGame_info().getIs_bespeak() == 1) {
                                    o1Var.f41968f.setText("已预约");
                                    o1Var.f41968f.setEnabled(false);
                                    o1Var.f41968f.setTextColor(-1);
                                    o1Var.f41968f.setBackgroundResource(R.drawable.download_maincolor_butn);
                                } else {
                                    o1Var.f41968f.setBackgroundResource(R.drawable.stroke_button_maincolor_selecter);
                                    o1Var.f41968f.setEnabled(true);
                                    o1Var.f41968f.setTextColor(-756480);
                                    o1Var.f41968f.setOnClickListener(new u(appBeanMain3, recomDatabeanLeft5));
                                    o1Var.f41968f.setText("预约");
                                }
                            }
                            if (recomDatabeanRight2.getSub() == null || recomDatabeanRight2.getSub().size() <= 0) {
                                o1Var.f41964b.setVisibility(4);
                            } else {
                                o1Var.f41964b.setVisibility(0);
                                AppBeanMain appBeanMain4 = recomDatabeanRight2.getSub().get(0);
                                o1Var.f41969g.setHierarchy(com.facebook.drawee.generic.b.t(this.f41742b.getResources()).Y(RoundingParams.d(10.0f)).a());
                                MyImageLoader.d(o1Var.f41970h, R.drawable.main_normal_icon, appBeanMain4.getGame_info().getIco_remote());
                                MyImageLoader.d(o1Var.f41969g, R.drawable.main_normal_icon, recomDatabeanRight2.getMain().getPic_remote());
                                o1Var.f41971i.setText(appBeanMain4.getGame_info().getGame_name());
                                o1Var.f41974l.setText(Html.fromHtml("已有<font color = '#000000'>" + appBeanMain4.getGame_info().getBespeak_count() + "</font>人预约"), TextView.BufferType.SPANNABLE);
                                o1Var.f41964b.setOnClickListener(new w(appBeanMain4, recomDatabeanRight2));
                                if (appBeanMain4.getGame_info().getIs_bespeak() == 1) {
                                    o1Var.f41972j.setText("已预约");
                                    o1Var.f41972j.setEnabled(false);
                                    o1Var.f41972j.setTextColor(-1);
                                    o1Var.f41972j.setBackgroundResource(R.drawable.download_maincolor_butn);
                                } else {
                                    o1Var.f41972j.setBackgroundResource(R.drawable.stroke_button_maincolor_selecter);
                                    o1Var.f41972j.setText("预约");
                                    o1Var.f41972j.setTextColor(-756480);
                                    o1Var.f41972j.setEnabled(true);
                                    o1Var.f41972j.setOnClickListener(new x(appBeanMain4, recomDatabeanRight2));
                                }
                            }
                            view5 = view2;
                            break;
                        case 12:
                            view2 = view4;
                            PapaMainGameBespeakInfo papaMainGameBespeakInfo = (PapaMainGameBespeakInfo) mgpapaMainItemBean.getObject();
                            n1Var25.f41951a.setText(papaMainGameBespeakInfo.getGame_bespeak_count());
                            n1Var25.f41952b.setText(Html.fromHtml(papaMainGameBespeakInfo.getMember_bespeak_count() + ""), TextView.BufferType.SPANNABLE);
                            n1Var25.f41953c.setOnClickListener(new y(papaMainGameBespeakInfo, mgpapaMainItemBean));
                            view5 = view2;
                            break;
                        case 13:
                            view2 = view4;
                            RecomDatabeanBusiness recomDatabeanLeft6 = mgpapaMainItemBean.getRecomDatabeanLeft();
                            if (com.join.mgps.Util.d2.i(recomDatabeanLeft6.getMain().getVedio_url())) {
                                MyImageLoader.d(m1Var.f41929a, R.drawable.banner_normal_icon, recomDatabeanLeft6.getMain().getPic_remote());
                                int i8 = i4 + 1;
                                m1Var.f41929a.setTag(Integer.valueOf(i8));
                                if (com.join.mgps.Util.d2.i(recomDatabeanLeft6.getMain().getVedio_url())) {
                                    String vedio_url = recomDatabeanLeft6.getMain().getVedio_url();
                                    IntentDateBean intentDataBean = recomDatabeanLeft6.getSub().get(0).getIntentDataBean();
                                    ExtBean extBean = intentDataBean.getExtBean();
                                    extBean.setReMarks(mgpapaMainItemBean.getReMarks());
                                    intentDataBean.setExtBean(extBean);
                                    this.f41751k.d(i8, new c.k(i8, vedio_url, recomDatabeanLeft6.getMain().getPic_remote(), intentDataBean), new boolean[0]);
                                }
                                m1Var3 = m1Var;
                                m1Var3.f41937i.setOnClickListener(new z(i8));
                            } else {
                                m1Var3 = m1Var;
                                m1Var3.f41929a.setVisibility(0);
                                MyImageLoader.d(m1Var3.f41929a, R.drawable.banner_normal_icon, recomDatabeanLeft6.getMain().getPic_remote());
                            }
                            e0(m1Var3.f41934f, recomDatabeanLeft6, m1Var3.f41930b, m1Var3.f41931c, m1Var3.f41932d, m1Var3.f41933e, mgpapaMainItemBean.getMoreType2().replace("-x", "-1-"), mgpapaMainItemBean.getReMarks());
                            if (recomDatabeanLeft6.getSub() != null && recomDatabeanLeft6.getSub().size() > 0) {
                                AppBean game_info2 = recomDatabeanLeft6.getSub().get(0).getGame_info();
                                m1Var3.f41932d.setVisibility(8);
                                UtilsMy.I(game_info2.getScore(), game_info2.getDown_count(), game_info2.getSize(), game_info2.getSp_tag_info(), game_info2.getTag_info(), m1Var3.f41936h, this.f41742b, "3".equals(recomDatabeanLeft6.getSub().get(0).getTpl_type()));
                            }
                            m1Var3.f41935g.setOnClickListener(new a0(recomDatabeanLeft6, mgpapaMainItemBean));
                            m1Var3.f41929a.setOnClickListener(new b0(recomDatabeanLeft6, mgpapaMainItemBean));
                            view5 = view2;
                            break;
                        case 14:
                            view2 = view4;
                            RecomDatabeanBusiness recomDatabeanBusiness11 = mgpapaMainItemBean.getRecomDatabeans().get(0);
                            if (com.join.mgps.Util.d2.i(recomDatabeanBusiness11.getMain().getVedio_url())) {
                                MyImageLoader.d(q1Var.f42021b, R.drawable.banner_normal_icon, recomDatabeanBusiness11.getMain().getPic_remote());
                                int i9 = i4 + 1;
                                q1Var.f42021b.setTag(Integer.valueOf(i9));
                                if (com.join.mgps.Util.d2.i(recomDatabeanBusiness11.getMain().getVedio_url())) {
                                    this.f41751k.d(i9, new c.k(i9, recomDatabeanBusiness11.getMain().getVedio_url(), recomDatabeanBusiness11.getMain().getPic_remote(), recomDatabeanBusiness11.getSub().get(0).getIntentDataBean()), new boolean[0]);
                                }
                                q1Var.f42020a.setOnClickListener(new c0(i9));
                            } else {
                                q1Var.f42021b.setVisibility(0);
                                MyImageLoader.d(q1Var.f42021b, R.drawable.banner_normal_icon, recomDatabeanBusiness11.getMain().getPic_remote());
                            }
                            q1 q1Var4 = q1Var;
                            q1Var4.f42024e.setText(recomDatabeanBusiness11.getMain().getLabel());
                            e0(q1Var4.f42026g, recomDatabeanBusiness11, q1Var4.f42022c, q1Var4.f42023d, null, q1Var4.f42025f, mgpapaMainItemBean.getMoreType2() + "-", mgpapaMainItemBean.getReMarks());
                            q1Var4.f42027h.setOnClickListener(new d0(recomDatabeanBusiness11, mgpapaMainItemBean));
                            view5 = view2;
                            break;
                        case 15:
                            view2 = view4;
                            PapaMainLive papaMainLive = (PapaMainLive) mgpapaMainItemBean.getObject();
                            List<PapaMainLivelistItem> list = papaMainLive.getList();
                            if (papaMainLive.getFirst() != null) {
                                m2 m2Var8 = m2Var;
                                m2Var8.f41941c.setText(papaMainLive.getFirst().getTitle());
                                m2Var8.f41940b.setText(papaMainLive.getFirst().getReason());
                                SimpleDraweeView simpleDraweeView2 = m2Var8.f41939a;
                                String cover_img = papaMainLive.getFirst().getCover_img();
                                Context context = this.f41742b;
                                MyImageLoader.f(simpleDraweeView2, R.drawable.main_normal_icon, cover_img, MyImageLoader.D(context, com.join.android.app.common.utils.j.n(context).g() * 6.0f));
                                m2Var4 = m2Var8;
                            } else {
                                m2 m2Var9 = m2Var;
                                m2Var4 = m2Var9;
                                if (list != null) {
                                    m2Var4 = m2Var9;
                                    if (list.size() > 0) {
                                        PapaMainLivelistItem papaMainLivelistItem = list.get(0);
                                        m2Var9.f41941c.setText(papaMainLivelistItem.getTitle());
                                        SimpleDraweeView simpleDraweeView3 = m2Var9.f41939a;
                                        String cover_img2 = papaMainLivelistItem.getCover_img();
                                        Context context2 = this.f41742b;
                                        MyImageLoader.f(simpleDraweeView3, R.drawable.main_normal_icon, cover_img2, MyImageLoader.D(context2, com.join.android.app.common.utils.j.n(context2).g() * 6.0f));
                                        m2Var4 = m2Var9;
                                    }
                                }
                            }
                            if (list != null) {
                                m2Var4.f41943e.removeAllViews();
                                for (PapaMainLivelistItem papaMainLivelistItem2 : list) {
                                    View inflate9 = LayoutInflater.from(this.f41742b).inflate(R.layout.papamain_tv_right_item, (ViewGroup) null);
                                    TextView textView2 = (TextView) inflate9.findViewById(R.id.title);
                                    TextView textView3 = (TextView) inflate9.findViewById(R.id.time);
                                    String cover_img3 = papaMainLivelistItem2.getCover_img();
                                    Context context3 = this.f41742b;
                                    MyImageLoader.f((SimpleDraweeView) inflate9.findViewById(R.id.icon), R.drawable.main_normal_icon, cover_img3, MyImageLoader.D(context3, com.join.android.app.common.utils.j.n(context3).g() * 5.0f));
                                    textView2.setText(papaMainLivelistItem2.getTitle());
                                    long start_timestamp = papaMainLivelistItem2.getStart_timestamp();
                                    long end_timestamp = papaMainLivelistItem2.getEnd_timestamp();
                                    long j5 = start_timestamp * 1000;
                                    if (j5 < System.currentTimeMillis()) {
                                        if (1000 * end_timestamp > System.currentTimeMillis()) {
                                            textView3.setTextColor(-756480);
                                            textView2.setTextColor(-756480);
                                            textView3.setText("正在播出：" + com.join.mgps.Util.x.z(j5) + "-" + com.join.mgps.Util.x.z(j4));
                                            m2Var4.f41943e.addView(inflate9);
                                        }
                                    }
                                    if (com.join.android.app.common.utils.c.g(j5)) {
                                        textView3.setText(com.join.mgps.Util.x.z(j5) + "-" + com.join.mgps.Util.x.z(end_timestamp * 1000));
                                    } else {
                                        textView3.setText(com.join.mgps.Util.x.y(j5) + "日" + com.join.mgps.Util.x.z(j5) + "-" + com.join.mgps.Util.x.z(end_timestamp * 1000));
                                    }
                                    m2Var4.f41943e.addView(inflate9);
                                }
                            }
                            m2Var4.f41942d.setOnClickListener(new e0());
                            m2Var4.f41939a.setOnClickListener(new f0());
                            m2Var4.f41943e.setOnClickListener(new h0());
                            view5 = view2;
                            break;
                        case 16:
                            view2 = view4;
                            RecomDatabeanBusiness recomDatabeanLeft7 = mgpapaMainItemBean.getRecomDatabeanLeft();
                            ?? r8 = c2Var;
                            e0(r8.f41783i, recomDatabeanLeft7, r8.f41778d, r8.f41779e, r8.f41780f, r8.f41781g, mgpapaMainItemBean.getMoreType2() + "", mgpapaMainItemBean.getReMarks());
                            if (recomDatabeanLeft7.getSub() != null && recomDatabeanLeft7.getSub().size() > 0) {
                                AppBean game_info3 = recomDatabeanLeft7.getSub().get(0).getGame_info();
                                r8.f41780f.setVisibility(8);
                                UtilsMy.I(game_info3.getScore(), game_info3.getDown_count(), game_info3.getSize(), game_info3.getSp_tag_info(), game_info3.getTag_info(), r8.f41784j, this.f41742b, "3".equals(recomDatabeanLeft7.getSub().get(0).getTpl_type()));
                            }
                            String[] split2 = recomDatabeanLeft7.getMain().getPic_remote().split("\\|");
                            if (split2.length > 0) {
                                MyImageLoader.h(((b2) r8).f41775a, split2[0]);
                            }
                            if (split2.length > 1) {
                                MyImageLoader.h(((b2) r8).f41776b, split2[1]);
                            }
                            if (split2.length > 2) {
                                MyImageLoader.h(((b2) r8).f41777c, split2[2]);
                            }
                            r8.f41782h.setOnClickListener(new j0(recomDatabeanLeft7, mgpapaMainItemBean));
                            ((b2) r8).f41775a.setOnClickListener(new k0(recomDatabeanLeft7, mgpapaMainItemBean));
                            ((b2) r8).f41776b.setOnClickListener(new l0(recomDatabeanLeft7, mgpapaMainItemBean));
                            ((b2) r8).f41777c.setOnClickListener(new m0(recomDatabeanLeft7, mgpapaMainItemBean));
                            view5 = view2;
                            break;
                        case 17:
                        case 21:
                        default:
                            view5 = view4;
                            break;
                        case 18:
                            try {
                                List<RecomDatabeanBusiness> recomDatabeans8 = mgpapaMainItemBean.getRecomDatabeans();
                                c2 c2Var13 = c2Var2;
                                c2Var13.f41813v.setVisibility(4);
                                c2Var13.f41806o.setVisibility(4);
                                if (recomDatabeans8 == null || recomDatabeans8.size() <= 0) {
                                    str = "-";
                                    view2 = view4;
                                    i5 = 1;
                                    c2Var3 = c2Var13;
                                } else {
                                    RecomDatabeanBusiness recomDatabeanBusiness12 = recomDatabeans8.get(0);
                                    c2Var13.f41801j.setText(recomDatabeanBusiness12.getSub().get(0).getGame_info().getInfo());
                                    MyImageLoader.d(c2Var13.f41792a, R.drawable.main_normal_icon, recomDatabeanBusiness12.getMain().getPic_remote());
                                    view2 = view4;
                                    c2Var3 = c2Var13;
                                    str = "-";
                                    i5 = 1;
                                    e0(c2Var13.f41800i, recomDatabeanBusiness12, c2Var13.f41795d, c2Var13.f41796e, c2Var13.f41797f, c2Var13.f41798g, mgpapaMainItemBean.getMoreType2() + "1-", mgpapaMainItemBean.getReMarks());
                                    c2Var3.f41799h.setOnClickListener(new n0(mgpapaMainItemBean, recomDatabeanBusiness12));
                                    UtilsMy.w2(recomDatabeanBusiness12.getSub().get(0).getGame_info().getSp_tag_info(), c2Var3.f41816y);
                                }
                                if (recomDatabeans8 == null || recomDatabeans8.size() <= i5) {
                                    str2 = str;
                                    i6 = 2;
                                } else {
                                    c2Var3.f41806o.setVisibility(0);
                                    RecomDatabeanBusiness recomDatabeanBusiness13 = recomDatabeans8.get(i5);
                                    c2Var3.f41808q.setText(recomDatabeanBusiness13.getSub().get(0).getGame_info().getInfo());
                                    MyImageLoader.d(c2Var3.f41793b, R.drawable.main_normal_icon, recomDatabeanBusiness13.getMain().getPic_remote());
                                    TextView textView4 = c2Var3.f41807p;
                                    SimpleDraweeView simpleDraweeView4 = c2Var3.f41802k;
                                    TextView textView5 = c2Var3.f41803l;
                                    TextView textView6 = c2Var3.f41804m;
                                    RelativeLayout relativeLayout = c2Var3.f41805n;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(mgpapaMainItemBean.getMoreType2());
                                    i6 = 2;
                                    sb.append(2);
                                    String str3 = str;
                                    sb.append(str3);
                                    str2 = str3;
                                    e0(textView4, recomDatabeanBusiness13, simpleDraweeView4, textView5, textView6, relativeLayout, sb.toString(), mgpapaMainItemBean.getReMarks());
                                    c2Var3.f41806o.setOnClickListener(new o0(mgpapaMainItemBean, recomDatabeanBusiness13));
                                    UtilsMy.w2(recomDatabeanBusiness13.getSub().get(0).getGame_info().getSp_tag_info(), c2Var3.f41817z);
                                }
                                if (recomDatabeans8 != null && recomDatabeans8.size() > i6) {
                                    RecomDatabeanBusiness recomDatabeanBusiness14 = recomDatabeans8.get(i6);
                                    c2Var3.f41813v.setVisibility(0);
                                    c2Var3.f41815x.setText(recomDatabeanBusiness14.getSub().get(0).getGame_info().getInfo());
                                    MyImageLoader.d(c2Var3.f41794c, R.drawable.main_normal_icon, recomDatabeanBusiness14.getMain().getPic_remote());
                                    UtilsMy.w2(recomDatabeanBusiness14.getSub().get(0).getGame_info().getSp_tag_info(), c2Var3.A);
                                    e0(c2Var3.f41814w, recomDatabeanBusiness14, c2Var3.f41809r, c2Var3.f41810s, c2Var3.f41811t, c2Var3.f41812u, mgpapaMainItemBean.getMoreType2() + 3 + str2, mgpapaMainItemBean.getReMarks());
                                    c2Var3.f41813v.setOnClickListener(new p0(mgpapaMainItemBean, recomDatabeanBusiness14));
                                }
                                view5 = view2;
                                break;
                            } catch (Exception e14) {
                                e = e14;
                                view2 = view4;
                                exc = e;
                                view3 = view2;
                                exc.printStackTrace();
                                return view3;
                            }
                            break;
                        case 19:
                            RecomDatabeanBusiness recomDatabeanLeft8 = mgpapaMainItemBean.getRecomDatabeanLeft();
                            d2Var.f41826a.setText(recomDatabeanLeft8.getMain().getTitle());
                            d2Var.f41827b.setText(recomDatabeanLeft8.getMain().getSub_title());
                            d2Var.f41828c.setVisibility(8);
                            if (mgpapaMainItemBean.getMoreType() == 2) {
                                if (recomDatabeanLeft8.getSub() != null && recomDatabeanLeft8.getSub().size() >= 1 && recomDatabeanLeft8.getSub().get(0).getIntentDataBean() != null) {
                                    IntentDateBean intentDataBean2 = recomDatabeanLeft8.getSub().get(0).getIntentDataBean();
                                    if (intentDataBean2 != null && (intentDataBean2.getLink_type() != 3 || !"9".equals(intentDataBean2.getLink_type_val()))) {
                                        d2Var.f41828c.setVisibility(0);
                                        d2Var.f41828c.setOnClickListener(new i0(recomDatabeanLeft8));
                                    }
                                    d2Var.f41828c.setVisibility(8);
                                    d2Var.f41828c.setOnClickListener(new i0(recomDatabeanLeft8));
                                }
                                d2Var.f41828c.setVisibility(8);
                                d2Var.f41828c.setOnClickListener(new i0(recomDatabeanLeft8));
                            }
                            view5 = view4;
                            break;
                        case 20:
                            e2Var.f41839d.setText(com.join.mgps.Util.x.C(System.currentTimeMillis()));
                            e2Var.f41836a.setTimeAnim();
                            e2Var.f41836a.setOnClickListener(new q0());
                            view5 = view4;
                            break;
                        case 22:
                            try {
                                List list2 = (List) mgpapaMainItemBean.getObject();
                                if (list2 != null && list2.size() == 2) {
                                    BannerBean bannerBean = (BannerBean) list2.get(0);
                                    if (bannerBean == null) {
                                        return view4;
                                    }
                                    MyImageLoader.d(j2Var.f41901a, R.drawable.banner_normal_icon, bannerBean.getPic_remote());
                                    j2Var.f41901a.setOnClickListener(new v(bannerBean));
                                    BannerBean bannerBean2 = (BannerBean) list2.get(1);
                                    MyImageLoader.d(j2Var.f41902b, R.drawable.banner_normal_icon, bannerBean2.getPic_remote());
                                    j2Var.f41902b.setOnClickListener(new g0(bannerBean2));
                                }
                            } catch (Exception e15) {
                                e15.printStackTrace();
                            }
                            view5 = view4;
                            break;
                        case 23:
                            try {
                                List list3 = (List) mgpapaMainItemBean.getObject();
                                v1Var.f42145e.setVisibility(4);
                                v1Var.f42141a.setVisibility(4);
                                v1Var.f42146f.setVisibility(4);
                                v1Var.f42142b.setVisibility(4);
                                v1Var.f42147g.setVisibility(4);
                                v1Var.f42143c.setVisibility(4);
                                v1Var.f42148h.setVisibility(4);
                                v1Var.f42144d.setVisibility(4);
                                int i10 = 0;
                                while (i10 < list3.size()) {
                                    AppBean appBean = (AppBean) list3.get(i10);
                                    if (i10 == 0) {
                                        textView = v1Var.f42145e;
                                        simpleDraweeView = v1Var.f42141a;
                                    } else if (i10 == 1) {
                                        textView = v1Var.f42146f;
                                        simpleDraweeView = v1Var.f42142b;
                                    } else if (i10 == 2) {
                                        textView = v1Var.f42147g;
                                        simpleDraweeView = v1Var.f42143c;
                                    } else if (i10 != 3) {
                                        textView = null;
                                        simpleDraweeView = null;
                                    } else {
                                        textView = v1Var.f42148h;
                                        simpleDraweeView = v1Var.f42144d;
                                    }
                                    String str4 = "组件" + mgpapaMainItemBean.getMoreType2();
                                    int i11 = mgpapaMainItemBean.getMoreType() == 1 ? i10 + 1 : i10 + 5;
                                    String crc_sign_id = appBean.getCrc_sign_id();
                                    StringBuilder sb2 = new StringBuilder();
                                    List list4 = list3;
                                    sb2.append(Integer.parseInt(mgpapaMainItemBean.getMoreType2()) + 7);
                                    sb2.append("-");
                                    sb2.append(i11);
                                    Y(appBean, textView, simpleDraweeView, new com.papa.sim.statistic.e(crc_sign_id, str4, sb2.toString(), appBean.getGame_name()));
                                    i10++;
                                    list3 = list4;
                                }
                            } catch (Exception e16) {
                                e16.printStackTrace();
                            }
                            view5 = view4;
                            break;
                        case 24:
                            GameRankingBean gameRankingBean = (GameRankingBean) mgpapaMainItemBean.getObject();
                            com.join.mgps.customview.d0 d0Var = this.f41752l;
                            int i12 = 11706;
                            if (d0Var == null) {
                                String d4 = new PrefDef_(this.f41742b).rankingMenu().d();
                                if (!TextUtils.isEmpty(d4)) {
                                    d4.split(",");
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    List<String> ranking_title = gameRankingBean.getRanking_title();
                                    if (ranking_title != null) {
                                        int i13 = 0;
                                        while (i13 < ranking_title.size()) {
                                            if (ranking_title.size() != 0) {
                                                String str5 = (i13 + 1) + "";
                                                String str6 = ranking_title.get(i13);
                                                if (i13 == 0) {
                                                    int i14 = 1;
                                                    for (CollectionBeanSub collectionBeanSub : gameRankingBean.getOnline_ranking()) {
                                                        collectionBeanSub.set_from(i12);
                                                        collectionBeanSub.set_from_type(i12);
                                                        collectionBeanSub.setRecPosition("home-ranking-" + i14);
                                                        i14++;
                                                        i12 = 11706;
                                                    }
                                                    arrayList2.add(com.join.mgps.fragment.j4.g0(true, str5, str6, gameRankingBean.getOnline_ranking()));
                                                } else if (i13 == 1) {
                                                    for (CollectionBeanSub collectionBeanSub2 : gameRankingBean.getSingle_ranking()) {
                                                        collectionBeanSub2.set_from(11706);
                                                        collectionBeanSub2.set_from_type(11706);
                                                    }
                                                    arrayList2.add(com.join.mgps.fragment.j4.g0(true, str5, str6, gameRankingBean.getSingle_ranking()));
                                                } else if (i13 == 2) {
                                                    for (CollectionBeanSub collectionBeanSub3 : gameRankingBean.getSimulator_ranking()) {
                                                        collectionBeanSub3.set_from(11706);
                                                        collectionBeanSub3.set_from_type(11706);
                                                    }
                                                    arrayList2.add(com.join.mgps.fragment.j4.g0(true, str5, str6, gameRankingBean.getSimulator_ranking()));
                                                } else if (i13 == 3) {
                                                    for (CollectionBeanSub collectionBeanSub4 : gameRankingBean.getSimulator_ranking()) {
                                                        collectionBeanSub4.set_from(11706);
                                                        collectionBeanSub4.set_from_type(11706);
                                                    }
                                                    arrayList2.add(com.join.mgps.fragment.j4.g0(true, str5, str6, gameRankingBean.getFree_play_ranking()));
                                                }
                                                arrayList3.add(str6);
                                                com.join.mgps.customview.d0 d0Var2 = new com.join.mgps.customview.d0(this.f41743c.getChildFragmentManager(), arrayList2, arrayList3);
                                                this.f41752l = d0Var2;
                                                d0Var2.d(arrayList2, arrayList3);
                                                g2Var.f41860b.setAdapter(this.f41752l);
                                                g2Var.f41860b.setOffscreenPageLimit(3);
                                                g2Var.f41859a.setViewPager(g2Var.f41860b);
                                                g2Var.f41861c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f4
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view7) {
                                                        h4.F(view7);
                                                    }
                                                });
                                            }
                                            i13++;
                                            i12 = 11706;
                                        }
                                    }
                                    this.f41752l.notifyDataSetChanged();
                                }
                            } else {
                                ArrayList<Fragment> c4 = d0Var.c();
                                for (int i15 = 0; i15 < c4.size(); i15++) {
                                    if (i15 == 0) {
                                        ((com.join.mgps.fragment.j4) c4.get(i15)).o0(gameRankingBean.getOnline_ranking(), 11706);
                                    } else if (i15 == 1) {
                                        ((com.join.mgps.fragment.j4) c4.get(i15)).o0(gameRankingBean.getSingle_ranking(), 11706);
                                    } else if (i15 == 2) {
                                        ((com.join.mgps.fragment.j4) c4.get(i15)).o0(gameRankingBean.getSimulator_ranking(), 11706);
                                    } else if (i15 == 3) {
                                        ((com.join.mgps.fragment.j4) c4.get(i15)).o0(gameRankingBean.getFree_play_ranking(), 11706);
                                    }
                                }
                            }
                            view5 = view4;
                            break;
                        case 25:
                            ((k2) r34).f41913a.setAdapter(new com.join.mgps.adapter.k2(this.f41742b, (List) mgpapaMainItemBean.getObject()));
                            view5 = view4;
                            break;
                        case 26:
                            PAPAHomeBeanV7.TopChannelDTO topChannelDTO = (PAPAHomeBeanV7.TopChannelDTO) mgpapaMainItemBean.getObject();
                            if (topChannelDTO != null) {
                                if (topChannelDTO.getDiscover() != null) {
                                    final PAPAHomeBeanV7.HomeBeanDTO discover = topChannelDTO.getDiscover();
                                    MyImageLoader.h(((t2) view2).f42098d, discover.getBig_pic());
                                    ((t2) view2).f42097c.setText(discover.getTitle());
                                    ((t2) view2).f42096b.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.a4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view7) {
                                            h4.this.H(discover, view7);
                                        }
                                    });
                                }
                                if (topChannelDTO.getTheNew() != null) {
                                    PAPAHomeBeanV7.TheNewDTO theNew = topChannelDTO.getTheNew();
                                    ((t2) view2).f42105k.setText(theNew.getCount() + "款");
                                    ((t2) view2).f42103i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view7) {
                                            h4.this.I(view7);
                                        }
                                    });
                                    List<PAPAHomeBeanV7.ListDTO> list5 = theNew.getList();
                                    if (list5 != null && list5.size() > 0) {
                                        ((t2) view2).f42106l.removeAllViews();
                                        for (PAPAHomeBeanV7.ListDTO listDTO : list5) {
                                            View inflate10 = LayoutInflater.from(this.f41742b).inflate(R.layout.mgpapa_home_item_new_icon, (ViewGroup) null);
                                            MyImageLoader.h((SimpleDraweeView) inflate10.findViewById(R.id.newIcon), listDTO.getIco());
                                            ((t2) view2).f42106l.addView(inflate10);
                                        }
                                    }
                                }
                                if (topChannelDTO.getBroadcast() != null) {
                                    final PAPAHomeBeanV7.HomeBeanDTO broadcast = topChannelDTO.getBroadcast();
                                    ((t2) view2).f42100f.setText(broadcast.getTitle());
                                    ((t2) view2).f42101g.setText(broadcast.getSub_title());
                                    MyImageLoader.h(((t2) view2).f42102h, broadcast.getBig_pic());
                                    ((t2) view2).f42099e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view7) {
                                            h4.this.J(broadcast, view7);
                                        }
                                    });
                                }
                                String bg_color = topChannelDTO.getBg_color();
                                if (TextUtils.isEmpty(bg_color)) {
                                    bg_color = "#F7F8F9";
                                }
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setShape(0);
                                gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
                                gradientDrawable.setColors(new int[]{Color.parseColor(bg_color), Color.parseColor("#F7F8F9")});
                                gradientDrawable.setGradientType(0);
                                ((t2) view2).f42095a.setBackground(gradientDrawable);
                            }
                            view5 = view4;
                            break;
                        case 27:
                            List list6 = (List) mgpapaMainItemBean.getObject();
                            if (list6 != null) {
                                if (r1Var.f42044a.getAdapter() == null || !(r1Var.f42044a.getAdapter() instanceof com.join.mgps.adapter.s)) {
                                    r1Var.f42044a.setNestedScrollingEnabled(false);
                                    r1Var.f42044a.setHasFixedSize(true);
                                    com.join.mgps.adapter.s sVar = new com.join.mgps.adapter.s(list6);
                                    r1Var.f42044a.setLayoutManager(new GridLayoutManager(this.f41742b, 5));
                                    r1Var.f42044a.setAdapter(sVar);
                                    sVar.setOnItemClickListener(new s0(list6));
                                } else {
                                    com.join.mgps.adapter.s sVar2 = (com.join.mgps.adapter.s) r1Var.f42044a.getAdapter();
                                    if (!list6.equals(sVar2.getData())) {
                                        sVar2.setNewData(list6);
                                    }
                                }
                            }
                            view5 = view4;
                            break;
                        case 28:
                        case 34:
                        case 37:
                        case 38:
                            List list7 = (List) mgpapaMainItemBean.getObject();
                            if (list7 != null && list7.size() >= 2) {
                                s1 s1Var2 = m2Var2;
                                f0(s1Var2, (PAPAHomeBeanV7.HomeBeanDTO) list7.get(0), true, i4);
                                f0(s1Var2, (PAPAHomeBeanV7.HomeBeanDTO) list7.get(1), false, i4);
                            }
                            view5 = view4;
                            break;
                        case 29:
                        case 36:
                            final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                            PAPAHomeBeanV7.GInfoDTO g_info = homeBeanDTO.getG_info();
                            if (g_info != null) {
                                MyImageLoader.h(p1Var.f41990b, g_info.getIco());
                                p1Var.f41991c.setText(g_info.getName());
                                if (!TextUtils.isEmpty(g_info.getTag_name())) {
                                    StringBuilder sb3 = new StringBuilder();
                                    String[] split3 = g_info.getTag_name().split(",");
                                    for (int i16 = 0; i16 < split3.length; i16++) {
                                        sb3.append(split3[i16]);
                                        sb3.append(" | ");
                                        if (i16 >= 1) {
                                            p1Var.f41997i.setText(sb3.substring(0, sb3.length() - 3));
                                        }
                                    }
                                    p1Var.f41997i.setText(sb3.substring(0, sb3.length() - 3));
                                }
                            }
                            if (com.join.mgps.Util.d2.i(homeBeanDTO.getV_url())) {
                                MyImageLoader.d(p1Var.f42000l, R.drawable.banner_normal_icon, homeBeanDTO.getBig_pic());
                                int i17 = i4 + 1;
                                p1Var.f42000l.setTag(Integer.valueOf(i17));
                                c.k kVar = new c.k(i17, homeBeanDTO.getV_url(), homeBeanDTO.getBig_pic(), homeBeanDTO.getIntentDataBean());
                                kVar.g(homeBeanDTO.getPosition());
                                this.f41751k.d(i17, kVar, new boolean[0]);
                                p1Var.f42001m.setOnClickListener(new t0(i17));
                            } else {
                                p1Var.f42000l.setTag(null);
                                p1Var.f42000l.setVisibility(0);
                                MyImageLoader.d(p1Var.f42000l, R.drawable.banner_normal_icon, homeBeanDTO.getBig_pic());
                            }
                            p1Var.f42001m.setOnClickListener(new u0(homeBeanDTO));
                            p1Var.f42000l.setOnClickListener(new v0(homeBeanDTO));
                            p1Var.f41998j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view7) {
                                    h4.this.K(homeBeanDTO, p1Var, i4, view7);
                                }
                            });
                            p1Var.f41989a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view7) {
                                    h4.this.L(homeBeanDTO, view7);
                                }
                            });
                            p1Var.f41999k.setVisibility(0);
                            p1Var.f42002n.setVisibility(4);
                            update(homeBeanDTO, p1Var.f41991c, p1Var.f41997i, p1Var.f41998j, p1Var.f41999k, p1Var.f41992d, p1Var.f41993e, p1Var.f41994f, p1Var.f41995g, p1Var.f41996h);
                            view5 = view4;
                            break;
                        case 30:
                            final List list8 = (List) mgpapaMainItemBean.getObject();
                            LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.f41742b, 0, false);
                            linearLayoutManager2.setInitialPrefetchItemCount(5);
                            com.join.mgps.adapter.l2 l2Var2 = new com.join.mgps.adapter.l2(list8);
                            l2Var2.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.mgps.adapter.x3
                                @Override // com.join.mgps.base.BaseQuickAdapter.i
                                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view7, int i18) {
                                    h4.this.M(list8, baseQuickAdapter, view7, i18);
                                }
                            });
                            u1Var.f42114b.setHasFixedSize(true);
                            u1Var.f42114b.setItemViewCacheSize(10);
                            u1Var.f42114b.setNestedScrollingEnabled(false);
                            u1Var.f42114b.setLayoutManager(linearLayoutManager2);
                            u1Var.f42114b.setAdapter(l2Var2);
                            u1Var.f42114b.addOnScrollListener(new w0(list8, u1Var));
                            view5 = view4;
                            break;
                        case 31:
                            PAPAItemTitle2 pAPAItemTitle2 = (PAPAItemTitle2) mgpapaMainItemBean.getObject();
                            if (pAPAItemTitle2 != null) {
                                z1Var.f42192a.setText(pAPAItemTitle2.getTitle());
                                z1Var.f42193b.setText(pAPAItemTitle2.getSubTitle());
                                z1Var.f42193b.setVisibility(TextUtils.isEmpty(pAPAItemTitle2.getSubTitle()) ? 8 : 0);
                            }
                            view5 = view4;
                            break;
                        case 32:
                            PAPAHomeBeanV7.RankingListDTO rankingListDTO = (PAPAHomeBeanV7.RankingListDTO) mgpapaMainItemBean.getObject();
                            if (rankingListDTO == null || TextUtils.isEmpty(rankingListDTO.getTxt()) || rankingListDTO.getList() == null) {
                                ((f2) r29).f41847a.setVisibility(8);
                            } else {
                                ((f2) r29).f41847a.setVisibility(0);
                                List<List<PAPAHomeBeanV7.HomeBeanDTO>> list9 = rankingListDTO.getList();
                                com.join.mgps.customview.d0 d0Var3 = this.f41752l;
                                if (d0Var3 == null) {
                                    String[] split4 = rankingListDTO.getTxt().split(",");
                                    ArrayList arrayList4 = new ArrayList();
                                    ArrayList arrayList5 = new ArrayList();
                                    for (int i18 = 0; i18 < Math.min(split4.length, list9.size()); i18++) {
                                        if (!TextUtils.isEmpty(split4[i18]) && list9.get(i18) != null) {
                                            arrayList4.add(split4[i18]);
                                            arrayList5.add(com.join.mgps.fragment.m4.b0(true, split4[i18], list9.get(i18), i18 + 20501));
                                        }
                                    }
                                    com.join.mgps.customview.d0 d0Var4 = new com.join.mgps.customview.d0(this.f41743c.getChildFragmentManager(), arrayList5, arrayList4);
                                    this.f41752l = d0Var4;
                                    d0Var4.d(arrayList5, arrayList4);
                                    ((f2) r29).f41849c.setAdapter(this.f41752l);
                                    ((f2) r29).f41849c.setOffscreenPageLimit(3);
                                    ((f2) r29).f41848b.setViewPager(((f2) r29).f41849c);
                                    ((f2) r29).f41850d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view7) {
                                            h4.this.N(view7);
                                        }
                                    });
                                    ((f2) r29).f41849c.addOnPageChangeListener(new x0(list9));
                                } else {
                                    ArrayList<Fragment> c5 = d0Var3.c();
                                    for (int i19 = 0; i19 < Math.min(c5.size(), list9.size()); i19++) {
                                        ((com.join.mgps.fragment.m4) c5.get(i19)).j0(list9.get(i19));
                                    }
                                }
                            }
                            view5 = view4;
                            break;
                        case 33:
                            float floatValue = ((Float) mgpapaMainItemBean.getObject()).floatValue();
                            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) ((l2) r17).f41921a.getLayoutParams();
                            ((ViewGroup.MarginLayoutParams) layoutParams2).height = (int) floatValue;
                            ((l2) r17).f41921a.setLayoutParams(layoutParams2);
                            view5 = view4;
                            break;
                        case 35:
                            final List list10 = (List) mgpapaMainItemBean.getObject();
                            if (list10 != null && list10.size() > 0) {
                                if (i2Var3.f41893a.getAdapter() != null && (i2Var3.f41893a.getAdapter() instanceof com.join.mgps.adapter.m2) && ((com.join.mgps.adapter.m2) i2Var3.f41893a.getAdapter()).getData().equals(list10)) {
                                    ((com.join.mgps.adapter.m2) i2Var3.f41893a.getAdapter()).setNewData(list10);
                                } else {
                                    LinearLayoutManager linearLayoutManager3 = new LinearLayoutManager(this.f41742b, 0, false);
                                    com.join.mgps.adapter.m2 m2Var10 = new com.join.mgps.adapter.m2(list10);
                                    ((SimpleItemAnimator) i2Var3.f41893a.getItemAnimator()).setSupportsChangeAnimations(false);
                                    i2Var3.f41893a.setHasFixedSize(true);
                                    i2Var3.f41893a.setLayoutManager(linearLayoutManager3);
                                    i2Var3.f41893a.setAdapter(m2Var10);
                                    m2Var10.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.mgps.adapter.w3
                                        @Override // com.join.mgps.base.BaseQuickAdapter.i
                                        public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view7, int i20) {
                                            h4.this.O(list10, baseQuickAdapter, view7, i20);
                                        }
                                    });
                                    m2Var10.setOnItemChildClickListener(new BaseQuickAdapter.g() { // from class: com.join.mgps.adapter.v3
                                        @Override // com.join.mgps.base.BaseQuickAdapter.g
                                        public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view7, int i20) {
                                            h4.this.G(list10, i4, baseQuickAdapter, view7, i20);
                                        }
                                    });
                                    i2Var3.f41893a.addOnScrollListener(new y0(list10, i2Var3));
                                }
                            }
                            view5 = view4;
                            break;
                    }
                    return view5;
                } catch (Exception e17) {
                    e = e17;
                }
            } catch (Exception e18) {
                e4 = e18;
                view5 = view4;
                exc = e4;
                view3 = view5;
                exc.printStackTrace();
                return view3;
            }
        } catch (Exception e19) {
            e = e19;
            view2 = view;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 40;
    }

    void i0(h2 h2Var, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            h2Var.f41875f.setVisibility(8);
            h2Var.f41880k.setVisibility(8);
            h2Var.f41881l.setVisibility(8);
            h2Var.f41876g.setVisibility(0);
            h2Var.f41874e.setVisibility(0);
            return;
        }
        h2Var.f41875f.setVisibility(0);
        if (bool2.booleanValue()) {
            h2Var.f41880k.setVisibility(8);
            h2Var.f41881l.setVisibility(0);
        } else {
            h2Var.f41881l.setVisibility(8);
            h2Var.f41880k.setVisibility(0);
        }
        h2Var.f41876g.setVisibility(8);
        h2Var.f41874e.setVisibility(8);
    }
}
