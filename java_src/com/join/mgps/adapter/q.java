package com.join.mgps.adapter;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.ExtFrom;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DownloadCenterAdapter1.java */
/* loaded from: classes3.dex */
public class q extends p {

    /* renamed from: e  reason: collision with root package name */
    private String f43319e;

    /* renamed from: f  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f43320f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter1.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f43321a;

        a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f43321a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f43321a.getIntentDataBean();
            intentDataBean.setFrom("");
            ExtBean extBean = new ExtBean();
            extBean.setFrom("114");
            extBean.set_from_type(114);
            intentDataBean.setExtBean(extBean);
            if (TextUtils.isEmpty(intentDataBean.getCrc_link_type_val())) {
                intentDataBean.setCrc_link_type_val(this.f43321a.getCrc_sign_id());
            }
            IntentUtil.getInstance().intentActivity(q.this.f43069b, intentDataBean);
            MobclickAgent.onEvent(q.this.f43069b, "enterDetailFromGC4.2.0.6");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter1.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f43323a;

        /* renamed from: b  reason: collision with root package name */
        CollectionBeanSubBusiness f43324b;

        /* renamed from: c  reason: collision with root package name */
        int f43325c;

        /* renamed from: d  reason: collision with root package name */
        String f43326d;

        public b(CollectionBeanSubBusiness collectionBeanSubBusiness, int i2, String str) {
            this.f43323a = collectionBeanSubBusiness;
            this.f43324b = collectionBeanSubBusiness;
            this.f43325c = i2;
            this.f43326d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43324b.getDownloadTask();
            if (!this.f43326d.startsWith("4-") && !this.f43326d.startsWith("6-")) {
                this.f43326d.startsWith("5-");
            }
            q qVar = q.this;
            qVar.q(this.f43326d + 1);
            String plugin_num = this.f43323a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f43323a.getDown_url_remote());
                if (downloadTask == null) {
                    downloadTask = this.f43323a.getDownloadtaskDown();
                }
                UtilsMy.h2(downloadTask, q.this.f43069b);
                IntentUtil.getInstance().intentActivity(q.this.f43069b, intentDateBean);
            } else if (downloadTask == null) {
                if (UtilsMy.e0(this.f43323a.getTag_info())) {
                    if (this.f43323a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(q.this.f43069b).c(q.this.f43069b, this.f43323a.getPackageName())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(q.this.f43069b).k(q.this.f43069b, this.f43323a.getPackageName());
                            if (!com.join.mgps.Util.d2.i(this.f43323a.getVer()) || k4.d() >= Integer.parseInt(this.f43323a.getVer())) {
                                com.join.android.app.common.utils.a.g0(q.this.f43069b);
                                APKUtils.X(q.this.f43069b, this.f43323a.getPackageName());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(q.this.f43069b).c(q.this.f43069b, this.f43323a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f43323a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(q.this.f43069b);
                            APKUtils.S(q.this.f43069b, this.f43323a.getMod_info());
                            return;
                        }
                    }
                }
                if (UtilsMy.o0(this.f43323a.getPay_tag_info(), this.f43323a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(q.this.f43069b, this.f43323a.getCrc_sign_id());
                } else {
                    UtilsMy.J0(q.this.f43069b, this.f43323a);
                }
            } else {
                int status = downloadTask != null ? downloadTask.getStatus() : 0;
                CollectionBeanSubBusiness collectionBeanSubBusiness = this.f43323a;
                if (collectionBeanSubBusiness != null && UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), this.f43323a.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status != 13) {
                        if (status != 2) {
                            if (status != 3) {
                                if (status == 5) {
                                    UtilsMy.f3(q.this.f43069b, downloadTask, "1");
                                    return;
                                } else if (status != 6) {
                                    if (status != 7) {
                                        if (status == 42) {
                                            if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                return;
                                            }
                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                            downloadTask.setVer(this.f43323a.getVer());
                                            downloadTask.setVer_name(this.f43323a.getVer_name());
                                            downloadTask.setUrl(this.f43323a.getDown_url_remote());
                                            UtilsMy.w3(q.this.f43069b, downloadTask);
                                            return;
                                        } else if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    if (!com.join.android.app.common.utils.f.j(q.this.f43069b)) {
                                                        com.join.mgps.Util.i2.a(q.this.f43069b).b("无网络连接");
                                                        return;
                                                    }
                                                    int downloadType = this.f43323a.getDownloadType();
                                                    if (downloadType == 0 || downloadType == 1) {
                                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                            return;
                                                        }
                                                        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                        if (UtilsMy.T0(q.this.f43069b, downloadTask)) {
                                                            return;
                                                        }
                                                        if (this.f43323a.getDown_status() == 5) {
                                                            UtilsMy.R0(q.this.f43069b, downloadTask);
                                                            return;
                                                        }
                                                        downloadTask.setId(B.getId());
                                                        com.php25.PDownload.d.b(downloadTask);
                                                        downloadTask.setVer(this.f43323a.getVer());
                                                        downloadTask.setVer_name(this.f43323a.getVer_name());
                                                        downloadTask.setUrl(this.f43323a.getDown_url_remote());
                                                        com.php25.PDownload.d.c(downloadTask, q.this.f43069b);
                                                        return;
                                                    } else if (downloadType != 2) {
                                                        if (!com.join.android.app.common.utils.f.j(q.this.f43069b)) {
                                                            com.join.mgps.Util.i2.a(q.this.f43069b).b("无网络连接");
                                                            return;
                                                        } else if (this.f43323a.getDown_status() == 5) {
                                                            UtilsMy.R0(q.this.f43069b, downloadTask);
                                                            return;
                                                        } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                            return;
                                                        } else {
                                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                            com.php25.PDownload.d.b(downloadTask);
                                                            downloadTask.setVer(this.f43323a.getVer());
                                                            downloadTask.setVer_name(this.f43323a.getVer_name());
                                                            downloadTask.setUrl(this.f43323a.getDown_url_remote());
                                                            com.php25.PDownload.d.c(downloadTask, q.this.f43069b);
                                                            return;
                                                        }
                                                    } else {
                                                        UtilsMy.z3(downloadTask);
                                                        return;
                                                    }
                                                case 10:
                                                    break;
                                                case 11:
                                                    UtilsMy.j3(downloadTask, q.this.f43069b);
                                                    return;
                                                default:
                                                    return;
                                            }
                                        }
                                    }
                                }
                            }
                            com.php25.PDownload.d.c(downloadTask, q.this.f43069b);
                            return;
                        }
                        com.php25.PDownload.d.h(downloadTask);
                        return;
                    }
                    com.php25.PDownload.d.k(q.this.f43069b, downloadTask);
                    return;
                }
                q qVar2 = q.this;
                qVar2.q(this.f43326d + 1);
                CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f43323a;
                if (collectionBeanSubBusiness2 != null) {
                    if (UtilsMy.o0(collectionBeanSubBusiness2.getPay_tag_info(), this.f43323a.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(q.this.f43069b, this.f43323a.getCrc_sign_id());
                        return;
                    }
                    MobclickAgent.onEvent(q.this.f43069b, "downloadGame4.2.0.6");
                    UtilsMy.c1(downloadTask, this.f43323a);
                    if (UtilsMy.T0(q.this.f43069b, downloadTask)) {
                        return;
                    }
                    if (this.f43323a.getDown_status() == 5) {
                        UtilsMy.R0(q.this.f43069b, downloadTask);
                    } else {
                        UtilsMy.F0(q.this.f43069b, downloadTask, this.f43323a.getTp_down_url(), this.f43323a.getOther_down_switch(), this.f43323a.getCdn_down_switch());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter1.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        private TextView f43328a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f43329b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f43330c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView f43331d;

        /* renamed from: e  reason: collision with root package name */
        public View f43332e;

        c() {
        }
    }

    /* compiled from: DownloadCenterAdapter1.java */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43334a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43335b;

        /* renamed from: c  reason: collision with root package name */
        RelativeLayout f43336c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43337d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43338e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f43339f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f43340g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f43341h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f43342i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f43343j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f43344k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f43345l;

        /* renamed from: m  reason: collision with root package name */
        public RelativeLayout f43346m;

        /* renamed from: n  reason: collision with root package name */
        ImageView f43347n;

        public d() {
        }
    }

    public q(Activity activity) {
        super(activity);
        this.f43319e = "猜你喜欢";
        this.f43320f = new ArrayList();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't wrap try/catch for region: R(8:43|(3:45|(2:47|(2:49|(2:51|(1:(2:54|13)))))|66)|67|68|69|(1:71)(1:75)|72|73) */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x04b7, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x04b8, code lost:
        r0.printStackTrace();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View l(int r21, android.view.View r22, android.view.ViewGroup r23) {
        /*
            Method dump skipped, instructions count: 1488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.q.l(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    private View n(int i2, View view, ViewGroup viewGroup) {
        View view2;
        c cVar;
        if (view == null) {
            cVar = new c();
            view2 = LayoutInflater.from(this.f43069b).inflate(R.layout.item_download_center_ad_title, (ViewGroup) null);
            cVar.f43328a = (TextView) view2.findViewById(R.id.titleText);
            cVar.f43329b = (TextView) view2.findViewById(R.id.subtitle);
            cVar.f43330c = (LinearLayout) view2.findViewById(R.id.look_other);
            cVar.f43331d = (ImageView) view2.findViewById(R.id.icon);
            cVar.f43332e = view2.findViewById(R.id.line);
            view2.setTag(cVar);
        } else {
            view2 = view;
            cVar = (c) view.getTag();
        }
        try {
            String str = (String) getItem(i2);
            if (!TextUtils.isEmpty(str)) {
                cVar.f43328a.setText(str);
            } else {
                cVar.f43328a.setText("猜你喜欢");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f43069b);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f43069b).getUid());
    }

    @Override // com.join.mgps.adapter.p, android.widget.Adapter
    public int getCount() {
        List<CollectionBeanSubBusiness> list = this.f43320f;
        if (list != null && list.size() > 0) {
            return super.getCount() + 1 + this.f43320f.size();
        }
        return super.getCount();
    }

    @Override // com.join.mgps.adapter.p, android.widget.Adapter
    public Object getItem(int i2) {
        if (p(i2)) {
            int count = i2 - super.getCount();
            if (count == 0) {
                return this.f43319e;
            }
            return this.f43320f.get(count - 1);
        }
        return super.getItem(i2);
    }

    @Override // com.join.mgps.adapter.p, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        if (p(i2)) {
            int count = i2 - super.getCount();
            int viewTypeCount = super.getViewTypeCount();
            return count > 0 ? viewTypeCount + 1 : viewTypeCount;
        }
        return super.getItemViewType(i2);
    }

    @Override // com.join.mgps.adapter.p, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (getItemViewType(i2) == super.getViewTypeCount()) {
            return n(i2, view, viewGroup);
        }
        if (getItemViewType(i2) == super.getViewTypeCount() + 1) {
            return l(i2, view, viewGroup);
        }
        return super.getView(i2, view, viewGroup);
    }

    @Override // com.join.mgps.adapter.p, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 2;
    }

    public String m() {
        return this.f43319e;
    }

    public List<CollectionBeanSubBusiness> o() {
        return this.f43320f;
    }

    boolean p(int i2) {
        List<CollectionBeanSubBusiness> list;
        return i2 - super.getCount() >= 0 && (list = this.f43320f) != null && list.size() > 0;
    }

    public void r(String str) {
        this.f43319e = str;
    }

    public void s(List<CollectionBeanSubBusiness> list) {
        this.f43320f = list;
    }

    void t(d dVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            dVar.f43339f.setVisibility(8);
            dVar.f43344k.setVisibility(8);
            dVar.f43345l.setVisibility(8);
            dVar.f43340g.setVisibility(0);
            dVar.f43338e.setVisibility(0);
            return;
        }
        dVar.f43339f.setVisibility(0);
        if (bool2.booleanValue()) {
            dVar.f43344k.setVisibility(8);
            dVar.f43345l.setVisibility(0);
        } else {
            dVar.f43345l.setVisibility(8);
            dVar.f43344k.setVisibility(0);
        }
        dVar.f43340g.setVisibility(8);
        dVar.f43338e.setVisibility(8);
    }
}
