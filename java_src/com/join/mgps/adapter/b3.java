package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
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
import com.join.mgps.enums.ConstantIntEnum;
import java.util.List;
/* compiled from: MustPlayAdapter.java */
/* loaded from: classes3.dex */
public class b3 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f41294a;

    /* renamed from: b  reason: collision with root package name */
    private List<k1.c> f41295b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f41296c;

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f41297a;

        a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41297a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(b3.this.f41294a, this.f41297a.getIntentDataBean());
        }
    }

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f41299a;

        b(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41299a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(b3.this.f41294a, this.f41299a.getIntentDataBean());
        }
    }

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f41301a;

        c(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41301a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(b3.this.f41294a, this.f41301a.getIntentDataBean());
        }
    }

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f41303a;

        d(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41303a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(b3.this.f41294a, this.f41303a.getIntentDataBean());
        }
    }

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f41305a;

        public e(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41305a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f41305a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f41305a.getTag_info())) {
                    if (this.f41305a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(b3.this.f41294a).c(b3.this.f41294a, this.f41305a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(b3.this.f41294a).k(b3.this.f41294a, this.f41305a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f41305a.getVer()) || k4.d() >= Integer.parseInt(this.f41305a.getVer())) {
                                com.join.android.app.common.utils.a.g0(b3.this.f41294a);
                                APKUtils.X(b3.this.f41294a, this.f41305a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(b3.this.f41294a).c(b3.this.f41294a, this.f41305a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f41305a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(b3.this.f41294a);
                            APKUtils.S(b3.this.f41294a, this.f41305a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(b3.this.f41294a, this.f41305a);
                return;
            }
            if ((ConstantIntEnum.H5.value() + "").equals(this.f41305a.getPlugin_num())) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f41305a.getDown_url_remote());
                UtilsMy.h2(downloadTask, b3.this.f41294a);
                IntentUtil.getInstance().intentActivity(b3.this.f41294a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            CollectionBeanSubBusiness collectionBeanSubBusiness = this.f41305a;
            if (collectionBeanSubBusiness != null && UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), this.f41305a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(b3.this.f41294a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(b3.this.f41294a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(b3.this.f41294a)) {
                                        com.join.mgps.Util.i2.a(b3.this.f41294a).b("无网络连接");
                                        return;
                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f41305a.getVer());
                                        downloadTask.setVer_name(this.f41305a.getVer_name());
                                        downloadTask.setUrl(this.f41305a.getDown_url_remote());
                                        UtilsMy.w3(b3.this.f41294a, downloadTask);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(b3.this.f41294a)) {
                                                com.join.mgps.Util.i2.a(b3.this.f41294a).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(b3.this.f41294a, downloadTask)) {
                                                return;
                                            } else {
                                                if (this.f41305a.getDown_status() == 5) {
                                                    UtilsMy.R0(b3.this.f41294a, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f41305a.getVer());
                                                    downloadTask.setVer_name(this.f41305a.getVer_name());
                                                    downloadTask.setUrl(this.f41305a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, b3.this.f41294a);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, b3.this.f41294a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, b3.this.f41294a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f41305a;
            if (collectionBeanSubBusiness2 != null) {
                if (UtilsMy.o0(collectionBeanSubBusiness2.getPay_tag_info(), this.f41305a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(b3.this.f41294a, downloadTask.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(downloadTask, this.f41305a);
                if (UtilsMy.T0(b3.this.f41294a, downloadTask)) {
                    return;
                }
                if (this.f41305a.getDown_status() == 5) {
                    UtilsMy.R0(b3.this.f41294a, downloadTask);
                } else {
                    UtilsMy.F0(b3.this.f41294a, downloadTask, this.f41305a.getTp_down_url(), this.f41305a.getOther_down_switch(), this.f41305a.getCdn_down_switch());
                }
            }
        }
    }

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class f {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f41307a;

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f41308b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f41309c;

        /* renamed from: d  reason: collision with root package name */
        private LinearLayout f41310d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f41311e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f41312f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f41313g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f41314h;

        /* renamed from: i  reason: collision with root package name */
        private SimpleDraweeView f41315i;

        /* renamed from: j  reason: collision with root package name */
        private SimpleDraweeView f41316j;

        /* renamed from: k  reason: collision with root package name */
        private SimpleDraweeView f41317k;

        /* renamed from: l  reason: collision with root package name */
        private SimpleDraweeView f41318l;

        /* renamed from: m  reason: collision with root package name */
        private TextView f41319m;

        /* renamed from: n  reason: collision with root package name */
        private TextView f41320n;

        /* renamed from: o  reason: collision with root package name */
        private TextView f41321o;

        /* renamed from: p  reason: collision with root package name */
        private TextView f41322p;

        f() {
        }
    }

    /* compiled from: MustPlayAdapter.java */
    /* loaded from: classes3.dex */
    class g {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41324a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f41325b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f41326c;

        g() {
        }
    }

    public b3(Context context, List<k1.c> list) {
        this.f41294a = context;
        this.f41295b = list;
        this.f41296c = LayoutInflater.from(context);
    }

    private void b(CollectionBeanSubBusiness collectionBeanSubBusiness, TextView textView) {
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        if (downloadTask == null) {
            if ((ConstantIntEnum.H5.value() + "").equals(collectionBeanSubBusiness.getPlugin_num())) {
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                textView.setText("开始");
                textView.setTextColor(this.f41294a.getResources().getColor(R.color.app_blue_color));
                return;
            } else if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                boolean c4 = com.join.android.app.common.utils.a.g0(this.f41294a).c(this.f41294a, collectionBeanSubBusiness.getPackage_name());
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                    c4 = false;
                }
                if (c4) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41294a).k(this.f41294a, collectionBeanSubBusiness.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                        textView.setText("更新");
                        textView.setTextColor(-9263087);
                        return;
                    }
                    textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    textView.setText(this.f41294a.getResources().getString(R.string.download_status_finished));
                    textView.setTextColor(-688602);
                    return;
                }
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.r2(textView, collectionBeanSubBusiness);
                return;
            } else {
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.r2(textView, collectionBeanSubBusiness);
                return;
            }
        }
        com.join.mgps.Util.t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
        int status = downloadTask.getStatus();
        if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                textView.setText("暂停中");
                return;
            } else if (status == 48) {
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                textView.setText("安装中");
                textView.setTextColor(-12941854);
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
                                                textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                textView.setText("更新");
                                                textView.setTextColor(-9263087);
                                                return;
                                            case 10:
                                                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                                                textView.setText("等待");
                                                textView.setTextColor(-12941854);
                                                return;
                                            case 11:
                                                textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                textView.setText("安装");
                                                textView.setTextColor(-9263087);
                                                return;
                                            case 12:
                                                textView.setBackgroundResource(R.drawable.extract);
                                                textView.setText("解压中");
                                                textView.setTextColor(-4868683);
                                                return;
                                            case 13:
                                                textView.setBackgroundResource(R.drawable.reextract);
                                                textView.setText("解压");
                                                textView.setTextColor(-12941854);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    textView.setText(this.f41294a.getResources().getString(R.string.download_status_finished));
                    textView.setTextColor(-688602);
                    return;
                }
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                textView.setText("继续");
                textView.setTextColor(-12941854);
                return;
            } else {
                UtilsMy.C3(downloadTask);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                textView.setText("暂停");
                textView.setTextColor(-12941854);
                return;
            }
        }
        textView.setBackgroundResource(R.drawable.recom_green_butn);
        UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
        UtilsMy.r2(textView, collectionBeanSubBusiness);
    }

    public void c(List<k1.c> list) {
        this.f41295b = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41295b.size() + 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return (i2 == this.f41295b.size() || this.f41295b.get(i2).c()) ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        f fVar;
        f fVar2;
        List<CollectionBeanSubBusiness> a4;
        int itemViewType = getItemViewType(i2);
        g gVar = null;
        if (view == null) {
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    f fVar3 = new f();
                    View inflate = this.f41296c.inflate(R.layout.must_play_app_layout, viewGroup, false);
                    fVar3.f41307a = (LinearLayout) inflate.findViewById(R.id.layout1);
                    fVar3.f41308b = (LinearLayout) inflate.findViewById(R.id.layout2);
                    fVar3.f41309c = (LinearLayout) inflate.findViewById(R.id.layout3);
                    fVar3.f41310d = (LinearLayout) inflate.findViewById(R.id.layout4);
                    fVar3.f41311e = (TextView) inflate.findViewById(R.id.appName1);
                    fVar3.f41312f = (TextView) inflate.findViewById(R.id.appName2);
                    fVar3.f41313g = (TextView) inflate.findViewById(R.id.appName3);
                    fVar3.f41314h = (TextView) inflate.findViewById(R.id.appName4);
                    fVar3.f41315i = (SimpleDraweeView) inflate.findViewById(R.id.appIcon1);
                    fVar3.f41316j = (SimpleDraweeView) inflate.findViewById(R.id.appIcon2);
                    fVar3.f41317k = (SimpleDraweeView) inflate.findViewById(R.id.appIcon3);
                    fVar3.f41318l = (SimpleDraweeView) inflate.findViewById(R.id.appIcon4);
                    fVar3.f41319m = (TextView) inflate.findViewById(R.id.appButn1);
                    fVar3.f41320n = (TextView) inflate.findViewById(R.id.appButn2);
                    fVar3.f41321o = (TextView) inflate.findViewById(R.id.appButn3);
                    fVar3.f41322p = (TextView) inflate.findViewById(R.id.appButn4);
                    inflate.setTag(fVar3);
                    fVar2 = fVar3;
                    view = inflate;
                }
                fVar2 = null;
            } else {
                g gVar2 = new g();
                View inflate2 = this.f41296c.inflate(R.layout.must_play_title_layout, viewGroup, false);
                gVar2.f41324a = (TextView) inflate2.findViewById(R.id.titleName);
                gVar2.f41325b = (TextView) inflate2.findViewById(R.id.titleline);
                gVar2.f41326c = (LinearLayout) inflate2.findViewById(R.id.section_follow);
                inflate2.setTag(gVar2);
                fVar = null;
                gVar = gVar2;
                view = inflate2;
                fVar2 = fVar;
            }
        } else if (itemViewType != 0) {
            if (itemViewType == 1) {
                fVar2 = (f) view.getTag();
            }
            fVar2 = null;
        } else {
            fVar = null;
            gVar = (g) view.getTag();
            fVar2 = fVar;
        }
        if (i2 == 0 && itemViewType == 0) {
            gVar.f41325b.setVisibility(8);
            gVar.f41326c.setVisibility(0);
        } else if (itemViewType == 0 && i2 == this.f41295b.size()) {
            gVar.f41325b.setVisibility(0);
            gVar.f41326c.setVisibility(8);
            return view;
        } else if (itemViewType == 0) {
            gVar.f41325b.setVisibility(0);
            gVar.f41326c.setVisibility(0);
        }
        k1.c cVar = this.f41295b.get(i2);
        if (itemViewType == 0) {
            gVar.f41324a.setText(cVar.b());
        } else if (itemViewType == 1 && (a4 = cVar.a()) != null) {
            fVar2.f41307a.setVisibility(4);
            fVar2.f41308b.setVisibility(4);
            fVar2.f41309c.setVisibility(4);
            fVar2.f41310d.setVisibility(4);
            for (int i4 = 0; i4 < a4.size(); i4++) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = a4.get(i4);
                if (i4 == 0) {
                    fVar2.f41307a.setVisibility(0);
                    MyImageLoader.h(fVar2.f41315i, collectionBeanSubBusiness.getIco_remote());
                    fVar2.f41311e.setText(collectionBeanSubBusiness.getGame_name());
                    b(collectionBeanSubBusiness, fVar2.f41319m);
                    fVar2.f41319m.setOnClickListener(new e(collectionBeanSubBusiness));
                    fVar2.f41315i.setOnClickListener(new a(collectionBeanSubBusiness));
                } else if (i4 == 1) {
                    fVar2.f41308b.setVisibility(0);
                    MyImageLoader.h(fVar2.f41316j, collectionBeanSubBusiness.getIco_remote());
                    fVar2.f41312f.setText(collectionBeanSubBusiness.getGame_name());
                    b(collectionBeanSubBusiness, fVar2.f41320n);
                    fVar2.f41320n.setOnClickListener(new e(collectionBeanSubBusiness));
                    fVar2.f41316j.setOnClickListener(new b(collectionBeanSubBusiness));
                } else if (i4 == 2) {
                    fVar2.f41309c.setVisibility(0);
                    MyImageLoader.h(fVar2.f41317k, collectionBeanSubBusiness.getIco_remote());
                    fVar2.f41313g.setText(collectionBeanSubBusiness.getGame_name());
                    b(collectionBeanSubBusiness, fVar2.f41321o);
                    fVar2.f41321o.setOnClickListener(new e(collectionBeanSubBusiness));
                    fVar2.f41317k.setOnClickListener(new c(collectionBeanSubBusiness));
                } else if (i4 == 3) {
                    fVar2.f41310d.setVisibility(0);
                    MyImageLoader.h(fVar2.f41318l, collectionBeanSubBusiness.getIco_remote());
                    fVar2.f41314h.setText(collectionBeanSubBusiness.getGame_name());
                    b(collectionBeanSubBusiness, fVar2.f41322p);
                    fVar2.f41322p.setOnClickListener(new e(collectionBeanSubBusiness));
                    fVar2.f41318l.setOnClickListener(new d(collectionBeanSubBusiness));
                }
            }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
