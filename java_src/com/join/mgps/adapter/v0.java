package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameAppRecyAdapter.java */
/* loaded from: classes3.dex */
public class v0 extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44332a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44333b;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f44334c = new ArrayList();

    /* compiled from: GameAppRecyAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f44335a;

        a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f44335a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f44335a.getCrc_sign_id() != null) {
                IntentUtil.getInstance().intentActivity(v0.this.f44332a, this.f44335a.getIntentDataBean());
            }
        }
    }

    /* compiled from: GameAppRecyAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f44337a;

        public b(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f44337a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f44337a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f44337a.getTag_info())) {
                    if (this.f44337a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(v0.this.f44332a).c(v0.this.f44332a, this.f44337a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(v0.this.f44332a).k(v0.this.f44332a, this.f44337a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f44337a.getVer()) || k4.d() >= Integer.parseInt(this.f44337a.getVer())) {
                                com.join.android.app.common.utils.a.g0(v0.this.f44332a);
                                APKUtils.X(v0.this.f44332a, this.f44337a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(v0.this.f44332a).c(v0.this.f44332a, this.f44337a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f44337a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(v0.this.f44332a);
                            APKUtils.S(v0.this.f44332a, this.f44337a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(v0.this.f44332a, this.f44337a);
                return;
            }
            String plugin_num = this.f44337a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f44337a.getDown_url_remote());
                UtilsMy.h2(downloadTask, v0.this.f44332a);
                IntentUtil.getInstance().intentActivity(v0.this.f44332a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f44337a.getPay_tag_info(), this.f44337a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(v0.this.f44332a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(v0.this.f44332a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(v0.this.f44332a)) {
                                        com.join.mgps.Util.i2.a(v0.this.f44332a).b("无网络连接");
                                        return;
                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f44337a.getVer());
                                        downloadTask.setVer_name(this.f44337a.getVer_name());
                                        downloadTask.setUrl(this.f44337a.getDown_url_remote());
                                        UtilsMy.w3(v0.this.f44332a, downloadTask);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(v0.this.f44332a)) {
                                                com.join.mgps.Util.i2.a(v0.this.f44332a).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(v0.this.f44332a, downloadTask)) {
                                                return;
                                            } else {
                                                if (this.f44337a.getDown_status() == 5) {
                                                    UtilsMy.R0(v0.this.f44332a, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f44337a.getVer());
                                                    downloadTask.setVer_name(this.f44337a.getVer_name());
                                                    downloadTask.setUrl(this.f44337a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, v0.this.f44332a);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, v0.this.f44332a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, v0.this.f44332a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            if (UtilsMy.o0(this.f44337a.getPay_tag_info(), this.f44337a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(v0.this.f44332a, downloadTask.getCrc_link_type_val());
                return;
            }
            UtilsMy.c1(downloadTask, this.f44337a);
            if (UtilsMy.T0(v0.this.f44332a, downloadTask)) {
                return;
            }
            if (this.f44337a.getDown_status() == 5) {
                UtilsMy.R0(v0.this.f44332a, downloadTask);
            } else {
                UtilsMy.F0(v0.this.f44332a, downloadTask, this.f44337a.getTp_down_url(), this.f44337a.getOther_down_switch(), this.f44337a.getCdn_down_switch());
            }
        }
    }

    /* compiled from: GameAppRecyAdapter.java */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f44339a;

        /* renamed from: b  reason: collision with root package name */
        View f44340b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f44341c;

        /* renamed from: d  reason: collision with root package name */
        SimpleDraweeView f44342d;

        /* renamed from: e  reason: collision with root package name */
        TextView f44343e;

        /* renamed from: f  reason: collision with root package name */
        RelativeLayout f44344f;

        /* renamed from: g  reason: collision with root package name */
        TextView f44345g;

        /* renamed from: h  reason: collision with root package name */
        LinearLayout f44346h;

        /* renamed from: i  reason: collision with root package name */
        TextView f44347i;

        /* renamed from: j  reason: collision with root package name */
        LinearLayout f44348j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f44349k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f44350l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f44351m;

        /* renamed from: n  reason: collision with root package name */
        public ProgressBar f44352n;

        public c(View view) {
            super(view);
            this.f44340b = view;
        }
    }

    public v0(Context context) {
        this.f44332a = context;
        this.f44333b = LayoutInflater.from(context);
    }

    public List<CollectionBeanSubBusiness> b() {
        return this.f44334c;
    }

    void c(c cVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            cVar.f44348j.setVisibility(8);
            cVar.f44351m.setVisibility(8);
            cVar.f44352n.setVisibility(8);
            cVar.f44346h.setVisibility(0);
            cVar.f44347i.setVisibility(0);
            return;
        }
        cVar.f44348j.setVisibility(0);
        if (bool2.booleanValue()) {
            cVar.f44351m.setVisibility(8);
            cVar.f44352n.setVisibility(0);
        } else {
            cVar.f44352n.setVisibility(8);
            cVar.f44351m.setVisibility(0);
        }
        cVar.f44346h.setVisibility(8);
        cVar.f44347i.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f44334c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        c cVar = (c) viewHolder;
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f44334c.get(i2);
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        int i4 = i2 + 1;
        if (i4 != 1 && i4 != 2 && i4 != 3) {
            TextView textView = cVar.f44339a;
            textView.setText(i4 + "");
            cVar.f44339a.setTextColor(-16777216);
            cVar.f44339a.setTextSize(12.0f);
            cVar.f44339a.getPaint().setFakeBoldText(false);
        } else {
            TextView textView2 = cVar.f44339a;
            textView2.setText(i4 + "");
            cVar.f44339a.setTextColor(Color.parseColor("#ff9f15"));
            cVar.f44339a.setTextSize(14.0f);
            cVar.f44339a.getPaint().setFakeBoldText(true);
        }
        cVar.f44343e.setText(collectionBeanSubBusiness.getGame_name());
        cVar.f44347i.setText(collectionBeanSubBusiness.getInfo());
        cVar.f44342d.setImageDrawable(this.f44332a.getResources().getDrawable(R.drawable.main_normal_icon));
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            cVar.f44341c.setVisibility(0);
        } else {
            cVar.f44341c.setVisibility(8);
        }
        MyImageLoader.h(cVar.f44342d, collectionBeanSubBusiness.getIco_remote());
        CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f44334c.get(i2);
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness2.getSize()) * 1024.0d * 1024.0d);
        UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), cVar.f44346h, this.f44332a);
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), cVar.f44340b, downloadTask);
        String plugin_num = collectionBeanSubBusiness2.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            cVar.f44345g.setBackgroundResource(R.drawable.recom_blue_butn);
            cVar.f44345g.setText("开始");
            cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
            cVar.f44346h.setVisibility(8);
            cVar.f44341c.setVisibility(8);
        } else if (downloadTask == null) {
            c(cVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness2.getTag_info())) {
                boolean c4 = com.join.android.app.common.utils.a.g0(this.f44332a).c(this.f44332a, collectionBeanSubBusiness2.getPackage_name());
                if (UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id()) > 0) {
                    c4 = false;
                }
                if (c4) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44332a).k(this.f44332a, collectionBeanSubBusiness2.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness2.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness2.getVer())) {
                        cVar.f44345g.setBackgroundResource(R.drawable.recom_green_butn);
                        cVar.f44345g.setText("更新");
                        cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_green_color));
                    } else {
                        cVar.f44345g.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        cVar.f44345g.setText(this.f44332a.getResources().getString(R.string.download_status_finished));
                        cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_main_color));
                    }
                } else {
                    cVar.f44345g.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
                    UtilsMy.n2(cVar.f44345g, cVar.f44344f, collectionBeanSubBusiness2);
                }
            } else {
                cVar.f44345g.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
                UtilsMy.n2(cVar.f44345g, cVar.f44344f, collectionBeanSubBusiness2);
            }
        } else {
            int status = UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id()) > 0 ? 43 : downloadTask.getStatus();
            if (status != 0) {
                if (status == 27) {
                    cVar.f44345g.setText("暂停中");
                } else if (status == 48) {
                    cVar.f44345g.setBackgroundResource(R.drawable.recom_blue_butn);
                    cVar.f44345g.setText("安装中");
                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
                    c(cVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    cVar.f44345g.setBackgroundResource(R.drawable.recom_green_butn);
                                                    cVar.f44345g.setText("更新");
                                                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_green_color));
                                                    c(cVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    cVar.f44345g.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    cVar.f44345g.setText("等待");
                                                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    c(cVar, bool, bool);
                                                    try {
                                                        TextView textView3 = cVar.f44349k;
                                                        textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        cVar.f44351m.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    cVar.f44350l.setText("等待中");
                                                    break;
                                                case 11:
                                                    cVar.f44345g.setBackgroundResource(R.drawable.recom_green_butn);
                                                    cVar.f44345g.setText("安装");
                                                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_green_color));
                                                    c(cVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    c(cVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView4 = cVar.f44349k;
                                                    textView4.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    cVar.f44350l.setText("解压中..");
                                                    cVar.f44352n.setProgress((int) downloadTask.getProgress());
                                                    cVar.f44345g.setBackgroundResource(R.drawable.extract);
                                                    cVar.f44345g.setText("解压中");
                                                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    c(cVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView5 = cVar.f44349k;
                                                    textView5.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    cVar.f44350l.setText("点击重新解压");
                                                    cVar.f44352n.setProgress((int) downloadTask.getProgress());
                                                    cVar.f44345g.setBackgroundResource(R.drawable.reextract);
                                                    cVar.f44345g.setText("解压");
                                                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        cVar.f44345g.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        cVar.f44345g.setText(this.f44332a.getResources().getString(R.string.download_status_finished));
                        cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_main_color));
                        c(cVar, Boolean.TRUE, Boolean.FALSE);
                    }
                    cVar.f44345g.setBackgroundResource(R.drawable.recom_blue_butn);
                    cVar.f44345g.setText("继续");
                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool2 = Boolean.FALSE;
                    c(cVar, bool2, bool2);
                    try {
                        TextView textView6 = cVar.f44349k;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        cVar.f44351m.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    cVar.f44350l.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    cVar.f44345g.setBackgroundResource(R.drawable.recom_blue_butn);
                    cVar.f44345g.setText("暂停");
                    cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    c(cVar, bool3, bool3);
                    TextView textView7 = cVar.f44349k;
                    textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    TextView textView8 = cVar.f44350l;
                    textView8.setText(downloadTask.getSpeed() + "/S");
                    cVar.f44351m.setProgress((int) downloadTask.getProgress());
                }
            }
            cVar.f44345g.setBackgroundResource(R.drawable.recom_blue_butn);
            cVar.f44345g.setTextColor(this.f44332a.getResources().getColor(R.color.app_blue_color));
            UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
            UtilsMy.n2(cVar.f44345g, cVar.f44344f, collectionBeanSubBusiness2);
            c(cVar, Boolean.TRUE, Boolean.FALSE);
        }
        cVar.f44344f.setOnClickListener(new b(collectionBeanSubBusiness2));
        cVar.f44340b.setOnClickListener(new a(collectionBeanSubBusiness));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        View inflate = this.f44333b.inflate(R.layout.classify_listview_item, viewGroup, false);
        c cVar = new c(inflate);
        cVar.f44339a = (TextView) inflate.findViewById(R.id.tvNumber);
        cVar.f44341c = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
        cVar.f44342d = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
        cVar.f44343e = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
        cVar.f44344f = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
        cVar.f44345g = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
        cVar.f44346h = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
        cVar.f44347i = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
        cVar.f44348j = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
        cVar.f44349k = (TextView) inflate.findViewById(R.id.appSize);
        cVar.f44350l = (TextView) inflate.findViewById(R.id.loding_info);
        cVar.f44351m = (ProgressBar) inflate.findViewById(R.id.progressBar);
        cVar.f44352n = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
        return cVar;
    }
}
