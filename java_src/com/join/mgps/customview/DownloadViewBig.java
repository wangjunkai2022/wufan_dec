package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadPointBase;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.Where;
/* loaded from: classes3.dex */
public class DownloadViewBig extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private RelativeLayout f45329a;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f45330b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f45331c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f45332d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f45333e;

    /* renamed from: f  reason: collision with root package name */
    private ProgressBar f45334f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f45335g;

    /* renamed from: h  reason: collision with root package name */
    private PayTagInfo f45336h;

    /* renamed from: i  reason: collision with root package name */
    private int f45337i;

    /* renamed from: j  reason: collision with root package name */
    private ModInfoBean f45338j;

    /* renamed from: k  reason: collision with root package name */
    private String f45339k;

    /* renamed from: l  reason: collision with root package name */
    private DownloadTask f45340l;

    /* renamed from: m  reason: collision with root package name */
    private CollectionBeanSub f45341m;

    /* renamed from: n  reason: collision with root package name */
    private int f45342n;

    /* renamed from: o  reason: collision with root package name */
    private int f45343o;

    /* renamed from: p  reason: collision with root package name */
    private String f45344p;

    /* renamed from: q  reason: collision with root package name */
    private String f45345q;

    /* renamed from: r  reason: collision with root package name */
    private String f45346r;

    public DownloadViewBig(Context context) {
        super(context);
        this.f45342n = 0;
        this.f45343o = 0;
        this.f45344p = "";
        this.f45345q = "";
        this.f45346r = "";
        c(context);
    }

    private void c(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.install_button_big_layout, this);
        this.f45329a = (RelativeLayout) inflate.findViewById(R.id.instalbutnLayout);
        this.f45330b = (RelativeLayout) inflate.findViewById(R.id.progressbarLayout);
        this.f45331c = (TextView) inflate.findViewById(R.id.instalButtomButn);
        this.f45332d = (TextView) inflate.findViewById(R.id.moneyText);
        this.f45333e = (TextView) inflate.findViewById(R.id.percent);
        this.f45334f = (ProgressBar) inflate.findViewById(R.id.butnProgressBar);
        this.f45335g = (ImageView) inflate.findViewById(R.id.butn_showdownload);
    }

    public void a(DownloadTask downloadTask, CollectionBeanSub collectionBeanSub) {
        setCoin(collectionBeanSub.getSp_tag_info(), downloadTask);
        this.f45341m = collectionBeanSub;
        this.f45339k = collectionBeanSub.getGame_id();
        this.f45336h = collectionBeanSub.getPay_tag_info();
        this.f45340l = downloadTask;
        this.f45337i = collectionBeanSub.getDown_status();
        this.f45331c.setOnClickListener(this);
        g(downloadTask);
        this.f45342n = collectionBeanSub.get_from();
        this.f45343o = collectionBeanSub.get_from_type();
        this.f45344p = collectionBeanSub.getRecPosition();
        this.f45345q = collectionBeanSub.getReMarks();
        this.f45346r = collectionBeanSub.getNodeId();
        this.f45338j = collectionBeanSub.getMod_info();
    }

    @Deprecated
    public void b(String str, TipNew tipNew, PayTagInfo payTagInfo, DownloadTask downloadTask, int i2, DownloadPointBase downloadPointBase, ModInfoBean modInfoBean) {
        setCoin(tipNew, downloadTask);
        this.f45336h = payTagInfo;
        this.f45339k = str;
        this.f45340l = downloadTask;
        this.f45337i = i2;
        setOnClickListener(this);
        g(downloadTask);
        this.f45342n = downloadPointBase.get_from();
        this.f45343o = downloadPointBase.get_from_type();
        this.f45338j = modInfoBean;
        this.f45346r = downloadPointBase.getNodeId();
        this.f45345q = downloadPointBase.getReMarks();
    }

    public void d(DownloadTask downloadTask) {
        if (downloadTask != null) {
            if (("" + downloadTask.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                IntentUtil.getInstance().goShareWebActivity(getContext(), downloadTask.getPortraitURL());
                UtilsMy.h2(downloadTask, getContext());
            }
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (downloadTask != null && UtilsMy.m0(this.f45336h, downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (downloadTask == null) {
            if (this.f45341m != null) {
                UtilsMy.J0(getContext(), this.f45341m);
                return;
            } else if (this.f45338j == null) {
                UtilsMy.N0(getContext(), this.f45339k, "", this.f45342n, this.f45343o, this.f45344p, this.f45345q, this.f45346r, this.f45341m.getPosition_path(), false);
                return;
            } else {
                UtilsMy.N0(getContext(), this.f45338j.getMod_game_id(), "", this.f45342n, this.f45343o, this.f45344p, this.f45345q, this.f45346r, this.f45341m.getPosition_path(), false);
                return;
            }
        }
        if (status == 2 || status == 10) {
            com.php25.PDownload.d.h(downloadTask);
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(getContext(), downloadTask);
                return;
            } else if (status == 3 || status == 6) {
                com.php25.PDownload.d.c(downloadTask, getContext());
            } else if (status == 5) {
                UtilsMy.c3(getContext(), downloadTask);
            } else if (status == 9) {
                if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("") || UtilsMy.T0(getContext(), downloadTask)) {
                    return;
                }
                if (this.f45337i == 5) {
                    UtilsMy.R0(getContext(), downloadTask);
                    return;
                }
                com.php25.PDownload.d.b(downloadTask);
                downloadTask.setVer(downloadTask.getVer());
                downloadTask.setVer_name(downloadTask.getVer_name());
                downloadTask.setUrl(downloadTask.getPortraitURL());
                downloadTask.setCfg_ver(downloadTask.getCfg_ver());
                downloadTask.setCfg_ver_name(downloadTask.getCfg_ver_name());
                downloadTask.setCfg_down_url(downloadTask.getCfg_down_url());
                downloadTask.setKeyword(Where.detail.name());
                com.php25.PDownload.d.c(downloadTask, getContext());
            } else if (status == 42) {
                if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                    return;
                }
                downloadTask.setVer(downloadTask.getVer());
                downloadTask.setVer_name(downloadTask.getVer_name());
                downloadTask.setUrl(downloadTask.getPortraitURL());
                downloadTask.setCfg_ver(downloadTask.getCfg_ver());
                downloadTask.setCfg_ver_name(downloadTask.getCfg_ver_name());
                downloadTask.setCfg_down_url(downloadTask.getCfg_down_url());
                downloadTask.setKeyword(Where.detail.name());
                UtilsMy.w3(getContext(), downloadTask);
            } else if (11 == status) {
                UtilsMy.j3(downloadTask, getContext());
            } else if (43 == status) {
                downloadTask.setKeyword(Where.detail.name());
                if (UtilsMy.o0(this.f45336h, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(getContext(), downloadTask.getCrc_link_type_val());
                } else if (!UtilsMy.T0(getContext(), downloadTask)) {
                    if (this.f45337i == 5) {
                        UtilsMy.R0(getContext(), downloadTask);
                    } else {
                        UtilsMy.F0(getContext(), downloadTask, downloadTask.getTp_down_url(), 0, 0);
                    }
                }
            } else {
                downloadTask.setKeyword(Where.detail.name());
                if (UtilsMy.o0(this.f45336h, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(getContext(), downloadTask.getCrc_link_type_val());
                } else if (!UtilsMy.T0(getContext(), downloadTask)) {
                    if (this.f45337i == 5) {
                        UtilsMy.R0(getContext(), downloadTask);
                    } else {
                        UtilsMy.F0(getContext(), downloadTask, downloadTask.getTp_down_url(), 0, 0);
                    }
                }
            }
        }
        g(downloadTask);
    }

    void e() {
        this.f45330b.setVisibility(8);
        this.f45329a.setVisibility(0);
    }

    void f() {
        this.f45329a.setVisibility(8);
        this.f45330b.setVisibility(0);
    }

    public void g(DownloadTask downloadTask) {
        if (downloadTask == null) {
            e();
            this.f45331c.setBackgroundResource(R.drawable.installbutn_big_normal);
            PayTagInfo payTagInfo = this.f45336h;
            if (payTagInfo != null && payTagInfo.getAmount_check() > 0) {
                TextView textView = this.f45331c;
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, this.f45336h.getPayGameAmount()));
            } else {
                TextView textView2 = this.f45331c;
                textView2.setText(textView2.getResources().getString(R.string.download_status_download));
            }
            this.f45331c.setVisibility(0);
            TextView textView3 = this.f45331c;
            int i2 = this.f45337i;
            PayTagInfo payTagInfo2 = this.f45336h;
            UtilsMy.k2(textView3, i2, payTagInfo2 != null ? payTagInfo2.getPay_game_amount() : 0, this.f45339k);
            return;
        }
        if (downloadTask.getPlugin_num() != null) {
            String plugin_num = downloadTask.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                this.f45331c.setBackgroundResource(R.drawable.installbutn_big_normal);
                this.f45331c.setText("开始");
                this.f45331c.setVisibility(0);
                e();
                return;
            }
        }
        this.f45331c.setBackgroundResource(R.drawable.installbutn_big_normal);
        int status = downloadTask.getStatus();
        if (UtilsMy.m0(this.f45336h, downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status == 9) {
            e();
            this.f45331c.setText("更新");
            this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
            this.f45335g.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 12) {
            e();
            this.f45331c.setText("解压中..");
        } else if (status == 13) {
            e();
            this.f45331c.setText("解压");
            this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 11) {
            e();
            this.f45331c.setText("安装");
            this.f45331c.setBackgroundResource(R.drawable.installbutn_big_installl);
            this.f45335g.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 5 || status == 42) {
            e();
            this.f45331c.setBackgroundResource(R.drawable.installbutn_big_open);
            TextView textView4 = this.f45331c;
            textView4.setText(textView4.getResources().getString(R.string.download_status_finished));
            this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 2) {
            f();
            this.f45335g.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.C3(downloadTask);
            this.f45334f.setProgress((int) downloadTask.getProgress());
            TextView textView5 = this.f45333e;
            textView5.setText(downloadTask.getProgress() + "%");
        } else if (status == 3 || status == 6 || status == 27) {
            f();
            this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.C3(downloadTask);
            this.f45334f.setProgress((int) downloadTask.getProgress());
            TextView textView6 = this.f45333e;
            textView6.setText(downloadTask.getProgress() + "%");
        } else if (status == 10) {
            e();
            this.f45331c.setText("等待");
            this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 1) {
        } else {
            if (status == 43) {
                e();
                PayTagInfo payTagInfo3 = this.f45336h;
                if (payTagInfo3 != null && payTagInfo3.getAmount_check() > 0) {
                    TextView textView7 = this.f45331c;
                    textView7.setText(textView7.getResources().getString(R.string.pay_game_amount, this.f45336h.getPayGameAmount()));
                } else {
                    TextView textView8 = this.f45331c;
                    textView8.setText(textView8.getResources().getString(R.string.download_status_download));
                }
                this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
                UtilsMy.m0(this.f45336h, downloadTask.getCrc_link_type_val());
                UtilsMy.J2(this.f45331c, downloadTask);
                return;
            }
            e();
            PayTagInfo payTagInfo4 = this.f45336h;
            if (payTagInfo4 != null && payTagInfo4.getAmount_check() > 0) {
                TextView textView9 = this.f45331c;
                textView9.setText(textView9.getResources().getString(R.string.pay_game_amount, this.f45336h.getPayGameAmount()));
            } else {
                TextView textView10 = this.f45331c;
                textView10.setText(textView10.getResources().getString(R.string.download_status_download));
            }
            this.f45335g.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.m0(this.f45336h, downloadTask.getCrc_link_type_val());
            UtilsMy.J2(this.f45331c, downloadTask);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        d(this.f45340l);
    }

    public void setCoin(TipNew tipNew, DownloadTask downloadTask) {
        UtilsMy.v2(tipNew, this.f45332d, downloadTask);
    }

    public void setProgress(int i2) {
        this.f45329a.setVisibility(8);
        this.f45330b.setVisibility(0);
        TextView textView = this.f45333e;
        textView.setText(i2 + "%");
        this.f45334f.setProgress(i2);
    }

    public DownloadViewBig(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45342n = 0;
        this.f45343o = 0;
        this.f45344p = "";
        this.f45345q = "";
        this.f45346r = "";
        c(context);
    }

    public DownloadViewBig(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45342n = 0;
        this.f45343o = 0;
        this.f45344p = "";
        this.f45345q = "";
        this.f45346r = "";
        c(context);
    }
}
