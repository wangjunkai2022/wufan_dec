package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.ExtFrom;
import java.util.ArrayList;
import java.util.List;
/* compiled from: InterstingListAdapter.java */
/* loaded from: classes3.dex */
public class q2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f43353a;

    /* renamed from: b  reason: collision with root package name */
    private List<RecomDatabeanBusiness> f43354b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f43355c;

    /* compiled from: InterstingListAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        AppBean f43356a;

        /* renamed from: b  reason: collision with root package name */
        RecomDatabeanBusiness f43357b;

        /* renamed from: c  reason: collision with root package name */
        int f43358c;

        /* renamed from: d  reason: collision with root package name */
        String f43359d;

        public a(RecomDatabeanBusiness recomDatabeanBusiness, int i2, String str) {
            List<AppBeanMain> sub = recomDatabeanBusiness.getSub();
            if (sub != null && sub.size() > 0) {
                this.f43356a = sub.get(0).getGame_info();
            }
            this.f43357b = recomDatabeanBusiness;
            this.f43358c = i2;
            this.f43359d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask a4 = this.f43357b.a();
            String plugin_num = this.f43356a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f43356a.getDown_url_remote());
                if (a4 == null) {
                    a4 = this.f43356a.getDownloadtaskDown();
                }
                UtilsMy.h2(a4, q2.this.f43353a);
                IntentUtil.getInstance().intentActivity(q2.this.f43353a, intentDateBean);
            } else if (a4 == null) {
                if (UtilsMy.e0(this.f43356a.getTag_info())) {
                    if (this.f43356a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(q2.this.f43353a).c(q2.this.f43353a, this.f43356a.getPackageName())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(q2.this.f43353a).k(q2.this.f43353a, this.f43356a.getPackageName());
                            if (!com.join.mgps.Util.d2.i(this.f43356a.getVer()) || k4.d() >= Integer.parseInt(this.f43356a.getVer())) {
                                com.join.android.app.common.utils.a.g0(q2.this.f43353a);
                                APKUtils.X(q2.this.f43353a, this.f43356a.getPackageName());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(q2.this.f43353a).c(q2.this.f43353a, this.f43356a.getPackageName());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f43356a.getPackageName());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(q2.this.f43353a);
                            APKUtils.S(q2.this.f43353a, this.f43356a.getMod_info());
                            return;
                        }
                    }
                }
                q2 q2Var = q2.this;
                q2Var.d(this.f43359d + "1");
                UtilsMy.H0(q2.this.f43353a, this.f43356a);
            } else {
                int status = a4 != null ? a4.getStatus() : 0;
                AppBean appBean = this.f43356a;
                if (appBean != null && UtilsMy.m0(appBean.getPay_tag_info(), this.f43356a.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 13) {
                        com.php25.PDownload.d.k(q2.this.f43353a, a4);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(q2.this.f43353a, a4);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (!com.join.android.app.common.utils.f.j(q2.this.f43353a)) {
                                            com.join.mgps.Util.i2.a(q2.this.f43353a).b("无网络连接");
                                            return;
                                        } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            a4.setId(g1.f.G().B(a4.getCrc_link_type_val()).getId());
                                            a4.setVer(this.f43356a.getVer());
                                            a4.setVer_name(this.f43356a.getVer_name());
                                            a4.setUrl(this.f43356a.getDown_url_remote());
                                            UtilsMy.w3(q2.this.f43353a, a4);
                                            return;
                                        }
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(q2.this.f43353a)) {
                                                    com.join.mgps.Util.i2.a(q2.this.f43353a).b("无网络连接");
                                                    return;
                                                }
                                                int downloadType = this.f43356a.getDownloadType();
                                                if (downloadType != 0 && downloadType != 1) {
                                                    if (downloadType != 2) {
                                                        return;
                                                    }
                                                    UtilsMy.z3(a4);
                                                    return;
                                                } else if (a4.getCrc_link_type_val() == null || a4.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    DownloadTask B = g1.f.G().B(a4.getCrc_link_type_val());
                                                    if (UtilsMy.T0(q2.this.f43353a, a4)) {
                                                        return;
                                                    }
                                                    if (this.f43356a.getDown_status() == 5) {
                                                        UtilsMy.R0(q2.this.f43353a, a4);
                                                        return;
                                                    }
                                                    a4.setId(B.getId());
                                                    com.php25.PDownload.d.b(a4);
                                                    a4.setVer(this.f43356a.getVer());
                                                    a4.setVer_name(this.f43356a.getVer_name());
                                                    a4.setUrl(this.f43356a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(a4, q2.this.f43353a);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(a4, q2.this.f43353a);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(a4, q2.this.f43353a);
                        return;
                    }
                    com.php25.PDownload.d.h(a4);
                    return;
                }
                if (this.f43356a != null) {
                    q2 q2Var2 = q2.this;
                    q2Var2.d(this.f43359d + "1");
                    if (UtilsMy.o0(this.f43356a.getPay_tag_info(), this.f43356a.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(q2.this.f43353a, a4.getCrc_link_type_val());
                        return;
                    }
                    UtilsMy.b1(a4, this.f43356a);
                    if (UtilsMy.T0(q2.this.f43353a, a4)) {
                        return;
                    }
                    if (this.f43356a.getDown_status() == 5) {
                        UtilsMy.R0(q2.this.f43353a, a4);
                    } else {
                        UtilsMy.F0(q2.this.f43353a, a4, this.f43356a.getTp_down_url(), this.f43356a.getOther_down_switch(), this.f43356a.getCdn_down_switch());
                    }
                }
            }
        }
    }

    public q2() {
    }

    private void c(int i2) {
        if (i2 < this.f43354b.size()) {
            IntentUtil.getInstance().intentActivity(this.f43353a, this.f43354b.get(i2).getSub().get(0).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f43353a);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f43353a).getUid());
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43354b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f43355c.inflate(R.layout.intersting_horiz_listitem, viewGroup, false);
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.o2.a(view, R.id.image1);
        TextView textView = (TextView) com.join.mgps.Util.o2.a(view, R.id.mgListviewItemInstall);
        RecomDatabeanBusiness recomDatabeanBusiness = this.f43354b.get(i2);
        textView.setOnClickListener(new a(this.f43354b.get(i2), i2, recomDatabeanBusiness.b()));
        TextView textView2 = (TextView) com.join.mgps.Util.o2.a(view, R.id.appname1);
        List<AppBeanMain> sub = recomDatabeanBusiness.getSub();
        if (sub != null && sub.size() > 0) {
            AppBean game_info = recomDatabeanBusiness.getSub().get(0).getGame_info();
            if (game_info != null) {
                textView2.setText(game_info.getGame_name());
                MyImageLoader.h(simpleDraweeView, game_info.getIco_remote());
            }
            DownloadTask a4 = recomDatabeanBusiness.a();
            UtilsMy.v2(game_info.getSp_tag_info(), view, a4);
            if ((ConstantIntEnum.H5.value() + "").equals(game_info.getPlugin_num())) {
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                textView.setText("开始");
                textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_blue_color));
            } else if (a4 == null) {
                if (UtilsMy.e0(game_info.getTag_info())) {
                    if (UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.a.g0(this.f43353a).c(this.f43353a, game_info.getPackageName()) : false) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f43353a).k(this.f43353a, game_info.getPackageName());
                        if (com.join.mgps.Util.d2.i(game_info.getVer()) && k4.d() < Integer.parseInt(game_info.getVer())) {
                            textView.setBackgroundResource(R.drawable.recom_green_butn);
                            textView.setText("更新");
                            textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_green_color));
                        } else {
                            textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            textView.setText(this.f43353a.getResources().getString(R.string.download_status_finished));
                            textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_main_color));
                        }
                    } else {
                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                        UtilsMy.q2(textView, game_info);
                    }
                } else {
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                    UtilsMy.q2(textView, game_info);
                }
            } else {
                int status = a4.getStatus();
                if (UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        textView.setText("暂停中");
                    } else if (status == 48) {
                        textView.setBackgroundResource(R.drawable.recom_blue_butn);
                        textView.setText("安装中");
                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_blue_color));
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                        textView.setText("更新");
                                                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_green_color));
                                                        break;
                                                    case 10:
                                                        textView.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        textView.setText("等待");
                                                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_blue_color));
                                                        break;
                                                    case 11:
                                                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                        textView.setText("安装");
                                                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_green_color));
                                                        break;
                                                    case 12:
                                                        textView.setBackgroundResource(R.drawable.extract);
                                                        textView.setText("解压中");
                                                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_grey_color));
                                                        break;
                                                    case 13:
                                                        textView.setBackgroundResource(R.drawable.reextract);
                                                        textView.setText("解压");
                                                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_blue_color));
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            textView.setText(this.f43353a.getResources().getString(R.string.download_status_finished));
                            textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_main_color));
                        }
                        textView.setBackgroundResource(R.drawable.recom_blue_butn);
                        textView.setText("继续");
                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_blue_color));
                    } else {
                        UtilsMy.C3(a4);
                        textView.setBackgroundResource(R.drawable.recom_blue_butn);
                        textView.setText("暂停");
                        textView.setTextColor(this.f43353a.getResources().getColor(R.color.app_blue_color));
                    }
                }
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(game_info.getPay_tag_info(), game_info.getCrc_sign_id());
                UtilsMy.q2(textView, game_info);
            }
        }
        return view;
    }

    public q2(Context context, List<RecomDatabeanBusiness> list) {
        this.f43353a = context;
        if (list == null) {
            this.f43354b = new ArrayList();
        } else {
            this.f43354b = list;
        }
        this.f43355c = LayoutInflater.from(context);
    }
}
