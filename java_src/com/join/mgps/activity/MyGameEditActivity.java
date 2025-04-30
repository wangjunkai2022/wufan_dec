package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.n3;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.activity_mygame_edit)
/* loaded from: classes3.dex */
public class MyGameEditActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private n3 f34237a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f34238b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ListView f34239c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f34240d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f34241e;

    /* renamed from: f  reason: collision with root package name */
    List<DownloadTask> f34242f;
    @Pref

    /* renamed from: g  reason: collision with root package name */
    PrefDef_ f34243g;

    /* renamed from: h  reason: collision with root package name */
    private Context f34244h;

    /* renamed from: i  reason: collision with root package name */
    private DownloadTask f34245i;

    /* renamed from: j  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f34246j;

    /* renamed from: k  reason: collision with root package name */
    private List<DownloadTask> f34247k;

    /* renamed from: l  reason: collision with root package name */
    RecomDatabean f34248l;

    /* renamed from: m  reason: collision with root package name */
    View f34249m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f34250n;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.rpc.d f34251o;

    /* renamed from: p  reason: collision with root package name */
    Dialog f34252p;

    /* renamed from: q  reason: collision with root package name */
    boolean f34253q = false;

    /* renamed from: r  reason: collision with root package name */
    String f34254r = "在线玩H5";

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f34255a;

        a(ImageView imageView) {
            this.f34255a = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ImageView imageView = this.f34255a;
            imageView.setSelected(!imageView.isSelected());
            MyGameEditActivity.this.f34253q = this.f34255a.isSelected();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity.this.f34252p.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity.this.f34243g.hideGameTopAd().g(Boolean.TRUE);
            MyGameEditActivity.this.N0(null);
            MyGameEditActivity.this.f34252p.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        ImageView f34259a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f34260b;

        /* renamed from: c  reason: collision with root package name */
        TextView f34261c;

        /* renamed from: d  reason: collision with root package name */
        View f34262d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f34263e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f34264f;

        public d() {
        }
    }

    private void Q0(RecomDatabean recomDatabean) {
        this.f34243g.gameTopAd().g(JsonMapper.toJsonString(recomDatabean));
    }

    private void T0() {
        if (this.f34237a == null) {
            return;
        }
        ImageView imageView = this.f34238b;
        boolean z3 = imageView != null ? !imageView.isSelected() : false;
        HashMap<Integer, Boolean> hashMap = this.f34237a.f43008c;
        for (int i2 = 0; i2 < hashMap.size(); i2++) {
            hashMap.put(Integer.valueOf(i2), Boolean.valueOf(z3));
        }
        this.f34238b.setSelected(z3);
        this.f34237a.notifyDataSetChanged();
        R0(hashMap);
    }

    private void X0() {
        this.f34241e.setVisibility(0);
        this.f34239c.setVisibility(8);
        this.f34240d.setVisibility(8);
    }

    void E0() {
        View view = this.f34249m;
        if (view == null || !this.f34239c.removeHeaderView(view)) {
            return;
        }
        this.f34249m = null;
        this.f34248l = null;
    }

    boolean F0() {
        if (com.join.mgps.Util.d2.h(LocalGameActivity.f32927r)) {
            return false;
        }
        return Arrays.asList(w1.f38447y0, "网游").contains(LocalGameActivity.f32927r);
    }

    void G0() {
        Dialog dialog = this.f34252p;
        if (dialog != null) {
            if (dialog.isShowing()) {
                this.f34252p.dismiss();
            }
            this.f34252p = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        T0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        W0();
        P0(0);
    }

    void K0() {
        try {
            try {
                N0((RecomDatabean) JsonMapper.getInstance().fromJson(this.f34243g.gameTopAd().e(""), RecomDatabean.class));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            this.f34250n = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        com.join.mgps.dialog.x0 x0Var = this.f34246j;
        if (x0Var != null) {
            x0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        T0();
    }

    void N0(RecomDatabean recomDatabean) {
        try {
            this.f34248l = recomDatabean;
            if (recomDatabean == null || recomDatabean.getMain() == null || this.f34248l.getMain().getAd_switch() != 1 || this.f34243g.hideGameTopAd().d().booleanValue() || this.f34248l == null) {
                return;
            }
            DownloadTask downloadTask = new DownloadTask();
            downloadTask.setExt1("h5");
            ModleBean main = this.f34248l.getMain();
            downloadTask.setPortraitURL(main.getPic_remote());
            downloadTask.setShowName(main.getTitle());
            downloadTask.setDescribe(main.getLabel());
            downloadTask.setShowSize("0.1");
            this.f34242f.add(0, downloadTask);
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        HashMap<Integer, Boolean> hashMap = this.f34237a.f43008c;
        for (DownloadTask downloadTask : this.f34247k) {
            this.f34242f.remove(downloadTask);
        }
        this.f34247k.clear();
        hashMap.clear();
        for (int i2 = 0; i2 < this.f34242f.size(); i2++) {
            hashMap.put(Integer.valueOf(i2), Boolean.FALSE);
        }
        this.f34240d.setText(String.format(getString(R.string.papa_del_game), "0", ""));
        this.f34240d.setSelected(false);
        this.f34240d.setClickable(false);
        this.f34237a.notifyDataSetChanged();
        if (this.f34242f.size() == 0) {
            X0();
        }
        this.f34238b.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0(int i2) {
        HashMap<Integer, Boolean> hashMap = this.f34237a.f43008c;
        boolean z3 = false;
        while (true) {
            if (i2 >= this.f34242f.size()) {
                break;
            }
            if (hashMap.get(Integer.valueOf(i2)).booleanValue()) {
                this.f34245i = this.f34242f.get(i2);
                z3 = com.join.android.app.common.utils.a.g0(this.f34244h).c(this.f34244h, this.f34245i.getPackageName());
                if (z3) {
                    com.join.android.app.common.utils.a.g0(this.f34244h).c0(this.f34244h, this.f34245i.getPackageName());
                    break;
                }
                S0(String.format(getString(R.string.papa_del_game_test), this.f34245i.getShowName()));
                if (this.f34245i.getExt1() != null && this.f34245i.getExt1().equals("h5")) {
                    this.f34243g.hideGameTopAd().g(Boolean.TRUE);
                    this.f34247k.add(this.f34245i);
                } else {
                    com.php25.PDownload.d.a(this.f34245i);
                    UtilsMy.C3(this.f34245i);
                    this.f34247k.add(this.f34245i);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e4) {
                        e4.printStackTrace();
                    }
                }
            }
            i2++;
        }
        if (!z3) {
            O0();
        }
        L0();
    }

    public void R0(HashMap<Integer, Boolean> hashMap) {
        long j4 = 0;
        int i2 = 0;
        for (int i4 = 0; i4 < this.f34242f.size(); i4++) {
            if (hashMap.get(Integer.valueOf(i4)).booleanValue()) {
                j4 += (long) (Double.parseDouble(this.f34242f.get(i4).getShowSize()) * 1024.0d * 1024.0d);
                i2++;
            }
        }
        if (i2 == 0) {
            this.f34240d.setClickable(false);
            this.f34240d.setSelected(false);
            this.f34240d.setText(String.format(getString(R.string.papa_del_game), "0", ""));
        } else {
            this.f34240d.setClickable(true);
            this.f34240d.setSelected(true);
            Button button = this.f34240d;
            String string = getString(R.string.papa_del_game);
            button.setText(String.format(string, i2 + "", "，" + UtilsMy.Y1(j4)));
        }
        if (i2 == this.f34242f.size()) {
            this.f34238b.setSelected(true);
        } else {
            this.f34238b.setSelected(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(String str) {
        com.join.mgps.dialog.x0 x0Var = this.f34246j;
        if (x0Var != null) {
            x0Var.a(str);
        }
    }

    void U0(View view, ImageView imageView) {
        view.setOnClickListener(new a(imageView));
    }

    void V0() {
        if (this.f34252p == null) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f34244h, R.style.MyDialog);
            this.f34252p = tVar;
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) this.f34252p.findViewById(R.id.dialog_button_ok);
            ((TextView) this.f34252p.findViewById(R.id.tip_title)).setText("删除游戏");
            ((TextView) this.f34252p.findViewById(R.id.dialog_content)).setText("你确定要删除悟饭在线玩？");
            button.setText("删除");
            ((Button) this.f34252p.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new b());
            button.setOnClickListener(new c());
        }
        Dialog dialog = this.f34252p;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.f34252p.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        com.join.mgps.dialog.x0 x0Var = this.f34246j;
        if (x0Var == null || x0Var.isShowing()) {
            return;
        }
        this.f34246j.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34251o = com.join.mgps.rpc.impl.c.P1();
        this.f34244h = this;
        List<DownloadTask> N = g1.f.G().N(null);
        this.f34242f = N;
        if (N.size() == 0) {
            X0();
            return;
        }
        if (F0()) {
            K0();
        }
        n3 n3Var = new n3(this, this.f34242f);
        this.f34237a = n3Var;
        this.f34239c.setAdapter((ListAdapter) n3Var);
        this.f34240d.setText(String.format(getString(R.string.papa_del_game), "0", ""));
        this.f34246j = new com.join.mgps.dialog.x0(this, R.style.MyprogressDialog);
        this.f34247k = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.x0 x0Var = this.f34246j;
        if (x0Var != null) {
            x0Var.dismiss();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f34245i != null) {
            if (!com.join.android.app.common.utils.a.g0(this.f34244h).c(this.f34244h, this.f34245i.getPackageName())) {
                int indexOf = this.f34242f.indexOf(this.f34245i);
                this.f34247k.add(this.f34245i);
                W0();
                if (indexOf < this.f34242f.size() - 1) {
                    P0(indexOf + 1);
                    return;
                }
                L0();
                O0();
                return;
            }
            L0();
            O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(3);
        intentDateBean.setJump_type(2);
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }
}
