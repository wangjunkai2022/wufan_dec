package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.RequestModFeedbackArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
/* compiled from: ModQuestionnaireDialog.java */
/* loaded from: classes3.dex */
public class g1 extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    DownloadTask f47696a;

    /* renamed from: b  reason: collision with root package name */
    View f47697b;

    /* renamed from: c  reason: collision with root package name */
    View f47698c;

    /* renamed from: d  reason: collision with root package name */
    View f47699d;

    /* renamed from: e  reason: collision with root package name */
    private String f47700e;

    /* renamed from: f  reason: collision with root package name */
    private String f47701f;

    /* renamed from: g  reason: collision with root package name */
    Handler f47702g;

    /* renamed from: h  reason: collision with root package name */
    private View f47703h;

    /* renamed from: i  reason: collision with root package name */
    TextView f47704i;

    /* renamed from: j  reason: collision with root package name */
    PrefDef_ f47705j;

    /* renamed from: k  reason: collision with root package name */
    private SimpleDraweeView f47706k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f47707l;

    public g1(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.f47702g = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str) {
        i2.a(getContext()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(ModFeedbackBean modFeedbackBean) {
        if (modFeedbackBean != null && modFeedbackBean.getShow_switch() == 1) {
            com.join.mgps.Util.a0.c0(getContext()).S(getContext(), this.f47701f, this.f47700e, modFeedbackBean);
        } else if (APKUtils.I(this.f47696a)) {
            com.join.mgps.Util.a0 c02 = com.join.mgps.Util.a0.c0(getContext());
            Context context = getContext();
            String str = this.f47701f;
            c02.T(context, str, str);
        } else {
            com.join.mgps.Util.a0.c0(getContext()).T(getContext(), this.f47701f, this.f47700e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        Context context = getContext();
        if (com.join.android.app.common.utils.f.j(context)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel<RequestModFeedbackArgs> requestModel = new RequestModel<>();
                RequestModFeedbackArgs requestModFeedbackArgs = new RequestModFeedbackArgs();
                requestModFeedbackArgs.setUid(accountData.getUid());
                requestModFeedbackArgs.setGameId(this.f47701f);
                requestModel.setArgs(requestModFeedbackArgs);
                requestModel.setDefault(context);
                ResponseModel<ModFeedbackBean> E = com.join.mgps.rpc.impl.h.L().E(requestModel);
                if (E == null || E.getCode() != 200) {
                    if (E != null) {
                        j(E.getMessage());
                        return;
                    }
                    return;
                }
                final ModFeedbackBean data = E.getData();
                this.f47702g.post(new Runnable() { // from class: com.join.mgps.dialog.c1
                    @Override // java.lang.Runnable
                    public final void run() {
                        g1.this.f();
                    }
                });
                this.f47702g.postDelayed(new Runnable() { // from class: com.join.mgps.dialog.e1
                    @Override // java.lang.Runnable
                    public final void run() {
                        g1.this.g(data);
                    }
                }, 200L);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                j(context.getResources().getString(R.string.request_failure));
                return;
            }
        }
        j(context.getResources().getString(R.string.net_connect_failed));
    }

    public void i(String str) {
        show();
        this.f47701f = str;
        DownloadTask B = g1.f.G().B(str);
        this.f47696a = B;
        this.f47704i.setText(B.getShowName());
        DownloadTask downloadTask = this.f47696a;
        if (downloadTask != null) {
            this.f47700e = downloadTask.getRef_crc_sign_id();
            this.f47704i.setText(this.f47696a.getShowName());
            SimpleDraweeView simpleDraweeView = this.f47706k;
            if (simpleDraweeView != null) {
                MyImageLoader.h(simpleDraweeView, this.f47696a.getPortraitURL());
            }
            TextView textView = this.f47707l;
            if (textView != null) {
                textView.setText(this.f47696a.getDescribe());
            }
        }
        com.papa.sim.statistic.p.l(getContext()).K1(Event.showmodRunNormal, new Ext().setGameId(str).setFrom(APKUtils.I(this.f47696a) ? "1" : "0"));
    }

    void j(final String str) {
        this.f47702g.post(new Runnable() { // from class: com.join.mgps.dialog.f1
            @Override // java.lang.Runnable
            public final void run() {
                g1.this.e(str);
            }
        });
    }

    void k() {
        new Thread(new Runnable() { // from class: com.join.mgps.dialog.d1
            @Override // java.lang.Runnable
            public final void run() {
                g1.this.h();
            }
        }).start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.error) {
            Ext ext = new Ext();
            ext.setGameFlag(1);
            ext.setGameId(this.f47701f);
            if (APKUtils.I(this.f47696a)) {
                com.papa.sim.statistic.p.l(getContext()).K1(Event.modRunNormal, ext.setFrom("1"));
            } else {
                com.papa.sim.statistic.p.l(getContext()).K1(Event.modRunNormal, ext);
            }
            this.f47696a.setGame_run_state(3);
            g1.f.G().m(this.f47696a);
            k();
            this.f47705j.lastLaunchModGameId().g("");
            return;
        }
        int i2 = 0;
        if (id != R.id.error1) {
            if (id != R.id.success) {
                if (id == R.id.iv_close) {
                    super.dismiss();
                    return;
                }
                return;
            }
            Ext ext2 = new Ext();
            ext2.setGameFlag(0);
            ext2.setGameId(this.f47701f);
            this.f47696a.setGame_run_state(1);
            g1.f.G().m(this.f47696a);
            if (APKUtils.I(this.f47696a)) {
                com.papa.sim.statistic.p.l(getContext()).K1(Event.modRunNormal, ext2.setFrom("1"));
            } else {
                com.papa.sim.statistic.p.l(getContext()).K1(Event.modRunNormal, ext2);
            }
            super.dismiss();
            this.f47705j.lastLaunchModGameId().g("");
            return;
        }
        Ext ext3 = new Ext();
        ext3.setGameFlag(2);
        ext3.setGameId(this.f47701f);
        this.f47696a.setGame_run_state(2);
        g1.f.G().m(this.f47696a);
        if (APKUtils.I(this.f47696a)) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.modRunNormal, ext3.setFrom("1"));
        } else {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.modRunNormal, ext3);
        }
        if (APKUtils.E(this.f47696a)) {
            i2 = this.f47696a.getModInfoBean().getVer();
        } else if (APKUtils.H(this.f47696a)) {
            i2 = this.f47696a.getSingleGameModInfoBean().getVersion().intValue();
        }
        super.dismiss();
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("建议与反馈");
        intentDateBean.setLink_type_val("https://apphd.5fun.net/static/20210803feedback/index.html?gameid=" + this.f47701f + "&mod_version=" + i2);
        IntentUtil.getInstance().goShareWebActivityNewTask(getContext(), intentDateBean);
        this.f47705j.lastLaunchModGameId().g("");
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mod_questionnaire);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f47704i = (TextView) findViewById(R.id.name);
        this.f47697b = findViewById(R.id.error);
        this.f47698c = findViewById(R.id.error1);
        this.f47699d = findViewById(R.id.success);
        this.f47703h = findViewById(R.id.iv_close);
        this.f47706k = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.f47707l = (TextView) findViewById(R.id.tv_desc);
        this.f47697b.setOnClickListener(this);
        this.f47698c.setOnClickListener(this);
        this.f47699d.setOnClickListener(this);
        this.f47705j = new PrefDef_(getContext());
    }
}
