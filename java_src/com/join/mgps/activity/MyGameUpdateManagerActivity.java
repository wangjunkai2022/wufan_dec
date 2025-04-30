package com.join.mgps.activity;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.m3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.a0;
import com.join.mgps.customview.b0;
import com.join.mgps.customview.v;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.receiver.ShortcutReceiver;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_plug_manager)
/* loaded from: classes.dex */
public class MyGameUpdateManagerActivity extends BaseActivity implements m3.e, AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34306a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f34307b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f34308c;

    /* renamed from: d  reason: collision with root package name */
    m3 f34309d;

    /* renamed from: e  reason: collision with root package name */
    List<DownloadTask> f34310e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    HashMap<String, Boolean> f34311f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    HashMap<String, Boolean> f34312g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private int f34313h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f34314i = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements a0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34315a;

        a(String str) {
            this.f34315a = str;
        }

        @Override // com.join.mgps.customview.a0.a
        public void a(String str) {
            DownloadTask B = g1.f.G().B(this.f34315a);
            if (B.getFileType() == null || !B.getFileType().equals(Dtype.chajian.name())) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(MyGameUpdateManagerActivity.this.getContext(), B);
            }
        }

        @Override // com.join.mgps.customview.a0.a
        public void b(String str) {
            MyGameUpdateManagerActivity.this.Z0(g1.f.G().B(str));
        }

        @Override // com.join.mgps.customview.a0.a
        public void c(String str) {
            MyGameUpdateManagerActivity.this.U0(this.f34315a);
        }

        @Override // com.join.mgps.customview.a0.a
        public void d(String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements b0.a {
        b() {
        }

        @Override // com.join.mgps.customview.b0.a
        public void a(String str) {
            MyGameUpdateManagerActivity.this.L0(str);
        }

        @Override // com.join.mgps.customview.b0.a
        public void b(String str) {
            MyGameUpdateManagerActivity.this.X0(str);
        }
    }

    private void F0(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("s:");
        sb.append(str);
        DownloadTask B = g1.f.G().B(str);
        if (B != null) {
            Bitmap m4 = ImageLoader.q().m(B.getPortraitURL());
            if (m4 == null) {
                m4 = Y0(B.getPortraitURL());
            }
            com.join.mgps.Util.t1.b(this, B.getShowName(), str, m4);
        }
    }

    private Bitmap Y0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(((a0.c) Fresco.getImagePipelineFactory().l().c(new com.facebook.cache.common.i(Uri.parse(str).toString()))).c().getPath());
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f34310e.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
                break;
            }
        }
        R0();
    }

    private void receiveError(DownloadTask downloadTask) {
        List<DownloadTask> list = this.f34310e;
        if (list == null || downloadTask == null) {
            return;
        }
        try {
            Iterator<DownloadTask> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.C3(next);
                    break;
                }
            }
            R0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        boolean z3;
        if (downloadTask == null) {
            return;
        }
        UtilsMy.D3(this.f34310e);
        Iterator<DownloadTask> it2 = this.f34310e.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z3 = false;
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                next.setStatus(downloadTask.getStatus());
                z3 = true;
                break;
            }
        }
        if (!z3) {
            this.f34310e.add(0, downloadTask);
        }
        R0();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (this.f34310e == null || downloadTask == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.f34310e.size()) {
                break;
            } else if (this.f34310e.get(i2).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f34310e.set(i2, downloadTask);
                break;
            } else {
                i2++;
            }
        }
        R0();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.f34314i < 0 || this.f34313h >= this.f34307b.getCount()) {
            return;
        }
        for (int i2 = this.f34314i; i2 <= this.f34313h; i2++) {
            this.f34307b.getAdapter().getItemViewType(i2);
            if (this.f34307b.getItemAtPosition(i2) != null && (this.f34307b.getItemAtPosition(i2) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.f34307b.getItemAtPosition(i2)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f34307b.getChildAt(i2 - this.f34314i)) != null && childAt.getTag() != null && (childAt.getTag() instanceof m3.h))) {
                m3.h hVar = (m3.h) childAt.getTag();
                try {
                    DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                    if (f4 == null) {
                        return;
                    }
                    String str = "";
                    if (!TextUtils.isEmpty(f4.getShowSize())) {
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        str = downloadTask.getSize() == 0 ? UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble) : UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble);
                    }
                    if (downloadTask.getStatus() == 12) {
                        hVar.f42859b.setProgress((int) f4.getProgress());
                    } else {
                        hVar.f42859b.setProgress((int) f4.getProgress());
                    }
                    if (downloadTask.getStatus() == 2) {
                        hVar.f42860c.setText(str + " · " + f4.getSpeed() + "/S");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    void G0(Context context, String str, String str2, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            com.join.mgps.Util.i2.a(context).b("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService("shortcut");
            if (shortcutManager.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(context, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", str2);
                intent.addFlags(67108864);
                shortcutManager.requestPinShortcut(new ShortcutInfo.Builder(context, str).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(str).setIntent(intent).build(), PendingIntent.getBroadcast(context, 0, new Intent(context, ShortcutReceiver.class), 134217728).getIntentSender());
                com.join.mgps.Util.t1.d(context, str2);
            }
        } else {
            Intent intent2 = new Intent(com.join.mgps.Util.t1.f27839a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", str);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(context, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", str2);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            context.sendBroadcast(intent2);
            com.join.mgps.Util.t1.d(context, str2);
        }
        R0();
        a1(str2);
    }

    boolean H0(Context context, DownloadTask downloadTask) {
        if (downloadTask != null && downloadTask.getStatus() == 5 && (!O0(downloadTask) || !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val()))) {
            boolean z3 = !TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.apk.name());
            if (!downloadTask.getUrl().endsWith(".apk") && !downloadTask.getRomType().equals("androidobb") && !downloadTask.getRomType().equals("46")) {
                if (z3 && !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
            } else {
                String packageName = downloadTask.getPackageName();
                if (!com.join.mgps.Util.d2.h(packageName) && N0(context, packageName) && !downloadTask.getTips().contains("网游")) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.join.mgps.adapter.m3.e
    public void I(String str) {
        com.join.mgps.customview.a0 a0Var = new com.join.mgps.customview.a0(getContext());
        a0Var.b(new a(str));
        a0Var.c(this.f34308c, str);
    }

    void I0(DownloadTask downloadTask) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27856o, downloadTask.getPackageName()));
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27857p, downloadTask.getPackageName()));
                UtilsMy.delete(new File(downloadTask.getGameZipPath()));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.php25.PDownload.d.a(downloadTask);
        Iterator<DownloadTask> it2 = this.f34310e.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
        R0();
    }

    public void J0(DownloadTask downloadTask) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27856o, downloadTask.getPackageName()));
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27857p, downloadTask.getPackageName()));
                UtilsMy.delete(new File(downloadTask.getGameZipPath()));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.php25.PDownload.d.a(downloadTask);
    }

    @Override // com.join.mgps.adapter.m3.e
    public void K(String str) {
        com.join.mgps.customview.v vVar = new com.join.mgps.customview.v(getContext());
        vVar.b(new v.a() { // from class: com.join.mgps.activity.z1
            @Override // com.join.mgps.customview.v.a
            public final void a(String str2) {
                MyGameUpdateManagerActivity.this.P0(str2);
            }
        });
        vVar.c(this.f34308c, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K0 */
    public void P0(String str) {
        DownloadTask B = g1.f.G().B(str);
        Context context = getContext();
        String fileType = B.getFileType();
        if (fileType != null && fileType.equals(Dtype.android.name())) {
            if (com.join.android.app.common.utils.a.g0(context).c(context, B.getPackageName())) {
                com.join.android.app.common.utils.a.g0(context).c0(context, B.getPackageName());
                return;
            }
            I0(B);
            UtilsMy.C3(B);
            R0();
            return;
        }
        I0(B);
        UtilsMy.C3(B);
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        EMUApkTable n4;
        try {
            n4 = n1.p.o().n(str);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (n4 == null) {
            return;
        }
        DownloadTask V = g1.f.G().V(Integer.parseInt(str));
        if (V != null) {
            if (V.getDown_type() != 2) {
                if (com.join.android.app.common.utils.a.g0(this).c(this, V.getPackageName())) {
                    com.join.android.app.common.utils.a.g0(this).c0(this, V.getPackageName());
                } else {
                    J0(V);
                }
            } else {
                com.join.mgps.Util.g0.h(V.getGameZipPath(), true);
                J0(V);
                if (com.join.android.app.common.utils.h.i(n4)) {
                    com.join.android.app.common.utils.h.delete(str);
                }
                com.join.mgps.Util.g0.h(n4.getApkPath(), true);
                n4.setApkPath("");
                n1.p.o().m(n4);
            }
        }
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = me.relex.photodraweeview.d.f72676b0)
    public void M0(String str) {
        try {
            EMUApkTable n4 = n1.p.o().n(str);
            if (n4 == null) {
                return;
            }
            UtilsMy.V0(n4, this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean N0(Context context, String str) {
        boolean z3 = false;
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.f34312g.containsKey(str)) {
            return this.f34312g.get(str).booleanValue();
        }
        try {
            z3 = com.join.mgps.Util.g.d(context, str);
            this.f34312g.put(str, Boolean.valueOf(z3));
            return z3;
        } catch (Exception e4) {
            e4.printStackTrace();
            return z3;
        }
    }

    boolean O0(DownloadTask downloadTask) {
        Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
        while (it2.hasNext()) {
            TipBean next = it2.next();
            if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) <= 0 && next.getName().contains("单机")) {
                return true;
            }
        }
        return false;
    }

    protected void Q0() {
        this.f34310e.clear();
        List<DownloadTask> w3 = g1.f.G().w();
        if (w3 != null && w3.size() > 0) {
            this.f34310e.addAll(w3);
        }
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        this.f34309d.n().clear();
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> list = this.f34310e;
        if (list != null && list.size() > 0) {
            for (DownloadTask downloadTask : this.f34310e) {
                if (downloadTask.getStatus() != 5) {
                    if (!TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                        arrayList.add(new m3.f(4, downloadTask));
                    } else {
                        arrayList.add(new m3.f(2, downloadTask, this.f34311f.containsKey(downloadTask.getCrc_link_type_val()) ? this.f34311f.get(downloadTask.getCrc_link_type_val()).booleanValue() : false));
                    }
                }
            }
        }
        this.f34309d.O(arrayList);
        this.f34309d.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(HashMap<String, Boolean> hashMap) {
        DownloadTask downloadTask;
        m3 m3Var = this.f34309d;
        if (m3Var == null || m3Var.n() == null || this.f34309d.n().size() == 0) {
            return;
        }
        for (m3.f fVar : this.f34309d.n()) {
            if (fVar.b() == 2 && fVar.a() != null && (downloadTask = (DownloadTask) fVar.a()) != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && hashMap.containsKey(downloadTask.getCrc_link_type_val())) {
                fVar.d(hashMap.get(downloadTask.getCrc_link_type_val()).booleanValue());
            }
        }
        this.f34309d.notifyDataSetChanged();
    }

    public void T0(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B == null || B.getStatus() == 0) {
            return;
        }
        com.join.mgps.customview.b0 b0Var = new com.join.mgps.customview.b0(this);
        b0Var.b(new b());
        b0Var.d(this.f34308c, str, B.getDown_type() != 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void U0(String str) {
        K(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V0() {
        try {
            HashMap<String, Boolean> c4 = com.join.mgps.Util.g.c(getContext());
            this.f34312g.clear();
            if (c4 != null && c4.size() != 0) {
                this.f34312g.putAll(c4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0(List<DownloadTask> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        HashMap<String, Boolean> hashMap = new HashMap<>();
        for (DownloadTask downloadTask : list) {
            hashMap.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(H0(getContext(), downloadTask)));
            this.f34311f.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(H0(getContext(), downloadTask)));
        }
        S0(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X0(String str) {
        EMUApkTable n4;
        try {
            n4 = n1.p.o().n(str);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (n4 == null) {
            return;
        }
        DownloadTask V = g1.f.G().V(Integer.parseInt(str));
        if (V != null) {
            if (V.getDown_type() != 2) {
                I0(V);
            } else {
                com.join.mgps.Util.g0.h(V.getGameZipPath(), true);
                I0(V);
                if (com.join.android.app.common.utils.h.i(n4)) {
                    com.join.android.app.common.utils.h.delete(str);
                }
                com.join.mgps.Util.g0.h(n4.getApkPath(), true);
                n4.setApkPath("");
                n1.p.o().m(n4);
            }
        }
        R0();
        M0(str);
    }

    @Override // com.join.mgps.adapter.m3.e
    public void Y(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B != null && !TextUtils.isEmpty(B.getFileType()) && B.getFileType().equals(Dtype.chajian.name())) {
            T0(str);
        } else {
            I(str);
        }
    }

    void Z0(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        Bitmap m4 = ImageLoader.q().m(downloadTask.getPortraitURL());
        if (m4 == null) {
            m4 = Y0(downloadTask.getPortraitURL());
        }
        G0(getContext(), downloadTask.getShowName(), downloadTask.getCrc_link_type_val(), m4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void a1(String str) {
        new com.join.android.app.common.dialog.d(this, str).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.c0.a().d(this);
        this.f34306a.setVisibility(0);
        this.f34306a.setText("更新管理");
        com.join.mgps.Util.z1.o(this, Color.parseColor("#ffffff"), true);
        m3 m3Var = new m3(this);
        this.f34309d = m3Var;
        m3Var.P(this);
        this.f34307b.setAdapter((ListAdapter) this.f34309d);
        this.f34307b.setOnScrollListener(this);
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    Context getContext() {
        return this;
    }

    @Override // com.join.mgps.adapter.m3.e
    public void n(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.k kVar) {
        if (kVar == null || TextUtils.isEmpty(kVar.a())) {
            return;
        }
        R0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    List<DownloadTask> list = this.f34310e;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    updateProgressPartly();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            updateUI(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            updateUI(a4, 8);
                            return;
                        case 13:
                            updateUI(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        V0();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f34313h = (i4 + i2) - 1;
        this.f34314i = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    @Override // com.join.mgps.adapter.m3.e
    public void s0(DownloadTask downloadTask) {
        Z0(downloadTask);
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.f34311f.put(downloadTask.getCrc_link_type_val(), Boolean.TRUE);
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    return;
                case 3:
                    receiveDelete(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }
}
