package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
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
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLNoOpenTestBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameOLNoOpenTestAdapter.java */
/* loaded from: classes3.dex */
public class z1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f44659a;

    /* renamed from: b  reason: collision with root package name */
    private Context f44660b;

    /* renamed from: c  reason: collision with root package name */
    private List<k1.a<GameOLNoOpenTestBean>> f44661c = new ArrayList(0);

    /* compiled from: GameOLNoOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f44662a;

        a(GameOLHeadAdBean gameOLHeadAdBean) {
            this.f44662a = gameOLHeadAdBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(z1.this.f44660b, this.f44662a.getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: GameOLNoOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        GameOLNoOpenTestBean f44664a;

        /* renamed from: b  reason: collision with root package name */
        k1.a<GameOLNoOpenTestBean> f44665b;

        public b(k1.a<GameOLNoOpenTestBean> aVar) {
            this.f44665b = aVar;
            this.f44664a = aVar.c();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask a4 = this.f44665b.a();
            if (a4 == null) {
                if (UtilsMy.e0(this.f44664a.getTag_info())) {
                    if (this.f44664a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(z1.this.f44660b).c(z1.this.f44660b, this.f44664a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(z1.this.f44660b).k(z1.this.f44660b, this.f44664a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f44664a.getVer()) || k4.d() >= Integer.parseInt(this.f44664a.getVer())) {
                                com.join.android.app.common.utils.a.g0(z1.this.f44660b);
                                APKUtils.X(z1.this.f44660b, this.f44664a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(z1.this.f44660b).c(z1.this.f44660b, this.f44664a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f44664a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(z1.this.f44660b);
                            APKUtils.S(z1.this.f44660b, this.f44664a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(z1.this.f44660b, this.f44664a);
                return;
            }
            String plugin_num = this.f44664a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f44664a.getDown_url_remote());
                UtilsMy.h2(a4, z1.this.f44660b);
                IntentUtil.getInstance().intentActivity(z1.this.f44660b, intentDateBean);
                return;
            }
            int status = a4 != null ? a4.getStatus() : 0;
            GameOLNoOpenTestBean gameOLNoOpenTestBean = this.f44664a;
            if (gameOLNoOpenTestBean != null && UtilsMy.m0(gameOLNoOpenTestBean.getPay_tag_info(), this.f44664a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(z1.this.f44660b, a4);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(z1.this.f44660b, a4);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(z1.this.f44660b)) {
                                        com.join.mgps.Util.i2.a(z1.this.f44660b).b("无网络连接");
                                        return;
                                    } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                        a4.setVer(this.f44664a.getVer());
                                        a4.setVer_name(this.f44664a.getVer_name());
                                        a4.setUrl(this.f44664a.getDown_url_remote());
                                        UtilsMy.w3(z1.this.f44660b, a4);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(z1.this.f44660b)) {
                                                com.join.mgps.Util.i2.a(z1.this.f44660b).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(z1.this.f44660b, a4)) {
                                                return;
                                            } else {
                                                if (this.f44664a.getDown_status() == 5) {
                                                    UtilsMy.R0(z1.this.f44660b, a4);
                                                    return;
                                                } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(a4);
                                                    a4.setVer(this.f44664a.getVer());
                                                    a4.setVer_name(this.f44664a.getVer_name());
                                                    a4.setUrl(this.f44664a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(a4, z1.this.f44660b);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(a4, z1.this.f44660b);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(a4, z1.this.f44660b);
                    return;
                }
                com.php25.PDownload.d.h(a4);
                return;
            }
            GameOLNoOpenTestBean gameOLNoOpenTestBean2 = this.f44664a;
            if (gameOLNoOpenTestBean2 != null) {
                if (UtilsMy.o0(gameOLNoOpenTestBean2.getPay_tag_info(), this.f44664a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(z1.this.f44660b, a4.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(a4, this.f44664a);
                if (UtilsMy.T0(z1.this.f44660b, a4)) {
                    return;
                }
                if (this.f44664a.getDown_status() == 5) {
                    UtilsMy.R0(z1.this.f44660b, a4);
                } else {
                    UtilsMy.F0(z1.this.f44660b, a4, this.f44664a.getTp_down_url(), this.f44664a.getOther_down_switch(), this.f44664a.getCdn_down_switch());
                }
            }
        }
    }

    /* compiled from: GameOLNoOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44667a;

        c() {
        }
    }

    /* compiled from: GameOLNoOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44669a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f44670b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44671c;

        /* renamed from: d  reason: collision with root package name */
        public ProgressBar f44672d;

        /* renamed from: e  reason: collision with root package name */
        public ProgressBar f44673e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44674f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f44675g;

        /* renamed from: h  reason: collision with root package name */
        private RelativeLayout f44676h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f44677i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f44678j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f44679k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f44680l;

        /* renamed from: m  reason: collision with root package name */
        private TextView f44681m;

        public d() {
        }
    }

    /* compiled from: GameOLNoOpenTestAdapter.java */
    /* loaded from: classes3.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        private TextView f44683a;

        e() {
        }
    }

    public z1(Context context) {
        this.f44659a = LayoutInflater.from(context);
        this.f44660b = context;
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public k1.a<GameOLNoOpenTestBean> getItem(int i2) {
        return this.f44661c.get(i2);
    }

    public List<k1.a<GameOLNoOpenTestBean>> c() {
        return this.f44661c;
    }

    void d(d dVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            dVar.f44678j.setVisibility(8);
            dVar.f44673e.setVisibility(8);
            dVar.f44672d.setVisibility(8);
            dVar.f44674f.setVisibility(0);
            dVar.f44675g.setVisibility(0);
            dVar.f44681m.setVisibility(0);
            return;
        }
        dVar.f44678j.setVisibility(0);
        if (bool2.booleanValue()) {
            dVar.f44673e.setVisibility(8);
            dVar.f44672d.setVisibility(0);
        } else {
            dVar.f44672d.setVisibility(8);
            dVar.f44673e.setVisibility(0);
        }
        dVar.f44674f.setVisibility(8);
        dVar.f44675g.setVisibility(8);
        dVar.f44681m.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44661c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f44661c.get(i2).d();
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
                view2 = this.f44659a.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                cVar.f44667a = (SimpleDraweeView) view2.findViewById(R.id.adImage);
                view2.setTag(cVar);
                dVar2 = null;
                cVar2 = cVar;
                eVar = null;
            } else if (itemViewType != 1) {
                if (itemViewType == 2) {
                    dVar = new d();
                    view2 = this.f44659a.inflate(R.layout.gameol_noopentest_listview_item, (ViewGroup) null);
                    dVar.f44669a = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
                    dVar.f44670b = (ImageView) view2.findViewById(R.id.giftPackageSwich);
                    dVar.f44671c = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
                    dVar.f44672d = (ProgressBar) view2.findViewById(R.id.progressBarZip);
                    dVar.f44673e = (ProgressBar) view2.findViewById(R.id.progressBar);
                    dVar.f44674f = (TextView) view2.findViewById(R.id.privilege);
                    dVar.f44675g = (TextView) view2.findViewById(R.id.testTime);
                    dVar.f44681m = (TextView) view2.findViewById(R.id.statues);
                    dVar.f44676h = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
                    dVar.f44677i = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
                    dVar.f44678j = (LinearLayout) view2.findViewById(R.id.linearLayout2);
                    dVar.f44679k = (TextView) view2.findViewById(R.id.appSize);
                    dVar.f44680l = (TextView) view2.findViewById(R.id.loding_info);
                    view2.setTag(dVar);
                    dVar2 = dVar;
                    eVar = null;
                }
                view2 = view;
                eVar = null;
                dVar2 = null;
            } else {
                eVar = new e();
                view2 = this.f44659a.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                eVar.f44683a = (TextView) view2.findViewById(R.id.titleText);
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
            GameOLHeadAdBean b4 = this.f44661c.get(i2).b();
            MyImageLoader.d(cVar2.f44667a, R.drawable.banner_normal_icon, b4.getMain().getPic_remote());
            cVar2.f44667a.setOnClickListener(new a(b4));
        } else if (itemViewType == 1) {
            eVar.f44683a.setText(this.f44661c.get(i2).e());
        } else if (itemViewType == 2) {
            k1.a<GameOLNoOpenTestBean> aVar = this.f44661c.get(i2);
            GameOLNoOpenTestBean c4 = aVar.c();
            UtilsMy.v2(c4.getSp_tag_info(), view2, aVar.a());
            MyImageLoader.d(dVar2.f44669a, R.drawable.main_normal_icon, c4.getIco_remote());
            if (c4.getGift_package_switch() == 1) {
                dVar2.f44670b.setVisibility(0);
            } else {
                dVar2.f44670b.setVisibility(8);
            }
            dVar2.f44671c.setText(c4.getGame_name());
            String game_open_time = c4.getGame_open_time();
            if (com.join.mgps.Util.d2.i(game_open_time)) {
                long parseLong = Long.parseLong(game_open_time + "000");
                dVar2.f44675g.setText("开测时间:" + com.join.mgps.Util.x.p(parseLong));
            }
            dVar2.f44674f.setText(Html.fromHtml("悟饭特权:" + c4.getPapa_privilege()), TextView.BufferType.SPANNABLE);
            dVar2.f44681m.setText(Html.fromHtml("游戏状态:" + c4.getGame_status()), TextView.BufferType.SPANNABLE);
            long parseDouble = (long) (Double.parseDouble(c4.getSize()) * 1024.0d * 1024.0d);
            DownloadTask a4 = aVar.a();
            dVar2.f44677i.setText("");
            if (c4.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                dVar2.f44677i.setBackgroundResource(R.drawable.recom_blue_butn);
                dVar2.f44677i.setText("开始");
                dVar2.f44677i.setTextColor(this.f44660b.getResources().getColor(R.color.app_blue_color));
                dVar2.f44670b.setVisibility(8);
            } else if (a4 == null) {
                d(dVar2, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(c4.getTag_info())) {
                    if (com.join.android.app.common.utils.a.g0(this.f44660b).c(this.f44660b, c4.getPackage_name()) && UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id()) == 0) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44660b).k(this.f44660b, c4.getPackage_name());
                        if (com.join.mgps.Util.d2.i(c4.getVer()) && k4.d() < Integer.parseInt(c4.getVer())) {
                            dVar2.f44677i.setBackgroundResource(R.drawable.recom_green_butn);
                            dVar2.f44677i.setText("更新");
                            dVar2.f44677i.setTextColor(-9263087);
                        } else {
                            dVar2.f44677i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            dVar2.f44677i.setText(this.f44660b.getResources().getString(R.string.download_status_finished));
                            dVar2.f44677i.setTextColor(-688602);
                        }
                    } else {
                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                        UtilsMy.n2(dVar2.f44677i, dVar2.f44676h, c4);
                    }
                } else {
                    dVar2.f44677i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                    UtilsMy.n2(dVar2.f44677i, dVar2.f44676h, c4);
                }
            } else {
                com.join.mgps.Util.t0.d("infoo", a4.getStatus() + " dd " + a4.getShowName());
                int status = a4.getStatus();
                if (UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        dVar2.f44677i.setText("暂停中");
                    } else if (status == 48) {
                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_blue_butn);
                        dVar2.f44677i.setText("安装中");
                        dVar2.f44677i.setTextColor(-12941854);
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
                                                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_green_butn);
                                                        dVar2.f44677i.setText("更新");
                                                        dVar2.f44677i.setTextColor(-9263087);
                                                        d(dVar2, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 10:
                                                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        dVar2.f44677i.setText("等待");
                                                        dVar2.f44677i.setTextColor(-12941854);
                                                        Boolean bool = Boolean.FALSE;
                                                        d(dVar2, bool, bool);
                                                        dVar2.f44679k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        try {
                                                            dVar2.f44673e.setProgress((int) a4.getProgress());
                                                        } catch (Exception e4) {
                                                            e4.printStackTrace();
                                                        }
                                                        dVar2.f44680l.setText("等待中");
                                                        break;
                                                    case 11:
                                                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_green_butn);
                                                        dVar2.f44677i.setText("安装");
                                                        dVar2.f44677i.setTextColor(-9263087);
                                                        d(dVar2, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 12:
                                                        d(dVar2, Boolean.FALSE, Boolean.TRUE);
                                                        dVar2.f44679k.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        dVar2.f44680l.setText("解压中..");
                                                        dVar2.f44672d.setProgress((int) a4.getProgress());
                                                        dVar2.f44677i.setBackgroundResource(R.drawable.extract);
                                                        dVar2.f44677i.setText("解压中");
                                                        dVar2.f44677i.setTextColor(-4868683);
                                                        break;
                                                    case 13:
                                                        d(dVar2, Boolean.FALSE, Boolean.TRUE);
                                                        dVar2.f44679k.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        dVar2.f44680l.setText("点击重新解压");
                                                        dVar2.f44672d.setProgress((int) a4.getProgress());
                                                        dVar2.f44677i.setBackgroundResource(R.drawable.reextract);
                                                        dVar2.f44677i.setText("解压");
                                                        dVar2.f44677i.setTextColor(-12941854);
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            dVar2.f44677i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            dVar2.f44677i.setText(this.f44660b.getResources().getString(R.string.download_status_finished));
                            dVar2.f44677i.setTextColor(-688602);
                            Boolean bool2 = Boolean.TRUE;
                            d(dVar2, bool2, bool2);
                        }
                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_blue_butn);
                        dVar2.f44677i.setText("继续");
                        dVar2.f44677i.setTextColor(-12941854);
                        Boolean bool3 = Boolean.FALSE;
                        d(dVar2, bool3, bool3);
                        try {
                            if (a4.getSize() == 0) {
                                dVar2.f44679k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                dVar2.f44679k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            dVar2.f44673e.setProgress((int) a4.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        dVar2.f44680l.setText("暂停中");
                    } else {
                        UtilsMy.C3(a4);
                        dVar2.f44677i.setBackgroundResource(R.drawable.recom_blue_butn);
                        dVar2.f44677i.setText("暂停");
                        dVar2.f44677i.setTextColor(-12941854);
                        Boolean bool4 = Boolean.FALSE;
                        d(dVar2, bool4, bool4);
                        if (a4.getSize() == 0) {
                            dVar2.f44679k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            dVar2.f44679k.setText(UtilsMy.a(a4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        dVar2.f44673e.setProgress((int) a4.getProgress());
                        String speed = a4.getSpeed();
                        dVar2.f44680l.setText(speed + "/S");
                    }
                }
                dVar2.f44677i.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(c4.getPay_tag_info(), c4.getCrc_sign_id());
                UtilsMy.n2(dVar2.f44677i, dVar2.f44676h, c4);
                d(dVar2, Boolean.TRUE, Boolean.FALSE);
            }
            dVar2.f44676h.setOnClickListener(new b(aVar));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
