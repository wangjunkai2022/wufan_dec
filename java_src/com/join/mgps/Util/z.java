package com.join.mgps.Util;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dialog.CustomerAlertDialog;
import com.join.mgps.dialog.PlugUpdateDialog_;
import com.join.mgps.dialog.b;
import com.join.mgps.dialog.h0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CouponsData;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.EBean;
/* compiled from: DialogUtil.java */
@EBean(scope = EBean.Scope.Singleton)
/* loaded from: classes3.dex */
public class z {

    /* renamed from: k  reason: collision with root package name */
    private static final String f27971k = "customer_alert";

    /* renamed from: a  reason: collision with root package name */
    Dialog f27972a;

    /* renamed from: b  reason: collision with root package name */
    AlertDialog.Builder f27973b = null;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.dialog.b1 f27974c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.dialog.g1 f27975d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.dialog.k1 f27976e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.dialog.j1 f27977f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.dialog.e f27978g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.activity.q0 f27979h;

    /* renamed from: i  reason: collision with root package name */
    private com.join.mgps.dialog.o1 f27980i;

    /* renamed from: j  reason: collision with root package name */
    private com.join.android.app.common.dialog.c f27981j;

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f27982a;

        a(n0 n0Var) {
            this.f27982a = n0Var;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            n0 n0Var = this.f27982a;
            if (n0Var != null) {
                n0Var.onCancel();
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f27984a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27985b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27986c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27987d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ CheckBox f27988e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ EMUApkTable f27989f;

        a0(com.join.mgps.customview.t tVar, Context context, String str, String str2, CheckBox checkBox, EMUApkTable eMUApkTable) {
            this.f27984a = tVar;
            this.f27985b = context;
            this.f27986c = str;
            this.f27987d = str2;
            this.f27988e = checkBox;
            this.f27989f = eMUApkTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f27984a.dismiss();
            IntentUtil.getInstance().goGameMainActivity(this.f27985b, this.f27986c, this.f27987d);
            if (this.f27988e.isChecked()) {
                try {
                    EMUApkTable eMUApkTable = this.f27989f;
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(eMUApkTable.getVer().split("_")[0]));
                    n1.p.o().update(this.f27989f);
                } catch (NumberFormatException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class b implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27991a;

        b(Context context) {
            this.f27991a = context;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f27991a);
            bVar.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f27993a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EMUApkTable f27994b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f27995c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CheckBox f27996d;

        b0(com.join.mgps.customview.t tVar, EMUApkTable eMUApkTable, Context context, CheckBox checkBox) {
            this.f27993a = tVar;
            this.f27994b = eMUApkTable;
            this.f27995c = context;
            this.f27996d = checkBox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f27993a;
            if (tVar != null && tVar.isShowing()) {
                this.f27993a.dismiss();
            }
            UtilsMy.V0(this.f27994b, this.f27995c);
            if (this.f27996d.isChecked()) {
                try {
                    EMUApkTable eMUApkTable = this.f27994b;
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(eMUApkTable.getVer().split("_")[0]));
                    n1.p.o().update(this.f27994b);
                } catch (NumberFormatException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27998a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f27999b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28000c;

        c(Context context, CommonGameInfoBean commonGameInfoBean, com.join.mgps.customview.t tVar) {
            this.f27998a = context;
            this.f27999b = commonGameInfoBean;
            this.f28000c = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(this.f27998a)) {
                i2.a(this.f27998a).b("无网络连接");
                return;
            }
            UtilsMy.U1(this.f27998a, this.f27999b.getDownloadTask().getCrc_link_type_val(), this.f27999b);
            com.join.mgps.customview.t tVar = this.f28000c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28000c.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class c0 extends com.join.mgps.dialog.e {
        c0(Context context) {
            super(context);
        }

        @Override // com.join.mgps.dialog.e, android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            z.this.f27978g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28003a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f28004b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28005c;

        d(Context context, CommonGameInfoBean commonGameInfoBean, com.join.mgps.customview.t tVar) {
            this.f28003a = context;
            this.f28004b = commonGameInfoBean;
            this.f28005c = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.c3(this.f28003a, this.f28004b.getDownloadTask());
            com.join.mgps.customview.t tVar = this.f28005c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28005c.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class d0 implements DialogInterface.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f28007a;

        d0(n0 n0Var) {
            this.f28007a = n0Var;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            z.this.f27980i = null;
            n0 n0Var = this.f28007a;
            if (n0Var != null) {
                n0Var.onDismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28009a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f28010b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28011c;

        e(Context context, DownloadTask downloadTask, com.join.mgps.customview.t tVar) {
            this.f28009a = context;
            this.f28010b = downloadTask;
            this.f28011c = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(this.f28009a)) {
                i2.a(this.f28009a).b("无网络连接");
                return;
            }
            EMUUpdateTable eMUUpdateTable = null;
            HashMap hashMap = new HashMap(1);
            hashMap.put("crc_sign_id", this.f28010b.getCrc_link_type_val());
            List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
            if (h4 != null && h4.size() > 0) {
                eMUUpdateTable = h4.get(0);
            }
            DownloadTask B = g1.f.G().B(this.f28010b.getCrc_link_type_val());
            if (B != null) {
                this.f28010b.setId(B.getId());
            }
            if (UtilsMy.T0(this.f28009a, this.f28010b)) {
                return;
            }
            if (this.f28010b.getDown_status() == 5) {
                UtilsMy.R0(this.f28009a, this.f28010b);
                return;
            }
            if (eMUUpdateTable != null) {
                this.f28010b.setVer(eMUUpdateTable.getVer());
                this.f28010b.setVer_name(eMUUpdateTable.getVer_name());
                this.f28010b.setUrl(eMUUpdateTable.getDown_url_remote());
                g1.f.G().m(this.f28010b);
                UtilsMy.A0(g1.f.G().B(this.f28010b.getCrc_link_type_val()));
                if (UtilsMy.n0(this.f28010b.getPay_game_amount(), this.f28010b.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(this.f28009a, this.f28010b.getCrc_link_type_val());
                } else {
                    Context context = this.f28009a;
                    DownloadTask downloadTask = this.f28010b;
                    UtilsMy.F0(context, downloadTask, downloadTask.getTp_down_url(), this.f28010b.getOther_down_switch(), this.f28010b.getCdn_down_switch());
                }
            }
            com.join.mgps.customview.t tVar = this.f28011c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28011c.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class e0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28013a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f28014b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28015c;

        /* compiled from: DialogUtil.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e0 e0Var = e0.this;
                t1.a(e0Var.f28013a, e0Var.f28014b, e0Var.f28015c, z.this.f27981j.c());
                org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.b(e0.this.f28015c));
            }
        }

        e0(Context context, String str, String str2) {
            this.f28013a = context;
            this.f28014b = str;
            this.f28015c = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                z.this.f27981j.dismiss();
            } catch (Exception unused) {
            }
            new Handler().postDelayed(new a(), 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28018a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f28019b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28020c;

        f(Context context, DownloadTask downloadTask, com.join.mgps.customview.t tVar) {
            this.f28018a = context;
            this.f28019b = downloadTask;
            this.f28020c = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.c3(this.f28018a, this.f28019b);
            com.join.mgps.customview.t tVar = this.f28020c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28020c.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class f0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrefDef_ f28022a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f28023b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f28024c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f28025d;

        f0(PrefDef_ prefDef_, DownloadTask downloadTask, Context context, String str) {
            this.f28022a = prefDef_;
            this.f28023b = downloadTask;
            this.f28024c = context;
            this.f28025d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                z.this.f27981j.dismiss();
            } catch (Exception unused) {
            }
            String d4 = this.f28022a.isNoShowAddShortcut().d();
            if (!d2.h(d4)) {
                if (!d4.contains(this.f28023b.getCrc_link_type_val())) {
                    d4 = d4 + "," + this.f28023b.getCrc_link_type_val();
                }
            } else {
                d4 = this.f28023b.getCrc_link_type_val();
            }
            this.f28022a.isNoShowAddShortcut().g(d4);
            this.f28023b.setNotCheckAddShortcut(true);
            UtilsMy.e3(this.f28024c, this.f28023b, 0, this.f28025d);
            if (z.this.f27981j != null) {
                try {
                    z.this.f27981j.dismiss();
                } catch (Exception unused2) {
                }
            }
            this.f28023b.setNotCheckAddShortcut(false);
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class g implements b.c {
        g() {
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class g0 implements DialogInterface.OnKeyListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f28028a;

        g0(n0 n0Var) {
            this.f28028a = n0Var;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            n0 n0Var = this.f28028a;
            if (n0Var != null) {
                return n0Var.a(dialogInterface, i2, keyEvent);
            }
            return false;
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class h implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28030a;

        h(Context context) {
            this.f28030a = context;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            Context context = this.f28030a;
            if (context instanceof Activity) {
                ((Activity) context).finish();
            }
            bVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class h0 implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f28032a;

        h0(n0 n0Var) {
            this.f28032a = n0Var;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            n0 n0Var = this.f28032a;
            if (n0Var != null) {
                n0Var.onCancel();
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class i implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28034a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o0 f28035b;

        i(Context context, o0 o0Var) {
            this.f28034a = context;
            this.f28035b = o0Var;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
            o0 o0Var = this.f28035b;
            if (o0Var != null) {
                o0Var.a();
            }
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f28034a);
            bVar.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class i0 implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28037a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n0 f28038b;

        i0(Context context, n0 n0Var) {
            this.f28037a = context;
            this.f28038b = n0Var;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            n0 n0Var = this.f28038b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f28037a);
            bVar.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28040a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o0 f28041b;

        j(com.join.mgps.customview.t tVar, o0 o0Var) {
            this.f28040a = tVar;
            this.f28041b = o0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f28040a;
            if (tVar != null && tVar.isShowing()) {
                this.f28040a.dismiss();
            }
            o0 o0Var = this.f28041b;
            if (o0Var != null) {
                o0Var.a();
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class j0 implements DialogInterface.OnKeyListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f28043a;

        j0(n0 n0Var) {
            this.f28043a = n0Var;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            n0 n0Var = this.f28043a;
            if (n0Var != null) {
                return n0Var.a(dialogInterface, i2, keyEvent);
            }
            return false;
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class k implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28045a;

        k(Context context) {
            this.f28045a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.f28045a.getPackageName(), null));
            this.f28045a.startActivity(intent);
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class k0 implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f28047a;

        k0(n0 n0Var) {
            this.f28047a = n0Var;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            n0 n0Var = this.f28047a;
            if (n0Var != null) {
                n0Var.onCancel();
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28049a;

        l(com.join.mgps.customview.t tVar) {
            this.f28049a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goAccountUpgradeActivity(view.getContext());
            com.join.mgps.customview.t tVar = this.f28049a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28049a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class l0 implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28051a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n0 f28052b;

        l0(Context context, n0 n0Var) {
            this.f28051a = context;
            this.f28052b = n0Var;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            n0 n0Var = this.f28052b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            IntentUtil.getInstance().goShareWebActivity(this.f28051a, "http://anv3cjapi.5fun.com/member/battle_kick/index");
            n0 n0Var = this.f28052b;
            if (n0Var != null) {
                n0Var.onDismiss();
            }
            bVar.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28054a;

        m(com.join.mgps.customview.t tVar) {
            this.f28054a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f28054a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28054a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class m0 implements DialogInterface.OnKeyListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f28056a;

        m0(n0 n0Var) {
            this.f28056a = n0Var;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            n0 n0Var = this.f28056a;
            if (n0Var != null) {
                return n0Var.a(dialogInterface, i2, keyEvent);
            }
            return false;
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28058a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28059b;

        n(Context context, com.join.mgps.customview.t tVar) {
            this.f28058a = context;
            this.f28059b = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVip(this.f28058a);
            com.join.mgps.customview.t tVar = this.f28059b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28059b.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public interface n0 {
        boolean a(DialogInterface dialogInterface, int i2, KeyEvent keyEvent);

        void onCancel();

        void onDismiss();
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28061a;

        o(com.join.mgps.customview.t tVar) {
            this.f28061a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f28061a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28061a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public interface o0 {
        void a();
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28063a;

        p(com.join.mgps.customview.t tVar) {
            this.f28063a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goSvip(view.getContext());
            com.join.mgps.customview.t tVar = this.f28063a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28063a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28065a;

        q(com.join.mgps.customview.t tVar) {
            this.f28065a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f28065a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28065a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28067a;

        r(com.join.mgps.customview.t tVar) {
            this.f28067a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVipCdk(view.getContext());
            com.join.mgps.customview.t tVar = this.f28067a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28067a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28069a;

        s(com.join.mgps.customview.t tVar) {
            this.f28069a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f28069a;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28069a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1.a f28071a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28072b;

        t(l1.a aVar, com.join.mgps.customview.t tVar) {
            this.f28071a = aVar;
            this.f28072b = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28071a.onClickOk();
            com.join.mgps.customview.t tVar = this.f28072b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28072b.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1.a f28074a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28075b;

        u(l1.a aVar, com.join.mgps.customview.t tVar) {
            this.f28074a = aVar;
            this.f28075b = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28074a.onClickCancle();
            com.join.mgps.customview.t tVar = this.f28075b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f28075b.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    public class v implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28077a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n0 f28078b;

        v(Context context, n0 n0Var) {
            this.f28077a = context;
            this.f28078b = n0Var;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            n0 n0Var = this.f28078b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f28077a);
            bVar.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1.b f28080a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f28081b;

        w(l1.b bVar, Dialog dialog) {
            this.f28080a = bVar;
            this.f28081b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1.b bVar = this.f28080a;
            if (bVar != null) {
                bVar.b(this.f28081b);
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1.b f28083a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f28084b;

        x(l1.b bVar, Dialog dialog) {
            this.f28083a = bVar;
            this.f28084b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1.b bVar = this.f28083a;
            if (bVar != null) {
                bVar.a(this.f28084b);
            }
        }
    }

    /* compiled from: DialogUtil.java */
    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28086a;

        y(com.join.mgps.customview.t tVar) {
            this.f28086a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28086a.dismiss();
        }
    }

    /* compiled from: DialogUtil.java */
    /* renamed from: com.join.mgps.Util.z$z  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0146z implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f28088a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f28089b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28090c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f28091d;

        View$OnClickListenerC0146z(com.join.mgps.customview.t tVar, Context context, String str, String str2) {
            this.f28088a = tVar;
            this.f28089b = context;
            this.f28090c = str;
            this.f28091d = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f28088a;
            if (tVar != null && tVar.isShowing()) {
                this.f28088a.dismiss();
            }
            if (d2.i(APKUtils.G(this.f28089b))) {
                IntentUtil.getInstance().goQQGroup(this.f28089b, this.f28090c);
                com.join.mgps.Util.i0.M(this.f28089b, this.f28091d);
                i2.a(this.f28089b).b("已复制Q群号，若未能跳转请自行打开qq粘贴群号");
                return;
            }
            com.join.mgps.Util.i0.M(this.f28089b, this.f28091d);
            i2.a(this.f28089b).b("已复制Q群号，若未能跳转请自行打开qq粘贴群号");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(Context context, DownloadTask downloadTask) {
        R(context, downloadTask.getCrc_link_type_val());
    }

    public com.join.mgps.dialog.x0 A(Context context, boolean z3) {
        return new com.join.mgps.dialog.x0(context, (int) R.style.MyprogressDialog, z3);
    }

    public void B(Context context, o0 o0Var) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.realname_notice_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.setMargins(20, 0, 20, 0);
        button.setLayoutParams(layoutParams);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("提示");
        textView.setGravity(17);
        textView.setText("为保证点评真实性，\n请安装游戏后再创建点评。");
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setVisibility(8);
        button.setText("我知道了");
        button.setOnClickListener(new j(tVar, o0Var));
        tVar.setCancelable(false);
        tVar.show();
    }

    public com.join.mgps.dialog.n1 C(Context context) {
        return new com.join.mgps.dialog.n1(context, R.style.MyDialog);
    }

    public void D(Context context) {
        new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("取消").g("确定要退出编辑吗？").j("确定").k("提示").i(new h(context)).show();
    }

    public void E(Context context, int i2) {
        new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("稍后").e(8).g(context.getResources().getString(R.string.post_help_coin_coast_tip, Integer.valueOf(i2), Integer.valueOf(i2 * 2), Integer.valueOf(i2))).j("知道了").k("提示").i(new g()).show();
    }

    public com.join.mgps.dialog.y0 F(Context context) {
        return new com.join.mgps.dialog.y0(context, R.style.MyprogressDialog);
    }

    public void G() {
        com.join.mgps.dialog.e eVar = this.f27978g;
        if (eVar != null) {
            eVar.dismiss();
        }
    }

    public void I(String str) {
        if (MApplication.f9223q.getActivity() != null) {
            if (this.f27978g == null) {
                c0 c0Var = new c0(MApplication.f9223q.getActivity());
                this.f27978g = c0Var;
                c0Var.show();
            }
            this.f27978g.b(str);
        }
    }

    public void J(Context context, DownloadTask downloadTask, boolean z3, String str) {
        Activity activity = context instanceof Activity ? context : null;
        if (activity == null) {
            activity = MApplication.f9223q.getActivity();
        }
        Activity activity2 = activity == null ? context : activity;
        PrefDef_ prefDef_ = new PrefDef_(context);
        String d4 = prefDef_.isNoShowAddShortcut().d();
        boolean z4 = !d2.h(d4) && d4.contains(downloadTask.getCrc_link_type_val());
        if (!TextUtils.isEmpty(d4)) {
            downloadTask.setNotCheckAddShortcut(true);
            UtilsMy.e3(activity2, downloadTask, 0, str);
            downloadTask.setNotCheckAddShortcut(false);
        } else if (z4 && z3) {
            downloadTask.setNotCheckAddShortcut(true);
            UtilsMy.e3(activity2, downloadTask, 0, str);
            downloadTask.setNotCheckAddShortcut(false);
        } else if (downloadTask.isOpen()) {
            String portraitURL = downloadTask.getPortraitURL();
            String showName = downloadTask.getShowName();
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            if (d2.h(portraitURL)) {
                return;
            }
            com.join.android.app.common.dialog.c cVar = this.f27981j;
            if (cVar != null && cVar.isShowing()) {
                try {
                    this.f27981j.dismiss();
                } catch (Exception unused) {
                }
            }
            com.join.android.app.common.dialog.c cVar2 = new com.join.android.app.common.dialog.c(activity2, crc_link_type_val, showName, portraitURL, downloadTask);
            this.f27981j = cVar2;
            cVar2.show();
            this.f27981j.h(new e0(context, showName, crc_link_type_val));
            this.f27981j.g(new f0(prefDef_, downloadTask, context, str));
        }
    }

    public void K(Context context, CommonGameInfoBean commonGameInfoBean) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.update_choice_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.dialog_button_cancel);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_button_ok);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("更新提示");
        ((TextView) tVar.findViewById(R.id.dialog_content)).setText("【" + commonGameInfoBean.getTitle() + "】可更新版本");
        textView2.setText("立即更新");
        textView.setText("直接启动");
        textView2.setOnClickListener(new c(context, commonGameInfoBean, tVar));
        textView.setOnClickListener(new d(context, commonGameInfoBean, tVar));
        tVar.show();
    }

    public com.join.mgps.customview.t L(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("完善资料");
        ((TextView) tVar.findViewById(R.id.dialog_content)).setText(context.getString(R.string.tour_perfect_info_tip));
        ((TextView) tVar.findViewById(R.id.dialog_desci)).setVisibility(8);
        button2.setText("去完善");
        button.setText("下次再说");
        button2.setOnClickListener(new l(tVar));
        button.setOnClickListener(new m(tVar));
        return tVar;
    }

    public com.join.mgps.customview.t M(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) tVar.findViewById(R.id.dialog_content)).setText("铜板不足，成为悟饭会员每天即可领取300铜板哦~");
        ((TextView) tVar.findViewById(R.id.dialog_desci)).setVisibility(8);
        button2.setText("我要VIP特权");
        button2.setTextColor(context.getResources().getColor(R.color.main_yello_color));
        button.setText("取消");
        button2.setOnClickListener(new n(context, tVar));
        button.setOnClickListener(new o(tVar));
        return tVar;
    }

    public void N(FragmentManager fragmentManager, String str, String str2, String str3, String str4) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(f27971k);
        if (findFragmentByTag != null) {
            beginTransaction.remove(findFragmentByTag);
        }
        CustomerAlertDialog.a(str, str2, str3, str4).show(fragmentManager, f27971k);
        fragmentManager.executePendingTransactions();
    }

    public com.join.mgps.customview.t O(Context context, int i2, l1.a aVar) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) tVar.findViewById(R.id.dialog_desci);
        ImageView imageView = (ImageView) tVar.findViewById(R.id.notice);
        if (i2 == 1) {
            imageView.setVisibility(0);
            textView.setText("预约成功");
            textView2.setText("游戏新动态提醒留意通知栏和消息中心");
            textView3.setText("游戏上线后将为你发放礼包等福利");
            button2.setText("我知道了");
            button.setVisibility(8);
        } else if (i2 == 2) {
            textView.setText("收藏成功");
            imageView.setVisibility(0);
            textView2.setText("游戏新动态提醒留意通知栏和消息中心");
            textView3.setText("游戏新动态包括：游戏开放下载、开测、礼包、活动等");
            button2.setText("我知道了");
            button.setVisibility(8);
        } else if (i2 == 3) {
            textView.setText("取消关注");
            textView2.setText("取消后你将无法及时收到礼包、开测等动态的提醒哦~确定要取消吗？");
            textView3.setVisibility(8);
            button2.setText("确定");
            button.setText("关闭");
        }
        button2.setOnClickListener(new t(aVar, tVar));
        button.setOnClickListener(new u(aVar, tVar));
        return tVar;
    }

    public Dialog P(Context context, String str, String str2, h0.c cVar) {
        return new com.join.mgps.dialog.h0(context, R.style.HKDialogLoading).d(str2).e(str).b(false).c(cVar);
    }

    public void Q(Context context, int i2, List<DownloadTask> list) {
        if (context != null) {
            try {
                com.join.mgps.activity.q0 q0Var = this.f27979h;
                if (q0Var != null && q0Var.isShowing()) {
                    this.f27979h.dismiss();
                }
                com.join.mgps.activity.q0 q0Var2 = new com.join.mgps.activity.q0(context, i2, list);
                this.f27979h = q0Var2;
                if (q0Var2.isShowing()) {
                    this.f27979h.dismiss();
                }
                this.f27979h.show();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void R(Context context, String str) {
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    com.join.mgps.dialog.g1 g1Var = this.f27975d;
                    if (g1Var != null && g1Var.isShowing()) {
                        this.f27975d.dismiss();
                    }
                    com.join.mgps.dialog.g1 g1Var2 = new com.join.mgps.dialog.g1(context);
                    this.f27975d = g1Var2;
                    if (g1Var2.isShowing()) {
                        this.f27975d.dismiss();
                    }
                    this.f27975d.i(str);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        u0.e("WF", "mod questionnaire " + str);
    }

    public void S(Context context, String str, String str2, ModFeedbackBean modFeedbackBean) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                com.join.mgps.dialog.j1 j1Var = this.f27977f;
                if (j1Var != null && j1Var.isShowing()) {
                    this.f27977f.dismiss();
                }
                com.join.mgps.dialog.j1 j1Var2 = new com.join.mgps.dialog.j1(context);
                this.f27977f = j1Var2;
                j1Var2.f(str, str2, modFeedbackBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void T(Context context, String str, String str2) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                com.join.mgps.dialog.k1 k1Var = this.f27976e;
                if (k1Var != null && k1Var.isShowing()) {
                    this.f27976e.dismiss();
                }
                com.join.mgps.dialog.k1 k1Var2 = new com.join.mgps.dialog.k1(context);
                this.f27976e = k1Var2;
                k1Var2.b(str, str2);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void U(Context context, OnlineCouponConfigBean onlineCouponConfigBean, int i2) {
        V(context, onlineCouponConfigBean, i2, null);
    }

    public void V(Context context, OnlineCouponConfigBean onlineCouponConfigBean, int i2, n0 n0Var) {
        try {
            com.join.mgps.dialog.o1 o1Var = new com.join.mgps.dialog.o1(context, onlineCouponConfigBean, i2);
            this.f27980i = o1Var;
            o1Var.setOnDismissListener(new d0(n0Var));
            this.f27980i.show();
            AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
            if (accountData != null && i2 == 3) {
                int account_type = accountData.getAccount_type();
                PrefDef_ prefDef_ = new PrefDef_(context);
                if (account_type == 1) {
                    prefDef_.lastQuitShowOnlineCouponTime().g(Long.valueOf(System.currentTimeMillis()));
                } else {
                    prefDef_.lastQuitShowOnlineCouponTimeGuset().g(Long.valueOf(System.currentTimeMillis()));
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void W(Context context, com.tbruyelle.rxpermissions2.b bVar) {
        Dialog dialog = this.f27972a;
        if (dialog != null) {
            if (dialog.isShowing()) {
                this.f27972a.dismiss();
            }
            this.f27972a = null;
        }
        this.f27973b = new AlertDialog.Builder(context, R.style.AlertDialogCustom);
        if (bVar.f59247a.equals("android.permission.ACCESS_FINE_LOCATION")) {
            return;
        }
        this.f27973b.setTitle("提示");
        if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
            AlertDialog.Builder builder = this.f27973b;
            builder.setMessage("请去设置中开启权限" + bVar.f59247a);
        } else {
            this.f27973b.setMessage("需要打开读写存储权限，请去设置中开启权限");
        }
        this.f27973b.setPositiveButton("去打开", new k(context));
        this.f27972a = this.f27973b.show();
    }

    public void X(Context context, String str, EMUApkTable eMUApkTable, String str2) {
        ((PlugUpdateDialog_.a) PlugUpdateDialog_.F0(context).a(str2).b(str).c(eMUApkTable).flags(536870912)).start();
    }

    public void Y(Context context, String str, String str2, String str3) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.qq_dialog_layout);
        MyImageLoader.d((SimpleDraweeView) tVar.findViewById(R.id.images), R.drawable.banner_normal_icon, str2);
        ((ImageView) tVar.findViewById(R.id.closed)).setOnClickListener(new y(tVar));
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new View$OnClickListenerC0146z(tVar, context, str, str3));
        tVar.setCancelable(false);
        tVar.show();
    }

    public com.join.mgps.customview.t Z(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) tVar.findViewById(R.id.dialog_content)).setText(context.getString(R.string.need_svip_info_tip));
        ((TextView) tVar.findViewById(R.id.dialog_desci)).setVisibility(8);
        button2.setText("了解SVIP");
        button.setText("下次再说");
        button2.setOnClickListener(new p(tVar));
        button.setOnClickListener(new q(tVar));
        return tVar;
    }

    public void a0(Context context, DownloadTask downloadTask) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.update_choice_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.dialog_button_cancel);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_button_ok);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("更新提示");
        ((TextView) tVar.findViewById(R.id.dialog_content)).setText("【" + downloadTask.getShowName() + "】可更新版本");
        textView2.setText("立即更新");
        textView.setText("直接启动");
        textView2.setOnClickListener(new e(context, downloadTask, tVar));
        textView.setOnClickListener(new f(context, downloadTask, tVar));
        tVar.show();
    }

    public com.join.mgps.customview.t b0(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) tVar.findViewById(R.id.dialog_content)).setText(context.getString(R.string.need_vip_info_tip));
        ((TextView) tVar.findViewById(R.id.dialog_desci)).setVisibility(8);
        button2.setText("我要成为VIP");
        button.setText("下次再说");
        button2.setOnClickListener(new r(tVar));
        button.setOnClickListener(new s(tVar));
        return tVar;
    }

    public Dialog d(Context context, String str, String str2, String str3, String str4, l1.b bVar) {
        Dialog dialog = new Dialog(context, R.style.MyDialog);
        dialog.setContentView(R.layout.dialog_customer_alert);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        Button button = (Button) dialog.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) dialog.findViewById(R.id.dialog_button_ok);
        ((TextView) dialog.findViewById(R.id.tip_title)).setText(str);
        ((TextView) dialog.findViewById(R.id.dialog_content)).setText(str2);
        button.setText(str3);
        button2.setText(str4);
        button2.setOnClickListener(new w(bVar, dialog));
        button.setOnClickListener(new x(bVar, dialog));
        return dialog;
    }

    public boolean e(final Context context) {
        PrefDef_ prefDef_ = new PrefDef_(context);
        if (d2.i(prefDef_.lastLaunchModGameId().d())) {
            final DownloadTask B = g1.f.G().B(prefDef_.lastLaunchModGameId().d());
            if ((B != null && APKUtils.I(B) && (B.getGame_run_state() == 3 || B.getGame_run_state() == 0)) || (APKUtils.E(B) && B.getGame_run_state() == 0)) {
                new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.Util.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.this.H(context, B);
                    }
                }, 200L);
                return true;
            }
            return false;
        }
        return false;
    }

    public Dialog f(Context context, List<CouponsData> list, o1.c cVar, int i2, boolean z3) {
        com.join.mgps.dialog.c0 c0Var = new com.join.mgps.dialog.c0(context, R.style.DialogCoupon, list, cVar, i2, z3);
        Window window = c0Var.getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
        return c0Var;
    }

    public Dialog g(Context context, n0 n0Var) {
        com.join.mgps.dialog.b i2 = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("现在不").g("登陆后，开始悟饭游戏的精彩旅游").j("登录").k("提示").i(new v(context, n0Var));
        i2.setOnKeyListener(new g0(n0Var));
        i2.setOnCancelListener(new h0(n0Var));
        i2.show();
        return i2;
    }

    public com.join.mgps.dialog.b h(Context context) {
        return new com.join.mgps.dialog.b(context, R.style.HKDialogLoading);
    }

    public void i(Context context) {
        new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("现在不").g("登陆后，悟饭可以为你永久免费记录成就").j("登录").k("提示").i(new b(context)).show();
    }

    public void j(Context context) {
        IntentUtil.getInstance().goLoginBattle(context);
    }

    public void k(Context context) {
        g(context, null);
    }

    public void l(Context context, String str, String str2, String str3, o0 o0Var) {
        com.join.mgps.dialog.b bVar = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading);
        if (str.isEmpty()) {
            str = "请登录后使用该功能";
        }
        com.join.mgps.dialog.b g4 = bVar.g(str);
        if (str2.isEmpty()) {
            str2 = "登录";
        }
        com.join.mgps.dialog.b j4 = g4.j(str2);
        if (str3.isEmpty()) {
            str3 = "取消";
        }
        j4.d(str3).k("提示").i(new i(context, o0Var)).show();
    }

    public void m(Context context) {
        IntentUtil.getInstance().goLoginInteractive(context);
    }

    public Dialog n(Context context, String str, int i2, n0 n0Var) {
        com.join.mgps.dialog.b i4 = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("取消").g(String.format("把“%s”踢出房间\n需要消耗%d铜板\n您确定要踢出？", str, Integer.valueOf(i2))).j("确定").k("提示").i(new i0(context, n0Var));
        i4.setOnKeyListener(new j0(n0Var));
        i4.setOnCancelListener(new k0(n0Var));
        i4.show();
        return i4;
    }

    public Dialog o(Context context, n0 n0Var) {
        com.join.mgps.dialog.b i2 = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("取消").g("你已被踢出游戏\n开通VIP会员，立即享受防踢特权").j("开通会员").k("提示").i(new l0(context, n0Var));
        i2.setOnKeyListener(new m0(n0Var));
        i2.setOnCancelListener(new a(n0Var));
        i2.show();
        return i2;
    }

    public com.join.mgps.dialog.p p(Context context, int i2) {
        return new com.join.mgps.dialog.p(context, (int) R.style.HKDialogLoading, i2);
    }

    public com.join.mgps.dialog.r q(Context context) {
        return new com.join.mgps.dialog.r(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.s r(Context context) {
        return new com.join.mgps.dialog.s(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.t s(Context context) {
        return new com.join.mgps.dialog.t(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.g0 t(Context context) {
        return new com.join.mgps.dialog.g0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.l0 u(Context context) {
        return new com.join.mgps.dialog.l0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.s0 v(Context context) {
        return new com.join.mgps.dialog.s0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.t0 w(Context context) {
        return new com.join.mgps.dialog.t0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.x0 x(Context context) {
        return new com.join.mgps.dialog.x0(context, R.style.MyprogressDialog);
    }

    public com.join.mgps.dialog.x0 y(Context context, String str) {
        return new com.join.mgps.dialog.x0(context, (int) R.style.MyprogressDialog, str);
    }

    public com.join.mgps.dialog.x0 z(Context context, String str, boolean z3) {
        com.join.mgps.dialog.x0 x0Var = new com.join.mgps.dialog.x0(context, R.style.MyprogressDialog, str, z3);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = x0Var.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            x0Var.getWindow().setAttributes(attributes);
        }
        return x0Var;
    }
}
