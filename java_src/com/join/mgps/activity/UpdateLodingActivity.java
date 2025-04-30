package com.join.mgps.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.BitmapFactory;
import android.os.IBinder;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.UpdateLodingService;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.update_loding_layout)
/* loaded from: classes3.dex */
public class UpdateLodingActivity extends BaseActivity implements UpdateLodingService.d {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f35952a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ProgressBar f35953b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f35954c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ProgressBar f35955d;
    @Pref

    /* renamed from: e  reason: collision with root package name */
    PrefDef_ f35956e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    UpdateIntentDataBean f35957f;

    /* renamed from: g  reason: collision with root package name */
    DownloadTask f35958g;

    /* renamed from: h  reason: collision with root package name */
    boolean f35959h;

    /* renamed from: i  reason: collision with root package name */
    boolean f35960i;

    /* renamed from: j  reason: collision with root package name */
    boolean f35961j;

    /* renamed from: k  reason: collision with root package name */
    int f35962k;

    /* renamed from: l  reason: collision with root package name */
    EMUApkTable f35963l;

    /* renamed from: m  reason: collision with root package name */
    boolean f35964m;

    /* renamed from: n  reason: collision with root package name */
    boolean f35965n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f35966o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f35967p;

    /* renamed from: q  reason: collision with root package name */
    private int f35968q;

    /* renamed from: r  reason: collision with root package name */
    private UpdateLodingService f35969r;

    /* renamed from: s  reason: collision with root package name */
    private UpdateLodingService.c f35970s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f35971t = false;

    /* renamed from: u  reason: collision with root package name */
    private ServiceConnection f35972u = new a();

    /* renamed from: v  reason: collision with root package name */
    private UpdateLodingService.d f35973v;

    /* renamed from: w  reason: collision with root package name */
    Context f35974w;

    /* loaded from: classes3.dex */
    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            UpdateLodingService.c cVar = (UpdateLodingService.c) iBinder;
            UpdateLodingActivity.this.f35970s = cVar;
            UpdateLodingActivity.this.f35969r = cVar.getService();
            UpdateLodingActivity.this.f35969r.m(UpdateLodingActivity.this);
            UpdateLodingActivity updateLodingActivity = UpdateLodingActivity.this;
            if (updateLodingActivity.f35959h) {
                updateLodingActivity.f35968q = 0;
                UpdateLodingActivity.this.f35970s.setDownData(UpdateLodingActivity.this.f35958g.getCrc_link_type_val(), 0);
            } else if (updateLodingActivity.f35960i) {
                updateLodingActivity.f35968q = 1;
                UpdateLodingActivity.this.f35970s.setDownData(UpdateLodingActivity.this.f35958g.getCrc_link_type_val(), 1);
            } else if (updateLodingActivity.f35961j) {
                updateLodingActivity.f35968q = 2;
                UpdateLodingActivity.this.f35970s.setDownData(UpdateLodingActivity.this.f35958g.getCrc_link_type_val(), 2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            UpdateLodingActivity.this.f35969r = null;
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35976a;

        b(com.join.mgps.dialog.l0 l0Var) {
            this.f35976a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35976a.dismiss();
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35978a;

        c(com.join.mgps.dialog.l0 l0Var) {
            this.f35978a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35978a.dismiss();
            UtilsMy.I2(UpdateLodingActivity.this.f35974w);
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35980a;

        d(com.join.mgps.dialog.l0 l0Var) {
            this.f35980a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35980a.dismiss();
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35982a;

        e(com.join.mgps.dialog.l0 l0Var) {
            this.f35982a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35982a.dismiss();
            UtilsMy.I2(UpdateLodingActivity.this.f35974w);
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35984a;

        f(com.join.mgps.dialog.l0 l0Var) {
            this.f35984a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35984a.dismiss();
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35986a;

        g(com.join.mgps.dialog.l0 l0Var) {
            this.f35986a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35986a.dismiss();
            UtilsMy.I2(UpdateLodingActivity.this.f35974w);
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35988a;

        h(com.join.mgps.dialog.l0 l0Var) {
            this.f35988a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35988a.dismiss();
            UpdateLodingActivity.this.f35969r.l();
            UpdateLodingActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.l0 f35990a;

        i(com.join.mgps.dialog.l0 l0Var) {
            this.f35990a = l0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35990a.dismiss();
        }
    }

    private void K0() {
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        if (this.f35971t) {
            return;
        }
        if (!this.f35964m && this.f35958g.getDown_status() != 5) {
            IntentUtil.getInstance().goGameMainActivity(this.f35974w, this.f35958g.getCrc_link_type_val(), "");
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f35974w = this;
        if (this.f35965n || this.f35966o || this.f35967p) {
            com.join.mgps.Util.i2.a(this).b("需要更新完才能进入游戏。");
        }
        this.f35958g = this.f35957f.getDownloadTask();
        this.f35959h = this.f35957f.isRomeNewUpdate();
        this.f35960i = this.f35957f.isPeizhiNewUpdate();
        this.f35961j = this.f35957f.isSourceNewUpdate();
        this.f35963l = this.f35957f.getEmuApkTable();
        this.f35964m = this.f35957f.isFight();
        this.f35965n = this.f35957f.isRomeMustUpdate();
        this.f35966o = this.f35957f.isPeizhiMustUpdate();
        this.f35967p = this.f35957f.isSourceMustUpdate();
        String str = this.f35958g.getSource_down_path() + "/platform_pic_loading.jpg";
        if (new File(str).exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 2;
            this.f35952a.setImageBitmap(BitmapFactory.decodeFile(str, options));
        } else {
            this.f35952a.setImageResource(R.drawable.updateloding);
        }
        bindService(new Intent(this.f35974w, UpdateLodingService.class), this.f35972u, 1);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        com.join.mgps.dialog.l0 u3 = com.join.mgps.Util.a0.c0(this.f35974w).u(this.f35974w);
        u3.show();
        u3.j("停止更新？");
        u3.f("退出后需重新更新游戏。");
        u3.i("继续更新");
        u3.e("退出");
        u3.d(new h(u3));
        u3.h(new i(u3));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f35971t = true;
        unbindService(this.f35972u);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // com.join.mgps.service.UpdateLodingService.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(int r7, java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.UpdateLodingActivity.update(int, java.lang.Object):void");
    }
}
