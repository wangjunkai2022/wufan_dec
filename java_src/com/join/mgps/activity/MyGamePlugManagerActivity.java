package com.join.mgps.activity;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.m3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.b0;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_plug_manager)
/* loaded from: classes.dex */
public class MyGamePlugManagerActivity extends BaseActivity implements m3.e, AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34286a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f34287b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f34288c;
    @Pref

    /* renamed from: d  reason: collision with root package name */
    PrefDef_ f34289d;

    /* renamed from: e  reason: collision with root package name */
    m3 f34290e;

    /* renamed from: f  reason: collision with root package name */
    List<DownloadTask> f34291f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private int f34292g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f34293h = 0;

    /* loaded from: classes3.dex */
    class a implements b0.a {
        a() {
        }

        @Override // com.join.mgps.customview.b0.a
        public void a(String str) {
            MyGamePlugManagerActivity.this.F0(str);
        }

        @Override // com.join.mgps.customview.b0.a
        public void b(String str) {
            MyGamePlugManagerActivity.this.J0(str);
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        H0();
    }

    private void receiveError(DownloadTask downloadTask) {
        List<DownloadTask> list = this.f34291f;
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
            I0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        UtilsMy.D3(this.f34291f);
        int i2 = 0;
        while (true) {
            if (i2 >= this.f34291f.size()) {
                break;
            } else if (this.f34291f.get(i2).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f34291f.set(i2, downloadTask);
                break;
            } else {
                i2++;
            }
        }
        I0();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (this.f34291f == null || downloadTask == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.f34291f.size()) {
                break;
            }
            DownloadTask downloadTask2 = this.f34291f.get(i2);
            if (downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f34291f.set(i2, downloadTask);
                UtilsMy.C3(downloadTask2);
                break;
            }
            i2++;
        }
        I0();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.f34293h < 0 || this.f34292g >= this.f34287b.getCount()) {
            return;
        }
        for (int i2 = this.f34293h; i2 <= this.f34292g; i2++) {
            if (this.f34287b.getAdapter().getItemViewType(i2) == 4 && this.f34287b.getItemAtPosition(i2) != null && (this.f34287b.getItemAtPosition(i2) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.f34287b.getItemAtPosition(i2)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f34287b.getChildAt(i2 - this.f34293h)) != null && childAt.getTag() != null && (childAt.getTag() instanceof m3.h))) {
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

    public void E0(DownloadTask downloadTask) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0(String str) {
        EMUApkTable n4;
        if (TextUtils.isEmpty(str)) {
            return;
        }
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
                    E0(V);
                }
            } else {
                com.join.mgps.Util.g0.h(V.getGameZipPath(), true);
                E0(V);
                if (com.join.android.app.common.utils.h.i(n4)) {
                    com.join.android.app.common.utils.h.delete(str);
                }
                com.join.mgps.Util.g0.h(n4.getApkPath(), true);
                n4.setApkPath("");
                n1.p.o().m(n4);
            }
        }
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
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

    protected void H0() {
        int[] iArr = new int[15];
        iArr[0] = ConstantIntEnum.FBA.value();
        iArr[1] = ConstantIntEnum.FC.value();
        iArr[2] = ConstantIntEnum.GBA.value();
        iArr[3] = ConstantIntEnum.PSP.value();
        iArr[4] = ConstantIntEnum.NDS.value();
        iArr[5] = ConstantIntEnum.SFC.value();
        iArr[6] = ConstantIntEnum.MD.value();
        iArr[7] = ConstantIntEnum.PS.value();
        iArr[8] = ConstantIntEnum.WSC.value();
        iArr[9] = ConstantIntEnum.GBC.value();
        iArr[10] = ConstantIntEnum.N64.value();
        iArr[11] = ConstantIntEnum.ONS.value();
        iArr[12] = ConstantIntEnum.DC.value();
        iArr[13] = ConstantIntEnum.PS2.value();
        iArr[14] = (!com.join.mgps.va.overmind.e.f52358n.e() ? ConstantIntEnum.VA64 : ConstantIntEnum.VA32).value();
        this.f34291f.clear();
        for (int i2 = 0; i2 < 15; i2++) {
            String str = iArr[i2] + "";
            DownloadTask B = g1.f.G().B(str);
            if (B != null) {
                this.f34291f.add(B);
            } else {
                EMUApkTable n4 = TextUtils.isEmpty(str) ? null : n1.p.o().n(str);
                if (n4 != null) {
                    DownloadTask downloadTask = new DownloadTask();
                    downloadTask.setStatus(0);
                    downloadTask.setShowName(n4.getApk_name());
                    downloadTask.setShowSize(n4.getSize());
                    downloadTask.setPortraitURL(n4.getLogo());
                    downloadTask.setPlugin_num(iArr[i2] + "");
                    downloadTask.setCrc_link_type_val(iArr[i2] + "");
                    downloadTask.setDown_type(n4.getDown_type());
                    downloadTask.setFileType(Dtype.chajian.name());
                    this.f34291f.add(downloadTask);
                }
            }
        }
        I0();
    }

    @Override // com.join.mgps.adapter.m3.e
    public void I(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        this.f34290e.n().clear();
        ArrayList arrayList = new ArrayList();
        for (DownloadTask downloadTask : this.f34291f) {
            arrayList.add(new m3.f(4, downloadTask));
        }
        this.f34290e.O(arrayList);
        this.f34290e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(String str) {
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
                E0(V);
            } else {
                com.join.mgps.Util.g0.h(V.getGameZipPath(), true);
                E0(V);
                if (com.join.android.app.common.utils.h.i(n4)) {
                    com.join.android.app.common.utils.h.delete(str);
                }
                com.join.mgps.Util.g0.h(n4.getApkPath(), true);
                n4.setApkPath("");
                n1.p.o().m(n4);
            }
        }
        I0();
        G0(str);
    }

    @Override // com.join.mgps.adapter.m3.e
    public void K(String str) {
    }

    @Override // com.join.mgps.adapter.m3.e
    public void Y(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B == null || B.getStatus() == 0) {
            return;
        }
        com.join.mgps.customview.b0 b0Var = new com.join.mgps.customview.b0(this);
        b0Var.b(new a());
        b0Var.d(this.f34288c, str, B.getDown_type() != 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.c0.a().d(this);
        this.f34286a.setVisibility(0);
        this.f34286a.setText("插件管理");
        com.join.mgps.Util.z1.o(this, Color.parseColor("#ffffff"), true);
        com.join.mgps.Util.t0.d("AppZipFailed2DialogAcitivity", "MyGamePlugManagerActivity");
        m3 m3Var = new m3(this);
        this.f34290e = m3Var;
        m3Var.P(this);
        this.f34287b.setAdapter((ListAdapter) this.f34290e);
        this.f34287b.setOnScrollListener(this);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
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
        I0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        switch (lVar.c()) {
            case 2:
                updateUI(a4, 1);
                return;
            case 3:
                updateUI(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                updateUI(a4, 5);
                return;
            case 6:
                updateUI(a4, 6);
                return;
            case 7:
                updateUI(a4, 3);
                return;
            case 8:
                List<DownloadTask> list = this.f34291f;
                if (list == null || list.size() <= 0) {
                    return;
                }
                updateProgressPartly();
                return;
            case 10:
                updateUI(a4, 7);
                return;
            case 12:
                updateUI(a4, 8);
                return;
            case 13:
                updateUI(a4, 9);
                return;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f34292g = (i4 + i2) - 1;
        this.f34293h = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    @Override // com.join.mgps.adapter.m3.e
    public void s0(DownloadTask downloadTask) {
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
