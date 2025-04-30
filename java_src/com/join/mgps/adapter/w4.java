package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
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
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RankingItemAdapter.java */
/* loaded from: classes3.dex */
public class w4 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44457a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44458b;

    /* renamed from: e  reason: collision with root package name */
    private String f44461e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f44462f;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f44459c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f44460d = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f44463g = false;

    /* compiled from: RankingItemAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f44464a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f44465b;

        a(CollectionBeanSubBusiness collectionBeanSubBusiness, int i2) {
            this.f44464a = collectionBeanSubBusiness;
            this.f44465b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = this.f44464a;
            if (collectionBeanSubBusiness.getCrc_sign_id() != null) {
                String str = w4.this.f44463g ? "home" : "ranking";
                if (TextUtils.equals(w4.this.f44461e, "1")) {
                    StatFactory companion = StatFactory.Companion.getInstance(w4.this.f44457a);
                    Event event = Event.click;
                    String game_id = collectionBeanSubBusiness.getGame_id();
                    companion.sendEvent(new StatFactory.VolcanoEvent(event, game_id, new StatFactory.SpmData("wufun", str, "ranking", (this.f44465b + 1) + "", false), this.f44464a.getPosition_path(), UtilsMy.F1(this.f44464a.getTag_info())));
                }
                IntentDateBean intentDataBean = collectionBeanSubBusiness.getIntentDataBean();
                ExtBean extBean = intentDataBean.getExtBean();
                extBean.setRecPosition(str + "-ranking-" + (this.f44465b + 1));
                extBean.setReMarks(collectionBeanSubBusiness.getReMarks());
                intentDataBean.setExtBean(extBean);
                IntentUtil.getInstance().intentActivity(w4.this.f44457a, intentDataBean);
            }
        }
    }

    /* compiled from: RankingItemAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f44467a;

        /* renamed from: b  reason: collision with root package name */
        int f44468b;

        public b(CollectionBeanSubBusiness collectionBeanSubBusiness, int i2) {
            this.f44468b = 0;
            this.f44467a = collectionBeanSubBusiness;
            this.f44468b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f44467a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f44467a.getTag_info())) {
                    if (this.f44467a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(w4.this.f44457a).c(w4.this.f44457a, this.f44467a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(w4.this.f44457a).k(w4.this.f44457a, this.f44467a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f44467a.getVer()) || k4.d() >= Integer.parseInt(this.f44467a.getVer())) {
                                com.join.android.app.common.utils.a.g0(w4.this.f44457a);
                                APKUtils.X(w4.this.f44457a, this.f44467a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(w4.this.f44457a).c(w4.this.f44457a, this.f44467a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f44467a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(w4.this.f44457a);
                            APKUtils.S(w4.this.f44457a, this.f44467a.getMod_info());
                            return;
                        }
                    }
                }
                String str = w4.this.f44463g ? "home" : "ranking";
                this.f44467a.setRecPosition(str + "-ranking-" + (this.f44468b + 1));
                CollectionBeanSubBusiness collectionBeanSubBusiness = this.f44467a;
                collectionBeanSubBusiness.setReMarks((this.f44468b + 1) + "");
                if (TextUtils.equals("1", w4.this.f44461e)) {
                    StatFactory companion = StatFactory.Companion.getInstance(w4.this.f44457a);
                    Event event = Event.check;
                    String game_id = this.f44467a.getGame_id();
                    companion.sendEvent(new StatFactory.VolcanoEvent(event, game_id, new StatFactory.SpmData("wufun", str, "ranking", (this.f44468b + 1) + "", false), this.f44467a.getPosition_path(), UtilsMy.F1(this.f44467a.getTag_info())));
                }
                UtilsMy.J0(w4.this.f44457a, this.f44467a);
                return;
            }
            String plugin_num = this.f44467a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f44467a.getDown_url_remote());
                UtilsMy.h2(downloadTask, w4.this.f44457a);
                IntentUtil.getInstance().intentActivity(w4.this.f44457a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f44467a.getPay_tag_info(), this.f44467a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(w4.this.f44457a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(w4.this.f44457a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(w4.this.f44457a)) {
                                        com.join.mgps.Util.i2.a(w4.this.f44457a).b("无网络连接");
                                        return;
                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f44467a.getVer());
                                        downloadTask.setVer_name(this.f44467a.getVer_name());
                                        downloadTask.setUrl(this.f44467a.getDown_url_remote());
                                        UtilsMy.w3(w4.this.f44457a, downloadTask);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(w4.this.f44457a)) {
                                                com.join.mgps.Util.i2.a(w4.this.f44457a).b("无网络连接");
                                                return;
                                            } else if (this.f44467a.getDown_status() == 5) {
                                                UtilsMy.R0(w4.this.f44457a, downloadTask);
                                                return;
                                            } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                return;
                                            } else {
                                                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                com.php25.PDownload.d.b(downloadTask);
                                                downloadTask.setVer(this.f44467a.getVer());
                                                downloadTask.setVer_name(this.f44467a.getVer_name());
                                                downloadTask.setUrl(this.f44467a.getDown_url_remote());
                                                com.php25.PDownload.d.c(downloadTask, w4.this.f44457a);
                                                return;
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, w4.this.f44457a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, w4.this.f44457a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            if (UtilsMy.o0(this.f44467a.getPay_tag_info(), this.f44467a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(w4.this.f44457a, downloadTask.getCrc_link_type_val());
            } else if (this.f44467a.getDown_status() == 5) {
                UtilsMy.R0(w4.this.f44457a, downloadTask);
            } else {
                UtilsMy.F0(w4.this.f44457a, downloadTask, this.f44467a.getTp_down_url(), this.f44467a.getOther_down_switch(), this.f44467a.getCdn_down_switch());
            }
        }
    }

    /* compiled from: RankingItemAdapter.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        View f44470a;

        /* renamed from: b  reason: collision with root package name */
        View f44471b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44472c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f44473d;

        /* renamed from: e  reason: collision with root package name */
        ImageView f44474e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f44475f;

        /* renamed from: g  reason: collision with root package name */
        TextView f44476g;

        /* renamed from: h  reason: collision with root package name */
        RelativeLayout f44477h;

        /* renamed from: i  reason: collision with root package name */
        TextView f44478i;

        /* renamed from: j  reason: collision with root package name */
        LinearLayout f44479j;

        /* renamed from: k  reason: collision with root package name */
        TextView f44480k;

        /* renamed from: l  reason: collision with root package name */
        LinearLayout f44481l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f44482m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f44483n;

        /* renamed from: o  reason: collision with root package name */
        public ProgressBar f44484o;

        /* renamed from: p  reason: collision with root package name */
        public ProgressBar f44485p;

        public c() {
        }
    }

    public w4(Context context, String str) {
        this.f44461e = "0";
        this.f44457a = context;
        this.f44458b = LayoutInflater.from(context);
        this.f44461e = str;
    }

    public boolean d() {
        return this.f44462f;
    }

    public List<CollectionBeanSubBusiness> e() {
        return this.f44459c;
    }

    public void f() {
        this.f44463g = true;
    }

    public void g(boolean z3) {
        this.f44462f = z3;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44459c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (this.f44459c.size() != 0 && i2 < this.f44459c.size()) {
            return this.f44459c.get(i2);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        c cVar;
        View view2;
        if (view == null) {
            View inflate = this.f44458b.inflate(R.layout.ranking_listview_item, (ViewGroup) null);
            c cVar2 = new c();
            cVar2.f44470a = inflate.findViewById(R.id.lineTop);
            cVar2.f44472c = (TextView) inflate.findViewById(R.id.tvNumber);
            cVar2.f44473d = (ImageView) inflate.findViewById(R.id.ivNumber);
            cVar2.f44474e = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
            cVar2.f44475f = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            cVar2.f44476g = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            cVar2.f44477h = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
            cVar2.f44478i = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            cVar2.f44479j = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            cVar2.f44480k = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            cVar2.f44481l = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            cVar2.f44482m = (TextView) inflate.findViewById(R.id.appSize);
            cVar2.f44483n = (TextView) inflate.findViewById(R.id.loding_info);
            cVar2.f44484o = (ProgressBar) inflate.findViewById(R.id.progressBar);
            cVar2.f44485p = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            cVar2.f44471b = inflate.findViewById(R.id.relateLayoutApp);
            inflate.setTag(cVar2);
            cVar = cVar2;
            view2 = inflate;
        } else {
            cVar = (c) view.getTag();
            view2 = view;
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f44459c.get(i2);
        CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f44459c.get(i2);
        DownloadTask downloadTask = collectionBeanSubBusiness2.getDownloadTask();
        if (i2 == 0 && this.f44460d > 0) {
            cVar.f44470a.setVisibility(0);
        } else {
            cVar.f44470a.setVisibility(8);
        }
        if (collectionBeanSubBusiness.get_from_type() == 123456) {
            cVar.f44470a.setVisibility(8);
            view2.findViewById(R.id.line).setVisibility(8);
            cVar.f44471b.setBackgroundColor(0);
        }
        int i4 = i2 + 1;
        if (i4 != 1 && i4 != 2 && i4 != 3) {
            cVar.f44472c.setVisibility(0);
            cVar.f44473d.setVisibility(8);
            TextView textView = cVar.f44472c;
            textView.setText(i4 + "");
            cVar.f44472c.setTextColor(-16777216);
            cVar.f44472c.setTextSize(12.0f);
            cVar.f44472c.getPaint().setFakeBoldText(false);
        } else if (this.f44460d > 0) {
            cVar.f44472c.setVisibility(8);
            cVar.f44473d.setVisibility(0);
            if (i4 == 1) {
                cVar.f44473d.setImageResource(R.drawable.ic_standalone_one);
            } else if (i4 == 2) {
                cVar.f44473d.setImageResource(R.drawable.ic_standalone_two);
            } else if (i4 == 3) {
                cVar.f44473d.setImageResource(R.drawable.ic_standalone_three);
            }
        } else {
            cVar.f44472c.setVisibility(0);
            cVar.f44473d.setVisibility(8);
            TextView textView2 = cVar.f44472c;
            textView2.setText(i4 + "");
            cVar.f44472c.setTextColor(Color.parseColor("#ff9f15"));
            cVar.f44472c.setTextSize(14.0f);
            cVar.f44472c.getPaint().setFakeBoldText(true);
        }
        cVar.f44476g.setText(collectionBeanSubBusiness2.getGame_name());
        cVar.f44480k.setText(collectionBeanSubBusiness2.getInfo());
        cVar.f44475f.setImageDrawable(this.f44457a.getResources().getDrawable(R.drawable.main_normal_icon));
        if (collectionBeanSubBusiness2.getGift_package_switch() == 1) {
            cVar.f44474e.setVisibility(0);
        } else {
            cVar.f44474e.setVisibility(8);
        }
        MyImageLoader.h(cVar.f44475f, collectionBeanSubBusiness2.getIco_remote());
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        UtilsMy.C(collectionBeanSubBusiness2.getScore(), collectionBeanSubBusiness2.getDown_count(), collectionBeanSubBusiness2.getSize(), collectionBeanSubBusiness2.getSp_tag_info(), collectionBeanSubBusiness2.getTag_info(), cVar.f44479j, this.f44457a);
        UtilsMy.v2(collectionBeanSubBusiness2.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            cVar.f44478i.setBackgroundResource(R.drawable.recom_blue_butn);
            cVar.f44478i.setText("开始");
            cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
            cVar.f44479j.setVisibility(8);
            cVar.f44474e.setVisibility(8);
        } else if (downloadTask == null) {
            i(cVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                boolean c4 = com.join.android.app.common.utils.a.g0(this.f44457a).c(this.f44457a, collectionBeanSubBusiness.getPackage_name());
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                    c4 = false;
                }
                if (c4) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44457a).k(this.f44457a, collectionBeanSubBusiness.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                        cVar.f44478i.setBackgroundResource(R.drawable.recom_green_butn);
                        cVar.f44478i.setText("更新");
                        cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_green_color));
                    } else {
                        cVar.f44478i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        cVar.f44478i.setText(this.f44457a.getResources().getString(R.string.download_status_finished));
                        cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_main_color));
                    }
                } else {
                    cVar.f44478i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(cVar.f44478i, cVar.f44477h, collectionBeanSubBusiness);
                }
            } else {
                cVar.f44478i.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.n2(cVar.f44478i, cVar.f44477h, collectionBeanSubBusiness);
            }
        } else {
            int status = UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0 ? 43 : downloadTask.getStatus();
            if (status != 0) {
                if (status == 27) {
                    cVar.f44478i.setText("暂停中");
                } else if (status == 48) {
                    cVar.f44478i.setBackgroundResource(R.drawable.recom_blue_butn);
                    cVar.f44478i.setText("安装中");
                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
                    i(cVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    cVar.f44478i.setBackgroundResource(R.drawable.recom_green_butn);
                                                    cVar.f44478i.setText("更新");
                                                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_green_color));
                                                    i(cVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    cVar.f44478i.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    cVar.f44478i.setText("等待");
                                                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    i(cVar, bool, bool);
                                                    try {
                                                        TextView textView3 = cVar.f44482m;
                                                        textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                        cVar.f44484o.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    cVar.f44483n.setText("等待中");
                                                    break;
                                                case 11:
                                                    cVar.f44478i.setBackgroundResource(R.drawable.recom_green_butn);
                                                    cVar.f44478i.setText("安装");
                                                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_green_color));
                                                    i(cVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    i(cVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView4 = cVar.f44482m;
                                                    textView4.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    cVar.f44483n.setText("解压中..");
                                                    cVar.f44485p.setProgress((int) downloadTask.getProgress());
                                                    cVar.f44478i.setBackgroundResource(R.drawable.extract);
                                                    cVar.f44478i.setText("解压中");
                                                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    i(cVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView5 = cVar.f44482m;
                                                    textView5.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    cVar.f44483n.setText("点击重新解压");
                                                    cVar.f44485p.setProgress((int) downloadTask.getProgress());
                                                    cVar.f44478i.setBackgroundResource(R.drawable.reextract);
                                                    cVar.f44478i.setText("解压");
                                                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        cVar.f44478i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        cVar.f44478i.setText(this.f44457a.getResources().getString(R.string.download_status_finished));
                        cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_main_color));
                        i(cVar, Boolean.TRUE, Boolean.FALSE);
                    }
                    cVar.f44478i.setBackgroundResource(R.drawable.recom_blue_butn);
                    cVar.f44478i.setText("继续");
                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool2 = Boolean.FALSE;
                    i(cVar, bool2, bool2);
                    try {
                        TextView textView6 = cVar.f44482m;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        cVar.f44484o.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    cVar.f44483n.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    cVar.f44478i.setBackgroundResource(R.drawable.recom_blue_butn);
                    cVar.f44478i.setText("暂停");
                    cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    i(cVar, bool3, bool3);
                    TextView textView7 = cVar.f44482m;
                    textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    TextView textView8 = cVar.f44483n;
                    textView8.setText(downloadTask.getSpeed() + "/S");
                    cVar.f44484o.setProgress((int) downloadTask.getProgress());
                }
            }
            cVar.f44478i.setBackgroundResource(R.drawable.recom_blue_butn);
            cVar.f44478i.setTextColor(this.f44457a.getResources().getColor(R.color.app_blue_color));
            UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
            UtilsMy.n2(cVar.f44478i, cVar.f44477h, collectionBeanSubBusiness);
            i(cVar, Boolean.TRUE, Boolean.FALSE);
        }
        cVar.f44471b.setOnClickListener(new a(collectionBeanSubBusiness2, i2));
        cVar.f44477h.setOnClickListener(new b(collectionBeanSubBusiness, i2));
        return view2;
    }

    public void h(int i2) {
        this.f44460d = i2;
    }

    void i(c cVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            cVar.f44481l.setVisibility(8);
            cVar.f44484o.setVisibility(8);
            cVar.f44485p.setVisibility(8);
            cVar.f44479j.setVisibility(0);
            cVar.f44480k.setVisibility(0);
            return;
        }
        cVar.f44481l.setVisibility(0);
        if (bool2.booleanValue()) {
            cVar.f44484o.setVisibility(8);
            cVar.f44485p.setVisibility(0);
        } else {
            cVar.f44485p.setVisibility(8);
            cVar.f44484o.setVisibility(0);
        }
        cVar.f44479j.setVisibility(8);
        cVar.f44480k.setVisibility(8);
    }
}
