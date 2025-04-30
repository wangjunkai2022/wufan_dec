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
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.customview.InterceptEventHorizontalScrollView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.dto.StandAloneListBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* compiled from: PaPaStandAloneV2Adapter.java */
/* loaded from: classes3.dex */
public class t3 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<PaPaBean> f44080a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f44081b;

    /* renamed from: c  reason: collision with root package name */
    private int f44082c;

    /* renamed from: d  reason: collision with root package name */
    private final View.OnClickListener f44083d;

    /* renamed from: e  reason: collision with root package name */
    private View.OnClickListener f44084e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StandAloneListBean.ListBean f44085a;

        a(StandAloneListBean.ListBean listBean) {
            this.f44085a = listBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(t3.this.f44081b).b(0).c(true).d(this.f44085a.getTitle()).e(Integer.parseInt(this.f44085a.getId())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StandAloneListBean.ListBean f44087a;

        b(StandAloneListBean.ListBean listBean) {
            this.f44087a = listBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(t3.this.f44081b).b(0).c(true).d(this.f44087a.getTitle()).e(Integer.parseInt(this.f44087a.getId())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StandAloneListBean.ListBean f44089a;

        c(StandAloneListBean.ListBean listBean) {
            this.f44089a = listBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(t3.this.f44081b).b(0).c(true).d(this.f44089a.getTitle()).e(Integer.parseInt(this.f44089a.getId())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBean f44091a;

        d(AppBean appBean) {
            this.f44091a = appBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(t3.this.f44081b, this.f44091a.getIntentDataBean());
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class e extends RecyclerView.Adapter<f> {

        /* renamed from: a  reason: collision with root package name */
        private List<AppBean> f44093a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private Context f44094b;

        public e(Context context) {
            this.f44094b = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(f fVar, int i2) {
            c(fVar, this.f44093a.get(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public f onCreateViewHolder(ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_horizontal_item_view, (ViewGroup) null);
            f fVar = new f(inflate);
            fVar.f44096a = (SimpleDraweeView) inflate.findViewById(R.id.image1);
            fVar.f44097b = (TextView) inflate.findViewById(R.id.appname1);
            fVar.f44098c = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.rootView);
            fVar.f44099d = linearLayout;
            linearLayout.setOnClickListener(t3.this.f44084e);
            fVar.f44098c.setOnClickListener(t3.this.f44083d);
            return fVar;
        }

        public void c(f fVar, AppBean appBean) {
            fVar.f44099d.setTag(appBean);
            fVar.f44097b.setText(appBean.getGame_name());
            MyImageLoader.h(fVar.f44096a, appBean.getIco_remote());
            fVar.f44098c.setTag(appBean);
            DownloadTask downloadTask = appBean.getDownloadTask();
            UtilsMy.v2(appBean.getSp_tag_info(), fVar.f44099d, downloadTask);
            String plugin_num = appBean.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                fVar.f44098c.setBackgroundResource(R.drawable.recom_blue_butn);
                fVar.f44098c.setText("开始");
                fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_blue_color));
            } else if (downloadTask == null) {
                appBean.getDownloadtaskDown();
                if (UtilsMy.e0(appBean.getTag_info())) {
                    boolean c4 = com.join.android.app.common.utils.a.g0(this.f44094b).c(this.f44094b, appBean.getPackageName());
                    if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                        c4 = false;
                    }
                    if (c4) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44094b).k(this.f44094b, appBean.getPackageName());
                        if (com.join.mgps.Util.d2.i(appBean.getVer()) && k4.d() < Integer.parseInt(appBean.getVer())) {
                            fVar.f44098c.setBackgroundResource(R.drawable.recom_green_butn);
                            fVar.f44098c.setText("更新");
                            fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_green_color));
                            return;
                        }
                        fVar.f44098c.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        fVar.f44098c.setText(this.f44094b.getResources().getString(R.string.download_status_finished));
                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_main_color));
                        return;
                    }
                    fVar.f44098c.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                    UtilsMy.q2(fVar.f44098c, appBean);
                    return;
                }
                fVar.f44098c.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                UtilsMy.q2(fVar.f44098c, appBean);
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        fVar.f44098c.setText("暂停中");
                        return;
                    } else if (status == 48) {
                        fVar.f44098c.setBackgroundResource(R.drawable.recom_blue_butn);
                        fVar.f44098c.setText("安装中");
                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_blue_color));
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
                                                        fVar.f44098c.setBackgroundResource(R.drawable.recom_green_butn);
                                                        fVar.f44098c.setText("更新");
                                                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_green_color));
                                                        return;
                                                    case 10:
                                                        fVar.f44098c.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        fVar.f44098c.setText("等待");
                                                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_blue_color));
                                                        return;
                                                    case 11:
                                                        fVar.f44098c.setBackgroundResource(R.drawable.recom_green_butn);
                                                        fVar.f44098c.setText("安装");
                                                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_green_color));
                                                        return;
                                                    case 12:
                                                        fVar.f44098c.setBackgroundResource(R.drawable.extract);
                                                        fVar.f44098c.setText("解压中");
                                                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_grey_color));
                                                        return;
                                                    case 13:
                                                        fVar.f44098c.setBackgroundResource(R.drawable.reextract);
                                                        fVar.f44098c.setText("解压");
                                                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_blue_color));
                                                        return;
                                                    default:
                                                        return;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            fVar.f44098c.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            fVar.f44098c.setText(this.f44094b.getResources().getString(R.string.download_status_finished));
                            fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_main_color));
                            return;
                        }
                        fVar.f44098c.setBackgroundResource(R.drawable.recom_blue_butn);
                        fVar.f44098c.setText("继续");
                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_blue_color));
                        return;
                    } else {
                        UtilsMy.C3(downloadTask);
                        fVar.f44098c.setBackgroundResource(R.drawable.recom_blue_butn);
                        TextView textView = fVar.f44098c;
                        textView.setText(((int) downloadTask.getProgress()) + "%");
                        fVar.f44098c.setTextColor(this.f44094b.getResources().getColor(R.color.app_blue_color));
                        return;
                    }
                }
                fVar.f44098c.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                UtilsMy.q2(fVar.f44098c, appBean);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f44093a.size();
        }

        public void setListDatas(List<AppBean> list) {
            this.f44093a.clear();
            this.f44093a.addAll(list);
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class f extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f44096a;

        /* renamed from: b  reason: collision with root package name */
        TextView f44097b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44098c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f44099d;

        public f(View view) {
            super(view);
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class g extends RecyclerView.Adapter<h> {

        /* renamed from: a  reason: collision with root package name */
        private List<StandAloneListBean.ListBean> f44101a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private Context f44102b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PaPaStandAloneV2Adapter.java */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ StandAloneListBean.ListBean f44104a;

            a(StandAloneListBean.ListBean listBean) {
                this.f44104a = listBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PaPaBannerListActivity_.I0(g.this.f44102b).e(1).a(true).b(true).c(this.f44104a.getId()).d(this.f44104a.getTitle()).start();
            }
        }

        public g(Context context) {
            this.f44102b = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public void onBindViewHolder(h hVar, int i2) {
            d(hVar, this.f44101a.get(i2), i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: c */
        public h onCreateViewHolder(ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_company_item_view, (ViewGroup) null);
            h hVar = new h(inflate);
            hVar.f44106a = inflate.findViewById(R.id.standAloneLeftVi);
            hVar.f44107b = (RelativeLayout) inflate.findViewById(R.id.standAloneCompanyRootRl);
            hVar.f44108c = (TextView) inflate.findViewById(R.id.standAloneCompanyTv);
            hVar.f44109d = (SimpleDraweeView) inflate.findViewById(R.id.standAloneCompanyIv);
            hVar.f44110e = inflate.findViewById(R.id.standAloneRightVi);
            return hVar;
        }

        public void d(h hVar, StandAloneListBean.ListBean listBean, int i2) {
            if (i2 == 0) {
                hVar.f44106a.setVisibility(0);
                hVar.f44110e.setVisibility(8);
            } else if (i2 == this.f44101a.size() - 1) {
                hVar.f44106a.setVisibility(8);
                hVar.f44110e.setVisibility(0);
            } else {
                hVar.f44106a.setVisibility(8);
                hVar.f44110e.setVisibility(8);
            }
            hVar.f44108c.setText(listBean.getTitle());
            hVar.f44109d.setImageURI(listBean.getPic());
            hVar.f44107b.setOnClickListener(new a(listBean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f44101a.size();
        }

        public void setListDatas(List<StandAloneListBean.ListBean> list) {
            this.f44101a.clear();
            this.f44101a.addAll(list);
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class h extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f44106a;

        /* renamed from: b  reason: collision with root package name */
        RelativeLayout f44107b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44108c;

        /* renamed from: d  reason: collision with root package name */
        SimpleDraweeView f44109d;

        /* renamed from: e  reason: collision with root package name */
        View f44110e;

        public h(View view) {
            super(view);
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class i {

        /* renamed from: a  reason: collision with root package name */
        private RelativeLayout f44112a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f44113b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f44114c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f44115d;

        /* renamed from: e  reason: collision with root package name */
        public ProgressBar f44116e;

        /* renamed from: f  reason: collision with root package name */
        public ProgressBar f44117f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f44118g;

        /* renamed from: h  reason: collision with root package name */
        private RelativeLayout f44119h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f44120i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f44121j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f44122k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f44123l;

        /* renamed from: m  reason: collision with root package name */
        private LinearLayout f44124m;

        public i() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public static class j {

        /* renamed from: a  reason: collision with root package name */
        InterceptEventHorizontalScrollView f44126a;

        j() {
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        public InterceptEventHorizontalScrollView f44127a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        View f44128a;

        l() {
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    static class m {
        m() {
        }
    }

    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public class n {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f44129a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f44130b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44131c;

        /* renamed from: d  reason: collision with root package name */
        private LinearLayout f44132d;

        /* renamed from: e  reason: collision with root package name */
        private SimpleDraweeView f44133e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44134f;

        /* renamed from: g  reason: collision with root package name */
        private LinearLayout f44135g;

        /* renamed from: h  reason: collision with root package name */
        private SimpleDraweeView f44136h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f44137i;

        public n() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Adapter.java */
    /* loaded from: classes3.dex */
    public static class o {

        /* renamed from: a  reason: collision with root package name */
        TextView f44139a;

        o() {
        }
    }

    public t3(Context context, List<PaPaBean> list, View.OnClickListener onClickListener) {
        this.f44082c = 1;
        this.f44081b = context;
        this.f44080a = list;
        this.f44082c = PaPaBean.getTypes() + 1;
        this.f44083d = onClickListener;
    }

    private void e(i iVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            iVar.f44121j.setVisibility(8);
            iVar.f44117f.setVisibility(8);
            iVar.f44116e.setVisibility(8);
            iVar.f44118g.setVisibility(0);
            return;
        }
        iVar.f44121j.setVisibility(0);
        if (bool2.booleanValue()) {
            iVar.f44117f.setVisibility(8);
            iVar.f44116e.setVisibility(0);
        } else {
            iVar.f44116e.setVisibility(8);
            iVar.f44117f.setVisibility(0);
        }
        iVar.f44118g.setVisibility(8);
    }

    private void f(View view, j jVar, PaPaBean paPaBean) {
        List<StandAloneListBean.ListBean> list = (List) paPaBean.getTypeValue();
        g gVar = (g) view.getTag(R.id.papa_company_recycleview_adapter);
        if (gVar == null) {
            gVar = new g(this.f44081b);
            view.setTag(R.id.papa_company_recycleview_adapter, gVar);
        }
        jVar.f44126a.setAdapter(gVar);
        gVar.setListDatas(list);
        gVar.notifyDataSetChanged();
    }

    private void g(View view, k kVar, PaPaBean paPaBean) {
        List<AppBean> list = (List) paPaBean.getTypeValue();
        e eVar = (e) view.getTag(R.id.papa_recycleview_adapter);
        if (eVar == null) {
            eVar = new e(this.f44081b);
            view.setTag(R.id.papa_recycleview_adapter, eVar);
        }
        kVar.f44127a.setAdapter(eVar);
        eVar.setListDatas(list);
        eVar.notifyDataSetChanged();
    }

    private void h(l lVar, int i2) {
        if (i2 == 0) {
            lVar.f44128a.setVisibility(8);
        } else {
            lVar.f44128a.setVisibility(0);
        }
    }

    private void i(m mVar, PaPaBean paPaBean) {
    }

    private void j(n nVar, PaPaBean paPaBean) {
        List list = (List) paPaBean.getTypeValue();
        nVar.f44129a.setVisibility(4);
        nVar.f44132d.setVisibility(4);
        nVar.f44135g.setVisibility(4);
        for (int i2 = 0; i2 < list.size(); i2++) {
            StandAloneListBean.ListBean listBean = (StandAloneListBean.ListBean) list.get(i2);
            if (i2 == 0) {
                nVar.f44131c.setText(listBean.getTitle());
                nVar.f44130b.setImageURI(listBean.getPic());
                nVar.f44129a.setVisibility(0);
                nVar.f44129a.setOnClickListener(new a(listBean));
            } else if (i2 == 1) {
                nVar.f44134f.setText(listBean.getTitle());
                nVar.f44133e.setImageURI(listBean.getPic());
                nVar.f44132d.setVisibility(0);
                nVar.f44132d.setOnClickListener(new b(listBean));
            } else if (i2 == 2) {
                nVar.f44137i.setText(listBean.getTitle());
                nVar.f44136h.setImageURI(listBean.getPic());
                nVar.f44135g.setVisibility(0);
                nVar.f44135g.setOnClickListener(new c(listBean));
            }
        }
    }

    private void k(o oVar, PaPaBean paPaBean) {
        oVar.f44139a.setText(((CollectionInfo) paPaBean.getTypeValue()).getTitle());
    }

    private void l(i iVar, PaPaBean paPaBean) {
        AppBean appBean = (AppBean) paPaBean.getTypeValue();
        MyImageLoader.d(iVar.f44113b, R.drawable.main_normal_icon, appBean.getIco_remote());
        iVar.f44114c.setVisibility(8);
        iVar.f44115d.setText(appBean.getGame_name());
        iVar.f44118g.setText(appBean.getInfo());
        long parseDouble = (long) (Double.parseDouble(appBean.getAppSize()) * 1048576.0d);
        UtilsMy.C(appBean.getScore(), appBean.getDown_count(), appBean.getAppSize(), appBean.getSp_tag_info(), appBean.getTag_info(), iVar.f44124m, this.f44081b);
        DownloadTask downloadTask = appBean.getDownloadTask();
        UtilsMy.v2(appBean.getSp_tag_info(), iVar.f44119h, downloadTask);
        iVar.f44120i.setText("");
        String plugin_num = appBean.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            iVar.f44120i.setBackgroundResource(R.drawable.recom_blue_butn);
            iVar.f44120i.setText("开始");
            iVar.f44120i.setTextColor(this.f44081b.getResources().getColor(R.color.app_blue_color));
            iVar.f44124m.setVisibility(8);
            iVar.f44114c.setVisibility(8);
        } else if (downloadTask == null) {
            appBean.getDownloadtaskDown();
            e(iVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(appBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f44081b).c(this.f44081b, appBean.getPackageName()) && UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44081b).k(this.f44081b, appBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(appBean.getVer()) && k4.d() < Integer.parseInt(appBean.getVer())) {
                        iVar.f44120i.setBackgroundResource(R.drawable.recom_green_butn);
                        iVar.f44120i.setText("更新");
                        iVar.f44120i.setTextColor(-9263087);
                    } else {
                        iVar.f44120i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        iVar.f44120i.setText(this.f44081b.getResources().getString(R.string.download_status_finished));
                        iVar.f44120i.setTextColor(-688602);
                    }
                } else {
                    iVar.f44120i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                    UtilsMy.m2(iVar.f44120i, iVar.f44119h, appBean);
                }
            } else {
                iVar.f44120i.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                UtilsMy.m2(iVar.f44120i, iVar.f44119h, appBean);
            }
        } else {
            int status = downloadTask.getStatus();
            if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    iVar.f44120i.setText("暂停中");
                } else if (status == 48) {
                    iVar.f44120i.setBackgroundResource(R.drawable.recom_blue_butn);
                    iVar.f44120i.setText("安装中");
                    iVar.f44120i.setTextColor(-12941854);
                    e(iVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    iVar.f44120i.setBackgroundResource(R.drawable.recom_green_butn);
                                                    iVar.f44120i.setText("更新");
                                                    iVar.f44120i.setTextColor(-9263087);
                                                    e(iVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    iVar.f44120i.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    iVar.f44120i.setText("等待");
                                                    iVar.f44120i.setTextColor(-12941854);
                                                    Boolean bool = Boolean.FALSE;
                                                    e(iVar, bool, bool);
                                                    TextView textView = iVar.f44122k;
                                                    textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    try {
                                                        iVar.f44117f.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    iVar.f44123l.setText("等待中");
                                                    break;
                                                case 11:
                                                    iVar.f44120i.setBackgroundResource(R.drawable.recom_green_butn);
                                                    iVar.f44120i.setText("安装");
                                                    iVar.f44120i.setTextColor(-9263087);
                                                    e(iVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    e(iVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = iVar.f44122k;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    iVar.f44123l.setText("解压中..");
                                                    iVar.f44116e.setProgress((int) downloadTask.getProgress());
                                                    iVar.f44120i.setBackgroundResource(R.drawable.extract);
                                                    iVar.f44120i.setText("解压中");
                                                    iVar.f44120i.setTextColor(-4868683);
                                                    break;
                                                case 13:
                                                    e(iVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = iVar.f44122k;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    iVar.f44123l.setText("点击重新解压");
                                                    iVar.f44116e.setProgress((int) downloadTask.getProgress());
                                                    iVar.f44120i.setBackgroundResource(R.drawable.reextract);
                                                    iVar.f44120i.setText("解压");
                                                    iVar.f44120i.setTextColor(-12941854);
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        iVar.f44120i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        iVar.f44120i.setText(this.f44081b.getResources().getString(R.string.download_status_finished));
                        iVar.f44120i.setTextColor(-688602);
                        Boolean bool2 = Boolean.TRUE;
                        e(iVar, bool2, bool2);
                    }
                    iVar.f44120i.setBackgroundResource(R.drawable.recom_blue_butn);
                    iVar.f44120i.setText("继续");
                    iVar.f44120i.setTextColor(-12941854);
                    Boolean bool3 = Boolean.FALSE;
                    e(iVar, bool3, bool3);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView4 = iVar.f44122k;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView5 = iVar.f44122k;
                            textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        iVar.f44117f.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    iVar.f44123l.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    iVar.f44120i.setBackgroundResource(R.drawable.recom_blue_butn);
                    iVar.f44120i.setText("暂停");
                    iVar.f44120i.setTextColor(-12941854);
                    Boolean bool4 = Boolean.FALSE;
                    e(iVar, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        TextView textView6 = iVar.f44122k;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    } else {
                        TextView textView7 = iVar.f44122k;
                        textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    }
                    iVar.f44117f.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView8 = iVar.f44123l;
                    textView8.setText(speed + "/S");
                }
            }
            iVar.f44120i.setBackgroundResource(R.drawable.recom_green_butn);
            UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
            UtilsMy.m2(iVar.f44120i, iVar.f44119h, appBean);
            e(iVar, Boolean.TRUE, Boolean.FALSE);
        }
        iVar.f44119h.setOnClickListener(this.f44083d);
        iVar.f44119h.setTag(appBean);
        iVar.f44112a.setOnClickListener(new d(appBean));
    }

    public void d(View.OnClickListener onClickListener) {
        this.f44084e = onClickListener;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<PaPaBean> list = this.f44080a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f44080a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f44080a.get(i2).getType();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02d8  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r11, android.view.View r12, android.view.ViewGroup r13) {
        /*
            Method dump skipped, instructions count: 800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.t3.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f44082c;
    }
}
