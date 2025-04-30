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
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CollectionAdapter.java */
/* loaded from: classes3.dex */
public class i extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f42231a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f42232b;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f42233c = new ArrayList(0);

    /* compiled from: CollectionAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f42234a;

        public a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f42234a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f42234a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f42234a.getTag_info())) {
                    if (this.f42234a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(i.this.f42231a).c(i.this.f42231a, this.f42234a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(i.this.f42231a).k(i.this.f42231a, this.f42234a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f42234a.getVer()) || k4.d() >= Integer.parseInt(this.f42234a.getVer())) {
                                com.join.android.app.common.utils.a.g0(i.this.f42231a);
                                APKUtils.X(i.this.f42231a, this.f42234a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(i.this.f42231a).c(i.this.f42231a, this.f42234a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f42234a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(i.this.f42231a);
                            APKUtils.S(i.this.f42231a, this.f42234a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(i.this.f42231a, this.f42234a);
                return;
            }
            String plugin_num = this.f42234a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f42234a.getDown_url_remote());
                UtilsMy.h2(downloadTask, i.this.f42231a);
                IntentUtil.getInstance().intentActivity(i.this.f42231a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f42234a.getPay_tag_info(), this.f42234a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(i.this.f42231a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(i.this.f42231a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    }
                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                    downloadTask.setVer(this.f42234a.getVer());
                                    downloadTask.setVer_name(this.f42234a.getVer_name());
                                    downloadTask.setUrl(this.f42234a.getDown_url_remote());
                                    UtilsMy.w3(i.this.f42231a, downloadTask);
                                    return;
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(i.this.f42231a)) {
                                                com.join.mgps.Util.i2.a(i.this.f42231a).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(i.this.f42231a, downloadTask)) {
                                                return;
                                            } else {
                                                if (this.f42234a.getDown_status() == 5) {
                                                    UtilsMy.R0(i.this.f42231a, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f42234a.getVer());
                                                    downloadTask.setVer_name(this.f42234a.getVer_name());
                                                    downloadTask.setUrl(this.f42234a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, i.this.f42231a);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, i.this.f42231a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, i.this.f42231a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = this.f42234a;
            if (collectionBeanSubBusiness != null) {
                if (UtilsMy.o0(collectionBeanSubBusiness.getPay_tag_info(), this.f42234a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(i.this.f42231a, downloadTask.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(downloadTask, this.f42234a);
                if (UtilsMy.T0(i.this.f42231a, downloadTask)) {
                    return;
                }
                if (this.f42234a.getDown_status() == 5) {
                    UtilsMy.R0(i.this.f42231a, downloadTask);
                } else {
                    UtilsMy.F0(i.this.f42231a, downloadTask, this.f42234a.getTp_down_url(), this.f42234a.getOther_down_switch(), this.f42234a.getCdn_down_switch());
                }
            }
        }
    }

    /* compiled from: CollectionAdapter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f42236a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f42237b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42238c;

        /* renamed from: d  reason: collision with root package name */
        RelativeLayout f42239d;

        /* renamed from: e  reason: collision with root package name */
        TextView f42240e;

        /* renamed from: f  reason: collision with root package name */
        View f42241f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f42242g;

        /* renamed from: h  reason: collision with root package name */
        LinearLayout f42243h;

        /* renamed from: i  reason: collision with root package name */
        LinearLayout f42244i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f42245j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f42246k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f42247l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f42248m;

        public b() {
        }
    }

    public i(Context context) {
        this.f42231a = context;
        this.f42232b = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public CollectionBeanSubBusiness getItem(int i2) {
        return this.f42233c.get(i2);
    }

    public List<CollectionBeanSubBusiness> c() {
        return this.f42233c;
    }

    void d(b bVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            bVar.f42243h.setVisibility(8);
            bVar.f42247l.setVisibility(8);
            bVar.f42248m.setVisibility(8);
            bVar.f42244i.setVisibility(0);
            bVar.f42242g.setVisibility(0);
            return;
        }
        bVar.f42243h.setVisibility(0);
        if (bool2.booleanValue()) {
            bVar.f42247l.setVisibility(8);
            bVar.f42248m.setVisibility(0);
        } else {
            bVar.f42248m.setVisibility(8);
            bVar.f42247l.setVisibility(0);
        }
        bVar.f42244i.setVisibility(8);
        bVar.f42242g.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42233c.size();
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
            View inflate = this.f42232b.inflate(R.layout.app_listview_item, (ViewGroup) null);
            b bVar2 = new b();
            bVar2.f42236a = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            bVar2.f42237b = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
            bVar2.f42238c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            bVar2.f42239d = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
            bVar2.f42240e = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            bVar2.f42242g = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            bVar2.f42243h = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            bVar2.f42244i = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            bVar2.f42245j = (TextView) inflate.findViewById(R.id.appSize);
            bVar2.f42246k = (TextView) inflate.findViewById(R.id.loding_info);
            bVar2.f42247l = (ProgressBar) inflate.findViewById(R.id.progressBar);
            bVar2.f42248m = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            bVar2.f42241f = inflate.findViewById(R.id.line);
            inflate.setTag(bVar2);
            bVar = bVar2;
            view2 = inflate;
        } else {
            bVar = (b) view.getTag();
            view2 = view;
        }
        bVar.f42241f.setVisibility(0);
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f42233c.get(i2);
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            bVar.f42237b.setVisibility(0);
        } else {
            bVar.f42237b.setVisibility(8);
        }
        bVar.f42238c.setText(collectionBeanSubBusiness.getGame_name());
        bVar.f42242g.setText(collectionBeanSubBusiness.getInfo());
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
        MyImageLoader.h(bVar.f42236a, collectionBeanSubBusiness.getIco_remote().trim());
        UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), bVar.f42244i, this.f42231a);
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            bVar.f42240e.setBackgroundResource(R.drawable.recom_blue_butn);
            bVar.f42240e.setText("开始");
            bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_blue_color));
            bVar.f42244i.setVisibility(8);
            bVar.f42237b.setVisibility(8);
        } else if (downloadTask == null) {
            d(bVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.a.g0(this.f42231a).c(this.f42231a, collectionBeanSubBusiness.getPackage_name()) : false) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f42231a).k(this.f42231a, collectionBeanSubBusiness.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                        bVar.f42240e.setBackgroundResource(R.drawable.recom_green_butn);
                        bVar.f42240e.setText("更新");
                        bVar.f42240e.setTextColor(-9263087);
                    } else {
                        bVar.f42240e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        bVar.f42240e.setText(this.f42231a.getResources().getString(R.string.download_status_finished));
                        bVar.f42240e.setTextColor(-688602);
                    }
                } else {
                    bVar.f42240e.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(bVar.f42240e, bVar.f42239d, collectionBeanSubBusiness);
                }
            } else {
                bVar.f42240e.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.n2(bVar.f42240e, bVar.f42239d, collectionBeanSubBusiness);
            }
        } else {
            com.join.mgps.Util.t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    bVar.f42240e.setText("暂停中");
                } else if (status == 48) {
                    bVar.f42240e.setBackgroundResource(R.drawable.recom_blue_butn);
                    bVar.f42240e.setText("安装中");
                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_blue_color));
                    d(bVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    bVar.f42240e.setBackgroundResource(R.drawable.recom_green_butn);
                                                    bVar.f42240e.setText("更新");
                                                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_green_color));
                                                    d(bVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    bVar.f42240e.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    bVar.f42240e.setText("等待");
                                                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    d(bVar, bool, bool);
                                                    TextView textView = bVar.f42245j;
                                                    textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    try {
                                                        bVar.f42247l.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    bVar.f42246k.setText("等待中");
                                                    break;
                                                case 11:
                                                    bVar.f42240e.setBackgroundResource(R.drawable.recom_green_butn);
                                                    bVar.f42240e.setText("安装");
                                                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_green_color));
                                                    d(bVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    d(bVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = bVar.f42245j;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar.f42246k.setText("解压中..");
                                                    bVar.f42248m.setProgress((int) downloadTask.getProgress());
                                                    bVar.f42240e.setBackgroundResource(R.drawable.extract);
                                                    bVar.f42240e.setText("解压中");
                                                    bVar.f42240e.setTextColor(-4868683);
                                                    break;
                                                case 13:
                                                    d(bVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = bVar.f42245j;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar.f42246k.setText("点击重新解压");
                                                    bVar.f42248m.setProgress((int) downloadTask.getProgress());
                                                    bVar.f42240e.setBackgroundResource(R.drawable.reextract);
                                                    bVar.f42240e.setText("解压");
                                                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        bVar.f42240e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        bVar.f42240e.setText(this.f42231a.getResources().getString(R.string.download_status_finished));
                        bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_main_color));
                        Boolean bool2 = Boolean.TRUE;
                        d(bVar, bool2, bool2);
                    }
                    bVar.f42240e.setBackgroundResource(R.drawable.recom_blue_butn);
                    bVar.f42240e.setText("继续");
                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    d(bVar, bool3, bool3);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView4 = bVar.f42245j;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView5 = bVar.f42245j;
                            textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        bVar.f42247l.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    bVar.f42246k.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    bVar.f42240e.setBackgroundResource(R.drawable.recom_blue_butn);
                    bVar.f42240e.setText("暂停");
                    bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool4 = Boolean.FALSE;
                    d(bVar, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        TextView textView6 = bVar.f42245j;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    } else {
                        TextView textView7 = bVar.f42245j;
                        textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    }
                    bVar.f42247l.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView8 = bVar.f42246k;
                    textView8.setText(speed + "/S");
                }
            }
            bVar.f42240e.setBackgroundResource(R.drawable.recom_blue_butn);
            UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
            UtilsMy.n2(bVar.f42240e, bVar.f42239d, collectionBeanSubBusiness);
            bVar.f42240e.setTextColor(this.f42231a.getResources().getColor(R.color.app_blue_color));
            d(bVar, Boolean.TRUE, Boolean.FALSE);
        }
        bVar.f42239d.setOnClickListener(new a(collectionBeanSubBusiness));
        return view2;
    }
}
