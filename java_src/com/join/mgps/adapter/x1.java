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
/* compiled from: GameOLFirstAdapter.java */
/* loaded from: classes3.dex */
public class x1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f44503a;

    /* renamed from: b  reason: collision with root package name */
    private Context f44504b;

    /* renamed from: c  reason: collision with root package name */
    private List<k1.a<GameOLFirstBean>> f44505c = new ArrayList(0);

    /* compiled from: GameOLFirstAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f44506a;

        a(GameOLHeadAdBean gameOLHeadAdBean) {
            this.f44506a = gameOLHeadAdBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(x1.this.f44504b, this.f44506a.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: GameOLFirstAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* compiled from: GameOLFirstAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        GameOLFirstBean f44509a;

        /* renamed from: b  reason: collision with root package name */
        k1.a<GameOLFirstBean> f44510b;

        public c(k1.a<GameOLFirstBean> aVar) {
            this.f44510b = aVar;
            this.f44509a = aVar.c();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask a4 = this.f44510b.a();
            if (a4 == null) {
                if (UtilsMy.e0(this.f44509a.getTag_info())) {
                    if (this.f44509a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(x1.this.f44504b).c(x1.this.f44504b, this.f44509a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(x1.this.f44504b).k(x1.this.f44504b, this.f44509a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f44509a.getVer()) || k4.d() >= Integer.parseInt(this.f44509a.getVer())) {
                                com.join.android.app.common.utils.a.g0(x1.this.f44504b);
                                APKUtils.X(x1.this.f44504b, this.f44509a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(x1.this.f44504b).c(x1.this.f44504b, this.f44509a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f44509a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(x1.this.f44504b);
                            APKUtils.S(x1.this.f44504b, this.f44509a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(x1.this.f44504b, this.f44509a);
                return;
            }
            String plugin_num = this.f44509a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f44509a.getDown_url_remote());
                UtilsMy.h2(a4, x1.this.f44504b);
                IntentUtil.getInstance().intentActivity(x1.this.f44504b, intentDateBean);
                return;
            }
            int status = a4 != null ? a4.getStatus() : 0;
            GameOLFirstBean gameOLFirstBean = this.f44509a;
            if (gameOLFirstBean != null && UtilsMy.m0(gameOLFirstBean.getPay_tag_info(), this.f44509a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(x1.this.f44504b, a4);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(x1.this.f44504b, a4);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(x1.this.f44504b)) {
                                        com.join.mgps.Util.i2.a(x1.this.f44504b).b("无网络连接");
                                        return;
                                    } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                        a4.setVer(this.f44509a.getVer());
                                        a4.setVer_name(this.f44509a.getVer_name());
                                        a4.setUrl(this.f44509a.getDown_url_remote());
                                        UtilsMy.w3(x1.this.f44504b, a4);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(x1.this.f44504b)) {
                                                com.join.mgps.Util.i2.a(x1.this.f44504b).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(x1.this.f44504b, a4)) {
                                                return;
                                            } else {
                                                if (this.f44509a.getDown_status() == 5) {
                                                    UtilsMy.R0(x1.this.f44504b, a4);
                                                    return;
                                                } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(a4);
                                                    a4.setVer(this.f44509a.getVer());
                                                    a4.setVer_name(this.f44509a.getVer_name());
                                                    a4.setUrl(this.f44509a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(a4, x1.this.f44504b);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(a4, x1.this.f44504b);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(a4, x1.this.f44504b);
                    return;
                }
                com.php25.PDownload.d.h(a4);
                return;
            }
            GameOLFirstBean gameOLFirstBean2 = this.f44509a;
            if (gameOLFirstBean2 != null) {
                if (UtilsMy.o0(gameOLFirstBean2.getPay_tag_info(), this.f44509a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(x1.this.f44504b, a4.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(a4, this.f44509a);
                if (UtilsMy.T0(x1.this.f44504b, a4)) {
                    return;
                }
                if (this.f44509a.getDown_status() == 5) {
                    UtilsMy.R0(x1.this.f44504b, a4);
                } else {
                    UtilsMy.F0(x1.this.f44504b, a4, this.f44509a.getTp_down_url(), this.f44509a.getOther_down_switch(), this.f44509a.getCdn_down_switch());
                }
            }
        }
    }

    /* compiled from: GameOLFirstAdapter.java */
    /* loaded from: classes3.dex */
    class d {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44512a;

        d() {
        }
    }

    /* compiled from: GameOLFirstAdapter.java */
    /* loaded from: classes3.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44514a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f44515b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44516c;

        /* renamed from: d  reason: collision with root package name */
        public ProgressBar f44517d;

        /* renamed from: e  reason: collision with root package name */
        public ProgressBar f44518e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44519f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f44520g;

        /* renamed from: h  reason: collision with root package name */
        private RelativeLayout f44521h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f44522i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f44523j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f44524k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f44525l;

        public e() {
        }
    }

    /* compiled from: GameOLFirstAdapter.java */
    /* loaded from: classes3.dex */
    class f {

        /* renamed from: a  reason: collision with root package name */
        private TextView f44527a;

        f() {
        }
    }

    public x1(Context context) {
        this.f44503a = LayoutInflater.from(context);
        this.f44504b = context;
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public k1.a<GameOLFirstBean> getItem(int i2) {
        return this.f44505c.get(i2);
    }

    public List<k1.a<GameOLFirstBean>> c() {
        return this.f44505c;
    }

    void d(e eVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            eVar.f44523j.setVisibility(8);
            eVar.f44518e.setVisibility(8);
            eVar.f44517d.setVisibility(8);
            eVar.f44519f.setVisibility(0);
            eVar.f44520g.setVisibility(0);
            return;
        }
        eVar.f44523j.setVisibility(0);
        if (bool2.booleanValue()) {
            eVar.f44518e.setVisibility(8);
            eVar.f44517d.setVisibility(0);
        } else {
            eVar.f44517d.setVisibility(8);
            eVar.f44518e.setVisibility(0);
        }
        eVar.f44519f.setVisibility(8);
        eVar.f44520g.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44505c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f44505c.get(i2).d();
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        View view2;
        f fVar;
        e eVar;
        e eVar2;
        int itemViewType = getItemViewType(i2);
        d dVar2 = null;
        if (view == null) {
            if (itemViewType == 0) {
                dVar = new d();
                view2 = this.f44503a.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                dVar.f44512a = (SimpleDraweeView) view2.findViewById(R.id.adImage);
                view2.setTag(dVar);
                eVar2 = null;
                dVar2 = dVar;
                fVar = null;
            } else if (itemViewType != 1) {
                if (itemViewType == 2) {
                    eVar = new e();
                    view2 = this.f44503a.inflate(R.layout.gameol_first_listview_item, (ViewGroup) null);
                    eVar.f44514a = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
                    eVar.f44515b = (ImageView) view2.findViewById(R.id.giftPackageSwich);
                    eVar.f44516c = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
                    eVar.f44517d = (ProgressBar) view2.findViewById(R.id.progressBarZip);
                    eVar.f44518e = (ProgressBar) view2.findViewById(R.id.progressBar);
                    eVar.f44519f = (TextView) view2.findViewById(R.id.privilege);
                    eVar.f44520g = (TextView) view2.findViewById(R.id.mgListviewItemDescribe);
                    eVar.f44521h = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
                    eVar.f44522i = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
                    eVar.f44523j = (LinearLayout) view2.findViewById(R.id.linearLayout2);
                    eVar.f44524k = (TextView) view2.findViewById(R.id.appSize);
                    eVar.f44525l = (TextView) view2.findViewById(R.id.loding_info);
                    view2.setTag(eVar);
                    eVar2 = eVar;
                    fVar = null;
                }
                view2 = view;
                fVar = null;
                eVar2 = null;
            } else {
                fVar = new f();
                view2 = this.f44503a.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                fVar.f44527a = (TextView) view2.findViewById(R.id.titleText);
                view2.setTag(fVar);
                eVar2 = null;
            }
        } else if (itemViewType == 0) {
            dVar = (d) view.getTag();
            view2 = view;
            eVar2 = null;
            dVar2 = dVar;
            fVar = null;
        } else if (itemViewType != 1) {
            if (itemViewType == 2) {
                eVar = (e) view.getTag();
                view2 = view;
                eVar2 = eVar;
                fVar = null;
            }
            view2 = view;
            fVar = null;
            eVar2 = null;
        } else {
            fVar = (f) view.getTag();
            view2 = view;
            eVar2 = null;
        }
        if (itemViewType == 0) {
            GameOLHeadAdBean b4 = this.f44505c.get(i2).b();
            MyImageLoader.d(dVar2.f44512a, R.drawable.banner_normal_icon, b4.getMain().getPic_remote());
            dVar2.f44512a.setOnClickListener(new a(b4));
        } else if (itemViewType == 1) {
            fVar.f44527a.setText(this.f44505c.get(i2).e());
        } else if (itemViewType == 2) {
            k1.a<GameOLFirstBean> aVar = this.f44505c.get(i2);
            GameOLFirstBean c4 = aVar.c();
            MyImageLoader.d(eVar2.f44514a, R.drawable.banner_normal_icon, c4.getIco_remote());
            if (c4.getGift_package_switch() == 1) {
                eVar2.f44515b.setVisibility(0);
            } else {
                eVar2.f44515b.setVisibility(8);
            }
            eVar2.f44516c.setText(c4.getGame_name());
            eVar2.f44520g.setText(c4.getInfo());
            eVar2.f44519f.setText("悟饭特权：" + c4.getPapa_privilege());
            eVar2.f44521h.setOnClickListener(new b());
            long parseDouble = (long) (Double.parseDouble(c4.getSize()) * 1024.0d * 1024.0d);
            DownloadTask a4 = aVar.a();
            eVar2.f44522i.setText("");
            UtilsMy.v2(c4.getSp_tag_info(), view2, a4);
            if (c4.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                eVar2.f44522i.setBackgroundResource(R.drawable.recom_blue_butn);
                eVar2.f44522i.setText("开始");
                eVar2.f44522i.setTextColor(this.f44504b.getResources().getColor(R.color.app_blue_color));
                eVar2.f44515b.setVisibility(8);
            } else if (a4 == null) {
                d(eVar2, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(c4.getTag_info())) {
                    if (com.join.android.app.common.utils.a.g0(this.f44504b).c(this.f44504b, c4.getPackage_name()) && UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id()) == 0) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44504b).k(this.f44504b, c4.getPackage_name());
                        if (com.join.mgps.Util.d2.i(c4.getVer()) && k4.d() < Integer.parseInt(c4.getVer())) {
                            eVar2.f44522i.setBackgroundResource(R.drawable.recom_green_butn);
                            eVar2.f44522i.setText("更新");
                            eVar2.f44522i.setTextColor(-9263087);
                        } else {
                            eVar2.f44522i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            eVar2.f44522i.setText(eVar2.f44522i.getResources().getString(R.string.download_status_finished));
                            eVar2.f44522i.setTextColor(-688602);
                        }
                    } else {
                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                        UtilsMy.n2(eVar2.f44522i, eVar2.f44521h, c4);
                    }
                } else {
                    eVar2.f44522i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                    UtilsMy.n2(eVar2.f44522i, eVar2.f44521h, c4);
                }
            } else {
                com.join.mgps.Util.t0.d("infoo", a4.getStatus() + " dd " + a4.getShowName());
                int status = a4.getStatus();
                if (UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        eVar2.f44522i.setText("暂停中");
                    } else if (status == 48) {
                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_blue_butn);
                        eVar2.f44522i.setText("安装中");
                        eVar2.f44522i.setTextColor(-9263087);
                        d(eVar2, Boolean.TRUE, Boolean.FALSE);
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_green_butn);
                                                        eVar2.f44522i.setText("更新");
                                                        eVar2.f44522i.setTextColor(-9263087);
                                                        d(eVar2, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 10:
                                                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        eVar2.f44522i.setText("等待");
                                                        eVar2.f44522i.setTextColor(-12941854);
                                                        Boolean bool = Boolean.FALSE;
                                                        d(eVar2, bool, bool);
                                                        eVar2.f44524k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        try {
                                                            eVar2.f44518e.setProgress((int) a4.getProgress());
                                                        } catch (Exception e4) {
                                                            e4.printStackTrace();
                                                        }
                                                        eVar2.f44525l.setText("等待中");
                                                        break;
                                                    case 11:
                                                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_green_butn);
                                                        eVar2.f44522i.setText("安装");
                                                        eVar2.f44522i.setTextColor(-9263087);
                                                        d(eVar2, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 12:
                                                        d(eVar2, Boolean.FALSE, Boolean.TRUE);
                                                        eVar2.f44524k.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        eVar2.f44525l.setText("解压中..");
                                                        eVar2.f44517d.setProgress((int) a4.getProgress());
                                                        eVar2.f44522i.setBackgroundResource(R.drawable.extract);
                                                        eVar2.f44522i.setText("解压中");
                                                        eVar2.f44522i.setTextColor(-4868683);
                                                        break;
                                                    case 13:
                                                        d(eVar2, Boolean.FALSE, Boolean.TRUE);
                                                        eVar2.f44524k.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        eVar2.f44525l.setText("点击重新解压");
                                                        eVar2.f44517d.setProgress((int) a4.getProgress());
                                                        eVar2.f44522i.setBackgroundResource(R.drawable.reextract);
                                                        eVar2.f44522i.setText("解压");
                                                        eVar2.f44522i.setTextColor(-12941854);
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            eVar2.f44522i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            eVar2.f44522i.setText(this.f44504b.getResources().getString(R.string.download_status_finished));
                            eVar2.f44522i.setTextColor(-688602);
                            Boolean bool2 = Boolean.TRUE;
                            d(eVar2, bool2, bool2);
                        }
                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_blue_butn);
                        eVar2.f44522i.setText("继续");
                        eVar2.f44522i.setTextColor(-12941854);
                        Boolean bool3 = Boolean.FALSE;
                        d(eVar2, bool3, bool3);
                        try {
                            if (a4.getSize() == 0) {
                                eVar2.f44524k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                eVar2.f44524k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            eVar2.f44518e.setProgress((int) a4.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        eVar2.f44525l.setText("暂停中");
                    } else {
                        UtilsMy.C3(a4);
                        eVar2.f44522i.setBackgroundResource(R.drawable.recom_blue_butn);
                        eVar2.f44522i.setText("暂停");
                        eVar2.f44522i.setTextColor(-12941854);
                        Boolean bool4 = Boolean.FALSE;
                        d(eVar2, bool4, bool4);
                        if (a4.getSize() == 0) {
                            eVar2.f44524k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            eVar2.f44524k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        eVar2.f44518e.setProgress((int) a4.getProgress());
                        String speed = a4.getSpeed();
                        eVar2.f44525l.setText(speed + "/S");
                    }
                }
                eVar2.f44522i.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                UtilsMy.n2(eVar2.f44522i, eVar2.f44521h, c4);
                d(eVar2, Boolean.TRUE, Boolean.FALSE);
            }
            eVar2.f44521h.setOnClickListener(new c(aVar));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
