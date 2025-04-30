package com.join.mgps.activity;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;
/* compiled from: InstallAppDialogActivity.java */
/* loaded from: classes3.dex */
public class q0 extends AlertDialog implements View.OnClickListener {

    /* renamed from: i  reason: collision with root package name */
    public static final int f38343i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f38344j = 1;

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f38345a;

    /* renamed from: b  reason: collision with root package name */
    private Context f38346b;

    /* renamed from: c  reason: collision with root package name */
    TextView f38347c;

    /* renamed from: d  reason: collision with root package name */
    ImageView f38348d;

    /* renamed from: e  reason: collision with root package name */
    b f38349e;

    /* renamed from: f  reason: collision with root package name */
    PrefDef_ f38350f;

    /* renamed from: g  reason: collision with root package name */
    int f38351g;

    /* renamed from: h  reason: collision with root package name */
    List<DownloadTask> f38352h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InstallAppDialogActivity.java */
    /* loaded from: classes3.dex */
    public class a implements BaseQuickAdapter.g {
        a() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.g
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
            DownloadTask item = q0.this.f38349e.getItem(i2);
            if (view.getId() == R.id.btn_install) {
                q0 q0Var = q0.this;
                if (q0Var.f38351g != 1) {
                    q0Var.e(item);
                    com.papa.sim.statistic.p.l(q0.this.f38346b).K1(Event.onclickGameInstall, new Ext().setGameId(item.getCrc_link_type_val()));
                    q0.this.f38349e.remove(i2);
                    q0.this.f38349e.notifyItemRemoved(i2);
                    if (q0.this.f38349e.getItemCount() > 0) {
                        q0.this.g();
                        return;
                    } else {
                        q0.this.dismiss();
                        return;
                    }
                }
                if (item.isSo()) {
                    if (item.isMod()) {
                        com.papa.sim.statistic.p.l(q0.this.f38346b).K1(Event.onclickSoGameStart, new Ext().setGameId(item.getCrc_link_type_val()).setGameFlag(1));
                    } else {
                        com.papa.sim.statistic.p.l(q0.this.f38346b).K1(Event.onclickSoGameStart, new Ext().setGameId(item.getCrc_link_type_val()));
                    }
                } else if (item.isMod()) {
                    com.papa.sim.statistic.p.l(q0.this.f38346b).K1(Event.onclickSinGameStart, new Ext().setGameId(item.getCrc_link_type_val()).setGameFlag(1));
                } else {
                    com.papa.sim.statistic.p.l(q0.this.f38346b).K1(Event.onclickSinGameStart, new Ext().setGameId(item.getCrc_link_type_val()));
                }
                com.papa.sim.statistic.p.l(q0.this.f38346b).K1(Event.onclickGameStart, new Ext().setGameId(item.getCrc_link_type_val()));
                UtilsMy.c3(q0.this.f38346b, item);
                q0.this.dismiss();
            }
        }
    }

    /* compiled from: InstallAppDialogActivity.java */
    /* loaded from: classes3.dex */
    public class b extends BaseQuickAdapter<DownloadTask, com.join.mgps.base.b> {
        public b() {
            super((int) R.layout.install_app_list);
        }

        @Override // com.join.mgps.base.BaseQuickAdapter
        /* renamed from: a */
        public void convert(com.join.mgps.base.b bVar, DownloadTask downloadTask) {
            LinearLayout linearLayout = (LinearLayout) bVar.k(R.id.tipsLayout);
            ImageView imageView = (ImageView) bVar.k(R.id.iv_star);
            TextView textView = (TextView) bVar.k(R.id.tv_score);
            Button button = (Button) bVar.k(R.id.btn_install);
            MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.appIcon), downloadTask.getPortraitURL());
            ((TextView) bVar.k(R.id.appName)).setText(downloadTask.getShowName());
            button.setBackgroundResource(R.drawable.recom_blue_butn);
            if (!com.join.mgps.Util.d2.h(downloadTask.getScore()) && Float.valueOf(downloadTask.getScore()).floatValue() > 0.0f) {
                textView.setVisibility(0);
                textView.setText(downloadTask.getScore());
                imageView.setVisibility(0);
            } else {
                textView.setVisibility(8);
                imageView.setVisibility(8);
            }
            q0 q0Var = q0.this;
            if (q0Var.f38351g == 1) {
                button.setText(q0Var.f38346b.getResources().getString(R.string.download_status_finished));
                button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                button.setTextColor(q0.this.f38346b.getResources().getColor(R.color.app_main_color));
            } else {
                button.setText(q0Var.f38346b.getResources().getString(R.string.install));
                button.setBackgroundResource(R.drawable.recom_green_butn);
                button.setTextColor(q0.this.f38346b.getResources().getColor(R.color.app_green_color));
            }
            UtilsMy.D(downloadTask.getTipBeans(), downloadTask.getSp_tag_info(), linearLayout, q0.this.f38346b);
            bVar.c(R.id.btn_install);
        }
    }

    public q0(Context context, int i2, List<DownloadTask> list) {
        super(context, R.style.Dialog);
        this.f38351g = 0;
        this.f38346b = context;
        this.f38351g = i2;
        this.f38350f = new PrefDef_(getContext());
        this.f38352h = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(DownloadTask downloadTask) {
        try {
            if (com.join.android.app.common.utils.h.I(this.f38346b, downloadTask, null)) {
                UtilsMy.g2(downloadTask, 5);
                return;
            }
            if (!APKUtils.E(downloadTask) && !APKUtils.I(downloadTask)) {
                com.join.android.app.common.utils.a.g0(this.f38346b).y(this.f38346b, downloadTask.getGameZipPath());
                return;
            }
            APKUtils.A(this.f38346b, downloadTask);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f38351g == 1) {
            this.f38347c.setText(this.f38346b.getResources().getString(R.string.str_not_open_tip_title));
        } else {
            this.f38347c.setText(this.f38346b.getResources().getString(R.string.str_not_install_tip_title));
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f38345a.getLayoutParams();
        List<DownloadTask> list = this.f38352h;
        if (list != null && list.size() > 3) {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = (int) this.f38346b.getResources().getDimension(R.dimen.wdp420);
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        }
        this.f38345a.setLayoutParams(layoutParams);
        this.f38345a.invalidate();
    }

    public void d() {
        if (this.f38349e == null) {
            b bVar = new b();
            this.f38349e = bVar;
            bVar.setOnItemChildClickListener(new a());
            this.f38345a.setAdapter(this.f38349e);
        }
        this.f38349e.setNewData(this.f38352h);
        g();
    }

    public void f() {
        Context context = this.f38346b;
        if (context instanceof MGMainActivity) {
            ((MGMainActivity) context).onActivityResult(10003, -1, new Intent());
        }
        dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_close) {
            f();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.install_notinstall_app_dialog_activity);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        this.f38345a = (RecyclerView) findViewById(R.id.appList);
        this.f38347c = (TextView) findViewById(R.id.describ);
        ImageView imageView = (ImageView) findViewById(R.id.iv_close);
        this.f38348d = imageView;
        imageView.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.f38351g == 1) {
            com.papa.sim.statistic.p.l(this.f38346b).K1(Event.gameStartShow, new Ext());
        } else {
            com.papa.sim.statistic.p.l(this.f38346b).K1(Event.gameInstallShow, new Ext());
        }
        d();
    }
}
