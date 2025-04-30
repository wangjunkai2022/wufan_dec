package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: CollectionModuleSixAdapter.java */
/* loaded from: classes3.dex */
public class j extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f42266a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f42267b;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f42268c = new ArrayList(0);

    /* renamed from: d  reason: collision with root package name */
    com.danikula.videocache.i f42269d;

    /* renamed from: e  reason: collision with root package name */
    com.join.android.app.component.video.c f42270e;

    /* compiled from: CollectionModuleSixAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f42271a;

        public a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f42271a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f42271a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f42271a.getTag_info())) {
                    if (this.f42271a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(j.this.f42266a).c(j.this.f42266a, this.f42271a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(j.this.f42266a).k(j.this.f42266a, this.f42271a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f42271a.getVer()) || k4.d() >= Integer.parseInt(this.f42271a.getVer())) {
                                com.join.android.app.common.utils.a.g0(j.this.f42266a);
                                APKUtils.X(j.this.f42266a, this.f42271a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(j.this.f42266a).c(j.this.f42266a, this.f42271a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f42271a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(j.this.f42266a);
                            APKUtils.S(j.this.f42266a, this.f42271a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(j.this.f42266a, this.f42271a);
                return;
            }
            String plugin_num = this.f42271a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f42271a.getDown_url_remote());
                UtilsMy.h2(downloadTask, j.this.f42266a);
                IntentUtil.getInstance().intentActivity(j.this.f42266a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f42271a.getPay_tag_info(), this.f42271a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(j.this.f42266a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(j.this.f42266a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    }
                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                    downloadTask.setVer(this.f42271a.getVer());
                                    downloadTask.setVer_name(this.f42271a.getVer_name());
                                    downloadTask.setUrl(this.f42271a.getDown_url_remote());
                                    UtilsMy.w3(j.this.f42266a, downloadTask);
                                    return;
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(j.this.f42266a)) {
                                                com.join.mgps.Util.i2.a(j.this.f42266a).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(j.this.f42266a, downloadTask)) {
                                                return;
                                            } else {
                                                if (this.f42271a.getDown_status() == 5) {
                                                    UtilsMy.R0(j.this.f42266a, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f42271a.getVer());
                                                    downloadTask.setVer_name(this.f42271a.getVer_name());
                                                    downloadTask.setUrl(this.f42271a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, j.this.f42266a);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, j.this.f42266a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, j.this.f42266a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = this.f42271a;
            if (collectionBeanSubBusiness != null) {
                if (UtilsMy.o0(collectionBeanSubBusiness.getPay_tag_info(), this.f42271a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(j.this.f42266a, downloadTask.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(downloadTask, this.f42271a);
                if (UtilsMy.T0(j.this.f42266a, downloadTask)) {
                    return;
                }
                if (this.f42271a.getDown_status() == 5) {
                    UtilsMy.R0(j.this.f42266a, downloadTask);
                } else {
                    UtilsMy.F0(j.this.f42266a, downloadTask, this.f42271a.getTp_down_url(), this.f42271a.getOther_down_switch(), this.f42271a.getCdn_down_switch());
                }
            }
        }
    }

    /* compiled from: CollectionModuleSixAdapter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        View f42273a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f42274b;

        /* renamed from: c  reason: collision with root package name */
        FrameLayout f42275c;

        /* renamed from: d  reason: collision with root package name */
        SimpleDraweeView f42276d;

        /* renamed from: e  reason: collision with root package name */
        ImageView f42277e;

        /* renamed from: f  reason: collision with root package name */
        TextView f42278f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f42279g;

        /* renamed from: h  reason: collision with root package name */
        TextView f42280h;

        /* renamed from: i  reason: collision with root package name */
        View f42281i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f42282j;

        /* renamed from: k  reason: collision with root package name */
        LinearLayout f42283k;

        /* renamed from: l  reason: collision with root package name */
        LinearLayout f42284l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f42285m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f42286n;

        /* renamed from: o  reason: collision with root package name */
        public ProgressBar f42287o;

        /* renamed from: p  reason: collision with root package name */
        public ProgressBar f42288p;

        public b() {
        }
    }

    public j(Context context, com.join.android.app.component.video.c cVar) {
        this.f42266a = context;
        this.f42270e = cVar;
        this.f42267b = LayoutInflater.from(context);
        this.f42269d = e(context);
    }

    void b(String str, int i2, String str2, TipNew tipNew, List<TipBean> list, LinearLayout linearLayout, Context context) {
        String str3;
        TipBean tipBean;
        TipBean tipBean2;
        if (com.join.mgps.Util.d2.h(str2)) {
            str2 = "1";
        }
        linearLayout.removeAllViews();
        TipBean tipBean3 = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.six_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appType);
        TextView textView2 = (TextView) inflate.findViewById(R.id.tongban);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        ((TextView) inflate.findViewById(R.id.appdownCount)).setText(com.join.mgps.Util.d2.c(i2));
        ((TextView) inflate.findViewById(R.id.appsize)).setText(UtilsMy.Y1((long) (Double.parseDouble(str2) * 1048576.0d)));
        if (tipNew != null) {
            if (tipNew.getModel() != null) {
                TipBean model = tipNew.getModel();
                if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
                    Iterator<TipBean> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        TipBean next = it2.next();
                        if (com.join.mgps.Util.d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                            tipBean3 = next;
                            break;
                        }
                    }
                    if (tipBean3 != null) {
                        textView.setText(tipNew.getModel().getName() + "·" + tipBean3.getName());
                    } else {
                        textView.setText(tipNew.getModel().getName());
                    }
                } else {
                    str3 = "安卓";
                    if (list != null) {
                        ArrayList arrayList = new ArrayList();
                        for (TipBean tipBean4 : list) {
                            if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                                if (arrayList.size() >= 2) {
                                    break;
                                }
                                arrayList.add(tipBean4);
                            }
                        }
                        if (arrayList.size() > 1) {
                            TipBean tipBean5 = (TipBean) arrayList.get(0);
                            str3 = tipBean5 != null ? tipBean5.getName() : "安卓";
                            if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                                str3 = str3 + "·" + tipBean2.getName();
                            }
                        } else if (arrayList.size() > 0 && (tipBean = (TipBean) arrayList.get(0)) != null) {
                            str3 = "安卓·" + tipBean.getName();
                        }
                    }
                    textView.setText(str3);
                }
            } else {
                textView.setVisibility(8);
            }
        } else {
            textView.setVisibility(8);
            textView2.setVisibility(8);
        }
        if (com.join.mgps.Util.d2.i(str) && !"0".equals(str)) {
            textView3.setText(str + "分");
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public CollectionBeanSubBusiness getItem(int i2) {
        return this.f42268c.get(i2);
    }

    public List<CollectionBeanSubBusiness> d() {
        return this.f42268c;
    }

    public com.danikula.videocache.i e(Context context) {
        return MApplication.p(context);
    }

    void f(TextView textView, RelativeLayout relativeLayout, int i2, PayTagInfo payTagInfo) {
        relativeLayout.setEnabled(true);
        boolean z3 = payTagInfo != null && payTagInfo.getAmount_check() > 0;
        if (i2 == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
        } else if (i2 == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            relativeLayout.setEnabled(false);
        } else {
            if (payTagInfo == null || payTagInfo.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, payTagInfo.getPayGameAmount()));
            }
            textView.setTextSize(2, 13.0f);
        }
    }

    void g(b bVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            bVar.f42283k.setVisibility(8);
            bVar.f42287o.setVisibility(8);
            bVar.f42288p.setVisibility(8);
            bVar.f42284l.setVisibility(0);
            return;
        }
        bVar.f42283k.setVisibility(0);
        if (bool2.booleanValue()) {
            bVar.f42287o.setVisibility(8);
            bVar.f42288p.setVisibility(0);
        } else {
            bVar.f42288p.setVisibility(8);
            bVar.f42287o.setVisibility(0);
        }
        bVar.f42284l.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42268c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        View view2;
        if (view == null) {
            View inflate = this.f42267b.inflate(R.layout.video_listview_item, (ViewGroup) null);
            bVar = new b();
            bVar.f42273a = inflate.findViewById(R.id.line_top);
            bVar.f42274b = (SimpleDraweeView) inflate.findViewById(R.id.bannerView);
            bVar.f42275c = (FrameLayout) inflate.findViewById(R.id.videoContner);
            bVar.f42276d = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            bVar.f42277e = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
            bVar.f42278f = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            bVar.f42279g = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
            bVar.f42280h = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            bVar.f42282j = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            bVar.f42283k = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            bVar.f42284l = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            bVar.f42285m = (TextView) inflate.findViewById(R.id.appSize);
            bVar.f42286n = (TextView) inflate.findViewById(R.id.loding_info);
            bVar.f42287o = (ProgressBar) inflate.findViewById(R.id.progressBar);
            bVar.f42288p = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            bVar.f42281i = inflate.findViewById(R.id.line);
            inflate.setTag(bVar);
            view2 = inflate;
        } else {
            bVar = (b) view.getTag();
            view2 = view;
        }
        b bVar2 = bVar;
        if (i2 == 0) {
            bVar2.f42273a.setVisibility(8);
        } else {
            bVar2.f42273a.setVisibility(0);
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f42268c.get(i2);
        if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getGame_info_top_video_url())) {
            if (bVar2.f42275c != null) {
                MyImageLoader.h(bVar2.f42274b, collectionBeanSubBusiness.getGame_info_top_pic());
                String game_info_top_video_url = collectionBeanSubBusiness.getGame_info_top_video_url();
                int i4 = i2 + 1;
                bVar2.f42274b.setTag(Integer.valueOf(i4));
                if (com.join.mgps.Util.d2.i(game_info_top_video_url)) {
                    this.f42270e.d(i4, new c.k(i4, game_info_top_video_url, collectionBeanSubBusiness.getGame_info_top_pic()), new boolean[0]);
                }
            }
            MyImageLoader.d(bVar2.f42274b, R.drawable.banner_normal_icon, collectionBeanSubBusiness.getGame_info_top_pic());
        }
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            bVar2.f42277e.setVisibility(0);
        } else {
            bVar2.f42277e.setVisibility(8);
        }
        bVar2.f42278f.setText(collectionBeanSubBusiness.getGame_name());
        bVar2.f42282j.setText(collectionBeanSubBusiness.getInfo());
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
        MyImageLoader.h(bVar2.f42276d, collectionBeanSubBusiness.getIco_remote().trim());
        collectionBeanSubBusiness.getTag_info();
        b(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), bVar2.f42284l, this.f42266a);
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            bVar2.f42280h.setText("开始");
            bVar2.f42284l.setVisibility(8);
            bVar2.f42277e.setVisibility(8);
        } else if (downloadTask == null) {
            g(bVar2, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0 ? false : com.join.android.app.common.utils.a.g0(this.f42266a).c(this.f42266a, collectionBeanSubBusiness.getPackage_name())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f42266a).k(this.f42266a, collectionBeanSubBusiness.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                        bVar2.f42280h.setText("更新");
                    } else {
                        bVar2.f42280h.setText(this.f42266a.getResources().getString(R.string.download_status_finished));
                    }
                } else {
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    f(bVar2.f42280h, bVar2.f42279g, collectionBeanSubBusiness.getDown_status(), collectionBeanSubBusiness.getPay_tag_info());
                }
            } else {
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                f(bVar2.f42280h, bVar2.f42279g, collectionBeanSubBusiness.getDown_status(), collectionBeanSubBusiness.getPay_tag_info());
            }
        } else {
            com.join.mgps.Util.t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    bVar2.f42280h.setText("暂停中");
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    bVar2.f42280h.setText("更新");
                                                    g(bVar2, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    bVar2.f42280h.setText("等待");
                                                    Boolean bool = Boolean.FALSE;
                                                    g(bVar2, bool, bool);
                                                    TextView textView = bVar2.f42285m;
                                                    textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    try {
                                                        bVar2.f42287o.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    bVar2.f42286n.setText("等待中");
                                                    break;
                                                case 11:
                                                    bVar2.f42280h.setText("安装");
                                                    g(bVar2, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    g(bVar2, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = bVar2.f42285m;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar2.f42286n.setText("解压中..");
                                                    bVar2.f42288p.setProgress((int) downloadTask.getProgress());
                                                    bVar2.f42280h.setText("解压中");
                                                    break;
                                                case 13:
                                                    g(bVar2, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = bVar2.f42285m;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar2.f42286n.setText("点击重新解压");
                                                    bVar2.f42288p.setProgress((int) downloadTask.getProgress());
                                                    bVar2.f42280h.setText("解压");
                                                    break;
                                            }
                                        } else if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                                            bVar2.f42280h.setText(this.f42266a.getResources().getString(R.string.pay_game_amount, collectionBeanSubBusiness.getPay_tag_info().getPayGameAmount()));
                                        }
                                    }
                                }
                            }
                        }
                        bVar2.f42280h.setText(this.f42266a.getResources().getString(R.string.download_status_finished));
                        Boolean bool2 = Boolean.TRUE;
                        g(bVar2, bool2, bool2);
                    }
                    bVar2.f42280h.setText("继续");
                    Boolean bool3 = Boolean.FALSE;
                    g(bVar2, bool3, bool3);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView4 = bVar2.f42285m;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView5 = bVar2.f42285m;
                            textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        bVar2.f42287o.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    bVar2.f42286n.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    bVar2.f42280h.setText("暂停");
                    Boolean bool4 = Boolean.FALSE;
                    g(bVar2, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        TextView textView6 = bVar2.f42285m;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    } else {
                        TextView textView7 = bVar2.f42285m;
                        textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    }
                    bVar2.f42287o.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView8 = bVar2.f42286n;
                    textView8.setText(speed + "/S");
                }
            }
            UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
            f(bVar2.f42280h, bVar2.f42279g, collectionBeanSubBusiness.getDown_status(), collectionBeanSubBusiness.getPay_tag_info());
            bVar2.f42280h.setTextColor(this.f42266a.getResources().getColor(R.color.app_blue_color));
            g(bVar2, Boolean.TRUE, Boolean.FALSE);
        }
        bVar2.f42279g.setOnClickListener(new a(collectionBeanSubBusiness));
        return view2;
    }
}
