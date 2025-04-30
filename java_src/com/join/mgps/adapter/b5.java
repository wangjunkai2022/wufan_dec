package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
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
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.SearchResultAdinfo;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SearchAppAdapter.java */
/* loaded from: classes3.dex */
public class b5 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f41330a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f41331b;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f41332c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private String f41333d;

    /* renamed from: e  reason: collision with root package name */
    SearchResultAdinfo f41334e;

    /* renamed from: f  reason: collision with root package name */
    d f41335f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f41336a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f41337b;

        a(List list, CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41336a = list;
            this.f41337b = collectionBeanSubBusiness;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(b5.this.f41330a, ImagePagerActivity.class);
                String[] strArr = new String[this.f41336a.size()];
                for (int i4 = 0; i4 < this.f41336a.size(); i4++) {
                    strArr[i4] = (String) this.f41336a.get(i4);
                }
                if (com.join.mgps.Util.d2.i(this.f41337b.getVedio_url()) && i2 == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.n(this.f41337b.getVedio_url());
                    videoInfo.h(strArr[0]);
                    FullScreenActivity_.G0(b5.this.f41330a).a(videoInfo).start();
                    return;
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", i2);
                b5.this.f41330a.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f41339a;

        b(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41339a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41339a.getCrc_sign_id() != null) {
                IntentUtil.getInstance().goGameDetialActivity(b5.this.f41330a, this.f41339a.getCrc_sign_id(), this.f41339a.getGame_info_tpl_type(), this.f41339a.getSp_tpl_two_position(), 112);
                d dVar = b5.this.f41335f;
                if (dVar != null) {
                    dVar.b(this.f41339a.getCrc_sign_id());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f41341a;

        public c(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f41341a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f41341a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f41341a.getTag_info())) {
                    if (this.f41341a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(b5.this.f41330a).c(b5.this.f41330a, this.f41341a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(b5.this.f41330a).k(b5.this.f41330a, this.f41341a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f41341a.getVer()) || k4.d() >= Integer.parseInt(this.f41341a.getVer())) {
                                com.join.android.app.common.utils.a.g0(b5.this.f41330a);
                                APKUtils.X(b5.this.f41330a, this.f41341a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(b5.this.f41330a).c(b5.this.f41330a, this.f41341a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f41341a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(b5.this.f41330a);
                            APKUtils.S(b5.this.f41330a, this.f41341a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(b5.this.f41330a, this.f41341a);
                return;
            }
            String plugin_num = this.f41341a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f41341a.getDown_url_remote());
                UtilsMy.h2(downloadTask, b5.this.f41330a);
                IntentUtil.getInstance().intentActivity(b5.this.f41330a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f41341a.getPay_tag_info(), this.f41341a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(b5.this.f41330a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(b5.this.f41330a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    }
                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                    downloadTask.setVer(this.f41341a.getVer());
                                    downloadTask.setVer_name(this.f41341a.getVer_name());
                                    downloadTask.setUrl(this.f41341a.getDown_url_remote());
                                    downloadTask.setKeyword(b5.this.f41333d);
                                    UtilsMy.w3(b5.this.f41330a, downloadTask);
                                    return;
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(b5.this.f41330a)) {
                                                com.join.mgps.Util.i2.a(b5.this.f41330a).b("无网络连接");
                                                return;
                                            } else if (UtilsMy.T0(b5.this.f41330a, downloadTask)) {
                                                return;
                                            } else {
                                                if (this.f41341a.getDown_status() == 5) {
                                                    UtilsMy.R0(b5.this.f41330a, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f41341a.getVer());
                                                    downloadTask.setVer_name(this.f41341a.getVer_name());
                                                    downloadTask.setUrl(this.f41341a.getDown_url_remote());
                                                    downloadTask.setKeyword(b5.this.f41333d);
                                                    com.php25.PDownload.d.c(downloadTask, b5.this.f41330a);
                                                    return;
                                                }
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, b5.this.f41330a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    downloadTask.setKeyword(b5.this.f41333d);
                    com.php25.PDownload.d.c(downloadTask, b5.this.f41330a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            downloadTask.setKeyword(b5.this.f41333d);
            if (UtilsMy.o0(this.f41341a.getPay_tag_info(), this.f41341a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(b5.this.f41330a, downloadTask.getCrc_link_type_val());
            } else {
                UtilsMy.c1(downloadTask, this.f41341a);
                if (!UtilsMy.T0(b5.this.f41330a, downloadTask)) {
                    if (this.f41341a.getDown_status() == 5) {
                        UtilsMy.R0(b5.this.f41330a, downloadTask);
                    } else {
                        UtilsMy.F0(b5.this.f41330a, downloadTask, this.f41341a.getTp_down_url(), this.f41341a.getOther_down_switch(), this.f41341a.getCdn_down_switch());
                    }
                }
            }
            d dVar = b5.this.f41335f;
            if (dVar != null) {
                dVar.b(downloadTask.getCrc_link_type_val());
            }
        }
    }

    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public interface d {
        void b(String str);
    }

    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41343a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f41344b;

        /* renamed from: c  reason: collision with root package name */
        TextView f41345c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41346d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f41347e;

        /* renamed from: f  reason: collision with root package name */
        TextView f41348f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f41349g;

        /* renamed from: h  reason: collision with root package name */
        TextView f41350h;

        /* renamed from: i  reason: collision with root package name */
        LinearLayout f41351i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f41352j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f41353k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f41354l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f41355m;

        /* renamed from: n  reason: collision with root package name */
        RelativeLayout f41356n;

        /* renamed from: o  reason: collision with root package name */
        View f41357o;

        public e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public class f {

        /* renamed from: a  reason: collision with root package name */
        TextView f41359a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41360b;

        public f(View view) {
            this.f41359a = (TextView) view.findViewById(R.id.tips);
            this.f41360b = (TextView) view.findViewById(R.id.titleText);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchAppAdapter.java */
    /* loaded from: classes3.dex */
    public class g {

        /* renamed from: a  reason: collision with root package name */
        HListView f41362a;

        public g(View view) {
            this.f41362a = (HListView) view.findViewById(R.id.screenListView);
        }
    }

    public b5(Context context) {
        this.f41330a = context;
    }

    public List<CollectionBeanSubBusiness> c() {
        return this.f41332c;
    }

    public View d(int i2, View view, ViewGroup viewGroup) {
        e eVar;
        View view2;
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f41332c.get(i2);
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        if (view == null) {
            view2 = this.f41331b.inflate(R.layout.app_listview_item2, (ViewGroup) null);
            eVar = new e();
            eVar.f41343a = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
            eVar.f41344b = (ImageView) view2.findViewById(R.id.giftPackageSwich);
            eVar.f41345c = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
            eVar.f41346d = (TextView) view2.findViewById(R.id.adText);
            eVar.f41356n = (RelativeLayout) view2.findViewById(R.id.relateLayoutApp);
            eVar.f41347e = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
            eVar.f41348f = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
            eVar.f41349g = (LinearLayout) view2.findViewById(R.id.tipsLayout);
            eVar.f41350h = (TextView) view2.findViewById(R.id.mgListviewItemDescribe);
            eVar.f41346d = (TextView) view2.findViewById(R.id.adText);
            eVar.f41351i = (LinearLayout) view2.findViewById(R.id.linearLayout2);
            eVar.f41352j = (TextView) view2.findViewById(R.id.appSize);
            eVar.f41353k = (TextView) view2.findViewById(R.id.loding_info);
            eVar.f41354l = (ProgressBar) view2.findViewById(R.id.progressBar);
            eVar.f41355m = (ProgressBar) view2.findViewById(R.id.progressBarZip);
            eVar.f41357o = view2.findViewById(R.id.line);
            view2.setTag(eVar);
        } else {
            eVar = (e) view.getTag();
            view2 = view;
        }
        eVar.f41357o.setVisibility(8);
        eVar.f41345c.setText(collectionBeanSubBusiness.getGame_name());
        eVar.f41350h.setText(collectionBeanSubBusiness.getInfo());
        eVar.f41356n.setOnClickListener(new b(collectionBeanSubBusiness));
        MyImageLoader.h(eVar.f41343a, collectionBeanSubBusiness.getIco_remote().trim());
        CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f41332c.get(i2);
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            eVar.f41344b.setVisibility(0);
        } else {
            eVar.f41344b.setVisibility(8);
        }
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness2.getSize()) * 1024.0d * 1024.0d);
        if (collectionBeanSubBusiness.isAd()) {
            UtilsMy.F(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), eVar.f41349g, this.f41330a);
        } else {
            UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), eVar.f41349g, this.f41330a);
        }
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            eVar.f41348f.setBackgroundResource(R.drawable.recom_blue_butn);
            eVar.f41348f.setText("开始");
            eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_blue_color));
            eVar.f41349g.setVisibility(8);
            eVar.f41344b.setVisibility(8);
        } else if (downloadTask == null) {
            i(eVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness2.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f41330a).c(this.f41330a, collectionBeanSubBusiness2.getPackage_name()) && UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f41330a).k(this.f41330a, collectionBeanSubBusiness2.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness2.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness2.getVer())) {
                        eVar.f41348f.setBackgroundResource(R.drawable.recom_green_butn);
                        eVar.f41348f.setText("更新");
                        eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_green_color));
                    } else {
                        eVar.f41348f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        eVar.f41348f.setText(this.f41330a.getResources().getString(R.string.download_status_finished));
                        eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_main_color));
                    }
                } else {
                    eVar.f41348f.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
                    UtilsMy.n2(eVar.f41348f, eVar.f41347e, collectionBeanSubBusiness2);
                }
            } else {
                eVar.f41348f.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
                UtilsMy.n2(eVar.f41348f, eVar.f41347e, collectionBeanSubBusiness2);
            }
        } else {
            int status = downloadTask.getStatus();
            if (UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    eVar.f41348f.setText("暂停中");
                } else if (status == 48) {
                    eVar.f41348f.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar.f41348f.setText("安装中");
                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_blue_color));
                    i(eVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    eVar.f41348f.setBackgroundResource(R.drawable.recom_green_butn);
                                                    eVar.f41348f.setText("更新");
                                                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_green_color));
                                                    i(eVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    eVar.f41348f.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    eVar.f41348f.setText("等待");
                                                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    i(eVar, bool, bool);
                                                    try {
                                                        TextView textView = eVar.f41352j;
                                                        textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        eVar.f41354l.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    eVar.f41353k.setText("等待中");
                                                    break;
                                                case 11:
                                                    eVar.f41348f.setBackgroundResource(R.drawable.recom_green_butn);
                                                    eVar.f41348f.setText("安装");
                                                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_green_color));
                                                    i(eVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    i(eVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = eVar.f41352j;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    eVar.f41353k.setText("解压中..");
                                                    eVar.f41355m.setProgress((int) downloadTask.getProgress());
                                                    eVar.f41348f.setBackgroundResource(R.drawable.extract);
                                                    eVar.f41348f.setText("解压中");
                                                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    i(eVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = eVar.f41352j;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    eVar.f41353k.setText("点击重新解压");
                                                    eVar.f41355m.setProgress((int) downloadTask.getProgress());
                                                    eVar.f41348f.setBackgroundResource(R.drawable.reextract);
                                                    eVar.f41348f.setText("解压");
                                                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        eVar.f41348f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        eVar.f41348f.setText(this.f41330a.getResources().getString(R.string.download_status_finished));
                        eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_main_color));
                        i(eVar, Boolean.TRUE, Boolean.FALSE);
                    }
                    eVar.f41348f.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar.f41348f.setText("继续");
                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool2 = Boolean.FALSE;
                    i(eVar, bool2, bool2);
                    try {
                        TextView textView4 = eVar.f41352j;
                        textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        eVar.f41354l.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    eVar.f41353k.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    eVar.f41348f.setBackgroundResource(R.drawable.recom_blue_butn);
                    eVar.f41348f.setText("暂停");
                    eVar.f41348f.setTextColor(this.f41330a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    i(eVar, bool3, bool3);
                    TextView textView5 = eVar.f41352j;
                    textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    TextView textView6 = eVar.f41353k;
                    textView6.setText(downloadTask.getSpeed() + "/S");
                    eVar.f41354l.setProgress((int) downloadTask.getProgress());
                }
            }
            eVar.f41348f.setBackgroundResource(R.drawable.recom_green_butn);
            UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
            UtilsMy.n2(eVar.f41348f, eVar.f41347e, collectionBeanSubBusiness2);
            i(eVar, Boolean.TRUE, Boolean.FALSE);
        }
        eVar.f41347e.setOnClickListener(new c(collectionBeanSubBusiness2));
        return view2;
    }

    public View e(int i2, View view, ViewGroup viewGroup) {
        g gVar;
        boolean z3;
        if (view == null) {
            view = LayoutInflater.from(this.f41330a).inflate(R.layout.gamedetail_item_viewpage1, (ViewGroup) null);
            gVar = new g(view);
            view.setTag(gVar);
        } else {
            gVar = (g) view.getTag();
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) getItem(i2);
        ArrayList arrayList = new ArrayList();
        if (arrayList.size() == 0) {
            if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVedio_cover_pic()) && com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVedio_url())) {
                arrayList.add(collectionBeanSubBusiness.getVedio_cover_pic());
                z3 = true;
            } else {
                z3 = false;
            }
            List<DetialShowImageBean> pic_info = collectionBeanSubBusiness.getPic_info();
            if (pic_info != null) {
                for (int i4 = 0; i4 < pic_info.size(); i4++) {
                    arrayList.add(pic_info.get(i4).getRemote().getPath());
                }
            }
            if (arrayList.size() == 0) {
                gVar.f41362a.setVisibility(8);
            } else {
                gVar.f41362a.setVisibility(0);
                int pic_position = collectionBeanSubBusiness.getPic_position();
                gVar.f41362a.setAdapter((ListAdapter) new x0(this.f41330a, pic_position, arrayList, z3));
                if (pic_position == 1) {
                    gVar.f41362a.setDividerWidth(this.f41330a.getResources().getDimensionPixelSize(R.dimen.wdp10));
                    gVar.f41362a.postInvalidate();
                } else {
                    gVar.f41362a.setDividerWidth(this.f41330a.getResources().getDimensionPixelSize(R.dimen.wdp20));
                    gVar.f41362a.postInvalidate();
                }
                gVar.f41362a.setOnItemClickListener(new a(arrayList, collectionBeanSubBusiness));
            }
        }
        return view;
    }

    public View f(int i2, View view, ViewGroup viewGroup) {
        f fVar;
        String str;
        if (view == null) {
            view = LayoutInflater.from(this.f41330a).inflate(R.layout.search_ad_title_view, (ViewGroup) null, false);
            fVar = new f(view);
            view.setTag(fVar);
        } else {
            fVar = (f) view.getTag();
        }
        SearchResultAdinfo searchResultAdinfo = this.f41334e;
        if (searchResultAdinfo != null) {
            fVar.f41359a.setText(searchResultAdinfo.getLabel());
            int length = this.f41334e.getLabel().length();
            if (length == 2) {
                str = "\u3000\u3000 ";
            } else if (length == 3) {
                str = "\u3000\u3000\u3000";
            } else if (length == 4) {
                str = "\u3000\u3000\u3000\u3000";
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(" ");
                int i4 = ((length * 2) / 3) + 1;
                String str2 = "";
                for (int i5 = 0; i5 < i4; i5++) {
                    stringBuffer.append("\u3000");
                    str2 = stringBuffer.toString();
                }
                str = str2;
            }
            TextView textView = fVar.f41360b;
            textView.setText(str + this.f41334e.getTitle());
        }
        return view;
    }

    public void g(SearchResultAdinfo searchResultAdinfo) {
        this.f41334e = searchResultAdinfo;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41332c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (this.f41332c.size() == 0) {
            return null;
        }
        return this.f41332c.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return ((CollectionBeanSubBusiness) getItem(i2)).getViewType();
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType;
        try {
            itemViewType = getItemViewType(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (itemViewType == 0) {
            return d(i2, view, viewGroup);
        }
        if (itemViewType == 1) {
            return e(i2, view, viewGroup);
        }
        if (itemViewType == 2) {
            return f(i2, view, viewGroup);
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    public void h(d dVar) {
        this.f41335f = dVar;
    }

    void i(e eVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            eVar.f41351i.setVisibility(8);
            eVar.f41354l.setVisibility(8);
            eVar.f41355m.setVisibility(8);
            eVar.f41349g.setVisibility(0);
            eVar.f41350h.setVisibility(0);
            return;
        }
        eVar.f41351i.setVisibility(0);
        if (bool2.booleanValue()) {
            eVar.f41354l.setVisibility(8);
            eVar.f41355m.setVisibility(0);
        } else {
            eVar.f41355m.setVisibility(8);
            eVar.f41354l.setVisibility(0);
        }
        eVar.f41349g.setVisibility(8);
        eVar.f41350h.setVisibility(8);
    }

    public b5(Context context, String str) {
        this.f41330a = context;
        this.f41331b = LayoutInflater.from(context);
        this.f41333d = str;
    }
}
