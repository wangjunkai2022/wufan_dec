package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.HtmlTextView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
/* compiled from: CardFragment.java */
/* loaded from: classes.dex */
public class e extends com.join.mgps.fragment.a implements View.OnClickListener {

    /* renamed from: b  reason: collision with root package name */
    protected GameDiscoverBean f48586b;

    /* renamed from: c  reason: collision with root package name */
    protected ImageView f48587c;

    /* renamed from: d  reason: collision with root package name */
    protected RelativeLayout f48588d;

    /* renamed from: e  reason: collision with root package name */
    private Button f48589e;

    /* renamed from: f  reason: collision with root package name */
    private LinearLayout f48590f;

    /* renamed from: g  reason: collision with root package name */
    private LinearLayout f48591g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f48592h;

    /* renamed from: i  reason: collision with root package name */
    protected SimpleDraweeView f48593i;

    /* renamed from: j  reason: collision with root package name */
    protected ImageView f48594j;

    /* renamed from: k  reason: collision with root package name */
    protected HtmlTextView f48595k;

    /* renamed from: l  reason: collision with root package name */
    protected TextView f48596l;

    /* renamed from: m  reason: collision with root package name */
    protected TextView f48597m;

    /* renamed from: n  reason: collision with root package name */
    protected TextView f48598n;

    /* renamed from: o  reason: collision with root package name */
    private DownloadTask f48599o;

    /* renamed from: p  reason: collision with root package name */
    private RelativeLayout f48600p;

    /* renamed from: q  reason: collision with root package name */
    private ProgressBar f48601q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f48602r;

    /* renamed from: s  reason: collision with root package name */
    private BroadcastReceiver f48603s = new a();

    /* compiled from: CardFragment.java */
    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                return;
            }
            String action = intent.getAction();
            CollectionBeanSub collectionBeanSub = intent.getSerializableExtra("gameData") != null ? (CollectionBeanSub) intent.getSerializableExtra("gameData") : null;
            if (action.equals(f1.a.F) || action.equals(f1.a.H)) {
                if (collectionBeanSub != null) {
                    PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
                    if (n4 == null) {
                        n4 = new PurchasedListTable();
                    }
                    n4.setGame_id(collectionBeanSub.getGame_id());
                    n1.e0.o().m(n4);
                }
                e.this.updateButn();
            }
        }
    }

    public static e O(GameDiscoverBean gameDiscoverBean) {
        e eVar = new e();
        eVar.R(gameDiscoverBean);
        return eVar;
    }

    @Override // com.join.mgps.fragment.a
    protected void M(View view) {
        this.f48589e.setOnClickListener(this);
        this.f48600p.setOnClickListener(this);
        this.f48588d.setOnClickListener(this);
    }

    @Override // com.join.mgps.fragment.a
    protected View N(LayoutInflater layoutInflater) {
        com.join.mgps.Util.c0.a().d(this);
        View inflate = layoutInflater.inflate(R.layout.fragment_card, (ViewGroup) null);
        this.f48588d = (RelativeLayout) inflate.findViewById(R.id.box_card);
        this.f48587c = (ImageView) inflate.findViewById(R.id.image_bottom_edge);
        this.f48593i = (SimpleDraweeView) inflate.findViewById(R.id.image_cover);
        this.f48598n = (TextView) inflate.findViewById(R.id.text_title);
        this.f48596l = (TextView) inflate.findViewById(R.id.text_subtitle);
        this.f48595k = (HtmlTextView) inflate.findViewById(R.id.text_digest);
        this.f48594j = (ImageView) inflate.findViewById(R.id.image_tag);
        this.f48597m = (TextView) inflate.findViewById(R.id.date_tag);
        this.f48589e = (Button) inflate.findViewById(R.id.instalButtomButn);
        this.f48592h = (ImageView) inflate.findViewById(R.id.butn_showdownload);
        this.f48600p = (RelativeLayout) inflate.findViewById(R.id.progressbarLayout);
        this.f48590f = (LinearLayout) inflate.findViewById(R.id.progress_layout);
        this.f48591g = (LinearLayout) inflate.findViewById(R.id.detialDownBottom);
        this.f48601q = (ProgressBar) inflate.findViewById(R.id.butnProgressBar);
        this.f48602r = (TextView) inflate.findViewById(R.id.percent);
        try {
            this.f48598n.setText(this.f48586b.getGame_name());
            this.f48596l.setText(this.f48586b.getDiscover().getTitle());
            this.f48595k.setTextViewHtml(this.f48586b.getDiscover().getIntro());
            this.f48597m.setText(new SimpleDateFormat("MM月dd日 EEEE").format(Long.valueOf(this.f48586b.getDiscover().getAddtimes() * 1000)));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        P();
        updateButn();
        return inflate;
    }

    protected void P() {
        GameDiscoverBean gameDiscoverBean;
        GameDiscoverBean gameDiscoverBean2 = this.f48586b;
        if (gameDiscoverBean2 == null || com.join.mgps.Util.d2.h(gameDiscoverBean2.getPlugin_num()) || getActivity() == null || (gameDiscoverBean = this.f48586b) == null) {
            return;
        }
        MyImageLoader.h(this.f48593i, gameDiscoverBean.getDiscover().getPic());
    }

    void Q(int i2) {
        this.f48601q.setProgress(i2);
        TextView textView = this.f48602r;
        textView.setText(i2 + "%");
    }

    public void R(GameDiscoverBean gameDiscoverBean) {
        this.f48586b = gameDiscoverBean;
    }

    @Override // com.join.mgps.fragment.a
    protected void initData() {
        List<DownloadTask> D;
        boolean z3;
        GameDiscoverBean gameDiscoverBean = this.f48586b;
        if (gameDiscoverBean != null) {
            if (gameDiscoverBean.getMod_info() == null) {
                DownloadTask B = g1.f.G().B(this.f48586b.getCrc_sign_id());
                this.f48599o = B;
                if (B == null) {
                    this.f48599o = this.f48586b.getDownloadtaskDown();
                    if (UtilsMy.e0(this.f48586b.getTag_info())) {
                        this.f48599o.setFileType(Dtype.android.name());
                        com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(getActivity());
                        FragmentActivity activity = getActivity();
                        String package_name = this.f48586b.getPackage_name();
                        APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                        if (g02.d(activity, package_name, device_type)) {
                            APKUtils.a l4 = com.join.android.app.common.utils.a.g0(getActivity()).l(getActivity(), this.f48586b.getPackage_name(), device_type);
                            if (com.join.mgps.Util.d2.i(this.f48586b.getVer()) && l4.d() < Integer.parseInt(this.f48586b.getVer())) {
                                this.f48599o.setStatus(9);
                                return;
                            } else {
                                this.f48599o.setStatus(5);
                                return;
                            }
                        }
                        this.f48599o.setStatus(0);
                        return;
                    }
                    this.f48599o.setStatus(0);
                    return;
                }
                B.setDownloadType(this.f48586b.getDownloadType());
                this.f48599o.setScreenshot_pic(this.f48586b.getScreenshot_pic());
                return;
            }
            if (this.f48586b.getMod_info() != null) {
                D = g1.f.G().C(this.f48586b.getMod_info().getMod_game_id(), this.f48586b.getMod_info().getMain_game_id());
            } else {
                D = g1.f.G().D(this.f48586b.getPackage_name());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).d(getContext(), downloadTask.getPackageName(), APKUtils.DEVICE_TYPE.ALL) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    r0 = g1.f.G().B(this.f48586b.getCrc_sign_id());
                } else if (z4) {
                    if (this.f48586b.getMod_info() != null) {
                        r0 = g1.f.G().B(this.f48586b.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r0 = g1.f.G().B(this.f48586b.getCrc_sign_id());
                } else {
                    r0 = this.f48586b.getMod_info() != null ? g1.f.G().B(this.f48586b.getMod_info().getMod_game_id()) : null;
                    if (r0 == null) {
                        r0 = g1.f.G().B(this.f48586b.getCrc_sign_id());
                    }
                }
            }
            this.f48599o = r0;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f1.a.F);
            intentFilter.addAction(f1.a.H);
            getActivity().registerReceiver(this.f48603s, intentFilter);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onAttach(context);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DownloadTask downloadTask;
        int id = view.getId();
        if (id == R.id.box_card) {
            if (this.f48586b.getCrc_sign_id() != null) {
                IntentUtil.getInstance().goGameDetialActivity(getActivity(), this.f48586b.getCrc_sign_id(), this.f48586b.getGame_info_tpl_type(), this.f48586b.getSp_tpl_two_position(), 115);
            }
        } else if (id != R.id.instalButtomButn) {
            if (id == R.id.progressbarLayout && (downloadTask = this.f48599o) != null) {
                if (downloadTask.getStatus() == 2) {
                    com.php25.PDownload.d.h(this.f48599o);
                    updateButn();
                } else if (this.f48599o.getStatus() == 3 || this.f48599o.getStatus() == 6) {
                    com.php25.PDownload.d.c(this.f48599o, getActivity());
                    updateButn();
                }
            }
        } else {
            DownloadTask downloadTask2 = this.f48599o;
            if (downloadTask2 != null && downloadTask2.getStatus() != 0) {
                DownloadTask downloadTask3 = this.f48599o;
                int status = downloadTask3 != null ? downloadTask3.getStatus() : 0;
                if (UtilsMy.m0(this.f48586b.getPay_tag_info(), this.f48586b.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                DownloadTask downloadTask4 = this.f48599o;
                if (downloadTask4 != null && (status == 2 || status == 10)) {
                    com.php25.PDownload.d.h(downloadTask4);
                    return;
                } else if (status == 12) {
                    return;
                } else {
                    if (status == 13) {
                        com.php25.PDownload.d.k(getActivity(), this.f48599o);
                        return;
                    } else if (status == 5) {
                        UtilsMy.c3(getActivity(), this.f48599o);
                        return;
                    } else if (status == 9) {
                        if (!com.join.android.app.common.utils.f.j(getActivity())) {
                            com.join.mgps.Util.i2.a(getActivity()).b("无网络连接");
                            return;
                        }
                        int downloadType = this.f48599o.getDownloadType();
                        if (downloadType != 0 && downloadType != 1) {
                            if (downloadType != 2) {
                                return;
                            }
                            UtilsMy.z3(this.f48599o);
                            return;
                        } else if (this.f48599o.getCrc_link_type_val() == null || this.f48599o.getCrc_link_type_val().equals("")) {
                            return;
                        } else {
                            com.php25.PDownload.d.b(this.f48599o);
                            this.f48599o.setVer(this.f48586b.getVer());
                            this.f48599o.setVer_name(this.f48586b.getVer_name());
                            this.f48599o.setUrl(this.f48586b.getDown_url_remote());
                            this.f48599o.setCfg_ver(this.f48586b.getCfg_ver());
                            this.f48599o.setCfg_ver_name(this.f48586b.getCfg_ver_name());
                            this.f48599o.setCfg_down_url(this.f48586b.getCfg_down_url());
                            if (UtilsMy.o0(this.f48586b.getPay_tag_info(), this.f48586b.getCrc_sign_id()) > 0) {
                                UtilsMy.m3(getActivity(), this.f48599o.getCrc_link_type_val());
                                return;
                            }
                            UtilsMy.f1(this.f48599o, this.f48586b);
                            if (UtilsMy.T0(getActivity(), this.f48599o)) {
                                return;
                            }
                            if (this.f48586b.getDown_status() == 5) {
                                UtilsMy.R0(getActivity(), this.f48599o);
                                return;
                            } else {
                                UtilsMy.F0(getActivity(), this.f48599o, this.f48586b.getTp_down_url(), this.f48586b.getOther_down_switch(), this.f48586b.getCdn_down_switch());
                                return;
                            }
                        }
                    } else if (status == 42) {
                        if (downloadTask4.getCrc_link_type_val() == null || this.f48599o.getCrc_link_type_val().equals("")) {
                            return;
                        }
                        this.f48599o.setVer(this.f48586b.getVer());
                        this.f48599o.setVer_name(this.f48586b.getVer_name());
                        this.f48599o.setUrl(this.f48586b.getDown_url_remote());
                        this.f48599o.setCfg_ver(this.f48586b.getCfg_ver());
                        this.f48599o.setCfg_ver_name(this.f48586b.getCfg_ver_name());
                        this.f48599o.setCfg_down_url(this.f48586b.getCfg_down_url());
                        UtilsMy.w3(getContext(), this.f48599o);
                        return;
                    } else if (11 == status) {
                        UtilsMy.j3(downloadTask4, getActivity());
                        return;
                    } else if (27 == status || 48 == status) {
                        return;
                    } else {
                        if (43 == status) {
                            if (UtilsMy.o0(this.f48586b.getPay_tag_info(), this.f48586b.getCrc_sign_id()) > 0) {
                                UtilsMy.m3(getActivity(), this.f48599o.getCrc_link_type_val());
                                return;
                            }
                            UtilsMy.f1(this.f48599o, this.f48586b);
                            if (UtilsMy.T0(getActivity(), this.f48599o)) {
                                return;
                            }
                            if (this.f48586b.getDown_status() == 5) {
                                UtilsMy.R0(getActivity(), this.f48599o);
                                return;
                            } else {
                                UtilsMy.F0(getActivity(), this.f48599o, this.f48586b.getTp_down_url(), this.f48586b.getOther_down_switch(), this.f48586b.getCdn_down_switch());
                                return;
                            }
                        } else if (UtilsMy.o0(this.f48586b.getPay_tag_info(), this.f48586b.getCrc_sign_id()) > 0) {
                            UtilsMy.m3(getActivity(), this.f48599o.getCrc_link_type_val());
                            return;
                        } else {
                            UtilsMy.f1(this.f48599o, this.f48586b);
                            if (UtilsMy.T0(getActivity(), this.f48599o)) {
                                return;
                            }
                            if (this.f48586b.getDown_status() == 5) {
                                UtilsMy.R0(getActivity(), this.f48599o);
                                return;
                            } else {
                                UtilsMy.F0(getActivity(), this.f48599o, this.f48586b.getTp_down_url(), this.f48586b.getOther_down_switch(), this.f48586b.getCdn_down_switch());
                                return;
                            }
                        }
                    }
                }
            }
            UtilsMy.L0(getContext(), this.f48586b);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f48593i.setImageBitmap(null);
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f48593i.setImageBitmap(null);
        try {
            getActivity().unregisterReceiver(this.f48603s);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onDestroyView();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
        if (r5 != 48) goto L16;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r5) {
        /*
            r4 = this;
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.a()
            if (r0 == 0) goto L35
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r4.f48599o
            if (r1 == 0) goto L35
            java.lang.String r1 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r4.f48599o
            java.lang.String r2 = r2.getCrc_link_type_val()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L35
            r4.f48599o = r0
            int r1 = r0.getStatus()
            r0.setStatus(r1)
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r4.f48599o
            java.lang.String r2 = r0.getPath()
            r1.setPath(r2)
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r4.f48599o
            long r2 = r0.getSize()
            r1.setSize(r2)
        L35:
            int r5 = r5.c()
            r1 = 5
            if (r5 == r1) goto L81
            r1 = 8
            if (r5 == r1) goto L49
            r1 = 11
            if (r5 == r1) goto L81
            r1 = 48
            if (r5 == r1) goto L81
            goto L99
        L49:
            com.github.snowdream.android.app.downloader.DownloadTask r5 = r4.f48599o
            if (r5 == 0) goto L99
            java.lang.String r5 = r5.getPath()
            if (r5 == 0) goto L99
            com.github.snowdream.android.app.downloader.DownloadTask r5 = r4.f48599o
            com.join.mgps.Util.UtilsMy.C3(r5)
            android.widget.ProgressBar r5 = r4.f48601q
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r4.f48599o
            long r0 = r0.getProgress()
            int r1 = (int) r0
            r5.setProgress(r1)
            android.widget.TextView r5 = r4.f48602r
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r4.f48599o
            long r1 = r1.getProgress()
            r0.append(r1)
            java.lang.String r1 = "%"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.setText(r0)
            return
        L81:
            if (r0 == 0) goto L99
            com.github.snowdream.android.app.downloader.DownloadTask r5 = r4.f48599o
            if (r5 == 0) goto L99
            java.lang.String r5 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r4.f48599o
            java.lang.String r1 = r1.getCrc_link_type_val()
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L99
            r4.f48599o = r0
        L99:
            r4.updateButn()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.e.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        List<DownloadTask> D;
        boolean z3;
        super.onResume();
        if (this.f48586b == null) {
            this.f48586b = new GameDiscoverBean();
        }
        if (this.f48586b.getMod_info() == null) {
            DownloadTask B = g1.f.G().B(this.f48586b.getCrc_sign_id());
            if (B != null && this.f48599o != null && B.getCrc_link_type_val().equals(this.f48599o.getCrc_link_type_val())) {
                this.f48599o = B;
                if (B.getFileType().equals(Dtype.android.name()) && this.f48599o.getStatus() == 5) {
                    if (this.f48586b.getMod_info() == null) {
                        com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(getActivity());
                        FragmentActivity activity = getActivity();
                        String packageName = this.f48599o.getPackageName();
                        APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                        if (Boolean.valueOf(g02.d(activity, packageName, device_type)).booleanValue()) {
                            APKUtils.a l4 = com.join.android.app.common.utils.a.g0(getActivity()).l(getActivity(), this.f48599o.getPackageName(), device_type);
                            if (com.join.mgps.Util.d2.i(this.f48599o.getVer()) && l4.d() < Integer.parseInt(this.f48599o.getVer())) {
                                this.f48599o.setStatus(9);
                            } else {
                                this.f48599o.setStatus(5);
                            }
                        } else {
                            this.f48599o.setStatus(11);
                        }
                    }
                } else {
                    this.f48599o.setStatus(B.getStatus());
                }
            }
        } else {
            if (this.f48586b.getMod_info() != null) {
                D = g1.f.G().C(this.f48586b.getMod_info().getMod_game_id(), this.f48586b.getMod_info().getMain_game_id());
            } else {
                D = g1.f.G().D(this.f48586b.getPackage_name());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).d(getContext(), downloadTask.getPackageName(), APKUtils.DEVICE_TYPE.ALL) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    r0 = g1.f.G().B(this.f48586b.getCrc_sign_id());
                } else if (z4) {
                    if (this.f48586b.getMod_info() != null) {
                        r0 = g1.f.G().B(this.f48586b.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r0 = g1.f.G().B(this.f48586b.getCrc_sign_id());
                } else {
                    r0 = this.f48586b.getMod_info() != null ? g1.f.G().B(this.f48586b.getMod_info().getMod_game_id()) : null;
                    if (r0 == null) {
                        r0 = g1.f.G().B(this.f48586b.getCrc_sign_id());
                    }
                }
            }
            this.f48599o = r0;
        }
        updateButn();
    }

    void showInstallButn() {
        this.f48589e.setVisibility(0);
        this.f48600p.setVisibility(8);
    }

    void showProgress() {
        this.f48589e.setVisibility(8);
        this.f48600p.setVisibility(0);
    }

    void updateButn() {
        DownloadTask downloadTask;
        if (this.f48586b == null || (downloadTask = this.f48599o) == null) {
            return;
        }
        UtilsMy.v2(downloadTask.getSp_tag_info(), this.f48591g, this.f48599o);
        this.f48589e.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask2 = this.f48599o;
        int status = downloadTask2 != null ? downloadTask2.getStatus() : 0;
        if (UtilsMy.m0(this.f48586b.getPay_tag_info(), this.f48586b.getCrc_sign_id()) > 0) {
            status = 43;
        }
        String plugin_num = this.f48599o.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            this.f48589e.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f48589e.setText("开始");
            this.f48589e.setTextColor(getResources().getColor(R.color.app_blue_color));
        } else if (status == 12) {
            showInstallButn();
            this.f48589e.setText("解压中..");
            this.f48592h.setImageResource(R.drawable.extract);
        } else if (status == 13) {
            showInstallButn();
            this.f48589e.setText("解压");
            this.f48592h.setImageResource(R.drawable.reextract);
        } else if (status == 9) {
            showInstallButn();
            this.f48589e.setText("更新");
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
            this.f48589e.setBackgroundResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 11) {
            showInstallButn();
            this.f48589e.setText("安装");
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
            this.f48589e.setBackgroundResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 5 || status == 42) {
            showInstallButn();
            this.f48589e.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f48589e.setText(getContext().getResources().getString(R.string.download_status_finished));
        } else if (status == 2) {
            showProgress();
            this.f48592h.setImageResource(R.drawable.detail_comment_download_pause);
            if (new File(this.f48599o.getPath()).exists()) {
                int i2 = (int) com.php25.PDownload.d.i(this.f48599o.getPath(), this.f48599o.getSize());
                this.f48601q.setProgress(i2);
                TextView textView = this.f48602r;
                textView.setText(i2 + "%");
            }
        } else if (status == 3 || status == 6) {
            showProgress();
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
            if (new File(this.f48599o.getPath()).exists()) {
                Q((int) com.php25.PDownload.d.i(this.f48599o.getPath(), this.f48599o.getSize()));
            }
        } else if (status == 27) {
            showInstallButn();
            Button button = this.f48589e;
            button.setText("暂停中\u3000" + this.f48586b.getSize() + "M");
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 10) {
            showInstallButn();
            Button button2 = this.f48589e;
            button2.setText("等待\u3000" + this.f48586b.getSize() + "M");
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 43) {
            showInstallButn();
            if (this.f48586b.getPay_tag_info() != null && this.f48586b.getPay_tag_info().getPay_game_amount() > 0 && !n1.e0.o().p(this.f48586b.getCrc_sign_id())) {
                Button button3 = this.f48589e;
                button3.setText(button3.getResources().getString(R.string.pay_game_amount, this.f48586b.getPay_tag_info().getPayGameAmount()));
            } else {
                Button button4 = this.f48589e;
                button4.setText(getContext().getResources().getString(R.string.download_status_download) + "\u3000" + this.f48586b.getSize() + "M");
            }
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
            GameDiscoverBean gameDiscoverBean = this.f48586b;
            if (gameDiscoverBean != null) {
                UtilsMy.m0(gameDiscoverBean.getPay_tag_info(), this.f48586b.getCrc_sign_id());
                UtilsMy.B2(this.f48589e, this.f48586b);
            }
        } else if (status == 48) {
            showInstallButn();
            this.f48589e.setText(getResources().getString(R.string.download_status_installing));
        } else {
            showInstallButn();
            this.f48589e.setText(getResources().getString(R.string.download_status_download));
            if (this.f48586b.getPay_tag_info() != null && this.f48586b.getPay_tag_info().getPay_game_amount() > 0 && !n1.e0.o().p(this.f48586b.getCrc_sign_id())) {
                Button button5 = this.f48589e;
                button5.setText(button5.getResources().getString(R.string.pay_game_amount, this.f48586b.getPay_tag_info().getPayGameAmount()));
            } else {
                Button button6 = this.f48589e;
                button6.setText(getContext().getResources().getString(R.string.download_status_download) + "\u3000" + this.f48586b.getSize() + "M");
            }
            this.f48592h.setImageResource(R.drawable.detail_comment_download_continue);
            GameDiscoverBean gameDiscoverBean2 = this.f48586b;
            if (gameDiscoverBean2 != null) {
                UtilsMy.m0(gameDiscoverBean2.getPay_tag_info(), this.f48586b.getCrc_sign_id());
                UtilsMy.B2(this.f48589e, this.f48586b);
            }
        }
    }
}
