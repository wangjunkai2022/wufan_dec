package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RankingItemV2Adapter.java */
/* loaded from: classes3.dex */
public class y4 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44582a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44583b;

    /* renamed from: e  reason: collision with root package name */
    private String f44586e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f44587f;

    /* renamed from: c  reason: collision with root package name */
    private List<PAPAHomeBeanV7.HomeBeanDTO> f44584c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f44585d = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f44588g = false;

    /* renamed from: h  reason: collision with root package name */
    private a f44589h = null;

    /* compiled from: RankingItemV2Adapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO);
    }

    /* compiled from: RankingItemV2Adapter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public TextView f44590a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f44591b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44592c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f44593d;

        /* renamed from: e  reason: collision with root package name */
        public LinearLayout f44594e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f44595f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f44596g;

        /* renamed from: h  reason: collision with root package name */
        public ProgressBar f44597h;

        /* renamed from: i  reason: collision with root package name */
        public ProgressBar f44598i;

        /* renamed from: j  reason: collision with root package name */
        public FrameLayout f44599j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f44600k;

        public b() {
        }
    }

    public y4(Context context, String str) {
        this.f44586e = "0";
        this.f44582a = context;
        this.f44583b = LayoutInflater.from(context);
        this.f44586e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, b bVar, int i2, View view) {
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        bVar.f44600k.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        bVar.f44592c.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        a aVar = this.f44589h;
        if (aVar != null) {
            aVar.a(i2, homeBeanDTO);
        }
    }

    private void g(TextView textView, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, boolean z3, boolean z4) {
        if (z3) {
            textView.setVisibility(0);
            linearLayout.setVisibility(8);
            progressBar.setVisibility(8);
            progressBar2.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        textView.setVisibility(8);
        if (z4) {
            progressBar2.setVisibility(0);
            progressBar.setVisibility(8);
            return;
        }
        progressBar.setVisibility(0);
        progressBar2.setVisibility(8);
    }

    public List<PAPAHomeBeanV7.HomeBeanDTO> b() {
        return this.f44584c;
    }

    public void d() {
        this.f44588g = true;
    }

    public void e(a aVar) {
        this.f44589h = aVar;
    }

    public void f(int i2) {
        this.f44585d = i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44584c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (this.f44584c.size() != 0 && i2 < this.f44584c.size()) {
            return this.f44584c.get(i2);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(final int i2, View view, ViewGroup viewGroup) {
        b bVar;
        View view2;
        if (view == null) {
            View inflate = this.f44583b.inflate(R.layout.ranking_listview_item_v2, (ViewGroup) null);
            bVar = new b();
            bVar.f44590a = (TextView) inflate.findViewById(R.id.tvGameName);
            bVar.f44591b = (TextView) inflate.findViewById(R.id.tvTags);
            bVar.f44592c = (TextView) inflate.findViewById(R.id.tvBtn);
            bVar.f44593d = (SimpleDraweeView) inflate.findViewById(R.id.ivGamePic);
            bVar.f44594e = (LinearLayout) inflate.findViewById(R.id.llInfo);
            bVar.f44595f = (TextView) inflate.findViewById(R.id.appSize);
            bVar.f44596g = (TextView) inflate.findViewById(R.id.loding_info);
            bVar.f44597h = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            bVar.f44598i = (ProgressBar) inflate.findViewById(R.id.progressBar);
            bVar.f44599j = (FrameLayout) inflate.findViewById(R.id.flBtn);
            bVar.f44600k = (ProgressBar) inflate.findViewById(R.id.loading_progress);
            inflate.setTag(bVar);
            view2 = inflate;
        } else {
            bVar = (b) view.getTag();
            view2 = view;
        }
        final b bVar2 = bVar;
        final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = this.f44584c.get(i2);
        MyImageLoader.i(bVar2.f44593d, homeBeanDTO.getBig_pic(), r.c.f12144g);
        if (homeBeanDTO.getG_info() != null) {
            bVar2.f44590a.setText(homeBeanDTO.getG_info().getName());
            if (!TextUtils.isEmpty(homeBeanDTO.getG_info().getTag_name())) {
                StringBuilder sb = new StringBuilder();
                String[] split = homeBeanDTO.getG_info().getTag_name().split(",");
                for (int i4 = 0; i4 < split.length; i4++) {
                    sb.append(split[i4]);
                    sb.append(" | ");
                    if (i4 >= 1) {
                        break;
                    }
                }
                bVar2.f44591b.setText(sb.substring(0, sb.length() - 3));
            }
            bVar2.f44592c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.x4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    y4.this.c(homeBeanDTO, bVar2, i2, view3);
                }
            });
        }
        bVar2.f44592c.setVisibility(0);
        bVar2.f44592c.setText("获取");
        bVar2.f44600k.setVisibility(4);
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                bVar2.f44592c.setText("开始");
                bVar2.f44590a.setVisibility(8);
                return view2;
            }
        }
        if (downloadTask == null) {
            g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, true, false);
            if (gameBean == null) {
                return view2;
            }
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f44582a).c(this.f44582a, gameBean.getPackageName()) && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44582a).k(this.f44582a, gameBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(gameBean.getVer()) && k4.d() < Integer.parseInt(gameBean.getVer())) {
                        bVar2.f44592c.setText("更新");
                    } else {
                        bVar2.f44592c.setText("启动");
                    }
                } else {
                    UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                    UtilsMy.t2(bVar2.f44592c, bVar2.f44599j, gameBean);
                }
            } else {
                UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.t2(bVar2.f44592c, bVar2.f44599j, gameBean);
            }
        } else {
            int status = downloadTask.getStatus();
            if (gameBean != null && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    bVar2.f44592c.setText("暂停中");
                } else if (status == 48) {
                    bVar2.f44592c.setText("安装中");
                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, true, false);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    bVar2.f44592c.setText("更新");
                                                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, true, false);
                                                    break;
                                                case 10:
                                                    bVar2.f44592c.setText("等待");
                                                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, false, false);
                                                    TextView textView = bVar2.f44595f;
                                                    textView.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                    try {
                                                        bVar2.f44598i.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    bVar2.f44596g.setText("等待");
                                                    break;
                                                case 11:
                                                    bVar2.f44592c.setText("安装");
                                                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, true, false);
                                                    break;
                                                case 12:
                                                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, false, true);
                                                    TextView textView2 = bVar2.f44595f;
                                                    textView2.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                    bVar2.f44596g.setText("解压中..");
                                                    bVar2.f44597h.setProgress((int) downloadTask.getProgress());
                                                    bVar2.f44592c.setText("解压中");
                                                    break;
                                                case 13:
                                                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, false, true);
                                                    TextView textView3 = bVar2.f44595f;
                                                    textView3.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                    bVar2.f44596g.setText("点击重新解压");
                                                    bVar2.f44597h.setProgress((int) downloadTask.getProgress());
                                                    bVar2.f44592c.setText("解压");
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        bVar2.f44592c.setText("启动");
                        g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, true, true);
                    }
                    bVar2.f44592c.setText("继续");
                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, false, false);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView4 = bVar2.f44595f;
                            textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                        } else {
                            TextView textView5 = bVar2.f44595f;
                            textView5.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                        }
                        bVar2.f44598i.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    bVar2.f44596g.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    bVar2.f44592c.setText("暂停");
                    g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, false, false);
                    if (downloadTask.getSize() == 0) {
                        TextView textView6 = bVar2.f44595f;
                        textView6.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    } else {
                        TextView textView7 = bVar2.f44595f;
                        textView7.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    }
                    bVar2.f44598i.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView8 = bVar2.f44596g;
                    textView8.setText(speed + "/S");
                }
            }
            bVar2.f44592c.setText("获取");
            UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
            UtilsMy.t2(bVar2.f44592c, bVar2.f44599j, gameBean);
            g(bVar2.f44591b, bVar2.f44594e, bVar2.f44598i, bVar2.f44597h, true, false);
        }
        return view2;
    }
}
