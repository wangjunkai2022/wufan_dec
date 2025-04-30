package com.join.mgps.fragment;

import android.content.Context;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBeanInfo;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: CollectionThreeSubFragment.java */
@EFragment(R.layout.collection_three_item)
/* loaded from: classes.dex */
public class u extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f50391a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f50392b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f50393c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f50394d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f50395e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RelativeLayout f50396f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f50397g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f50398h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f50399i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ProgressBar f50400j;

    /* renamed from: k  reason: collision with root package name */
    private Context f50401k;

    /* renamed from: l  reason: collision with root package name */
    private CollectionDataBeanInfo f50402l;

    /* renamed from: m  reason: collision with root package name */
    private CollectionBeanSub f50403m;

    /* renamed from: n  reason: collision with root package name */
    private DownloadTask f50404n;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.rpc.d f50405o;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void M(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        updateButn();
    }

    void N(int i2) {
        this.f50400j.setProgress(i2);
        TextView textView = this.f50399i;
        textView.setText(i2 + "%");
    }

    public void O(CollectionDataBeanInfo collectionDataBeanInfo) {
        this.f50402l = collectionDataBeanInfo;
        this.f50403m = collectionDataBeanInfo.getSub().get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        if (this.f50403m != null) {
            MyImageLoader.h(this.f50391a, this.f50402l.getMain().getTpl_pic());
            MyImageLoader.f(this.f50392b, R.drawable.main_normal_icon, this.f50403m.getIco_remote(), MyImageLoader.C(this.f50401k));
            this.f50394d.setText(this.f50403m.getGame_name());
            this.f50393c.setText(this.f50403m.getInfo());
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50405o = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f50401k = getActivity();
        if (this.f50403m != null) {
            DownloadTask B = g1.f.G().B(this.f50403m.getGame_id());
            this.f50404n = B;
            if (B == null) {
                this.f50404n = this.f50403m.getDownloadtaskDown();
                if (UtilsMy.e0(this.f50403m.getTag_info())) {
                    this.f50404n.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.a.g0(this.f50401k).c(this.f50401k, this.f50403m.getPackage_name())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f50401k).k(this.f50401k, this.f50403m.getPackage_name());
                        if (com.join.mgps.Util.d2.i(this.f50403m.getVer()) && k4.d() < Integer.parseInt(this.f50403m.getVer())) {
                            this.f50404n.setStatus(9);
                        } else {
                            this.f50404n.setStatus(5);
                        }
                    } else {
                        this.f50404n.setStatus(0);
                    }
                } else {
                    this.f50404n.setStatus(0);
                }
            } else {
                B.setScreenshot_pic(this.f50403m.getScreenshot_pic());
            }
        }
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void instalButtomButn() {
        DownloadTask downloadTask = this.f50404n;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.f50404n != null && UtilsMy.m0(this.f50403m.getPay_tag_info(), this.f50403m.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.f50404n;
        if (downloadTask2 == null) {
            return;
        }
        if (downloadTask2 != null && (status == 2 || status == 10)) {
            downloadTask2.setStatus(3);
            com.php25.PDownload.d.h(this.f50404n);
        } else if (status == 12) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(getActivity(), this.f50404n);
                return;
            } else if (status == 5) {
                UtilsMy.c3(this.f50401k, downloadTask2);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.f.j(this.f50401k)) {
                    com.join.mgps.Util.i2.a(this.f50401k).b("无网络连接");
                    return;
                }
                int downloadType = this.f50404n.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.f50404n.getCrc_link_type_val() == null || this.f50404n.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    com.php25.PDownload.d.b(this.f50404n);
                    this.f50404n.setVer(this.f50403m.getVer());
                    this.f50404n.setVer_name(this.f50403m.getVer_name());
                    this.f50404n.setUrl(this.f50403m.getDown_url_remote());
                    this.f50404n.setCfg_ver(this.f50403m.getCfg_ver());
                    this.f50404n.setCfg_ver_name(this.f50403m.getCfg_ver_name());
                    this.f50404n.setCfg_down_url(this.f50403m.getCfg_down_url());
                    if (UtilsMy.o0(this.f50403m.getPay_tag_info(), this.f50403m.getCrc_sign_id()) > 0) {
                        UtilsMy.m3(getActivity(), this.f50404n.getCrc_link_type_val());
                    } else {
                        UtilsMy.c1(this.f50404n, this.f50403m);
                        if (!UtilsMy.T0(this.f50401k, this.f50404n)) {
                            if (this.f50403m.getDown_status() == 5) {
                                UtilsMy.R0(this.f50401k, this.f50404n);
                            } else {
                                UtilsMy.F0(this.f50401k, this.f50404n, this.f50403m.getTp_down_url(), this.f50403m.getOther_down_switch(), this.f50403m.getCdn_down_switch());
                            }
                        }
                    }
                } else if (downloadType == 2) {
                    UtilsMy.z3(this.f50404n);
                }
            } else if (status == 42) {
                if (downloadTask2.getCrc_link_type_val() == null || this.f50404n.getCrc_link_type_val().equals("")) {
                    return;
                }
                this.f50404n.setVer(this.f50403m.getVer());
                this.f50404n.setVer_name(this.f50403m.getVer_name());
                this.f50404n.setUrl(this.f50403m.getDown_url_remote());
                this.f50404n.setCfg_ver(this.f50403m.getCfg_ver());
                this.f50404n.setCfg_ver_name(this.f50403m.getCfg_ver_name());
                this.f50404n.setCfg_down_url(this.f50403m.getCfg_down_url());
                UtilsMy.w3(this.f50401k, this.f50404n);
            } else if (11 == status) {
                UtilsMy.j3(downloadTask2, this.f50401k);
            } else {
                if (UtilsMy.o0(this.f50403m.getPay_tag_info(), this.f50403m.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(getActivity(), this.f50404n.getCrc_link_type_val());
                } else {
                    UtilsMy.c1(this.f50404n, this.f50403m);
                    if (!UtilsMy.T0(this.f50401k, this.f50404n)) {
                        if (this.f50403m.getDown_status() == 5) {
                            UtilsMy.R0(this.f50401k, this.f50404n);
                        } else {
                            UtilsMy.F0(this.f50401k, this.f50404n, this.f50403m.getTp_down_url(), this.f50403m.getOther_down_switch(), this.f50403m.getCdn_down_switch());
                        }
                    }
                }
                this.f50404n.setStatus(2);
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        if (r4 != 11) goto L25;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r4) {
        /*
            r3 = this;
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r4.a()
            if (r0 == 0) goto L7a
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r3.f50404n
            if (r1 == 0) goto L7a
            java.lang.String r1 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r3.f50404n
            java.lang.String r2 = r2.getCrc_link_type_val()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L7a
            r3.f50404n = r0
            int r4 = r4.c()
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 8
            if (r4 == r1) goto L2c
            r1 = 11
            if (r4 == r1) goto L64
            goto L7a
        L2c:
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r3.f50404n
            if (r4 == 0) goto L7a
            java.lang.String r4 = r4.getPath()
            if (r4 == 0) goto L7a
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r3.f50404n
            com.join.mgps.Util.UtilsMy.C3(r4)
            android.widget.ProgressBar r4 = r3.f50400j
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r3.f50404n
            long r0 = r0.getProgress()
            int r1 = (int) r0
            r4.setProgress(r1)
            android.widget.TextView r4 = r3.f50399i
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r3.f50404n
            long r1 = r1.getProgress()
            r0.append(r1)
            java.lang.String r1 = "%"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.setText(r0)
            return
        L64:
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r3.f50404n
            if (r4 == 0) goto L7a
            java.lang.String r4 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r3.f50404n
            java.lang.String r1 = r1.getCrc_link_type_val()
            boolean r4 = r4.equals(r1)
            if (r4 == 0) goto L7a
            r3.f50404n = r0
        L7a:
            r3.updateButn()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.u.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        DownloadTask B = g1.f.G().B(this.f50403m.getGame_id());
        if (B == null || this.f50404n == null) {
            return;
        }
        this.f50404n = B;
        if (B.getFileType().equals(Dtype.android.name()) && this.f50404n.getStatus() == 5) {
            if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this.f50401k).c(this.f50401k, this.f50404n.getPackageName())).booleanValue()) {
                APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f50401k).k(this.f50401k, this.f50404n.getPackageName());
                if (com.join.mgps.Util.d2.i(this.f50404n.getVer()) && k4.d() < Integer.parseInt(this.f50404n.getVer())) {
                    this.f50404n.setStatus(9);
                } else {
                    this.f50404n.setStatus(5);
                }
            } else {
                this.f50404n.setStatus(11);
            }
        } else {
            this.f50404n.setStatus(B.getStatus());
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.f50404n;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            this.f50404n.setStatus(3);
            com.php25.PDownload.d.h(this.f50404n);
            updateButn();
        } else if (this.f50404n.getStatus() == 3 || this.f50404n.getStatus() == 6) {
            com.php25.PDownload.d.c(this.f50404n, this.f50401k);
            this.f50404n.setStatus(2);
            updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        this.f50397g.setVisibility(0);
        this.f50396f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        this.f50397g.setVisibility(8);
        this.f50396f.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        if (this.f50403m == null || this.f50404n == null) {
            return;
        }
        this.f50395e.setBackgroundResource(R.drawable.detial_simple_install_selecter);
        DownloadTask downloadTask = this.f50404n;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f50403m.getPay_tag_info(), this.f50403m.getCrc_sign_id()) > 0) {
            status = 43;
        }
        String plugin_num = this.f50404n.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            this.f50395e.setBackgroundResource(R.drawable.recom_blue_butn);
            this.f50395e.setText("开始");
            this.f50395e.setTextColor(getResources().getColor(R.color.app_blue_color));
        } else if (status == 12) {
            showInstallButn();
            this.f50395e.setText("解压中..");
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.extract);
        } else if (status == 13) {
            showInstallButn();
            this.f50395e.setText("解压");
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.reextract);
        } else if (status == 9) {
            showInstallButn();
            this.f50395e.setText("更新");
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 11) {
            showInstallButn();
            this.f50395e.setText("安装");
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 5 || status == 42) {
            showInstallButn();
            this.f50395e.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f50395e.setText(this.f50401k.getResources().getString(R.string.download_status_finished));
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 2) {
            showProgress();
            this.f50398h.setImageResource(R.drawable.detail_comment_download_pause);
            if (new File(this.f50404n.getPath()).exists()) {
                int i2 = (int) com.php25.PDownload.d.i(this.f50404n.getPath(), this.f50404n.getSize());
                this.f50400j.setProgress(i2);
                TextView textView = this.f50399i;
                textView.setText(i2 + "%");
            }
        } else if (status == 3) {
            showProgress();
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
            if (new File(this.f50404n.getPath()).exists()) {
                N((int) com.php25.PDownload.d.i(this.f50404n.getPath(), this.f50404n.getSize()));
            }
        } else if (status == 10) {
            showInstallButn();
            Button button = this.f50395e;
            button.setText("等待\u3000" + this.f50403m.getSize() + "M");
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 43) {
            showInstallButn();
            if (this.f50403m.getPay_tag_info() != null && this.f50403m.getPay_tag_info().getPay_game_amount() > 0 && !n1.e0.o().p(this.f50403m.getCrc_sign_id())) {
                Button button2 = this.f50395e;
                button2.setText(button2.getResources().getString(R.string.pay_game_amount, this.f50403m.getPay_tag_info().getPayGameAmount()));
            } else {
                Button button3 = this.f50395e;
                button3.setText(this.f50401k.getResources().getString(R.string.download_status_download) + "\u3000" + this.f50403m.getSize() + "M");
            }
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
            CollectionBeanSub collectionBeanSub = this.f50403m;
            if (collectionBeanSub != null) {
                UtilsMy.m0(collectionBeanSub.getPay_tag_info(), this.f50403m.getCrc_sign_id());
                UtilsMy.r2(this.f50395e, this.f50403m);
            }
        } else if (status == 48) {
            showInstallButn();
            this.f50395e.setText(this.f50401k.getResources().getString(R.string.download_status_installing));
        } else {
            showInstallButn();
            if (this.f50403m.getPay_tag_info() != null && this.f50403m.getPay_tag_info().getPay_game_amount() > 0 && !n1.e0.o().p(this.f50403m.getCrc_sign_id())) {
                Button button4 = this.f50395e;
                button4.setText(button4.getResources().getString(R.string.pay_game_amount, this.f50403m.getPay_tag_info().getPayGameAmount()));
            } else {
                Button button5 = this.f50395e;
                button5.setText(this.f50401k.getResources().getString(R.string.download_status_download) + "\u3000" + this.f50403m.getSize() + "M");
            }
            this.f50395e.setTextColor(-1);
            this.f50398h.setImageResource(R.drawable.detail_comment_download_continue);
            CollectionBeanSub collectionBeanSub2 = this.f50403m;
            if (collectionBeanSub2 != null) {
                UtilsMy.m0(collectionBeanSub2.getPay_tag_info(), this.f50403m.getCrc_sign_id());
                UtilsMy.r2(this.f50395e, this.f50403m);
            }
        }
    }
}
