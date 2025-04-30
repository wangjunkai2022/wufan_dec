package com.join.mgps.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: GameFromBuildFragment.java */
@EFragment(R.layout.game_build)
/* loaded from: classes.dex */
public class l2 extends Fragment implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f49217a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f49218b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f49219c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f49220d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f49221e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f49222f;

    /* renamed from: g  reason: collision with root package name */
    Context f49223g;

    /* renamed from: h  reason: collision with root package name */
    f f49224h;

    /* renamed from: j  reason: collision with root package name */
    String f49226j;

    /* renamed from: k  reason: collision with root package name */
    String f49227k;

    /* renamed from: l  reason: collision with root package name */
    AccountBean f49228l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.b f49229m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.h f49230n;

    /* renamed from: o  reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f49231o;

    /* renamed from: p  reason: collision with root package name */
    List<e> f49232p;

    /* renamed from: r  reason: collision with root package name */
    List<CollectionBeanSub> f49234r;

    /* renamed from: s  reason: collision with root package name */
    List<DownloadTask> f49235s;

    /* renamed from: i  reason: collision with root package name */
    int f49225i = 1;

    /* renamed from: q  reason: collision with root package name */
    boolean f49233q = false;

    /* renamed from: t  reason: collision with root package name */
    private Map<String, DownloadTask> f49236t = new ConcurrentHashMap();

    /* renamed from: u  reason: collision with root package name */
    int f49237u = 0;

    /* renamed from: v  reason: collision with root package name */
    List<CollectionBeanSubBusiness> f49238v = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    private int f49239w = 0;

    /* renamed from: x  reason: collision with root package name */
    private int f49240x = 0;

    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            l2 l2Var = l2.this;
            l2Var.f49225i = 1;
            l2Var.P();
            l2.this.V();
        }
    }

    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            l2.this.P();
            l2.this.V();
        }
    }

    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f49243a;

        public c(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f49243a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f49243a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f49243a.getTag_info())) {
                    if (this.f49243a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(l2.this.f49223g).c(l2.this.f49223g, this.f49243a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(l2.this.f49223g).k(l2.this.f49223g, this.f49243a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f49243a.getVer()) || k4.d() >= Integer.parseInt(this.f49243a.getVer())) {
                                com.join.android.app.common.utils.a.g0(l2.this.f49223g);
                                APKUtils.X(l2.this.f49223g, this.f49243a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(l2.this.f49223g).c(l2.this.f49223g, this.f49243a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f49243a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(l2.this.f49223g);
                            APKUtils.S(l2.this.f49223g, this.f49243a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(l2.this.f49223g, this.f49243a);
                return;
            }
            String plugin_num = this.f49243a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f49243a.getDown_url_remote());
                UtilsMy.h2(downloadTask, l2.this.f49223g);
                IntentUtil.getInstance().intentActivity(l2.this.f49223g, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f49243a.getPay_tag_info(), this.f49243a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(l2.this.f49223g, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (!com.join.android.app.common.utils.f.j(l2.this.f49223g)) {
                                            com.join.mgps.Util.i2.a(l2.this.f49223g).b("无网络连接");
                                            return;
                                        } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                            downloadTask.setVer(this.f49243a.getVer());
                                            downloadTask.setVer_name(this.f49243a.getVer_name());
                                            downloadTask.setUrl(this.f49243a.getDown_url_remote());
                                            UtilsMy.w3(l2.this.f49223g, downloadTask);
                                            return;
                                        }
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(l2.this.f49223g)) {
                                                    com.join.mgps.Util.i2.a(l2.this.f49223g).b("无网络连接");
                                                    return;
                                                } else if (this.f49243a.getDown_status() == 5) {
                                                    UtilsMy.R0(l2.this.f49223g, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f49243a.getVer());
                                                    downloadTask.setVer_name(this.f49243a.getVer_name());
                                                    downloadTask.setUrl(this.f49243a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, l2.this.f49223g);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, l2.this.f49223g);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, l2.this.f49223g);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(l2.this.f49223g, downloadTask);
                return;
            }
            if (UtilsMy.o0(this.f49243a.getPay_tag_info(), this.f49243a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(l2.this.f49223g, downloadTask.getCrc_link_type_val());
            } else if (this.f49243a.getDown_status() == 5) {
                UtilsMy.R0(l2.this.f49223g, downloadTask);
            } else {
                UtilsMy.F0(l2.this.f49223g, downloadTask, this.f49243a.getTp_down_url(), this.f49243a.getOther_down_switch(), this.f49243a.getCdn_down_switch());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f49245a;

        /* renamed from: b  reason: collision with root package name */
        public ImageView f49246b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f49247c;

        /* renamed from: d  reason: collision with root package name */
        public RelativeLayout f49248d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f49249e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f49250f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f49251g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f49252h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f49253i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f49254j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f49255k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f49256l;

        /* renamed from: m  reason: collision with root package name */
        public View f49257m;

        /* renamed from: n  reason: collision with root package name */
        public View f49258n;

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        int f49260a;

        /* renamed from: b  reason: collision with root package name */
        Object f49261b;

        public e(Object obj, int i2) {
            this.f49261b = obj;
            this.f49260a = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    public class f extends BaseAdapter {

        /* compiled from: GameFromBuildFragment.java */
        /* loaded from: classes4.dex */
        class a implements View.OnLongClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBean.DataBean f49264a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f49265b;

            /* compiled from: GameFromBuildFragment.java */
            /* renamed from: com.join.mgps.fragment.l2$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class View$OnClickListenerC0209a implements View.OnClickListener {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Dialog f49267a;

                View$OnClickListenerC0209a(Dialog dialog) {
                    this.f49267a = dialog;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.f49267a.dismiss();
                }
            }

            /* compiled from: GameFromBuildFragment.java */
            /* loaded from: classes4.dex */
            class b implements View.OnClickListener {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Dialog f49269a;

                b(Dialog dialog) {
                    this.f49269a = dialog;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    l2 l2Var = l2.this;
                    if (l2Var.f49237u == l2Var.f49228l.getUid() || l2.this.f49237u == 0) {
                        a aVar = a.this;
                        l2.this.U(aVar.f49264a.getId());
                        a aVar2 = a.this;
                        l2.this.T(aVar2.f49265b);
                        this.f49269a.dismiss();
                    }
                }
            }

            a(GameFromPopoWinBean.DataBean dataBean, int i2) {
                this.f49264a = dataBean;
                this.f49265b = i2;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(l2.this.f49223g, R.style.MyDialog);
                tVar.setContentView(R.layout.delete_center_dialog);
                Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
                ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除游戏单");
                ((TextView) tVar.findViewById(R.id.dialog_content)).setText("你确定要删除该游戏单？");
                button.setText("删除");
                ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new View$OnClickListenerC0209a(tVar));
                button.setOnClickListener(new b(tVar));
                tVar.show();
                return true;
            }
        }

        /* compiled from: GameFromBuildFragment.java */
        /* loaded from: classes4.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBean.DataBean f49271a;

            b(GameFromPopoWinBean.DataBean dataBean) {
                this.f49271a = dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(l2.this.getActivity(), GameDetailActivity_.class);
                intent.putExtra("fromid", this.f49271a.getId());
                intent.putExtra(DownloadMethodPromptDialog_.F, 11104);
                intent.putExtra("groupuid", this.f49271a.getUid());
                intent.putExtra("gameid", "0");
                intent.putExtra("company_id", "0");
                l2.this.startActivity(intent);
            }
        }

        f() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return l2.this.f49232p.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<e> list = l2.this.f49232p;
            if (list == null) {
                return null;
            }
            return list.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return l2.this.f49232p.get(i2).f49260a;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            g gVar;
            View view2;
            d dVar;
            View view3;
            h hVar;
            View view4;
            int itemViewType = getItemViewType(i2);
            if (itemViewType == 1) {
                if (view == null) {
                    view2 = LayoutInflater.from(l2.this.f49223g).inflate(R.layout.game_build_item, (ViewGroup) null);
                    gVar = new g();
                    gVar.f49273a = (SimpleDraweeView) view2.findViewById(R.id.smv_icon);
                    gVar.f49275c = (TextView) view2.findViewById(R.id.tv_size);
                    gVar.f49274b = (TextView) view2.findViewById(R.id.tv_title);
                    gVar.f49276d = (RelativeLayout) view2.findViewById(R.id.rl_content);
                    view2.setTag(gVar);
                } else {
                    gVar = (g) view.getTag();
                    view2 = view;
                }
                GameFromPopoWinBean.DataBean dataBean = (GameFromPopoWinBean.DataBean) l2.this.f49232p.get(i2).f49261b;
                gVar.f49276d.setOnLongClickListener(new a(dataBean, i2));
                if (dataBean.getGame_list().size() != 0) {
                    gVar.f49273a.setImageURI(dataBean.getGame_list().get(0).getGame_ico());
                } else {
                    gVar.f49273a.setImageResource(R.drawable.main_normal_icon);
                }
                gVar.f49274b.setText(dataBean.getTitle());
                TextView textView = gVar.f49275c;
                textView.setText(dataBean.getGame_count() + "款");
                gVar.f49276d.setOnClickListener(new b(dataBean));
                return view2;
            } else if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return view;
                }
                if (view == null) {
                    view4 = LayoutInflater.from(l2.this.f49223g).inflate(R.layout.gameformtxt, (ViewGroup) null);
                    hVar = new h();
                    hVar.f49278a = (TextView) view4.findViewById(R.id.tv_title);
                    view4.setTag(hVar);
                } else {
                    hVar = (h) view.getTag();
                    view4 = view;
                }
                hVar.f49278a.setText((String) l2.this.f49232p.get(i2).f49261b);
                return view4;
            } else {
                if (view == null) {
                    view3 = LayoutInflater.from(l2.this.f49223g).inflate(R.layout.app_listview_item, (ViewGroup) null);
                    dVar = new d();
                    dVar.f49245a = (SimpleDraweeView) view3.findViewById(R.id.mgListviewItemIcon);
                    dVar.f49246b = (ImageView) view3.findViewById(R.id.giftPackageSwich);
                    dVar.f49247c = (TextView) view3.findViewById(R.id.mgListviewItemAppname);
                    dVar.f49248d = (RelativeLayout) view3.findViewById(R.id.rLayoutRight);
                    dVar.f49249e = (TextView) view3.findViewById(R.id.mgListviewItemInstall);
                    dVar.f49250f = (TextView) view3.findViewById(R.id.mgListviewItemDescribe);
                    dVar.f49251g = (LinearLayout) view3.findViewById(R.id.linearLayout2);
                    dVar.f49252h = (LinearLayout) view3.findViewById(R.id.tipsLayout);
                    dVar.f49253i = (TextView) view3.findViewById(R.id.appSize);
                    dVar.f49254j = (TextView) view3.findViewById(R.id.loding_info);
                    dVar.f49255k = (ProgressBar) view3.findViewById(R.id.progressBar);
                    dVar.f49256l = (ProgressBar) view3.findViewById(R.id.progressBarZip);
                    dVar.f49257m = view3.findViewById(R.id.line);
                    dVar.f49258n = view3.findViewById(R.id.relateLayoutApp);
                    view3.setTag(dVar);
                } else {
                    dVar = (d) view.getTag();
                    view3 = view;
                }
                CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) l2.this.f49232p.get(i2).f49261b;
                DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
                collectionBeanSubBusiness.setDownloadTask(downloadTask);
                dVar.f49258n.setBackgroundResource(R.drawable.white_bg);
                if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
                    dVar.f49246b.setVisibility(0);
                } else {
                    dVar.f49246b.setVisibility(8);
                }
                dVar.f49247c.setText(collectionBeanSubBusiness.getGame_name());
                dVar.f49250f.setText(collectionBeanSubBusiness.getInfo());
                long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
                String ico_remote = collectionBeanSubBusiness.getIco_remote();
                if (TextUtils.isEmpty(ico_remote)) {
                    ico_remote = "";
                }
                MyImageLoader.h(dVar.f49245a, ico_remote.trim());
                collectionBeanSubBusiness.getTag_info();
                UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), dVar.f49252h, l2.this.f49223g);
                UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view3, downloadTask);
                String plugin_num = collectionBeanSubBusiness.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    dVar.f49249e.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f49249e.setText("开始");
                    dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_blue_color));
                    dVar.f49252h.setVisibility(8);
                    dVar.f49246b.setVisibility(8);
                } else if (downloadTask == null) {
                    l2.this.j0(dVar, Boolean.TRUE, Boolean.FALSE);
                    if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                        boolean c4 = com.join.android.app.common.utils.a.g0(l2.this.f49223g).c(l2.this.f49223g, collectionBeanSubBusiness.getPackage_name());
                        if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                            c4 = false;
                        }
                        if (c4) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(l2.this.f49223g).k(l2.this.f49223g, collectionBeanSubBusiness.getPackage_name());
                            if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                                dVar.f49249e.setBackgroundResource(R.drawable.recom_green_butn);
                                dVar.f49249e.setText("更新");
                                dVar.f49249e.setTextColor(-9263087);
                            } else {
                                dVar.f49249e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                                dVar.f49249e.setText(l2.this.f49223g.getResources().getString(R.string.download_status_finished));
                                dVar.f49249e.setTextColor(-688602);
                            }
                        } else {
                            dVar.f49249e.setBackgroundResource(R.drawable.recom_green_butn);
                            UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                            UtilsMy.n2(dVar.f49249e, dVar.f49248d, collectionBeanSubBusiness);
                        }
                    } else {
                        dVar.f49249e.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                        UtilsMy.n2(dVar.f49249e, dVar.f49248d, collectionBeanSubBusiness);
                    }
                } else {
                    com.join.mgps.Util.t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
                    int status = downloadTask.getStatus();
                    if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                        status = 43;
                    }
                    if (status != 0) {
                        if (status == 27) {
                            dVar.f49249e.setText("暂停中");
                        } else if (status != 2) {
                            if (status != 3) {
                                if (status != 5) {
                                    if (status != 6) {
                                        if (status != 7) {
                                            if (status != 42) {
                                                if (status != 43) {
                                                    switch (status) {
                                                        case 9:
                                                            dVar.f49249e.setBackgroundResource(R.drawable.recom_green_butn);
                                                            dVar.f49249e.setText("更新");
                                                            dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_green_color));
                                                            l2.this.j0(dVar, Boolean.TRUE, Boolean.FALSE);
                                                            break;
                                                        case 10:
                                                            dVar.f49249e.setBackgroundResource(R.drawable.recom_blue_butn);
                                                            dVar.f49249e.setText("等待");
                                                            dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_blue_color));
                                                            l2 l2Var = l2.this;
                                                            Boolean bool = Boolean.FALSE;
                                                            l2Var.j0(dVar, bool, bool);
                                                            TextView textView2 = dVar.f49253i;
                                                            textView2.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            try {
                                                                dVar.f49255k.setProgress((int) downloadTask.getProgress());
                                                            } catch (Exception e4) {
                                                                e4.printStackTrace();
                                                            }
                                                            dVar.f49254j.setText("等待中");
                                                            break;
                                                        case 11:
                                                            dVar.f49249e.setBackgroundResource(R.drawable.recom_green_butn);
                                                            dVar.f49249e.setText("安装");
                                                            dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_green_color));
                                                            l2.this.j0(dVar, Boolean.TRUE, Boolean.FALSE);
                                                            break;
                                                        case 12:
                                                            l2.this.j0(dVar, Boolean.FALSE, Boolean.TRUE);
                                                            TextView textView3 = dVar.f49253i;
                                                            textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            dVar.f49254j.setText("解压中..");
                                                            dVar.f49256l.setProgress((int) downloadTask.getProgress());
                                                            dVar.f49249e.setBackgroundResource(R.drawable.extract);
                                                            dVar.f49249e.setText("解压中");
                                                            dVar.f49249e.setTextColor(-4868683);
                                                            break;
                                                        case 13:
                                                            l2.this.j0(dVar, Boolean.FALSE, Boolean.TRUE);
                                                            TextView textView4 = dVar.f49253i;
                                                            textView4.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            dVar.f49254j.setText("点击重新解压");
                                                            dVar.f49256l.setProgress((int) downloadTask.getProgress());
                                                            dVar.f49249e.setBackgroundResource(R.drawable.reextract);
                                                            dVar.f49249e.setText("解压");
                                                            dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_grey_color));
                                                            break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                dVar.f49249e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                                dVar.f49249e.setText(l2.this.f49223g.getResources().getString(R.string.download_status_finished));
                                dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_main_color));
                                l2 l2Var2 = l2.this;
                                Boolean bool2 = Boolean.TRUE;
                                l2Var2.j0(dVar, bool2, bool2);
                            }
                            dVar.f49249e.setBackgroundResource(R.drawable.recom_blue_butn);
                            dVar.f49249e.setText("继续");
                            dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_blue_color));
                            l2 l2Var3 = l2.this;
                            Boolean bool3 = Boolean.FALSE;
                            l2Var3.j0(dVar, bool3, bool3);
                            try {
                                if (downloadTask.getSize() == 0) {
                                    TextView textView5 = dVar.f49253i;
                                    textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                } else {
                                    TextView textView6 = dVar.f49253i;
                                    textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                }
                                dVar.f49255k.setProgress((int) downloadTask.getProgress());
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                            dVar.f49254j.setText("暂停中");
                        } else {
                            UtilsMy.C3(downloadTask);
                            dVar.f49249e.setBackgroundResource(R.drawable.recom_blue_butn);
                            dVar.f49249e.setText("暂停");
                            dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_blue_color));
                            l2 l2Var4 = l2.this;
                            Boolean bool4 = Boolean.FALSE;
                            l2Var4.j0(dVar, bool4, bool4);
                            if (downloadTask.getSize() == 0) {
                                TextView textView7 = dVar.f49253i;
                                textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView8 = dVar.f49253i;
                                textView8.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            dVar.f49255k.setProgress((int) downloadTask.getProgress());
                            String speed = downloadTask.getSpeed();
                            TextView textView9 = dVar.f49254j;
                            textView9.setText(speed + "/S");
                        }
                    }
                    dVar.f49249e.setBackgroundResource(R.drawable.recom_blue_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(dVar.f49249e, dVar.f49248d, collectionBeanSubBusiness);
                    dVar.f49249e.setTextColor(l2.this.f49223g.getResources().getColor(R.color.app_blue_color));
                    l2.this.j0(dVar, Boolean.TRUE, Boolean.FALSE);
                }
                dVar.f49248d.setClickable(true);
                dVar.f49248d.setOnClickListener(new c(collectionBeanSubBusiness));
                return view3;
            }
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }
    }

    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    class g {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f49273a;

        /* renamed from: b  reason: collision with root package name */
        TextView f49274b;

        /* renamed from: c  reason: collision with root package name */
        TextView f49275c;

        /* renamed from: d  reason: collision with root package name */
        RelativeLayout f49276d;

        g() {
        }
    }

    /* compiled from: GameFromBuildFragment.java */
    /* loaded from: classes4.dex */
    class h {

        /* renamed from: a  reason: collision with root package name */
        TextView f49278a;

        h() {
        }
    }

    private void X(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f49235s.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f49236t.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f49238v) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f49236t.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f49236t.get(collectionBeanSubBusiness.getGame_id());
                        if (downloadTask2 == null && downloadTask3 == null) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        } else if (downloadTask2 != null) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask2);
                        } else if (downloadTask3 != null) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask3);
                        } else if (collectionBeanSubBusiness.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        }
                    } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        collectionBeanSubBusiness.setDownloadTask(null);
                    }
                }
            }
        }
        this.f49224h.notifyDataSetChanged();
    }

    private void Z(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49236t;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f49224h.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void a0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f49235s);
        if (!this.f49236t.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49235s.add(downloadTask);
            this.f49236t.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        e0(downloadTask);
        this.f49224h.notifyDataSetChanged();
    }

    private void b0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49236t;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49235s.add(downloadTask);
            this.f49236t.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        e0(downloadTask);
        DownloadTask downloadTask2 = this.f49236t.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f49224h.notifyDataSetChanged();
    }

    private void e0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f49238v) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f49236t.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f49236t.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z3 = false;
                    }
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z3) {
                        if (collectionBeanSubBusiness.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void f0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f49235s) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f49235s.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f49236t.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f49236t.get(mod_info.getMod_game_id());
                        z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
                        if (z3 && z4) {
                            if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        } else if (z3) {
                            if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        } else if (z4) {
                            if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        } else {
                            DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                            if (B == null) {
                                B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                            }
                            if (B != null && next.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        }
                    } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                        collectionBeanSubBusiness.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
    }

    private void h0() {
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        DownloadTask downloadTask;
        if (this.f49240x < 0 || this.f49239w >= this.f49232p.size()) {
            return;
        }
        for (int i2 = this.f49240x; i2 <= this.f49239w; i2++) {
            if (this.f49232p.get(i2).f49260a == 2 && (collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f49232p.get(i2).f49261b) != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f49218b.getChildAt(i2 - this.f49240x);
                if (childAt.getTag() instanceof d) {
                    d dVar = (d) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = dVar.f49253i;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = dVar.f49253i;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            dVar.f49256l.setProgress((int) f4.getProgress());
                        } else {
                            dVar.f49255k.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = dVar.f49254j;
                            textView3.setText(f4.getSpeed() + "/S");
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
    public void M() {
        this.f49223g = getActivity();
        this.f49232p = new ArrayList();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f49237u = arguments.getInt("uid", 0);
        }
        this.f49229m = com.join.mgps.rpc.impl.a.b0();
        this.f49230n = com.join.mgps.rpc.impl.f.A0();
        this.f49231o = new ArrayList();
        com.join.mgps.Util.c0.a().d(this);
        this.f49218b.setOnScrollListener(this);
        this.f49218b.setPreLoadCount(1);
        this.f49234r = new ArrayList();
        this.f49228l = AccountUtil_.getInstance_(this.f49223g).getAccountData();
        List<DownloadTask> d4 = g1.f.G().d();
        this.f49235s = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f49235s) {
                this.f49236t.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        f fVar = new f();
        this.f49224h = fVar;
        this.f49218b.setAdapter((ListAdapter) fVar);
        this.f49226j = "";
        RequestBeanUtil.getInstance(this.f49223g);
        this.f49227k = RequestBeanUtil.getVersionAndVersionName();
        V();
        this.f49218b.setPullRefreshEnable(new a());
        this.f49218b.setPullLoadEnable(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(List<GameFromPopoWinBean.DataBean> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f49232p.add(new e(list.get(i2), 1));
        }
        if (list.size() < 10) {
            d0();
        }
        f fVar = this.f49224h;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(List<CollectionBeanSub> list) {
        if (this.f49232p != null) {
            for (CollectionBeanSub collectionBeanSub : list) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                this.f49232p.add(new e(collectionBeanSubBusiness, 2));
                this.f49238v.add(collectionBeanSubBusiness);
            }
            f fVar = this.f49224h;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
            f0(this.f49238v);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        try {
            LinearLayout linearLayout = this.f49217a;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            XListView2 xListView2 = this.f49218b;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @UiThread
    public void Q() {
        this.f49225i = 1;
        P();
        V();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R() {
        f fVar = this.f49224h;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        if (this.f49232p.size() > 0) {
            this.f49232p.clear();
            f fVar = this.f49224h;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
        }
    }

    void T(int i2) {
        this.f49232p.remove(i2);
        this.f49224h.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String str) {
        try {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(this.f49228l.getUid()));
            linkedMultiValueMap.add("token", this.f49228l.getToken());
            linkedMultiValueMap.add("group_id", str);
            linkedMultiValueMap.add("device_id", this.f49226j);
            linkedMultiValueMap.add("version", this.f49227k);
            GameFromBooleanBean V = this.f49229m.V(linkedMultiValueMap);
            if (V.getError() == 0) {
                if (V.getData().isState()) {
                    showToast("删除成功");
                } else {
                    showToast("删除失败");
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f49223g)) {
                if (this.f49225i == 1) {
                    showLoding();
                }
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                int i2 = this.f49237u;
                if (i2 == 0) {
                    i2 = this.f49228l.getUid();
                }
                linkedMultiValueMap.add("uid", Integer.valueOf(i2));
                int i4 = this.f49225i;
                this.f49225i = i4 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i4));
                linkedMultiValueMap.add("type", 1);
                linkedMultiValueMap.add("device_id", this.f49226j);
                linkedMultiValueMap.add("version", this.f49227k);
                GameFromPopoWinBean r3 = this.f49229m.r(linkedMultiValueMap);
                if (r3 != null && r3.getError() == 0 && r3.getData() != null && r3.getData().size() != 0) {
                    g0();
                    W();
                    if (this.f49225i == 2) {
                        S();
                    }
                    N(r3.getData());
                    return;
                }
                W();
                if (this.f49225i == 2) {
                    if (this.f49233q) {
                        return;
                    }
                    c0();
                    return;
                }
                d0();
                return;
            }
            if (!this.f49233q) {
                showLodingFailed();
            }
            if (this.f49225i == 2) {
                showLodingFailed();
            } else {
                d0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
        LinearLayout linearLayout = this.f49219c;
        if (linearLayout == null || this.f49220d == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49220d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        LinearLayout linearLayout = this.f49217a;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        XListView2 xListView2 = this.f49218b;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        XListView2 xListView2 = this.f49218b;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f49218b.u();
                this.f49218b.setNoMore();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        XListView2 xListView2 = this.f49218b;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f49218b.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void i0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    a0(downloadTask);
                    return;
                case 3:
                    X(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    b0(downloadTask);
                    return;
                case 6:
                    Z(downloadTask);
                    return;
            }
        }
    }

    void j0(d dVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            dVar.f49251g.setVisibility(8);
            dVar.f49255k.setVisibility(8);
            dVar.f49256l.setVisibility(8);
            dVar.f49252h.setVisibility(0);
            return;
        }
        dVar.f49251g.setVisibility(0);
        if (bool2.booleanValue()) {
            dVar.f49255k.setVisibility(8);
            dVar.f49256l.setVisibility(0);
        } else {
            dVar.f49256l.setVisibility(8);
            dVar.f49255k.setVisibility(0);
        }
        dVar.f49252h.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        switch (lVar.c()) {
            case 2:
                i0(a4, 1);
                return;
            case 3:
                i0(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                i0(a4, 5);
                return;
            case 6:
                i0(a4, 6);
                return;
            case 7:
                i0(a4, 3);
                return;
            case 8:
                Map<String, DownloadTask> map = this.f49236t;
                if (map == null || map.isEmpty()) {
                    return;
                }
                h0();
                return;
            case 10:
                i0(a4, 7);
                return;
            case 12:
                i0(a4, 8);
                return;
            case 13:
                i0(a4, 9);
                return;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f49239w = (i4 + i2) - 1;
        this.f49240x = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49225i = 1;
        XListView2 xListView2 = this.f49218b;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
        P();
        V();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49223g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f49219c;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f49220d;
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
        LinearLayout linearLayout = this.f49220d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49219c;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f49218b;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Toast.makeText(this.f49223g, str, 0).show();
    }
}
