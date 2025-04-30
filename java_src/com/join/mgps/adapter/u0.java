package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
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
/* compiled from: GameAppAdapter.java */
/* loaded from: classes3.dex */
public class u0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44264a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44265b;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f44266c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f44267d = 0;

    /* compiled from: GameAppAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f44268a;

        public a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f44268a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f44268a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f44268a.getTag_info())) {
                    if (this.f44268a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(u0.this.f44264a).c(u0.this.f44264a, this.f44268a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(u0.this.f44264a).k(u0.this.f44264a, this.f44268a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f44268a.getVer()) || k4.d() >= Integer.parseInt(this.f44268a.getVer())) {
                                com.join.android.app.common.utils.a.g0(u0.this.f44264a);
                                APKUtils.X(u0.this.f44264a, this.f44268a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(u0.this.f44264a).c(u0.this.f44264a, this.f44268a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f44268a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(u0.this.f44264a);
                            APKUtils.S(u0.this.f44264a, this.f44268a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(u0.this.f44264a, this.f44268a);
                return;
            }
            String plugin_num = this.f44268a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f44268a.getDown_url_remote());
                UtilsMy.h2(downloadTask, u0.this.f44264a);
                IntentUtil.getInstance().intentActivity(u0.this.f44264a, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f44268a.getPay_tag_info(), this.f44268a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(u0.this.f44264a, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(u0.this.f44264a, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(u0.this.f44264a)) {
                                        com.join.mgps.Util.i2.a(u0.this.f44264a).b("无网络连接");
                                        return;
                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f44268a.getVer());
                                        downloadTask.setVer_name(this.f44268a.getVer_name());
                                        downloadTask.setUrl(this.f44268a.getDown_url_remote());
                                        UtilsMy.w3(u0.this.f44264a, downloadTask);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(u0.this.f44264a)) {
                                                com.join.mgps.Util.i2.a(u0.this.f44264a).b("无网络连接");
                                                return;
                                            } else if (this.f44268a.getDown_status() == 5) {
                                                UtilsMy.R0(u0.this.f44264a, downloadTask);
                                                return;
                                            } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                return;
                                            } else {
                                                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                com.php25.PDownload.d.b(downloadTask);
                                                downloadTask.setVer(this.f44268a.getVer());
                                                downloadTask.setVer_name(this.f44268a.getVer_name());
                                                downloadTask.setUrl(this.f44268a.getDown_url_remote());
                                                com.php25.PDownload.d.c(downloadTask, u0.this.f44264a);
                                                return;
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, u0.this.f44264a);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, u0.this.f44264a);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            if (UtilsMy.o0(this.f44268a.getPay_tag_info(), this.f44268a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(u0.this.f44264a, downloadTask.getCrc_link_type_val());
            } else if (this.f44268a.getDown_status() == 5) {
                UtilsMy.R0(u0.this.f44264a, downloadTask);
            } else {
                UtilsMy.F0(u0.this.f44264a, downloadTask, this.f44268a.getTp_down_url(), this.f44268a.getOther_down_switch(), this.f44268a.getCdn_down_switch());
            }
        }
    }

    /* compiled from: GameAppAdapter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        View f44270a;

        /* renamed from: b  reason: collision with root package name */
        TextView f44271b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f44272c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f44273d;

        /* renamed from: e  reason: collision with root package name */
        SimpleDraweeView f44274e;

        /* renamed from: f  reason: collision with root package name */
        TextView f44275f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f44276g;

        /* renamed from: h  reason: collision with root package name */
        TextView f44277h;

        /* renamed from: i  reason: collision with root package name */
        LinearLayout f44278i;

        /* renamed from: j  reason: collision with root package name */
        TextView f44279j;

        /* renamed from: k  reason: collision with root package name */
        LinearLayout f44280k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f44281l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f44282m;

        /* renamed from: n  reason: collision with root package name */
        public ProgressBar f44283n;

        /* renamed from: o  reason: collision with root package name */
        public ProgressBar f44284o;

        public b() {
        }
    }

    public u0(Context context) {
        this.f44264a = context;
        this.f44265b = LayoutInflater.from(context);
    }

    public List<CollectionBeanSubBusiness> b() {
        return this.f44266c;
    }

    public void c(int i2) {
        this.f44267d = i2;
    }

    void d(b bVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            bVar.f44280k.setVisibility(8);
            bVar.f44283n.setVisibility(8);
            bVar.f44284o.setVisibility(8);
            bVar.f44278i.setVisibility(0);
            bVar.f44279j.setVisibility(0);
            return;
        }
        bVar.f44280k.setVisibility(0);
        if (bool2.booleanValue()) {
            bVar.f44283n.setVisibility(8);
            bVar.f44284o.setVisibility(0);
        } else {
            bVar.f44284o.setVisibility(8);
            bVar.f44283n.setVisibility(0);
        }
        bVar.f44278i.setVisibility(8);
        bVar.f44279j.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44266c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (this.f44266c.size() == 0) {
            return null;
        }
        return this.f44266c.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        View view2;
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f44266c.get(i2);
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        if (view == null) {
            view2 = this.f44265b.inflate(R.layout.classify_listview_item, (ViewGroup) null);
            bVar = new b();
            bVar.f44270a = view2.findViewById(R.id.lineTop);
            bVar.f44271b = (TextView) view2.findViewById(R.id.tvNumber);
            bVar.f44272c = (ImageView) view2.findViewById(R.id.ivNumber);
            bVar.f44273d = (ImageView) view2.findViewById(R.id.giftPackageSwich);
            bVar.f44274e = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
            bVar.f44275f = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
            bVar.f44276g = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
            bVar.f44277h = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
            bVar.f44278i = (LinearLayout) view2.findViewById(R.id.tipsLayout);
            bVar.f44279j = (TextView) view2.findViewById(R.id.mgListviewItemDescribe);
            bVar.f44280k = (LinearLayout) view2.findViewById(R.id.linearLayout2);
            bVar.f44281l = (TextView) view2.findViewById(R.id.appSize);
            bVar.f44282m = (TextView) view2.findViewById(R.id.loding_info);
            bVar.f44283n = (ProgressBar) view2.findViewById(R.id.progressBar);
            bVar.f44284o = (ProgressBar) view2.findViewById(R.id.progressBarZip);
            view2.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
            view2 = view;
        }
        if (i2 == 0 && this.f44267d > 0) {
            bVar.f44270a.setVisibility(0);
        } else {
            bVar.f44270a.setVisibility(8);
        }
        int i4 = i2 + 1;
        if (i4 != 1 && i4 != 2 && i4 != 3) {
            bVar.f44271b.setVisibility(0);
            bVar.f44272c.setVisibility(8);
            TextView textView = bVar.f44271b;
            textView.setText(i4 + "");
            bVar.f44271b.setTextColor(-16777216);
            bVar.f44271b.setTextSize(12.0f);
            bVar.f44271b.getPaint().setFakeBoldText(false);
        } else if (this.f44267d > 0) {
            bVar.f44271b.setVisibility(8);
            bVar.f44272c.setVisibility(0);
            if (i4 == 1) {
                bVar.f44272c.setImageResource(R.drawable.ic_standalone_one);
            } else if (i4 == 2) {
                bVar.f44272c.setImageResource(R.drawable.ic_standalone_two);
            } else if (i4 == 3) {
                bVar.f44272c.setImageResource(R.drawable.ic_standalone_three);
            }
        } else {
            bVar.f44271b.setVisibility(0);
            bVar.f44272c.setVisibility(8);
            TextView textView2 = bVar.f44271b;
            textView2.setText(i4 + "");
            bVar.f44271b.setTextColor(Color.parseColor("#ff9f15"));
            bVar.f44271b.setTextSize(14.0f);
            bVar.f44271b.getPaint().setFakeBoldText(true);
        }
        bVar.f44275f.setText(collectionBeanSubBusiness.getGame_name());
        bVar.f44279j.setText(collectionBeanSubBusiness.getInfo());
        bVar.f44274e.setImageDrawable(this.f44264a.getResources().getDrawable(R.drawable.main_normal_icon));
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            bVar.f44273d.setVisibility(0);
        } else {
            bVar.f44273d.setVisibility(8);
        }
        MyImageLoader.h(bVar.f44274e, collectionBeanSubBusiness.getIco_remote());
        CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f44266c.get(i2);
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness2.getSize()) * 1024.0d * 1024.0d);
        UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness2.getTag_info(), bVar.f44278i, this.f44264a);
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness2.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            bVar.f44277h.setBackgroundResource(R.drawable.recom_blue_butn);
            bVar.f44277h.setText("开始");
            bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
            bVar.f44278i.setVisibility(8);
            bVar.f44273d.setVisibility(8);
        } else if (downloadTask == null) {
            d(bVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness2.getTag_info())) {
                if (UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id()) > 0 ? false : com.join.android.app.common.utils.a.g0(this.f44264a).c(this.f44264a, collectionBeanSubBusiness2.getPackage_name())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44264a).k(this.f44264a, collectionBeanSubBusiness2.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness2.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness2.getVer())) {
                        bVar.f44277h.setBackgroundResource(R.drawable.recom_green_butn);
                        bVar.f44277h.setText("更新");
                        bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_green_color));
                    } else {
                        bVar.f44277h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        bVar.f44277h.setText(this.f44264a.getResources().getString(R.string.download_status_finished));
                        bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_main_color));
                    }
                } else {
                    bVar.f44277h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
                    UtilsMy.n2(bVar.f44277h, bVar.f44276g, collectionBeanSubBusiness2);
                }
            } else {
                bVar.f44277h.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
                UtilsMy.n2(bVar.f44277h, bVar.f44276g, collectionBeanSubBusiness2);
            }
        } else {
            int status = UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id()) > 0 ? 43 : downloadTask.getStatus();
            if (status != 0) {
                if (status == 27) {
                    bVar.f44277h.setText("暂停中");
                } else if (status == 48) {
                    bVar.f44277h.setBackgroundResource(R.drawable.recom_blue_butn);
                    bVar.f44277h.setText("安装中");
                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
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
                                                    bVar.f44277h.setBackgroundResource(R.drawable.recom_green_butn);
                                                    bVar.f44277h.setText("更新");
                                                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_green_color));
                                                    d(bVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    bVar.f44277h.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    bVar.f44277h.setText("等待");
                                                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    d(bVar, bool, bool);
                                                    try {
                                                        TextView textView3 = bVar.f44281l;
                                                        textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        bVar.f44283n.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    bVar.f44282m.setText("等待中");
                                                    break;
                                                case 11:
                                                    bVar.f44277h.setBackgroundResource(R.drawable.recom_green_butn);
                                                    bVar.f44277h.setText("安装");
                                                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_green_color));
                                                    d(bVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    d(bVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView4 = bVar.f44281l;
                                                    textView4.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar.f44282m.setText("解压中..");
                                                    bVar.f44284o.setProgress((int) downloadTask.getProgress());
                                                    bVar.f44277h.setBackgroundResource(R.drawable.extract);
                                                    bVar.f44277h.setText("解压中");
                                                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    d(bVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView5 = bVar.f44281l;
                                                    textView5.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar.f44282m.setText("点击重新解压");
                                                    bVar.f44284o.setProgress((int) downloadTask.getProgress());
                                                    bVar.f44277h.setBackgroundResource(R.drawable.reextract);
                                                    bVar.f44277h.setText("解压");
                                                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        bVar.f44277h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        bVar.f44277h.setText(this.f44264a.getResources().getString(R.string.download_status_finished));
                        bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_main_color));
                        d(bVar, Boolean.TRUE, Boolean.FALSE);
                    }
                    bVar.f44277h.setBackgroundResource(R.drawable.recom_blue_butn);
                    bVar.f44277h.setText("继续");
                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool2 = Boolean.FALSE;
                    d(bVar, bool2, bool2);
                    try {
                        TextView textView6 = bVar.f44281l;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        bVar.f44283n.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    bVar.f44282m.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    bVar.f44277h.setBackgroundResource(R.drawable.recom_blue_butn);
                    bVar.f44277h.setText("暂停");
                    bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    d(bVar, bool3, bool3);
                    TextView textView7 = bVar.f44281l;
                    textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    TextView textView8 = bVar.f44282m;
                    textView8.setText(downloadTask.getSpeed() + "/S");
                    bVar.f44283n.setProgress((int) downloadTask.getProgress());
                }
            }
            bVar.f44277h.setBackgroundResource(R.drawable.recom_blue_butn);
            bVar.f44277h.setTextColor(this.f44264a.getResources().getColor(R.color.app_blue_color));
            UtilsMy.m0(collectionBeanSubBusiness2.getPay_tag_info(), collectionBeanSubBusiness2.getCrc_sign_id());
            UtilsMy.n2(bVar.f44277h, bVar.f44276g, collectionBeanSubBusiness2);
            d(bVar, Boolean.TRUE, Boolean.FALSE);
        }
        bVar.f44276g.setOnClickListener(new a(collectionBeanSubBusiness2));
        return view2;
    }
}
