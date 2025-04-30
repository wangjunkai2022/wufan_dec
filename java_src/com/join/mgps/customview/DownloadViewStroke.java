package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
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
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
/* loaded from: classes3.dex */
public class DownloadViewStroke extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f45361a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f45362b;

    /* renamed from: c  reason: collision with root package name */
    private PayTagInfo f45363c;

    /* renamed from: d  reason: collision with root package name */
    private int f45364d;

    /* renamed from: e  reason: collision with root package name */
    private ModInfoBean f45365e;

    /* renamed from: f  reason: collision with root package name */
    private String f45366f;

    /* renamed from: g  reason: collision with root package name */
    private DownloadTask f45367g;

    /* renamed from: h  reason: collision with root package name */
    private CollectionBeanSub f45368h;

    /* renamed from: i  reason: collision with root package name */
    private int f45369i;

    /* renamed from: j  reason: collision with root package name */
    private int f45370j;

    /* renamed from: k  reason: collision with root package name */
    private String f45371k;

    /* renamed from: l  reason: collision with root package name */
    private Ext f45372l;

    public DownloadViewStroke(Context context) {
        super(context);
        this.f45369i = 0;
        this.f45370j = 0;
        this.f45371k = "";
        c(context);
    }

    private void c(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.install_button_stroke_layout, this);
        this.f45361a = (TextView) inflate.findViewById(R.id.instalButtomButn);
        this.f45362b = (TextView) inflate.findViewById(R.id.moneyText);
    }

    public void a(DownloadTask downloadTask, CollectionBeanSub collectionBeanSub) {
        setCoin(collectionBeanSub.getSp_tag_info(), downloadTask);
        this.f45368h = collectionBeanSub;
        this.f45366f = collectionBeanSub.getGame_id();
        this.f45363c = collectionBeanSub.getPay_tag_info();
        this.f45367g = downloadTask;
        this.f45364d = collectionBeanSub.getDown_status();
        this.f45361a.setOnClickListener(this);
        f(downloadTask);
        this.f45369i = collectionBeanSub.get_from();
        this.f45370j = collectionBeanSub.get_from_type();
        this.f45371k = collectionBeanSub.getRecPosition();
        this.f45365e = collectionBeanSub.getMod_info();
    }

    @Deprecated
    public void b(String str, TipNew tipNew, PayTagInfo payTagInfo, DownloadTask downloadTask, int i2, DownloadPointBase downloadPointBase, ModInfoBean modInfoBean) {
        setCoin(tipNew, downloadTask);
        this.f45366f = str;
        this.f45363c = payTagInfo;
        this.f45367g = downloadTask;
        this.f45364d = i2;
        this.f45361a.setOnClickListener(this);
        f(downloadTask);
        this.f45369i = downloadPointBase.get_from();
        this.f45370j = downloadPointBase.get_from_type();
        this.f45371k = downloadPointBase.getRecPosition();
        this.f45365e = modInfoBean;
    }

    public void d(DownloadTask downloadTask) {
        if (this.f45372l != null) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.clickAdvDownButton, this.f45372l);
        }
        if (downloadTask != null) {
            if (("" + downloadTask.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                IntentUtil.getInstance().goShareWebActivity(getContext(), downloadTask.getPortraitURL());
                UtilsMy.h2(downloadTask, getContext());
            }
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (downloadTask != null && UtilsMy.m0(this.f45363c, downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (downloadTask == null) {
            UtilsMy.J0(getContext(), this.f45368h);
            return;
        }
        if (status == 2 || status == 10) {
            com.php25.PDownload.d.h(downloadTask);
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(getContext(), downloadTask);
                return;
            } else if (status == 5) {
                UtilsMy.c3(getContext(), downloadTask);
            } else if (status == 3 || status == 6) {
                com.php25.PDownload.d.c(downloadTask, getContext());
            } else if (status == 9) {
                if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("") || UtilsMy.T0(getContext(), downloadTask)) {
                    return;
                }
                if (this.f45364d == 5) {
                    UtilsMy.R0(getContext(), downloadTask);
                    return;
                }
                com.php25.PDownload.d.b(downloadTask);
                downloadTask.setVer(downloadTask.getVer());
                downloadTask.setVer_name(downloadTask.getVer_name());
                downloadTask.setUrl(downloadTask.getUrl());
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
                downloadTask.setUrl(downloadTask.getUrl());
                downloadTask.setCfg_ver(downloadTask.getCfg_ver());
                downloadTask.setCfg_ver_name(downloadTask.getCfg_ver_name());
                downloadTask.setCfg_down_url(downloadTask.getCfg_down_url());
                downloadTask.setKeyword(Where.detail.name());
                UtilsMy.w3(getContext(), downloadTask);
            } else if (11 == status) {
                UtilsMy.j3(downloadTask, getContext());
            } else if (43 == status) {
                downloadTask.setKeyword(Where.detail.name());
                if (UtilsMy.o0(this.f45363c, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(getContext(), downloadTask.getCrc_link_type_val());
                } else if (!UtilsMy.T0(getContext(), downloadTask)) {
                    if (this.f45364d == 5) {
                        UtilsMy.R0(getContext(), downloadTask);
                    } else {
                        UtilsMy.F0(getContext(), downloadTask, downloadTask.getTp_down_url(), 0, 0);
                    }
                }
            } else {
                downloadTask.setKeyword(Where.detail.name());
                if (UtilsMy.o0(this.f45363c, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(getContext(), downloadTask.getCrc_link_type_val());
                } else if (!UtilsMy.T0(getContext(), downloadTask)) {
                    if (this.f45364d == 5) {
                        UtilsMy.R0(getContext(), downloadTask);
                    } else {
                        UtilsMy.F0(getContext(), downloadTask, downloadTask.getTp_down_url(), 0, 0);
                    }
                }
            }
        }
        f(downloadTask);
    }

    void e(TipNew tipNew, View view, DownloadTask downloadTask) {
        TextView textView;
        if (view instanceof TextView) {
            textView = (TextView) view;
        } else {
            textView = (TextView) view.findViewById(R.id.moneyText);
        }
        if (textView == null) {
            return;
        }
        if (downloadTask != null && downloadTask.getStatus() != 0) {
            textView.setVisibility(4);
        } else if (tipNew != null && tipNew.getCoin() != null) {
            textView.setText(tipNew.getCoin().getName());
            textView.setVisibility(0);
        } else {
            textView.setVisibility(4);
        }
    }

    public void f(DownloadTask downloadTask) {
        this.f45361a.setTextColor(getResources().getColor(R.color.app_blue_color));
        if (downloadTask == null) {
            PayTagInfo payTagInfo = this.f45363c;
            if (payTagInfo != null && payTagInfo.getAmount_check() > 0) {
                TextView textView = this.f45361a;
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, this.f45363c.getPayGameAmount()));
            } else {
                TextView textView2 = this.f45361a;
                textView2.setText(textView2.getResources().getString(R.string.download_status_download));
            }
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
            this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
            TextView textView3 = this.f45361a;
            int i2 = this.f45364d;
            PayTagInfo payTagInfo2 = this.f45363c;
            UtilsMy.k2(textView3, i2, payTagInfo2 == null ? 0 : payTagInfo2.getPay_game_amount(), this.f45366f);
            CollectionBeanSub collectionBeanSub = this.f45368h;
            if (collectionBeanSub == null || collectionBeanSub.getPlugin_num() == null) {
                return;
            }
            String plugin_num = this.f45368h.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
                this.f45361a.setText("开始");
                this.f45361a.setTextColor(getResources().getColor(R.color.app_blue_color));
                this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
                this.f45361a.setVisibility(0);
                return;
            }
            return;
        }
        if (downloadTask.getPlugin_num() != null) {
            String plugin_num2 = downloadTask.getPlugin_num();
            if (plugin_num2.equals(ConstantIntEnum.H5.value() + "")) {
                this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
                this.f45361a.setText("开始");
                this.f45361a.setTextColor(getResources().getColor(R.color.app_blue_color));
                this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
                this.f45361a.setVisibility(0);
                return;
            }
        }
        int status = downloadTask.getStatus();
        if (UtilsMy.m0(this.f45363c, downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
        if (status == 9) {
            this.f45361a.setText("更新");
            this.f45361a.setBackgroundResource(R.drawable.recom_green_butn);
            this.f45361a.setTextColor(getContext().getResources().getColor(R.color.app_green_color));
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
        } else if (status == 12) {
            this.f45361a.setText("解压中..");
            this.f45361a.setTextSize(2, 10.0f);
        } else if (status == 13) {
            this.f45361a.setText("解压");
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
        } else if (status == 11) {
            this.f45361a.setText("安装");
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
            this.f45361a.setTextColor(getContext().getResources().getColor(R.color.app_green_color));
            this.f45361a.setBackgroundResource(R.drawable.recom_green_butn);
        } else if (status == 48) {
            this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f45361a.setText("安装中");
            this.f45361a.setTextColor(getContext().getResources().getColor(R.color.app_blue_color));
        } else if (status == 5 || status == 42) {
            this.f45361a.setBackgroundResource(R.drawable.recom_maincolor_butn);
            TextView textView4 = this.f45361a;
            textView4.setText(textView4.getResources().getString(R.string.download_status_finished));
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
            this.f45361a.setTextColor(getResources().getColor(R.color.app_main_color));
        } else if (status == 2) {
            UtilsMy.C3(downloadTask);
            this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f45361a.setText("暂停");
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
        } else if (status == 3 || status == 6 || status == 27) {
            UtilsMy.C3(downloadTask);
            this.f45361a.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f45361a.setText("继续");
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
        } else if (status == 10) {
            this.f45361a.setText("等待");
            this.f45361a.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp26));
        } else if (status == 1) {
        } else {
            if (status == 43) {
                PayTagInfo payTagInfo3 = this.f45363c;
                if (payTagInfo3 != null && payTagInfo3.getAmount_check() > 0) {
                    TextView textView5 = this.f45361a;
                    textView5.setText(textView5.getResources().getString(R.string.pay_game_amount, this.f45363c.getPayGameAmount()));
                } else {
                    TextView textView6 = this.f45361a;
                    textView6.setText(textView6.getResources().getString(R.string.download_status_download));
                }
                UtilsMy.m0(this.f45363c, downloadTask.getCrc_link_type_val());
                UtilsMy.p2(this.f45361a, downloadTask);
                return;
            }
            PayTagInfo payTagInfo4 = this.f45363c;
            if (payTagInfo4 != null && payTagInfo4.getAmount_check() > 0) {
                TextView textView7 = this.f45361a;
                textView7.setText(textView7.getResources().getString(R.string.pay_game_amount, this.f45363c.getPayGameAmount()));
            } else {
                TextView textView8 = this.f45361a;
                textView8.setText(textView8.getResources().getString(R.string.download_status_download));
            }
            UtilsMy.m0(this.f45363c, downloadTask.getCrc_link_type_val());
            UtilsMy.p2(this.f45361a, downloadTask);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        d(this.f45367g);
    }

    public void setCoin(TipNew tipNew, DownloadTask downloadTask) {
        e(tipNew, this, downloadTask);
    }

    public void setExt(Ext ext) {
        this.f45372l = ext;
    }

    public DownloadViewStroke(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45369i = 0;
        this.f45370j = 0;
        this.f45371k = "";
        c(context);
    }

    public DownloadViewStroke(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45369i = 0;
        this.f45370j = 0;
        this.f45371k = "";
        c(context);
    }
}
