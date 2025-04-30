package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameOLOpenTestAdapter.java */
/* loaded from: classes3.dex */
public class a2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f41238a;

    /* renamed from: b  reason: collision with root package name */
    private Context f41239b;

    /* renamed from: c  reason: collision with root package name */
    private List<k1.a<GameOLFirstBean>> f41240c = new ArrayList(0);

    /* compiled from: GameOLOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f41241a;

        a(GameOLHeadAdBean gameOLHeadAdBean) {
            this.f41241a = gameOLHeadAdBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(a2.this.f41239b, this.f41241a.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: GameOLOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        GameOLFirstBean f41243a;

        /* renamed from: b  reason: collision with root package name */
        k1.a<GameOLFirstBean> f41244b;

        public b(k1.a<GameOLFirstBean> aVar) {
            this.f41244b = aVar;
            this.f41243a = aVar.c();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask a4 = this.f41244b.a();
            if (a4 == null) {
                if (UtilsMy.e0(this.f41243a.getTag_info())) {
                    if (this.f41243a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(a2.this.f41239b).c(a2.this.f41239b, this.f41243a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(a2.this.f41239b).k(a2.this.f41239b, this.f41243a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f41243a.getVer()) || k4.d() >= Integer.parseInt(this.f41243a.getVer())) {
                                com.join.android.app.common.utils.a.g0(a2.this.f41239b);
                                APKUtils.X(a2.this.f41239b, this.f41243a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(a2.this.f41239b).c(a2.this.f41239b, this.f41243a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f41243a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(a2.this.f41239b);
                            APKUtils.S(a2.this.f41239b, this.f41243a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(a2.this.f41239b, this.f41243a);
                return;
            }
            String plugin_num = this.f41243a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f41243a.getDown_url_remote());
                UtilsMy.h2(a4, a2.this.f41239b);
                IntentUtil.getInstance().intentActivity(a2.this.f41239b, intentDateBean);
                return;
            }
            int status = a4 != null ? a4.getStatus() : 0;
            GameOLFirstBean gameOLFirstBean = this.f41243a;
            if (gameOLFirstBean != null && UtilsMy.m0(gameOLFirstBean.getPay_tag_info(), this.f41243a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(a2.this.f41239b, a4);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(a2.this.f41239b, a4);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(a2.this.f41239b)) {
                                        com.join.mgps.Util.i2.a(a2.this.f41239b).b("无网络连接");
                                        return;
                                    } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                        a4.setVer(this.f41243a.getVer());
                                        a4.setVer_name(this.f41243a.getVer_name());
                                        a4.setUrl(this.f41243a.getDown_url_remote());
                                        UtilsMy.w3(a2.this.f41239b, a4);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(a2.this.f41239b)) {
                                                com.join.mgps.Util.i2.a(a2.this.f41239b).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(a2.this.f41239b, a4)) {
                                                return;
                                            } else {
                                                if (this.f41243a.getDown_status() == 5) {
                                                    UtilsMy.R0(a2.this.f41239b, a4);
                                                    return;
                                                } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(a4);
                                                    a4.setVer(this.f41243a.getVer());
                                                    a4.setVer_name(this.f41243a.getVer_name());
                                                    a4.setUrl(this.f41243a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(a4, a2.this.f41239b);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(a4, a2.this.f41239b);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(a4, a2.this.f41239b);
                    return;
                }
                com.php25.PDownload.d.h(a4);
                return;
            }
            GameOLFirstBean gameOLFirstBean2 = this.f41243a;
            if (gameOLFirstBean2 != null) {
                if (UtilsMy.o0(gameOLFirstBean2.getPay_tag_info(), this.f41243a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(a2.this.f41239b, a4.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(a4, this.f41243a);
                if (UtilsMy.T0(a2.this.f41239b, a4)) {
                    return;
                }
                if (this.f41243a.getDown_status() == 5) {
                    UtilsMy.R0(a2.this.f41239b, a4);
                } else {
                    UtilsMy.F0(a2.this.f41239b, a4, this.f41243a.getTp_down_url(), this.f41243a.getOther_down_switch(), this.f41243a.getCdn_down_switch());
                }
            }
        }
    }

    /* compiled from: GameOLOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f41246a;

        c() {
        }
    }

    /* compiled from: GameOLOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f41248a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f41249b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f41250c;

        /* renamed from: d  reason: collision with root package name */
        public ProgressBar f41251d;

        /* renamed from: e  reason: collision with root package name */
        public ProgressBar f41252e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f41253f;

        /* renamed from: g  reason: collision with root package name */
        private RelativeLayout f41254g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f41255h;

        /* renamed from: i  reason: collision with root package name */
        private LinearLayout f41256i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f41257j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f41258k;

        /* renamed from: l  reason: collision with root package name */
        private LinearLayout f41259l;

        public d() {
        }
    }

    /* compiled from: GameOLOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41261a;

        e() {
        }
    }

    public a2(Context context) {
        this.f41238a = LayoutInflater.from(context);
        this.f41239b = context;
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public k1.a<GameOLFirstBean> getItem(int i2) {
        return this.f41240c.get(i2);
    }

    public List<k1.a<GameOLFirstBean>> c() {
        return this.f41240c;
    }

    void d(d dVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            dVar.f41256i.setVisibility(8);
            dVar.f41252e.setVisibility(8);
            dVar.f41251d.setVisibility(8);
            dVar.f41253f.setVisibility(0);
            return;
        }
        dVar.f41256i.setVisibility(0);
        if (bool2.booleanValue()) {
            dVar.f41252e.setVisibility(8);
            dVar.f41251d.setVisibility(0);
        } else {
            dVar.f41251d.setVisibility(8);
            dVar.f41252e.setVisibility(0);
        }
        dVar.f41253f.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41240c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f41240c.get(i2).d();
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        c cVar;
        View view2;
        e eVar;
        d dVar;
        d dVar2;
        int itemViewType = getItemViewType(i2);
        c cVar2 = null;
        if (view == null) {
            if (itemViewType == 0) {
                cVar = new c();
                view2 = this.f41238a.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                cVar.f41246a = (SimpleDraweeView) view2.findViewById(R.id.adImage);
                view2.setTag(cVar);
                dVar2 = null;
                cVar2 = cVar;
                eVar = null;
            } else if (itemViewType != 1) {
                if (itemViewType == 2) {
                    dVar = new d();
                    view2 = this.f41238a.inflate(R.layout.app_listview_item, (ViewGroup) null);
                    dVar.f41248a = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
                    dVar.f41249b = (ImageView) view2.findViewById(R.id.giftPackageSwich);
                    dVar.f41250c = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
                    dVar.f41254g = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
                    dVar.f41255h = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
                    dVar.f41253f = (TextView) view2.findViewById(R.id.mgListviewItemDescribe);
                    dVar.f41256i = (LinearLayout) view2.findViewById(R.id.linearLayout2);
                    dVar.f41259l = (LinearLayout) view2.findViewById(R.id.tipsLayout);
                    dVar.f41257j = (TextView) view2.findViewById(R.id.appSize);
                    dVar.f41258k = (TextView) view2.findViewById(R.id.loding_info);
                    dVar.f41252e = (ProgressBar) view2.findViewById(R.id.progressBar);
                    dVar.f41251d = (ProgressBar) view2.findViewById(R.id.progressBarZip);
                    view2.setTag(dVar);
                    dVar2 = dVar;
                    eVar = null;
                }
                view2 = view;
                eVar = null;
                dVar2 = null;
            } else {
                eVar = new e();
                view2 = this.f41238a.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                eVar.f41261a = (TextView) view2.findViewById(R.id.titleText);
                view2.setTag(eVar);
                dVar2 = null;
            }
        } else if (itemViewType == 0) {
            cVar = (c) view.getTag();
            view2 = view;
            dVar2 = null;
            cVar2 = cVar;
            eVar = null;
        } else if (itemViewType != 1) {
            if (itemViewType == 2) {
                dVar = (d) view.getTag();
                view2 = view;
                dVar2 = dVar;
                eVar = null;
            }
            view2 = view;
            eVar = null;
            dVar2 = null;
        } else {
            eVar = (e) view.getTag();
            view2 = view;
            dVar2 = null;
        }
        if (itemViewType == 0) {
            GameOLHeadAdBean b4 = this.f41240c.get(i2).b();
            MyImageLoader.d(cVar2.f41246a, R.drawable.banner_normal_icon, b4.getMain().getPic_remote());
            cVar2.f41246a.setOnClickListener(new a(b4));
        } else if (itemViewType == 1) {
            eVar.f41261a.setText(this.f41240c.get(i2).e());
        } else if (itemViewType == 2) {
            k1.a<GameOLFirstBean> aVar = this.f41240c.get(i2);
            GameOLFirstBean c4 = aVar.c();
            MyImageLoader.d(dVar2.f41248a, R.drawable.main_normal_icon, c4.getIco_remote());
            if (c4.getGift_package_switch() == 1) {
                dVar2.f41249b.setVisibility(0);
            } else {
                dVar2.f41249b.setVisibility(8);
            }
            dVar2.f41250c.setText(c4.getGame_name());
            dVar2.f41253f.setText(c4.getInfo());
            long parseDouble = (long) (Double.parseDouble(c4.getSize()) * 1024.0d * 1024.0d);
            UtilsMy.C(c4.getScore(), c4.getDown_count(), c4.getSize(), c4.getSp_tag_info(), c4.getTag_info(), dVar2.f41259l, this.f41239b);
            UtilsMy.v2(c4.getSp_tag_info(), view2, aVar.a());
            DownloadTask a4 = aVar.a();
            dVar2.f41255h.setText("");
            if (c4.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                dVar2.f41255h.setBackgroundResource(R.drawable.recom_blue_butn);
                dVar2.f41255h.setText("开始");
                dVar2.f41255h.setTextColor(this.f41239b.getResources().getColor(R.color.app_blue_color));
                dVar2.f41249b.setVisibility(8);
            } else if (a4 == null) {
                d(dVar2, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(c4.getTag_info())) {
                    if (com.join.android.app.common.utils.a.g0(this.f41239b).c(this.f41239b, c4.getPackage_name()) && UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id()) == 0) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41239b).k(this.f41239b, c4.getPackage_name());
                        if (com.join.mgps.Util.d2.i(c4.getVer()) && k4.d() < Integer.parseInt(c4.getVer())) {
                            dVar2.f41255h.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar2.f41255h.setText("更新");
                            dVar2.f41255h.setTextColor(-9263087);
                        } else {
                            dVar2.f41255h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            dVar2.f41255h.setText(this.f41239b.getResources().getString(R.string.download_status_finished));
                            dVar2.f41255h.setTextColor(-688602);
                        }
                    } else {
                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                        UtilsMy.n2(dVar2.f41255h, dVar2.f41254g, c4);
                    }
                } else {
                    dVar2.f41255h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                    UtilsMy.n2(dVar2.f41255h, dVar2.f41254g, c4);
                }
            } else {
                com.join.mgps.Util.t0.d("infoo", a4.getStatus() + " dd " + a4.getShowName());
                int status = a4.getStatus();
                if (UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        dVar2.f41255h.setText("暂停中");
                    } else if (status == 48) {
                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_blue_butn);
                        dVar2.f41255h.setText("安装中");
                        dVar2.f41255h.setTextColor(this.f41239b.getResources().getColor(R.color.app_blue_color));
                        d(dVar2, Boolean.TRUE, Boolean.FALSE);
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_green_butn);
                                                        dVar2.f41255h.setText("更新");
                                                        dVar2.f41255h.setTextColor(-9263087);
                                                        d(dVar2, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 10:
                                                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        dVar2.f41255h.setText("等待");
                                                        dVar2.f41255h.setTextColor(-12941854);
                                                        Boolean bool = Boolean.FALSE;
                                                        d(dVar2, bool, bool);
                                                        dVar2.f41257j.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        try {
                                                            dVar2.f41252e.setProgress((int) a4.getProgress());
                                                        } catch (Exception e4) {
                                                            e4.printStackTrace();
                                                        }
                                                        dVar2.f41258k.setText("等待中");
                                                        break;
                                                    case 11:
                                                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_green_butn);
                                                        dVar2.f41255h.setText("安装");
                                                        dVar2.f41255h.setTextColor(-9263087);
                                                        d(dVar2, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 12:
                                                        d(dVar2, Boolean.FALSE, Boolean.TRUE);
                                                        dVar2.f41257j.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        dVar2.f41258k.setText("解压中..");
                                                        dVar2.f41251d.setProgress((int) a4.getProgress());
                                                        dVar2.f41255h.setBackgroundResource(R.drawable.extract);
                                                        dVar2.f41255h.setText("解压中");
                                                        dVar2.f41255h.setTextColor(-4868683);
                                                        break;
                                                    case 13:
                                                        d(dVar2, Boolean.FALSE, Boolean.TRUE);
                                                        dVar2.f41257j.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        dVar2.f41258k.setText("点击重新解压");
                                                        dVar2.f41251d.setProgress((int) a4.getProgress());
                                                        dVar2.f41255h.setBackgroundResource(R.drawable.reextract);
                                                        dVar2.f41255h.setText("解压");
                                                        dVar2.f41255h.setTextColor(-12941854);
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            dVar2.f41255h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            dVar2.f41255h.setText(this.f41239b.getResources().getString(R.string.download_status_finished));
                            dVar2.f41255h.setTextColor(-688602);
                            Boolean bool2 = Boolean.TRUE;
                            d(dVar2, bool2, bool2);
                        }
                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_blue_butn);
                        dVar2.f41255h.setText("继续");
                        dVar2.f41255h.setTextColor(-12941854);
                        Boolean bool3 = Boolean.FALSE;
                        d(dVar2, bool3, bool3);
                        try {
                            if (a4.getSize() == 0) {
                                dVar2.f41257j.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                dVar2.f41257j.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            dVar2.f41252e.setProgress((int) a4.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        dVar2.f41258k.setText("暂停中");
                    } else {
                        UtilsMy.C3(a4);
                        dVar2.f41255h.setBackgroundResource(R.drawable.recom_blue_butn);
                        dVar2.f41255h.setText("暂停");
                        dVar2.f41255h.setTextColor(-12941854);
                        Boolean bool4 = Boolean.FALSE;
                        d(dVar2, bool4, bool4);
                        if (a4.getSize() == 0) {
                            dVar2.f41257j.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            dVar2.f41257j.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        dVar2.f41252e.setProgress((int) a4.getProgress());
                        String speed = a4.getSpeed();
                        dVar2.f41258k.setText(speed + "/S");
                    }
                }
                dVar2.f41255h.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                UtilsMy.n2(dVar2.f41255h, dVar2.f41254g, c4);
                d(dVar2, Boolean.TRUE, Boolean.FALSE);
            }
            dVar2.f41254g.setOnClickListener(new b(aVar));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
