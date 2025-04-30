package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: VaExtSupportDialog.java */
/* loaded from: classes3.dex */
public class z1 extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private SimpleDraweeView f48134a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f48135b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f48136c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f48137d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f48138e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f48139f;

    /* renamed from: g  reason: collision with root package name */
    private Button f48140g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f48141h;

    /* renamed from: i  reason: collision with root package name */
    DownloadTask f48142i;

    /* renamed from: j  reason: collision with root package name */
    EMUApkTable f48143j;

    public z1(@NonNull Context context) {
        super(context);
    }

    public void a(DownloadTask downloadTask, EMUApkTable eMUApkTable) {
        super.show();
        this.f48142i = downloadTask;
        this.f48143j = eMUApkTable;
        if (downloadTask != null) {
            MyImageLoader.h(this.f48134a, downloadTask.getPortraitURL());
            this.f48135b.setText(this.f48142i.getShowName());
            if (!com.join.mgps.Util.d2.h(this.f48142i.getScore()) && Float.valueOf(this.f48142i.getScore()).floatValue() > 0.0f) {
                this.f48138e.setVisibility(0);
                this.f48138e.setText(this.f48142i.getScore());
                this.f48137d.setVisibility(0);
            } else {
                this.f48138e.setVisibility(8);
                this.f48137d.setVisibility(8);
            }
            this.f48139f.setText(getContext().getResources().getString(R.string.str_va_support_install_more, Integer.valueOf(com.join.mgps.va.overmind.e.f52358n.e() ? 32 : 64)));
            UtilsMy.B(this.f48142i.getSp_tag_info(), this.f48136c, getContext());
        }
    }

    public void b(CommonGameInfoBean commonGameInfoBean, EMUApkTable eMUApkTable) {
        GInfoBean g_info;
        super.show();
        this.f48143j = eMUApkTable;
        if (commonGameInfoBean == null || commonGameInfoBean.getG_info() == null || (g_info = commonGameInfoBean.getG_info()) == null) {
            return;
        }
        MyImageLoader.h(this.f48134a, g_info.getIco());
        this.f48135b.setText(g_info.getName());
        if (g_info.getScore().doubleValue() <= 0.0d && g_info.showScore()) {
            this.f48138e.setVisibility(8);
            this.f48137d.setVisibility(8);
        } else {
            this.f48138e.setVisibility(0);
            this.f48138e.setText(String.valueOf(g_info.getScore()));
            this.f48137d.setVisibility(0);
        }
        this.f48139f.setText(getContext().getResources().getString(R.string.str_va_support_install_more, Integer.valueOf(com.join.mgps.va.overmind.e.B() ? 32 : 64)));
        UtilsMy.B(g_info.getSp_tag_info(), this.f48136c, getContext());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_install) {
            if (id == R.id.iv_close) {
                dismiss();
                return;
            }
            return;
        }
        EMUApkTable eMUApkTable = this.f48143j;
        if (eMUApkTable != null) {
            UtilsMy.V0(eMUApkTable, getContext());
        }
        dismiss();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        setContentView(R.layout.dialog_va_ext_support);
        this.f48134a = (SimpleDraweeView) findViewById(R.id.appIcon);
        this.f48135b = (TextView) findViewById(R.id.appName);
        this.f48136c = (LinearLayout) findViewById(R.id.tipsLayout);
        this.f48137d = (ImageView) findViewById(R.id.iv_star);
        this.f48138e = (TextView) findViewById(R.id.tv_score);
        this.f48139f = (TextView) findViewById(R.id.tv_content);
        this.f48140g = (Button) findViewById(R.id.btn_install);
        this.f48141h = (ImageView) findViewById(R.id.iv_close);
        this.f48140g.setOnClickListener(this);
        this.f48141h.setOnClickListener(this);
    }
}
