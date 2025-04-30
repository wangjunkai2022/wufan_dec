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
public class DownloadViewNormal extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f45347a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f45348b;

    /* renamed from: c  reason: collision with root package name */
    private PayTagInfo f45349c;

    /* renamed from: d  reason: collision with root package name */
    private int f45350d;

    /* renamed from: e  reason: collision with root package name */
    private ModInfoBean f45351e;

    /* renamed from: f  reason: collision with root package name */
    private String f45352f;

    /* renamed from: g  reason: collision with root package name */
    private DownloadTask f45353g;

    /* renamed from: h  reason: collision with root package name */
    private CollectionBeanSub f45354h;

    /* renamed from: i  reason: collision with root package name */
    private int f45355i;

    /* renamed from: j  reason: collision with root package name */
    private int f45356j;

    /* renamed from: k  reason: collision with root package name */
    private String f45357k;

    /* renamed from: l  reason: collision with root package name */
    private String f45358l;

    /* renamed from: m  reason: collision with root package name */
    private String f45359m;

    /* renamed from: n  reason: collision with root package name */
    private Ext f45360n;

    public DownloadViewNormal(Context context) {
        super(context);
        this.f45355i = 0;
        this.f45356j = 0;
        this.f45357k = "";
        this.f45358l = "";
        this.f45359m = "";
        c(context);
    }

    private void c(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.install_button_normal_layout, this);
        this.f45347a = (TextView) inflate.findViewById(R.id.instalButtomButn);
        this.f45348b = (TextView) inflate.findViewById(R.id.moneyText);
    }

    public void a(DownloadTask downloadTask, CollectionBeanSub collectionBeanSub) {
        setCoin(collectionBeanSub.getSp_tag_info(), downloadTask);
        this.f45354h = collectionBeanSub;
        this.f45352f = collectionBeanSub.getGame_id();
        this.f45349c = collectionBeanSub.getPay_tag_info();
        this.f45353g = downloadTask;
        this.f45350d = collectionBeanSub.getDown_status();
        this.f45347a.setOnClickListener(this);
        e(downloadTask);
        this.f45355i = collectionBeanSub.get_from();
        this.f45356j = collectionBeanSub.get_from_type();
        this.f45357k = collectionBeanSub.getRecPosition();
        this.f45358l = collectionBeanSub.getReMarks();
        this.f45359m = collectionBeanSub.getNodeId();
        this.f45351e = collectionBeanSub.getMod_info();
    }

    @Deprecated
    public void b(String str, TipNew tipNew, PayTagInfo payTagInfo, DownloadTask downloadTask, int i2, DownloadPointBase downloadPointBase, ModInfoBean modInfoBean) {
        setCoin(tipNew, downloadTask);
        this.f45352f = str;
        this.f45349c = payTagInfo;
        this.f45353g = downloadTask;
        this.f45350d = i2;
        this.f45347a.setOnClickListener(this);
        e(downloadTask);
        this.f45355i = downloadPointBase.get_from();
        this.f45356j = downloadPointBase.get_from_type();
        this.f45351e = modInfoBean;
        this.f45359m = downloadPointBase.getNodeId();
        this.f45358l = downloadPointBase.getReMarks();
    }

    public void d(DownloadTask downloadTask) {
        if (this.f45360n != null) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.clickAdvDownButton, this.f45360n);
        }
        if (downloadTask != null) {
            if (("" + downloadTask.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                IntentUtil.getInstance().goShareWebActivity(getContext(), downloadTask.getPortraitURL());
                UtilsMy.h2(downloadTask, getContext());
            }
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (downloadTask != null && UtilsMy.m0(this.f45349c, downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (downloadTask == null) {
            if (this.f45354h != null) {
                UtilsMy.J0(getContext(), this.f45354h);
                return;
            } else if (this.f45351e == null) {
                UtilsMy.N0(getContext(), this.f45352f, "", this.f45355i, this.f45356j, this.f45357k, this.f45358l, this.f45359m, this.f45354h.getPosition_path(), false);
                return;
            } else {
                UtilsMy.N0(getContext(), this.f45351e.getMod_game_id(), "", this.f45355i, this.f45356j, this.f45357k, this.f45358l, this.f45359m, this.f45354h.getPosition_path(), false);
                return;
            }
        }
        if (status == 2 || status == 10) {
            com.php25.PDownload.d.h(downloadTask);
        } else if (status == 3 || status == 6) {
            com.php25.PDownload.d.c(downloadTask, getContext());
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(getContext(), downloadTask);
                return;
            } else if (status == 5) {
                UtilsMy.c3(getContext(), downloadTask);
            } else if (status == 9) {
                if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("") || UtilsMy.T0(getContext(), downloadTask)) {
                    return;
                }
                if (this.f45350d == 5) {
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
                if (UtilsMy.o0(this.f45349c, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(getContext(), downloadTask.getCrc_link_type_val());
                } else if (!UtilsMy.T0(getContext(), downloadTask)) {
                    if (this.f45350d == 5) {
                        UtilsMy.R0(getContext(), downloadTask);
                    } else {
                        UtilsMy.F0(getContext(), downloadTask, downloadTask.getTp_down_url(), 0, 0);
                    }
                }
            } else {
                downloadTask.setKeyword(Where.detail.name());
                if (UtilsMy.o0(this.f45349c, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(getContext(), downloadTask.getCrc_link_type_val());
                } else if (!UtilsMy.T0(getContext(), downloadTask)) {
                    if (this.f45350d == 5) {
                        UtilsMy.R0(getContext(), downloadTask);
                    } else {
                        UtilsMy.F0(getContext(), downloadTask, downloadTask.getTp_down_url(), 0, 0);
                    }
                }
            }
        }
        e(downloadTask);
    }

    public void e(DownloadTask downloadTask) {
        if (downloadTask == null) {
            PayTagInfo payTagInfo = this.f45349c;
            if (payTagInfo != null && payTagInfo.getAmount_check() > 0) {
                TextView textView = this.f45347a;
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, this.f45349c.getPayGameAmount()));
            } else {
                this.f45347a.setText(getResources().getString(R.string.download_status_download));
            }
            this.f45347a.setBackgroundResource(R.drawable.installbutn_big_normal);
            TextView textView2 = this.f45347a;
            int i2 = this.f45350d;
            PayTagInfo payTagInfo2 = this.f45349c;
            UtilsMy.k2(textView2, i2, payTagInfo2 != null ? payTagInfo2.getPay_game_amount() : 0, this.f45352f);
            return;
        }
        if (downloadTask.getPlugin_num() != null) {
            String plugin_num = downloadTask.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                this.f45347a.setBackgroundResource(R.drawable.installbutn_big_normal);
                this.f45347a.setText("开始");
                this.f45347a.setVisibility(0);
                return;
            }
        }
        int status = downloadTask.getStatus();
        if (UtilsMy.m0(this.f45349c, downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        this.f45347a.setBackgroundResource(R.drawable.installbutn_big_normal);
        if (status == 9) {
            this.f45347a.setText("更新");
        } else if (status == 12) {
            this.f45347a.setText("解压中..");
        } else if (status == 13) {
            this.f45347a.setText("解压");
        } else if (status == 11) {
            this.f45347a.setText("安装");
            this.f45347a.setBackgroundResource(R.drawable.installbutn_big_installl);
        } else if (status == 5 || status == 42) {
            this.f45347a.setBackgroundResource(R.drawable.installbutn_big_open);
            TextView textView3 = this.f45347a;
            textView3.setText(textView3.getResources().getString(R.string.download_status_finished));
        } else if (status == 2) {
            UtilsMy.C3(downloadTask);
            this.f45347a.setBackgroundResource(R.drawable.installbutn_big_normal);
            this.f45347a.setText("暂停");
        } else if (status == 3 || status == 6 || status == 27) {
            UtilsMy.C3(downloadTask);
            this.f45347a.setBackgroundResource(R.drawable.installbutn_big_normal);
            this.f45347a.setText("继续");
        } else if (status == 10) {
            this.f45347a.setText("等待");
        } else if (status == 1) {
        } else {
            if (status == 43) {
                PayTagInfo payTagInfo3 = this.f45349c;
                if (payTagInfo3 != null && payTagInfo3.getAmount_check() > 0) {
                    TextView textView4 = this.f45347a;
                    textView4.setText(textView4.getResources().getString(R.string.pay_game_amount, this.f45349c.getPayGameAmount()));
                } else {
                    this.f45347a.setText(getResources().getString(R.string.download_status_download));
                }
                UtilsMy.m0(this.f45349c, downloadTask.getCrc_link_type_val());
                UtilsMy.J2(this.f45347a, downloadTask);
                return;
            }
            PayTagInfo payTagInfo4 = this.f45349c;
            if (payTagInfo4 != null && payTagInfo4.getAmount_check() > 0) {
                TextView textView5 = this.f45347a;
                textView5.setText(textView5.getResources().getString(R.string.pay_game_amount, this.f45349c.getPayGameAmount()));
            } else {
                this.f45347a.setText(getResources().getString(R.string.download_status_download));
            }
            UtilsMy.m0(this.f45349c, downloadTask.getCrc_link_type_val());
            UtilsMy.J2(this.f45347a, downloadTask);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        d(this.f45353g);
    }

    public void setCoin(TipNew tipNew, DownloadTask downloadTask) {
        UtilsMy.v2(tipNew, this, downloadTask);
    }

    public void setExt(Ext ext) {
        this.f45360n = ext;
    }

    public DownloadViewNormal(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45355i = 0;
        this.f45356j = 0;
        this.f45357k = "";
        this.f45358l = "";
        this.f45359m = "";
        c(context);
    }

    public DownloadViewNormal(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45355i = 0;
        this.f45356j = 0;
        this.f45357k = "";
        this.f45358l = "";
        this.f45359m = "";
        c(context);
    }
}
