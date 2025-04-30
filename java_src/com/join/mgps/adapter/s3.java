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
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.InterceptEventHorizontalScrollView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.GameFactoryListBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* compiled from: PaPaListItemDownloadAdapter.java */
/* loaded from: classes3.dex */
public class s3 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<PaPaBean> f43898a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f43899b;

    /* renamed from: c  reason: collision with root package name */
    private int f43900c;

    /* renamed from: d  reason: collision with root package name */
    private final View.OnClickListener f43901d;

    /* renamed from: e  reason: collision with root package name */
    private View.OnClickListener f43902e;

    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.Adapter<b> {

        /* renamed from: a  reason: collision with root package name */
        private List<AppBean> f43903a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private Context f43904b;

        public a(Context context) {
            this.f43904b = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(b bVar, int i2) {
            c(bVar, this.f43903a.get(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public b onCreateViewHolder(ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.intersting_horiz_listitem, (ViewGroup) null);
            b bVar = new b(inflate);
            bVar.f43906a = (SimpleDraweeView) inflate.findViewById(R.id.image1);
            bVar.f43907b = (TextView) inflate.findViewById(R.id.appname1);
            bVar.f43908c = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.rootView);
            bVar.f43909d = linearLayout;
            linearLayout.setOnClickListener(s3.this.f43902e);
            bVar.f43908c.setOnClickListener(s3.this.f43901d);
            return bVar;
        }

        public void c(b bVar, AppBean appBean) {
            bVar.f43909d.setTag(appBean);
            bVar.f43907b.setText(appBean.getGame_name());
            MyImageLoader.h(bVar.f43906a, appBean.getIco_remote());
            bVar.f43908c.setTag(appBean);
            DownloadTask downloadTask = appBean.getDownloadTask();
            UtilsMy.v2(appBean.getSp_tag_info(), bVar.f43909d, downloadTask);
            String plugin_num = appBean.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                bVar.f43908c.setBackgroundResource(R.drawable.recom_blue_butn);
                bVar.f43908c.setText("开始");
                bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_blue_color));
            } else if (downloadTask == null) {
                if (UtilsMy.e0(appBean.getTag_info())) {
                    boolean c4 = com.join.android.app.common.utils.a.g0(this.f43904b).c(this.f43904b, appBean.getPackageName());
                    if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                        c4 = false;
                    }
                    if (c4) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f43904b).k(this.f43904b, appBean.getPackageName());
                        if (com.join.mgps.Util.d2.i(appBean.getVer()) && k4.d() < Integer.parseInt(appBean.getVer())) {
                            bVar.f43908c.setBackgroundResource(R.drawable.recom_green_butn);
                            bVar.f43908c.setText("更新");
                            bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_green_color));
                            return;
                        }
                        bVar.f43908c.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        bVar.f43908c.setText(this.f43904b.getResources().getString(R.string.download_status_finished));
                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_main_color));
                        return;
                    }
                    bVar.f43908c.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                    UtilsMy.q2(bVar.f43908c, appBean);
                    return;
                }
                bVar.f43908c.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                UtilsMy.q2(bVar.f43908c, appBean);
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        bVar.f43908c.setText("暂停中");
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
                                                        bVar.f43908c.setBackgroundResource(R.drawable.recom_green_butn);
                                                        bVar.f43908c.setText("更新");
                                                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_green_color));
                                                        return;
                                                    case 10:
                                                        bVar.f43908c.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        bVar.f43908c.setText("等待");
                                                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_blue_color));
                                                        return;
                                                    case 11:
                                                        bVar.f43908c.setBackgroundResource(R.drawable.recom_green_butn);
                                                        bVar.f43908c.setText("安装");
                                                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_green_color));
                                                        return;
                                                    case 12:
                                                        bVar.f43908c.setBackgroundResource(R.drawable.extract);
                                                        bVar.f43908c.setText("解压中");
                                                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_grey_color));
                                                        return;
                                                    case 13:
                                                        bVar.f43908c.setBackgroundResource(R.drawable.reextract);
                                                        bVar.f43908c.setText("解压");
                                                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_blue_color));
                                                        return;
                                                    default:
                                                        return;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            bVar.f43908c.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            bVar.f43908c.setText(this.f43904b.getResources().getString(R.string.download_status_finished));
                            bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_main_color));
                            return;
                        }
                        bVar.f43908c.setBackgroundResource(R.drawable.recom_blue_butn);
                        bVar.f43908c.setText("继续");
                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_blue_color));
                        return;
                    } else {
                        UtilsMy.C3(downloadTask);
                        bVar.f43908c.setBackgroundResource(R.drawable.recom_blue_butn);
                        bVar.f43908c.setText("暂停");
                        bVar.f43908c.setTextColor(this.f43904b.getResources().getColor(R.color.app_blue_color));
                        return;
                    }
                }
                bVar.f43908c.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                UtilsMy.q2(bVar.f43908c, appBean);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f43903a.size();
        }

        public void setListDatas(List<AppBean> list) {
            this.f43903a.clear();
            this.f43903a.addAll(list);
        }
    }

    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43906a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43907b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43908c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f43909d;

        public b(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        InterceptEventHorizontalScrollView f43911a;

        c() {
        }
    }

    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43912a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f43913b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43914c;

        /* renamed from: d  reason: collision with root package name */
        public ProgressBar f43915d;

        /* renamed from: e  reason: collision with root package name */
        public ProgressBar f43916e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f43917f;

        /* renamed from: g  reason: collision with root package name */
        private RelativeLayout f43918g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f43919h;

        /* renamed from: i  reason: collision with root package name */
        private LinearLayout f43920i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f43921j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f43922k;

        /* renamed from: l  reason: collision with root package name */
        private LinearLayout f43923l;

        public d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43925a;

        e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        TextView f43926a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43927b;

        f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaListItemDownloadAdapter.java */
    /* loaded from: classes3.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43928a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43929b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43930c;

        g() {
        }
    }

    public s3(Context context, List<PaPaBean> list, View.OnClickListener onClickListener) {
        this.f43900c = 1;
        this.f43899b = context;
        this.f43898a = list;
        this.f43900c = PaPaBean.getTypes() + 1;
        this.f43901d = onClickListener;
    }

    public void c(View.OnClickListener onClickListener) {
        this.f43902e = onClickListener;
    }

    void d(d dVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            dVar.f43920i.setVisibility(8);
            dVar.f43916e.setVisibility(8);
            dVar.f43915d.setVisibility(8);
            dVar.f43917f.setVisibility(0);
            return;
        }
        dVar.f43920i.setVisibility(0);
        if (bool2.booleanValue()) {
            dVar.f43916e.setVisibility(8);
            dVar.f43915d.setVisibility(0);
        } else {
            dVar.f43915d.setVisibility(8);
            dVar.f43916e.setVisibility(0);
        }
        dVar.f43917f.setVisibility(8);
    }

    void e(View view, c cVar, PaPaBean paPaBean) {
        List<AppBean> list = (List) paPaBean.getTypeValue();
        a aVar = (a) view.getTag(R.id.papa_recycleview_adapter);
        if (aVar == null) {
            aVar = new a(this.f43899b);
            view.setTag(R.id.papa_recycleview_adapter, aVar);
        }
        cVar.f43911a.setAdapter(aVar);
        aVar.setListDatas(list);
        aVar.notifyDataSetChanged();
    }

    void f(d dVar, PaPaBean paPaBean) {
        AppBean appBean = (AppBean) paPaBean.getTypeValue();
        MyImageLoader.d(dVar.f43912a, R.drawable.main_normal_icon, appBean.getIco_remote());
        dVar.f43913b.setVisibility(8);
        dVar.f43914c.setText(appBean.getGame_name());
        dVar.f43917f.setText(appBean.getInfo());
        long parseDouble = (long) (Double.parseDouble(appBean.getAppSize()) * 1048576.0d);
        UtilsMy.C(appBean.getScore(), appBean.getDown_count(), appBean.getAppSize(), appBean.getSp_tag_info(), appBean.getTag_info(), dVar.f43923l, this.f43899b);
        DownloadTask downloadTask = appBean.getDownloadTask();
        UtilsMy.v2(appBean.getSp_tag_info(), dVar.f43918g, downloadTask);
        dVar.f43919h.setText("");
        String plugin_num = appBean.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            dVar.f43919h.setBackgroundResource(R.drawable.recom_blue_butn);
            dVar.f43919h.setText("开始");
            dVar.f43919h.setTextColor(this.f43899b.getResources().getColor(R.color.app_blue_color));
            dVar.f43923l.setVisibility(8);
            dVar.f43913b.setVisibility(8);
        } else if (downloadTask == null) {
            d(dVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(appBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f43899b).c(this.f43899b, appBean.getPackageName()) && UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f43899b).k(this.f43899b, appBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(appBean.getVer()) && k4.d() < Integer.parseInt(appBean.getVer())) {
                        dVar.f43919h.setBackgroundResource(R.drawable.recom_green_butn);
                        dVar.f43919h.setText("更新");
                        dVar.f43919h.setTextColor(-9263087);
                    } else {
                        dVar.f43919h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        dVar.f43919h.setText(this.f43899b.getResources().getString(R.string.download_status_finished));
                        dVar.f43919h.setTextColor(-688602);
                    }
                } else {
                    dVar.f43919h.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                    UtilsMy.m2(dVar.f43919h, dVar.f43918g, appBean);
                }
            } else {
                dVar.f43919h.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
                UtilsMy.m2(dVar.f43919h, dVar.f43918g, appBean);
            }
        } else {
            int status = downloadTask.getStatus();
            if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    dVar.f43919h.setText("暂停中");
                } else if (status == 48) {
                    dVar.f43919h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f43919h.setText("安装中");
                    dVar.f43919h.setTextColor(-12941854);
                    d(dVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    dVar.f43919h.setBackgroundResource(R.drawable.recom_green_butn);
                                                    dVar.f43919h.setText("更新");
                                                    dVar.f43919h.setTextColor(-9263087);
                                                    d(dVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    dVar.f43919h.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    dVar.f43919h.setText("等待");
                                                    dVar.f43919h.setTextColor(-12941854);
                                                    Boolean bool = Boolean.FALSE;
                                                    d(dVar, bool, bool);
                                                    TextView textView = dVar.f43921j;
                                                    textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    try {
                                                        dVar.f43916e.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    dVar.f43922k.setText("等待中");
                                                    break;
                                                case 11:
                                                    dVar.f43919h.setBackgroundResource(R.drawable.recom_green_butn);
                                                    dVar.f43919h.setText("安装");
                                                    dVar.f43919h.setTextColor(-9263087);
                                                    d(dVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    d(dVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = dVar.f43921j;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    dVar.f43922k.setText("解压中..");
                                                    dVar.f43915d.setProgress((int) downloadTask.getProgress());
                                                    dVar.f43919h.setBackgroundResource(R.drawable.extract);
                                                    dVar.f43919h.setText("解压中");
                                                    dVar.f43919h.setTextColor(-4868683);
                                                    break;
                                                case 13:
                                                    d(dVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = dVar.f43921j;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    dVar.f43922k.setText("点击重新解压");
                                                    dVar.f43915d.setProgress((int) downloadTask.getProgress());
                                                    dVar.f43919h.setBackgroundResource(R.drawable.reextract);
                                                    dVar.f43919h.setText("解压");
                                                    dVar.f43919h.setTextColor(-12941854);
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        dVar.f43919h.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        dVar.f43919h.setText(this.f43899b.getResources().getString(R.string.download_status_finished));
                        dVar.f43919h.setTextColor(-688602);
                        Boolean bool2 = Boolean.TRUE;
                        d(dVar, bool2, bool2);
                    }
                    dVar.f43919h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f43919h.setText("继续");
                    dVar.f43919h.setTextColor(-12941854);
                    Boolean bool3 = Boolean.FALSE;
                    d(dVar, bool3, bool3);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView4 = dVar.f43921j;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView5 = dVar.f43921j;
                            textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        dVar.f43916e.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    dVar.f43922k.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    dVar.f43919h.setBackgroundResource(R.drawable.recom_blue_butn);
                    dVar.f43919h.setText("暂停");
                    dVar.f43919h.setTextColor(-12941854);
                    Boolean bool4 = Boolean.FALSE;
                    d(dVar, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        TextView textView6 = dVar.f43921j;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    } else {
                        TextView textView7 = dVar.f43921j;
                        textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    }
                    dVar.f43916e.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView8 = dVar.f43922k;
                    textView8.setText(speed + "/S");
                }
            }
            dVar.f43919h.setBackgroundResource(R.drawable.recom_green_butn);
            UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id());
            UtilsMy.m2(dVar.f43919h, dVar.f43918g, appBean);
            d(dVar, Boolean.TRUE, Boolean.FALSE);
        }
        dVar.f43918g.setTag(appBean);
        dVar.f43918g.setOnClickListener(this.f43901d);
    }

    void g(e eVar, PaPaBean paPaBean) {
        List list = (List) paPaBean.getTypeValue();
        if (list == null || list.size() == 0) {
            return;
        }
        if (((GameHeadAd) list.get(0)).getMain().getAd_switch() == 0) {
            eVar.f43925a.setVisibility(8);
            return;
        }
        eVar.f43925a.setVisibility(0);
        if (((GameHeadAd) list.get(0)).getSub() != null && ((GameHeadAd) list.get(0)).getSub().size() > 0) {
            eVar.f43925a.setTag(((GameHeadAd) list.get(0)).getSub().get(0));
            eVar.f43925a.setOnClickListener(this.f43902e);
        }
        MyImageLoader.h(eVar.f43925a, ((GameHeadAd) list.get(0)).getMain().getPic_remote());
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<PaPaBean> list = this.f43898a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43898a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f43898a.get(i2).getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        c cVar;
        g gVar;
        g gVar2;
        c cVar2;
        d dVar2;
        f fVar;
        f fVar2;
        c cVar3;
        f fVar3;
        g gVar3;
        f fVar4;
        HashMap<String, Object> imageHeaderParams;
        int itemViewType = getItemViewType(i2);
        e eVar = null;
        if (view == null) {
            if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value()) {
                e eVar2 = new e();
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_header_image, (ViewGroup) null);
                PaPaBean paPaBean = this.f43898a.get(i2);
                eVar2.f43925a = (SimpleDraweeView) inflate.findViewById(R.id.gameCover);
                if (paPaBean.getImageHeaderParams() != null) {
                    if (paPaBean.getImageHeaderParams().containsKey(PaPaBean.KEY_IMAGE_HEADER_HEIGHT)) {
                        eVar2.f43925a.setLayoutParams(new LinearLayout.LayoutParams(-1, com.join.mgps.Util.b0.a(this.f43899b, ((Integer) imageHeaderParams.get(PaPaBean.KEY_IMAGE_HEADER_HEIGHT)).intValue())));
                    }
                }
                inflate.setTag(eVar2);
                gVar2 = null;
                cVar2 = null;
                dVar2 = null;
                eVar = eVar2;
                view = inflate;
                fVar2 = dVar2;
                cVar3 = cVar2;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value()) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_standalone_rec_title, (ViewGroup) null);
                f fVar5 = new f();
                fVar5.f43927b = (TextView) view.findViewById(R.id.tv_all);
                fVar5.f43926a = (TextView) view.findViewById(R.id.tv_title);
                view.setTag(fVar5);
                fVar4 = fVar5;
                gVar2 = null;
                fVar = fVar4;
                gVar3 = gVar2;
                fVar3 = fVar;
                dVar2 = gVar3;
                cVar3 = gVar3;
                fVar2 = fVar3;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value()) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_gamefactory_list_title, (ViewGroup) null);
                gVar = new g();
                gVar.f43928a = (SimpleDraweeView) view.findViewById(R.id.gameLogo);
                gVar.f43929b = (TextView) view.findViewById(R.id.tv_name);
                gVar.f43930c = (TextView) view.findViewById(R.id.tv_desc);
                view.setTag(gVar);
                gVar2 = gVar;
                fVar3 = null;
                gVar3 = null;
                dVar2 = gVar3;
                cVar3 = gVar3;
                fVar2 = fVar3;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_standalone_rec, (ViewGroup) null);
                cVar = new c();
                cVar.f43911a = (InterceptEventHorizontalScrollView) view.findViewById(R.id.mHorizontalScrollView);
                view.setTag(cVar);
                cVar3 = cVar;
                fVar2 = null;
                gVar2 = null;
                dVar2 = null;
            } else {
                if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                    view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_download_list, (ViewGroup) null);
                    dVar = new d();
                    dVar.f43912a = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
                    dVar.f43913b = (ImageView) view.findViewById(R.id.giftPackageSwich);
                    dVar.f43914c = (TextView) view.findViewById(R.id.mgListviewItemAppname);
                    dVar.f43915d = (ProgressBar) view.findViewById(R.id.progressBarZip);
                    dVar.f43916e = (ProgressBar) view.findViewById(R.id.progressBar);
                    dVar.f43917f = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
                    dVar.f43918g = (RelativeLayout) view.findViewById(R.id.rLayoutRight);
                    dVar.f43919h = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                    dVar.f43920i = (LinearLayout) view.findViewById(R.id.linearLayout2);
                    dVar.f43921j = (TextView) view.findViewById(R.id.appSize);
                    dVar.f43922k = (TextView) view.findViewById(R.id.loding_info);
                    dVar.f43923l = (LinearLayout) view.findViewById(R.id.tipsLayout);
                    view.setTag(dVar);
                    dVar2 = dVar;
                    fVar2 = null;
                    gVar2 = null;
                    cVar3 = null;
                }
                fVar = null;
                gVar2 = null;
                gVar3 = gVar2;
                fVar3 = fVar;
                dVar2 = gVar3;
                cVar3 = gVar3;
                fVar2 = fVar3;
            }
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value()) {
            gVar2 = null;
            cVar2 = null;
            dVar2 = null;
            eVar = (e) view.getTag();
            fVar2 = dVar2;
            cVar3 = cVar2;
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value()) {
            fVar4 = (f) view.getTag();
            gVar2 = null;
            fVar = fVar4;
            gVar3 = gVar2;
            fVar3 = fVar;
            dVar2 = gVar3;
            cVar3 = gVar3;
            fVar2 = fVar3;
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value()) {
            gVar = (g) view.getTag();
            gVar2 = gVar;
            fVar3 = null;
            gVar3 = null;
            dVar2 = gVar3;
            cVar3 = gVar3;
            fVar2 = fVar3;
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
            cVar = (c) view.getTag();
            cVar3 = cVar;
            fVar2 = null;
            gVar2 = null;
            dVar2 = null;
        } else {
            if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                dVar = (d) view.getTag();
                dVar2 = dVar;
                fVar2 = null;
                gVar2 = null;
                cVar3 = null;
            }
            fVar = null;
            gVar2 = null;
            gVar3 = gVar2;
            fVar3 = fVar;
            dVar2 = gVar3;
            cVar3 = gVar3;
            fVar2 = fVar3;
        }
        PaPaBean paPaBean2 = this.f43898a.get(i2);
        if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value()) {
            g(eVar, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value()) {
            h(fVar2, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value()) {
            i(gVar2, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
            e(view, cVar3, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
            f(dVar2, paPaBean2);
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f43900c;
    }

    void h(f fVar, PaPaBean paPaBean) {
        CollectionInfo collectionInfo = (CollectionInfo) paPaBean.getTypeValue();
        fVar.f43926a.setText(collectionInfo.getTitle());
        fVar.f43927b.setTag(collectionInfo);
        fVar.f43927b.setOnClickListener(this.f43902e);
    }

    void i(g gVar, PaPaBean paPaBean) {
        GameFactoryListBean.LogoInfo logoInfo = (GameFactoryListBean.LogoInfo) paPaBean.getTypeValue();
        MyImageLoader.h(gVar.f43928a, logoInfo.getLogo_pic());
        gVar.f43930c.setText(logoInfo.getIntroduce());
        gVar.f43929b.setText(logoInfo.getTitle());
    }
}
