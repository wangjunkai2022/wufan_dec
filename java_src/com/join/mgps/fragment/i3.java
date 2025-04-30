package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.customview.ClouldItemView;
import com.join.mgps.dialog.a0;
import com.join.mgps.dialog.w;
import com.join.mgps.dialog.x;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.CLoudUploadMain;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecoverFileJson;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: MyArchiveFragment.java */
@EFragment(R.layout.item_archive)
/* loaded from: classes.dex */
public class i3 extends Fragment implements com.join.mgps.listener.c, com.join.android.app.common.http.g, com.join.mgps.listener.e {
    u A;
    com.join.mgps.dialog.x D;
    com.join.mgps.dialog.x0 E;
    ArchiveDataBean F;
    com.join.mgps.dialog.x0 H;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f48878a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f48879b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f48880c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f48881d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f48882e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RecyclerView f48883f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f48884g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f48885h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f48886i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f48887j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f48888k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    LinearLayout f48889l;
    @Pref

    /* renamed from: m  reason: collision with root package name */
    PrefDef_ f48890m;

    /* renamed from: n  reason: collision with root package name */
    List<RomArchived> f48891n;

    /* renamed from: o  reason: collision with root package name */
    List<CloudListDataBean> f48893o;

    /* renamed from: p  reason: collision with root package name */
    List<CloudListDataBean> f48895p;

    /* renamed from: p0  reason: collision with root package name */
    Iterator<CloudListDataBean> f48896p0;

    /* renamed from: q  reason: collision with root package name */
    private AccountBean f48897q;

    /* renamed from: q0  reason: collision with root package name */
    List<CloudListDataBean> f48898q0;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.rpc.c f48899r;

    /* renamed from: s  reason: collision with root package name */
    String f48901s;

    /* renamed from: t  reason: collision with root package name */
    int f48903t;

    /* renamed from: u  reason: collision with root package name */
    LocalBroadcastManager f48905u;

    /* renamed from: v  reason: collision with root package name */
    IntentFilter f48907v;

    /* renamed from: w  reason: collision with root package name */
    IntentFilter f48909w;

    /* renamed from: x  reason: collision with root package name */
    v f48911x;

    /* renamed from: x0  reason: collision with root package name */
    String f48912x0;

    /* renamed from: y  reason: collision with root package name */
    w f48913y;

    /* renamed from: z  reason: collision with root package name */
    y f48914z;
    boolean B = false;
    boolean C = false;
    boolean G = false;
    private boolean I = true;
    boolean J = false;
    boolean K = true;

    /* renamed from: n0  reason: collision with root package name */
    int f48892n0 = 0;

    /* renamed from: o0  reason: collision with root package name */
    boolean f48894o0 = false;

    /* renamed from: r0  reason: collision with root package name */
    int f48900r0 = 0;

    /* renamed from: s0  reason: collision with root package name */
    long f48902s0 = 0;

    /* renamed from: t0  reason: collision with root package name */
    long f48904t0 = 0;

    /* renamed from: u0  reason: collision with root package name */
    long f48906u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    long f48908v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    int f48910w0 = 0;

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class a implements w.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f48915a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f48916b;

        a(CloudListDataBean cloudListDataBean, boolean z3) {
            this.f48915a = cloudListDataBean;
            this.f48916b = z3;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            i3.this.a0(this.f48915a, this.f48916b);
            if (!i3.this.I) {
                i3.this.f48890m.DownloadRecoderNotice().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class b implements x {
        b() {
        }

        @Override // com.join.mgps.fragment.i3.x
        public void a(boolean z3, CloudListDataBean cloudListDataBean) {
            i3.this.z0(cloudListDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                i3.this.K = false;
            } else {
                i3.this.K = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class d implements w.e {
        d() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            wVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class e implements w.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f48921a;

        e(CloudListDataBean cloudListDataBean) {
            this.f48921a = cloudListDataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            i3.this.G0(this.f48921a);
            i3 i3Var = i3.this;
            if (!i3Var.K) {
                i3Var.f48890m.uploadRecoderNotice().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class f implements x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x f48923a;

        f(x xVar) {
            this.f48923a = xVar;
        }

        @Override // com.join.mgps.fragment.i3.x
        public void a(boolean z3, CloudListDataBean cloudListDataBean) {
            if (!z3) {
                this.f48923a.a(z3, cloudListDataBean);
            } else if (z3) {
                i3.this.f48892n0++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class g implements a0.c {
        g() {
        }

        @Override // com.join.mgps.dialog.a0.c
        public void a(com.join.mgps.dialog.a0 a0Var) {
            a0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class h implements a0.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f48926a;

        h(CloudListDataBean cloudListDataBean) {
            this.f48926a = cloudListDataBean;
        }

        @Override // com.join.mgps.dialog.a0.c
        public void a(com.join.mgps.dialog.a0 a0Var) {
            if (com.join.mgps.Util.d2.h(a0Var.a())) {
                i3.this.showMessage("描述信息不能为空");
                return;
            }
            i3.this.D.f("存档分享中");
            i3.this.D.e("取消分享");
            i3 i3Var = i3.this;
            if (i3Var.f48894o0) {
                com.join.mgps.Util.i2.a(i3Var.getContext()).b("已有上传进行中");
                com.join.mgps.dialog.x xVar = i3.this.D;
                if (xVar != null) {
                    xVar.show();
                    return;
                }
                return;
            }
            i3Var.r0(this.f48926a, a0Var.a());
            i3 i3Var2 = i3.this;
            if (!i3Var2.K) {
                i3Var2.f48890m.uploadRecoderNotice().g(Boolean.FALSE);
            }
            a0Var.dismiss();
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class i implements x {
        i() {
        }

        @Override // com.join.mgps.fragment.i3.x
        public void a(boolean z3, CloudListDataBean cloudListDataBean) {
            i3.this.y0(cloudListDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class j implements com.join.mgps.listener.e {
        j() {
        }

        @Override // com.join.mgps.listener.e
        public void B(CloudListDataBean cloudListDataBean) {
            i3 i3Var = i3.this;
            i3Var.f48894o0 = false;
            i3Var.u0(false);
        }

        @Override // com.join.mgps.listener.e
        public void H(CloudListDataBean cloudListDataBean) {
            i3 i3Var = i3.this;
            i3Var.f48894o0 = false;
            i3Var.u0(false);
            i3 i3Var2 = i3.this;
            if (i3Var2.G) {
                return;
            }
            i3Var2.showMessage("备份失败");
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class k implements x.c {
        k() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x xVar) {
            xVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class l implements com.join.android.app.common.http.g {
        l() {
        }

        @Override // com.join.android.app.common.http.g
        public void onRequestProgress(long j4, long j5, boolean z3, String str) {
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class m implements x.c {
        m() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x xVar) {
            if (i3.this.f48896p0 != null) {
                while (i3.this.f48896p0.hasNext()) {
                    i3.this.f48896p0.next();
                    i3.this.f48896p0.remove();
                }
            }
            i3 i3Var = i3.this;
            i3Var.f48894o0 = false;
            i3Var.G = true;
            xVar.dismiss();
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class n implements View.OnClickListener {

        /* compiled from: MyArchiveFragment.java */
        /* loaded from: classes4.dex */
        class a implements CompoundButton.OnCheckedChangeListener {
            a() {
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                if (z3) {
                    i3.this.I = false;
                } else {
                    i3.this.I = true;
                }
            }
        }

        /* compiled from: MyArchiveFragment.java */
        /* loaded from: classes4.dex */
        class b implements w.e {
            b() {
            }

            @Override // com.join.mgps.dialog.w.e
            public void a(com.join.mgps.dialog.w wVar) {
                wVar.dismiss();
            }
        }

        /* compiled from: MyArchiveFragment.java */
        /* loaded from: classes4.dex */
        class c implements w.e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f48936a;

            c(List list) {
                this.f48936a = list;
            }

            @Override // com.join.mgps.dialog.w.e
            public void a(com.join.mgps.dialog.w wVar) {
                i3.this.b0(this.f48936a);
                if (!i3.this.I) {
                    i3.this.f48890m.DownloadRecoderNotice().g(Boolean.FALSE);
                }
                wVar.dismiss();
            }
        }

        /* compiled from: MyArchiveFragment.java */
        /* loaded from: classes4.dex */
        class d implements x {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f48938a;

            d(List list) {
                this.f48938a = list;
            }

            @Override // com.join.mgps.fragment.i3.x
            public void a(boolean z3, CloudListDataBean cloudListDataBean) {
                i3.this.H.dismiss();
                if (z3) {
                    i3.this.l0(this.f48938a);
                } else {
                    com.join.mgps.Util.i2.a(i3.this.getContext()).b("备份失败");
                }
            }
        }

        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (i3.this.h0()) {
                if (AccountUtil_.getInstance_(i3.this.getContext()).isTourist()) {
                    IntentUtil.getInstance().goMyAccountLoginActivity(i3.this.getContext());
                } else if (i3.this.f48903t == 1) {
                    ArrayList arrayList = new ArrayList();
                    for (CloudListDataBean cloudListDataBean : i3.this.f48893o) {
                        if (cloudListDataBean.getIsCheck() == 1 && cloudListDataBean.getStatus() == 6) {
                            arrayList.add(cloudListDataBean);
                        }
                    }
                    if (arrayList.size() == 0) {
                        i3.this.showMessage("请选择存档");
                    } else if (!i3.this.f48890m.DownloadRecoderNotice().d().booleanValue()) {
                        i3.this.b0(arrayList);
                    } else {
                        new com.join.mgps.dialog.w(i3.this.getActivity(), R.style.HKDialogLoading).g("下载须知").d("下载后，将以备份存档为准，覆盖本地同名存档").f("确定").b("取消").e(new c(arrayList)).a(new b()).c(new a()).show();
                    }
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (CloudListDataBean cloudListDataBean2 : i3.this.f48893o) {
                        if (cloudListDataBean2.getIsCheck() == 1 && cloudListDataBean2.getStatus() != 5) {
                            arrayList2.add(cloudListDataBean2);
                        }
                    }
                    if (arrayList2.size() == 0) {
                        i3.this.showMessage("请选择存档");
                        return;
                    }
                    i3.this.H.b();
                    i3.this.q0(arrayList2, true, new d(arrayList2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(MApplication.G);
            com.join.mgps.Util.i0.w0(i3.this.getActivity(), forumPostsBean, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class p implements CompoundButton.OnCheckedChangeListener {
        p() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                i3.this.I = false;
            } else {
                i3.this.I = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class q implements w.e {
        q() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            wVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class r implements w.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48943a;

        r(List list) {
            this.f48943a = list;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            i3.this.H0(this.f48943a);
            if (!i3.this.I) {
                i3.this.f48890m.DownloadRecoderNotice().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class s implements CompoundButton.OnCheckedChangeListener {
        s() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                i3.this.I = false;
            } else {
                i3.this.I = true;
            }
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class t implements w.e {
        t() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            wVar.dismiss();
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public class u extends RecyclerView.Adapter<b> {

        /* renamed from: a  reason: collision with root package name */
        Context f48947a;

        /* renamed from: b  reason: collision with root package name */
        boolean f48948b = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MyArchiveFragment.java */
        /* loaded from: classes4.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f48950a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ b f48951b;

            a(int i2, b bVar) {
                this.f48950a = i2;
                this.f48951b = bVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i2 = 0;
                if (i3.this.f48893o.get(this.f48950a).getIsCheck() == 0) {
                    i3 i3Var = i3.this;
                    if (i3Var.f48903t == 2) {
                        if (i3Var.f48893o.get(this.f48950a).getStatus() != 5) {
                            this.f48951b.f48953a.setVisibility(8);
                            this.f48951b.f48954b.setVisibility(0);
                            i3.this.f48893o.get(this.f48950a).setIsCheck(1);
                            int i4 = 0;
                            for (int i5 = 0; i5 < i3.this.f48893o.size(); i5++) {
                                if (i3.this.f48893o.get(i5).getIsCheck() == 1 && i3.this.f48893o.get(i5).getStatus() != 5) {
                                    i4++;
                                }
                            }
                            int i6 = 0;
                            while (i2 < i3.this.f48893o.size()) {
                                if (i3.this.f48893o.get(i2).getStatus() == 5) {
                                    i6++;
                                }
                                i2++;
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append("SSS-->");
                            sb.append(i4);
                            sb.append("ssss->");
                            sb.append(i6);
                            TextView textView = i3.this.f48880c;
                            textView.setText("已选择" + i4 + "个存档");
                            if (i3.this.f48893o.size() - i6 == i4) {
                                i3 i3Var2 = i3.this;
                                i3Var2.J = true;
                                i3Var2.f48879b.setBackgroundResource(R.drawable.batch_select);
                            }
                        } else {
                            i3.this.v0("已备份");
                        }
                    } else if (i3Var.f48893o.get(this.f48950a).getStatus() != 0) {
                        this.f48951b.f48953a.setVisibility(8);
                        this.f48951b.f48954b.setVisibility(0);
                        i3.this.f48893o.get(this.f48950a).setIsCheck(1);
                        int i7 = 0;
                        for (int i8 = 0; i8 < i3.this.f48893o.size(); i8++) {
                            if (i3.this.f48893o.get(i8).getIsCheck() == 1 && i3.this.f48893o.get(i8).getStatus() != 0) {
                                i7++;
                            }
                        }
                        int i9 = 0;
                        while (i2 < i3.this.f48893o.size()) {
                            if (i3.this.f48893o.get(i2).getStatus() == 0) {
                                i9++;
                            }
                            i2++;
                        }
                        TextView textView2 = i3.this.f48880c;
                        textView2.setText("已选择" + i7 + "个存档");
                        if (i3.this.f48893o.size() - i9 == i7) {
                            i3.this.f48879b.setBackgroundResource(R.drawable.batch_select);
                            i3.this.J = true;
                        }
                    } else {
                        i3.this.v0("已下载");
                    }
                    i3.this.A.notifyDataSetChanged();
                    return;
                }
                this.f48951b.f48954b.setVisibility(8);
                this.f48951b.f48953a.setVisibility(0);
                i3.this.f48893o.get(this.f48950a).setIsCheck(0);
                int i10 = 0;
                while (i2 < i3.this.f48893o.size()) {
                    if (i3.this.f48893o.get(i2).getIsCheck() == 1) {
                        i10++;
                    }
                    i2++;
                }
                TextView textView3 = i3.this.f48880c;
                textView3.setText("已选择" + i10 + "个存档");
                if (i3.this.f48893o.size() != i10) {
                    i3.this.f48879b.setBackgroundResource(R.drawable.batch_nor);
                }
                i3.this.A.notifyDataSetChanged();
            }
        }

        /* compiled from: MyArchiveFragment.java */
        /* loaded from: classes4.dex */
        public class b extends RecyclerView.ViewHolder {

            /* renamed from: a  reason: collision with root package name */
            ImageView f48953a;

            /* renamed from: b  reason: collision with root package name */
            ImageView f48954b;

            /* renamed from: c  reason: collision with root package name */
            ClouldItemView f48955c;

            /* renamed from: d  reason: collision with root package name */
            RelativeLayout f48956d;

            public b(View view) {
                super(view);
                this.f48953a = (ImageView) view.findViewById(R.id.iv_nor);
                this.f48954b = (ImageView) view.findViewById(R.id.iv_select);
                this.f48955c = (ClouldItemView) view.findViewById(R.id.coulditem);
                this.f48956d = (RelativeLayout) view.findViewById(R.id.rl_image);
            }
        }

        public u(Context context) {
            this.f48947a = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(b bVar, int i2) {
            if (i2 >= i3.this.f48893o.size()) {
                return;
            }
            if (i3.this.f48893o.get(i2).getIsCheck() == 1) {
                bVar.f48954b.setVisibility(0);
                bVar.f48953a.setVisibility(8);
            } else {
                bVar.f48954b.setVisibility(8);
                bVar.f48953a.setVisibility(0);
            }
            bVar.f48956d.setOnClickListener(new a(i2, bVar));
            i3 i3Var = i3.this;
            if (i3Var.B) {
                int i4 = i3Var.f48903t;
                if (i4 == 2) {
                    if (i3Var.f48893o.get(i2).getStatus() != 5) {
                        bVar.f48956d.setVisibility(0);
                    } else {
                        bVar.f48956d.setVisibility(0);
                        bVar.f48953a.setVisibility(4);
                        bVar.f48954b.setVisibility(4);
                    }
                } else if (i4 == 1) {
                    if (i3Var.f48893o.get(i2).getStatus() != 0) {
                        bVar.f48956d.setVisibility(0);
                    } else {
                        bVar.f48956d.setVisibility(0);
                        bVar.f48953a.setVisibility(4);
                        bVar.f48954b.setVisibility(4);
                    }
                }
            } else {
                bVar.f48956d.setVisibility(8);
            }
            bVar.f48955c.setCloudItemListener(i3.this);
            ClouldItemView clouldItemView = bVar.f48955c;
            i3 i3Var2 = i3.this;
            i3 i3Var3 = i3.this;
            clouldItemView.setData(i3Var2.f48901s, i3Var2.f48893o.get(i2), i3Var3.f48903t, 9, i3Var3.B, false, i3Var3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public b onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new b(LayoutInflater.from(this.f48947a).inflate(R.layout.item_rcy_archive, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return i3.this.f48893o.size();
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                i3 i3Var = i3.this;
                i3Var.B = true;
                i3Var.f48878a.setVisibility(0);
                i3.this.A.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class w extends BroadcastReceiver {
        w() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                i3 i3Var = i3.this;
                i3Var.B = false;
                i3Var.f48878a.setVisibility(8);
                if (i3.this.f48893o != null) {
                    for (int i2 = 0; i2 < i3.this.f48893o.size(); i2++) {
                        i3.this.f48893o.get(i2).setIsCheck(0);
                    }
                }
                i3.this.f48879b.setBackgroundResource(R.drawable.batch_nor);
                i3.this.f48880c.setText("已选择0个存档");
                i3.this.A.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    public interface x {
        void a(boolean z3, CloudListDataBean cloudListDataBean);
    }

    /* compiled from: MyArchiveFragment.java */
    /* loaded from: classes4.dex */
    class y extends BroadcastReceiver {
        y() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            com.join.mgps.dialog.x xVar;
            i3 i3Var = i3.this;
            if (!i3Var.f48894o0 || (xVar = i3Var.D) == null) {
                return;
            }
            xVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(CloudListDataBean cloudListDataBean) {
        List<CloudListDataBean> list = this.f48898q0;
        if (list != null) {
            list.clear();
        }
        this.D.f("存档备份中");
        this.D.e("取消备份");
        u0(true);
        this.f48894o0 = true;
        this.G = false;
        I0(cloudListDataBean, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(List<CloudListDataBean> list) {
        List<CloudListDataBean> list2 = this.f48898q0;
        if (list2 != null) {
            list2.clear();
        }
        this.f48898q0 = list;
        this.f48896p0 = list.iterator();
        this.f48900r0 = 0;
        this.G = false;
        this.D.f("存档备份中");
        this.D.e("取消备份");
        this.f48894o0 = true;
        u0(true);
        if (this.f48896p0.hasNext()) {
            I0(this.f48896p0.next(), this);
            this.f48900r0++;
            return;
        }
        this.f48894o0 = false;
        u0(false);
    }

    private void K0(CloudListDataBean cloudListDataBean, InputStream inputStream, byte[] bArr, File file, x xVar) {
        File file2 = new File(cloudListDataBean.getArchiveFilePath() + "default");
        try {
            if (file2.exists()) {
                UtilsMy.delete(file2);
            }
            try {
                file2.createNewFile();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                try {
                    RecoverFileJson recoverFileJson = new RecoverFileJson();
                    recoverFileJson.setGameID(this.f48901s);
                    recoverFileJson.setUserID(AccountUtil_.getInstance_(getContext()).getUid());
                    String json = JsonMapper.getInstance().toJson(recoverFileJson);
                    byte[] x02 = x0(json);
                    byte[] t02 = t0((short) (json.length() + 1));
                    ByteBuffer allocate = ByteBuffer.allocate(json.length() + 3);
                    allocate.put(t02);
                    allocate.put(x02);
                    allocate.put((byte) 0);
                    byte[] x03 = x0(com.join.mgps.Util.v0.a(allocate.array()));
                    ByteBuffer allocate2 = ByteBuffer.allocate(json.length() + 39 + 3);
                    allocate2.put(x0("WFSTE"));
                    allocate2.put((byte) 0);
                    allocate2.put(x03);
                    allocate2.put((byte) 0);
                    allocate2.put(allocate.array());
                    fileOutputStream.write(allocate2.array());
                    System.out.println(new String(allocate2.array()));
                    if (bArr != null) {
                        fileOutputStream.write(bArr);
                    }
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr2);
                        if (read != -1) {
                            fileOutputStream.write(bArr2, 0, read);
                        } else {
                            fileOutputStream.close();
                            inputStream.close();
                            UtilsMy.delete(file);
                            file2.renameTo(file);
                            xVar.a(true, cloudListDataBean);
                            try {
                                fileOutputStream.close();
                                inputStream.close();
                                return;
                            } catch (IOException e5) {
                                e = e5;
                                e.printStackTrace();
                            }
                        }
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e7) {
                showMessage("写入信息异常");
                e7.printStackTrace();
                try {
                    fileOutputStream.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e8) {
                    e = e8;
                    e.printStackTrace();
                }
            }
        } catch (FileNotFoundException e9) {
            e9.printStackTrace();
            showMessage("文件没找到异常");
        }
    }

    private void X(String str) {
        try {
            File file = new File(str.replace(com.join.mgps.Util.u.f27845d, Environment.getExternalStorageDirectory().getAbsolutePath()));
            if (file.exists()) {
                boolean delete = UtilsMy.delete(file);
                StringBuilder sb = new StringBuilder();
                sb.append(delete);
                sb.append(str);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(CloudListDataBean cloudListDataBean, boolean z3) {
        if (z3) {
            cloudListDataBean.setArchiveFilePath(com.join.mgps.Util.u.f27850i + File.separator + cloudListDataBean.getArchiveFileName());
        } else {
            cloudListDataBean.setArchiveFilePath(com.join.mgps.Util.u.f27849h + File.separator + cloudListDataBean.getArchiveFileName());
        }
        Intent intent = new Intent(f1.a.f65477g0);
        intent.putExtra("downCloud", cloudListDataBean);
        getActivity().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(List<CloudListDataBean> list) {
        Intent intent = new Intent("com.cloud.downCloud.all");
        intent.putExtra("downClouds", (Serializable) list);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveColudArgs c0() {
        if (this.f48897q == null) {
            com.join.mgps.Util.i2.a(getActivity()).b("请先登录");
            return null;
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        return requestBeanUtil.getArchiveColud(this.f48897q.getUid() + "", this.f48897q.getToken(), this.f48901s);
    }

    private String f0(String str) {
        String substring = str.substring(str.lastIndexOf(com.join.mgps.Util.g0.f27568a) + 1, str.length());
        if ("0".equals(substring)) {
            return "快速存档";
        }
        if ("99".equals(substring)) {
            return "自动保存的存档";
        }
        return "存档" + substring;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h0() {
        if (AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return false;
        } else if (AccountUtil_.getInstance_(getContext()).getAccountData().getUid() == 0) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return false;
        } else {
            return true;
        }
    }

    private void m0(CloudListDataBean cloudListDataBean, int i2) {
        com.join.mgps.event.e eVar = new com.join.mgps.event.e();
        cloudListDataBean.setStatus(i2);
        eVar.f(cloudListDataBean);
        eVar.j(i2);
        org.greenrobot.eventbus.c.f().o(eVar);
    }

    private void n0(int i2) {
        try {
            ArchiveColudArgs c02 = c0();
            if (c02 == null) {
                return;
            }
            if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f48897q.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                ArchiveDataBean h4 = this.f48899r.h(c02.getArgs());
                this.F = h4;
                if (i2 == 1) {
                    if (h4.getCode() == -1 && this.F.getMsg().equals("701")) {
                        AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                        A0();
                    }
                    ArchiveDataBean archiveDataBean = this.F;
                    if (archiveDataBean == null) {
                        j0();
                        return;
                    }
                    List<CloudListDataBean> cloudList = archiveDataBean.getData_info().getCloudList();
                    DownloadTask B = g1.f.G().B(this.f48901s);
                    if (B != null) {
                        List<RomArchived> m4 = com.join.mgps.Util.f0.m(B.getPlugin_num(), B.getGameZipPath());
                        this.f48891n = m4;
                        if (m4 != null) {
                            for (CloudListDataBean cloudListDataBean : cloudList) {
                                cloudListDataBean.setStatus(6);
                                for (RomArchived romArchived : this.f48891n) {
                                    if (cloudListDataBean.getArchiveFileName().equals(romArchived.getFileName()) && cloudListDataBean.getFileMd5().equals(romArchived.getMd5())) {
                                        cloudListDataBean.setStatus(0);
                                        cloudListDataBean.setArchiveFilePath(romArchived.getArchivedPath());
                                    }
                                }
                            }
                        }
                    }
                    updateUi(cloudList);
                    return;
                }
                this.f48895p = h4.getData_info().getCloudList();
                C0(this.f48891n);
                return;
            }
            j0();
        } catch (Exception e4) {
            e4.printStackTrace();
            if (i2 == 2) {
                e0();
            }
        }
    }

    private void o0() {
        DownloadTask B = g1.f.G().B(this.f48901s);
        if (B == null) {
            j0();
            return;
        }
        List<RomArchived> m4 = com.join.mgps.Util.f0.m(B.getPlugin_num(), B.getGameZipPath());
        boolean z3 = false;
        if (B.getPlugin_num().equals("31")) {
            boolean z4 = false;
            boolean z5 = false;
            for (RomArchived romArchived : m4) {
                if (romArchived.getFileName().contains("_v2")) {
                    z4 = true;
                } else {
                    z5 = true;
                }
            }
            Iterator<RomArchived> it2 = m4.iterator();
            while (it2.hasNext()) {
                RomArchived next = it2.next();
                if (!z5 || z4) {
                    if (z5 && z4) {
                        if (com.join.mgps.Util.j1.a(B.getPackageName())) {
                            if (next.getFileName().contains("_v2")) {
                                it2.remove();
                            }
                        } else if (!next.getFileName().contains("_v2")) {
                            it2.remove();
                        }
                    }
                } else if (!com.join.mgps.Util.j1.a(B.getPackageName())) {
                    it2.remove();
                }
            }
        }
        if (B.getPlugin_num().equals("31")) {
            boolean z6 = false;
            for (RomArchived romArchived2 : m4) {
                if (romArchived2.getFileName().contains("_v2")) {
                    z3 = true;
                } else {
                    z6 = true;
                }
            }
            Iterator<RomArchived> it3 = m4.iterator();
            while (it3.hasNext()) {
                RomArchived next2 = it3.next();
                if (!z6 || z3) {
                    if (z6 && z3) {
                        if (com.join.mgps.Util.j1.a(B.getPackageName())) {
                            if (next2.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        } else if (!next2.getFileName().contains("_v2")) {
                            it3.remove();
                        }
                    }
                } else if (!com.join.mgps.Util.j1.a(B.getPackageName())) {
                    it3.remove();
                }
            }
        }
        C0(m4);
    }

    public static byte[] t0(short s3) {
        byte[] bArr = new byte[2];
        int i2 = 0;
        int i4 = s3;
        while (i2 < 2) {
            bArr[i2] = new Integer(i4 & 255).byteValue();
            i2++;
            i4 >>= 8;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A0() {
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    @Override // com.join.mgps.listener.e
    public void B(CloudListDataBean cloudListDataBean) {
        J0(cloudListDataBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void B0(List<RomArchived> list) {
        if (this.f48884g == null || this.f48886i == null || this.f48883f == null) {
            return;
        }
        if (list != null) {
            try {
                if (list.size() != 0) {
                    this.f48884g.setVisibility(8);
                    this.f48883f.setVisibility(0);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        this.f48884g.setVisibility(0);
        if (this.f48903t == 2) {
            this.f48886i.setText("请先启动游戏保存存档");
        } else {
            this.f48886i.setText("请先从本地备份存档");
        }
        this.f48883f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0(List<RomArchived> list) {
        ArrayList arrayList = null;
        if (list != null) {
            try {
            } catch (Exception e4) {
                e = e4;
            }
            if (list.size() != 0) {
                this.f48891n = list;
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < list.size(); i2++) {
                    try {
                        if (!com.join.mgps.Util.d2.h(list.get(i2).getArchivedImagePath())) {
                            CloudListDataBean cloudListDataBean = new CloudListDataBean();
                            cloudListDataBean.setAddTime(list.get(i2).getArchivedTime());
                            cloudListDataBean.setArchiveFilePath(list.get(i2).getArchivedPath());
                            cloudListDataBean.setArchiveCover("file://" + list.get(i2).getArchivedImagePath());
                            cloudListDataBean.setArchiveCoverFilePath(list.get(i2).getArchivedImagePath());
                            cloudListDataBean.setArchiveFileName(list.get(i2).getFileName());
                            cloudListDataBean.setArchiveName(f0(list.get(i2).getArchivedPath()));
                            cloudListDataBean.setFileSize(list.get(i2).getSize());
                            cloudListDataBean.setFileMd5(list.get(i2).getMd5());
                            cloudListDataBean.setStatus(0);
                            List<CloudListDataBean> list2 = this.f48895p;
                            if (list2 != null) {
                                Iterator<CloudListDataBean> it2 = list2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    CloudListDataBean next = it2.next();
                                    if (next.getArchiveFileName().equals(new File(list.get(i2).getArchivedPath()).getName()) && next.getFileMd5().equals(list.get(i2).getMd5())) {
                                        cloudListDataBean.setStatus(5);
                                        break;
                                    }
                                }
                            }
                            List<CloudListDataBean> list3 = this.f48893o;
                            if (list3 != null) {
                                for (CloudListDataBean cloudListDataBean2 : list3) {
                                    if (cloudListDataBean2.getArchiveFileName().equals(new File(list.get(i2).getArchivedPath()).getName()) && cloudListDataBean2.getStatus() == 7) {
                                        cloudListDataBean.setStatus(cloudListDataBean2.getStatus());
                                    }
                                }
                            }
                            arrayList2.add(cloudListDataBean);
                        }
                    } catch (Exception e5) {
                        e = e5;
                        arrayList = arrayList2;
                        e.printStackTrace();
                        arrayList2 = arrayList;
                        updateUi(arrayList2);
                        return;
                    }
                }
                updateUi(arrayList2);
                return;
            }
        }
        B0(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(String str) {
        try {
            List<CloudListDataBean> list = this.f48898q0;
            if (list != null && list.size() > 1) {
                this.D.c(this.f48900r0 + net.lingala.zip4j.util.e.F0 + this.f48898q0.size(), UtilsMy.c(this.f48906u0) + "/S", this.f48910w0);
            } else {
                this.D.c(str, UtilsMy.c(this.f48906u0) + "/S", this.f48910w0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.listener.c
    public void E(CloudListDataBean cloudListDataBean, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void E0() {
        if (this.A != null) {
            try {
                if (this.f48893o.size() == 0) {
                    j0();
                }
                if (this.C) {
                    return;
                }
                this.A.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        if (this.A != null) {
            try {
                if (this.f48893o.size() == 0) {
                    j0();
                }
                if (this.C) {
                    return;
                }
                this.A.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.listener.e
    public void H(CloudListDataBean cloudListDataBean) {
        if (this.f48896p0.hasNext()) {
            I0(this.f48896p0.next(), this);
            this.f48900r0++;
            return;
        }
        u0(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(CloudListDataBean cloudListDataBean, com.join.mgps.listener.e eVar) {
        try {
            if (cloudListDataBean.getArchiveCoverFilePath() == null) {
                return;
            }
            m0(cloudListDataBean, 7);
            String[] strArr = {cloudListDataBean.getArchiveFilePath(), cloudListDataBean.getArchiveCoverFilePath()};
            AccountBean accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
            com.join.android.app.common.http.h b4 = com.join.android.app.common.http.h.b();
            String i2 = b4.i(strArr, accountData.getUid() + "", accountData.getToken(), this.f48901s, cloudListDataBean.getArchiveName(), cloudListDataBean.getArchiveFileName(), cloudListDataBean.getFileMd5(), this);
            if (com.join.mgps.Util.d2.i(i2)) {
                CLoudUploadMain cLoudUploadMain = (CLoudUploadMain) JsonMapper.getInstance().fromJson(i2, CLoudUploadMain.class);
                if (cLoudUploadMain.getCode() == 600) {
                    if (this.G) {
                        eVar.H(cloudListDataBean);
                        return;
                    }
                    m0(cloudListDataBean, 5);
                    eVar.B(cloudListDataBean);
                    return;
                }
                if ("701".equals(cLoudUploadMain.getMsg())) {
                    A0();
                    showMessage("你的登陆已失效，请重新登陆。");
                } else {
                    showMessage(cLoudUploadMain.getMsg());
                }
                eVar.H(cloudListDataBean);
                m0(cloudListDataBean, 4);
            } else {
                eVar.H(cloudListDataBean);
                m0(cloudListDataBean, 4);
            }
            eVar.H(cloudListDataBean);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(CloudListDataBean cloudListDataBean) {
        try {
            Iterator<CloudListDataBean> it2 = this.f48896p0;
            if (it2 != null && it2.hasNext()) {
                I0(this.f48896p0.next(), this);
                this.f48900r0++;
                return;
            }
            this.f48894o0 = false;
            this.f48879b.setBackgroundResource(R.drawable.batch_nor);
            int i2 = 0;
            for (int i4 = 0; i4 < this.f48893o.size(); i4++) {
                if (this.f48893o.get(i4).getIsCheck() == 1 && this.f48893o.get(i4).getStatus() != 5) {
                    i2++;
                }
            }
            this.f48880c.setText("已选择" + i2 + "个存档");
            cloudListDataBean.setStatus(5);
            u0(false);
            this.f48905u.sendBroadcast(new Intent("com.join.mgps.activity.quitManage"));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        if (MApplication.E) {
            RelativeLayout relativeLayout = this.f48887j;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
                this.f48888k.setText(MApplication.F);
                this.f48889l.setOnClickListener(new o());
                return;
            }
            return;
        }
        RelativeLayout relativeLayout2 = this.f48887j;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
        }
    }

    public byte[] U(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V() {
        this.f48905u.sendBroadcast(new Intent("com.join.mgps.activity.quitManage"));
    }

    public short W(byte[] bArr) {
        return (short) (((short) (((short) (bArr[1] & 255)) << 8)) | ((short) (bArr[0] & 255)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z(CloudListDataBean cloudListDataBean) {
        if (h0()) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
                HashMap hashMap = new HashMap();
                hashMap.put("gameId", this.f48901s);
                hashMap.put("uid", accountData.getUid() + "");
                hashMap.put("token", accountData.getToken());
                hashMap.put("archiveName", cloudListDataBean.getArchiveName());
                ArchiveResponseMain<ArchiveResponseMessage> c4 = this.f48899r.c(hashMap);
                if (c4 != null && c4.getCode() == 600) {
                    Iterator<CloudListDataBean> it2 = this.f48893o.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().getArchiveFileName().equals(cloudListDataBean.getArchiveFileName())) {
                            it2.remove();
                            F0();
                            return;
                        }
                    }
                } else if (c4 != null) {
                    if ("701".equals(c4.getMsg())) {
                        A0();
                        showMessage("你的登陆已失效，请重新登陆。");
                        return;
                    }
                    showMessage(c4.getMsg());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        com.join.mgps.Util.c0.a().d(this);
        this.H = com.join.mgps.Util.a0.c0(getContext()).x(getContext());
        this.f48883f.setLayoutManager(linearLayoutManager);
        this.f48899r = com.join.mgps.rpc.impl.b.k();
        this.f48905u = LocalBroadcastManager.getInstance(getActivity());
        this.f48897q = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f48901s = getArguments().getString("gameid");
        this.f48903t = getArguments().getInt("type");
        this.f48907v = new IntentFilter();
        this.f48909w = new IntentFilter();
        this.f48907v.addAction("com.join.mgps.activity.joinManage");
        this.f48909w.addAction("com.join.mgps.activity.quitManage");
        this.f48911x = new v();
        this.f48913y = new w();
        this.f48905u.registerReceiver(this.f48911x, this.f48907v);
        this.f48905u.registerReceiver(this.f48913y, this.f48909w);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.wufun.cloud.showUploadDialog");
        y yVar = new y();
        this.f48914z = yVar;
        this.f48905u.registerReceiver(yVar, intentFilter);
        this.f48893o = new ArrayList();
        this.f48895p = new ArrayList();
        u uVar = new u(getActivity());
        this.A = uVar;
        this.f48883f.setAdapter(uVar);
        this.D = new com.join.mgps.dialog.x(getActivity(), R.style.HKDialogLoading).f("存档备份中").e("取消备份").b("后台运行").d(new m()).a(new k());
        this.E = com.join.mgps.Util.a0.c0(getContext()).x(getContext());
        this.f48881d.setOnClickListener(new n());
        M();
    }

    @Background
    public void d0(int i2) {
        if (i2 == 2) {
            try {
                e0();
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        if (com.join.android.app.common.utils.f.j(getActivity())) {
            n0(i2);
        }
    }

    @Background
    public void e0() {
        try {
            o0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void g0() {
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0() {
        RecyclerView recyclerView = this.f48883f;
        if (recyclerView == null || this.f48884g == null) {
            return;
        }
        try {
            recyclerView.setVisibility(0);
            this.f48884g.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j0() {
        RecyclerView recyclerView = this.f48883f;
        if (recyclerView == null || this.f48884g == null) {
            return;
        }
        try {
            recyclerView.setVisibility(8);
            this.f48884g.setVisibility(0);
            if (this.f48903t == 1) {
                this.f48886i.setText("请先从本地备份存档");
            } else {
                this.f48886i.setText("请先启动游戏保存存档");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k0() {
        int i2 = 0;
        if (!this.J) {
            this.J = true;
            if (this.f48903t == 2) {
                int i4 = 0;
                for (int i5 = 0; i5 < this.f48893o.size(); i5++) {
                    if (this.f48893o.get(i5).getStatus() != 5) {
                        this.f48893o.get(i5).setIsCheck(1);
                        i4++;
                    }
                }
                int i6 = 0;
                while (i2 < this.f48893o.size()) {
                    if (this.f48893o.get(i2).getStatus() == 5) {
                        i6++;
                    }
                    i2++;
                }
                if (i4 == this.f48893o.size() - i6 && i4 != 0 && this.f48893o.size() - i6 != 0) {
                    this.f48879b.setBackgroundResource(R.drawable.batch_select);
                }
                TextView textView = this.f48880c;
                textView.setText("已选择" + i4 + "个存档");
            } else {
                int i7 = 0;
                for (int i8 = 0; i8 < this.f48893o.size(); i8++) {
                    if (this.f48893o.get(i8).getStatus() != 0) {
                        this.f48893o.get(i8).setIsCheck(1);
                        i7++;
                    }
                }
                int i9 = 0;
                while (i2 < this.f48893o.size()) {
                    if (this.f48893o.get(i2).getStatus() == 0) {
                        i9++;
                    }
                    i2++;
                }
                if (i7 == this.f48893o.size() - i9 && i7 != 0 && this.f48893o.size() - i9 != 0) {
                    this.f48879b.setBackgroundResource(R.drawable.batch_select);
                }
                TextView textView2 = this.f48880c;
                textView2.setText("已选择" + i7 + "个存档");
            }
        } else {
            this.J = false;
            if (this.f48903t == 2) {
                for (int i10 = 0; i10 < this.f48893o.size(); i10++) {
                    if (this.f48893o.get(i10).getStatus() != 5) {
                        this.f48893o.get(i10).setIsCheck(0);
                    }
                }
                this.f48879b.setBackgroundResource(R.drawable.batch_nor);
                this.f48880c.setText("已选择0个存档");
            } else {
                for (int i11 = 0; i11 < this.f48893o.size(); i11++) {
                    if (this.f48893o.get(i11).getStatus() != 0) {
                        this.f48893o.get(i11).setIsCheck(0);
                    }
                }
                this.f48879b.setBackgroundResource(R.drawable.batch_nor);
                this.f48880c.setText("已选择0个存档");
            }
        }
        this.A.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0(List<CloudListDataBean> list) {
        if (!this.f48890m.DownloadRecoderNotice().d().booleanValue()) {
            H0(list);
        } else {
            new com.join.mgps.dialog.w(getActivity(), R.style.HKDialogLoading).g("备份须知").d("上传后，将以本地存档为准，覆盖云端同名存档。").f("确定").b("取消").e(new r(list)).a(new q()).c(new p()).show();
        }
    }

    @Override // com.join.mgps.listener.c
    public void m(CloudListDataBean cloudListDataBean) {
        if (h0()) {
            if (this.f48894o0) {
                com.join.mgps.Util.i2.a(getContext()).b("已有备份进行中");
                com.join.mgps.dialog.x xVar = this.D;
                if (xVar != null) {
                    xVar.show();
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(cloudListDataBean);
            q0(arrayList, true, new b());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.C = true;
        com.join.mgps.dialog.x xVar = this.D;
        if (xVar != null) {
            xVar.dismiss();
        }
        this.f48905u.unregisterReceiver(this.f48911x);
        this.f48905u.unregisterReceiver(this.f48914z);
        this.f48905u.unregisterReceiver(this.f48911x);
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.e eVar) {
        for (int i2 = 0; i2 < this.f48893o.size(); i2++) {
            CloudListDataBean cloudListDataBean = this.f48893o.get(i2);
            if (eVar.a().getArchiveFileName().equals(cloudListDataBean.getArchiveFileName())) {
                if (eVar.e() == 3 && cloudListDataBean.getStatus() == eVar.e()) {
                    return;
                }
                cloudListDataBean.setStatus(eVar.e());
                cloudListDataBean.setArchiveFilePath(eVar.a().getArchiveFilePath());
                this.A.notifyItemChanged(i2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (!z3) {
            d0(this.f48903t);
        }
        M();
    }

    @Override // com.join.android.app.common.http.g
    public void onRequestProgress(long j4, long j5, boolean z3, String str) {
        if (this.G) {
            for (CloudListDataBean cloudListDataBean : this.f48893o) {
                if (cloudListDataBean.getArchiveFileName().equals(str)) {
                    m0(cloudListDataBean, 4);
                }
            }
            return;
        }
        this.f48912x0 = UtilsMy.d(j4) + net.lingala.zip4j.util.e.F0 + UtilsMy.d(j5) + "K";
        long currentTimeMillis = System.currentTimeMillis();
        long j6 = currentTimeMillis - this.f48908v0;
        if (j6 > 1000) {
            this.f48906u0 = ((j4 - this.f48904t0) * 1000) / j6;
            this.f48908v0 = currentTimeMillis;
            this.f48904t0 = j4;
        }
        this.f48902s0 = System.currentTimeMillis();
        com.join.mgps.dialog.x xVar = this.D;
        if (xVar != null && xVar.isShowing()) {
            this.f48910w0 = (int) ((j4 * 100) / j5);
            D0(this.f48912x0);
        }
        if (z3) {
            this.f48904t0 = 0L;
            this.f48902s0 = 0L;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f48897q = AccountUtil_.getInstance_(getActivity()).getAccountData();
        int i2 = this.f48903t;
        if (i2 == 1) {
            d0(i2);
            this.f48881d.setText("下载");
            return;
        }
        this.f48881d.setText("备份");
        d0(this.f48903t);
    }

    @Override // com.join.mgps.listener.c
    public void p(CloudListDataBean cloudListDataBean) {
        DocumentManageActivity documentManageActivity = (DocumentManageActivity) getActivity();
        if (documentManageActivity.Q0()) {
            documentManageActivity.finish();
        }
    }

    void p0(CloudListDataBean cloudListDataBean, boolean z3, x xVar) {
        try {
            File file = new File(cloudListDataBean.getArchiveFilePath());
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[6];
                try {
                    fileInputStream.read(bArr);
                    ByteBuffer allocate = ByteBuffer.allocate(6);
                    allocate.put((byte) 87);
                    allocate.put((byte) 70);
                    allocate.put((byte) 83);
                    allocate.put((byte) 84);
                    allocate.put((byte) 69);
                    allocate.put((byte) 0);
                    if (Arrays.equals(allocate.array(), bArr)) {
                        byte[] bArr2 = new byte[33];
                        fileInputStream.read(bArr2);
                        String str = new String(bArr2);
                        byte[] bArr3 = new byte[2];
                        fileInputStream.read(bArr3);
                        int W = W(bArr3);
                        byte[] bArr4 = new byte[W];
                        fileInputStream.read(bArr4);
                        String str2 = new String(bArr4);
                        ByteBuffer allocate2 = ByteBuffer.allocate(2 + W);
                        allocate2.put(bArr3);
                        allocate2.put(bArr4);
                        if (com.join.mgps.Util.v0.a(allocate2.array()).equals(str.substring(0, 32))) {
                            RecoverFileJson recoverFileJson = (RecoverFileJson) JsonMapper.getInstance().fromJson(str2, RecoverFileJson.class);
                            if (recoverFileJson.getUserID().equals("0")) {
                                K0(cloudListDataBean, fileInputStream, null, file, xVar);
                            } else if (recoverFileJson.getUserID().equals(AccountUtil_.getInstance_(getContext()).getUid())) {
                                xVar.a(true, cloudListDataBean);
                            } else if (z3) {
                                xVar.a(true, cloudListDataBean);
                            } else {
                                showMessage("请勿分享他人原创存档");
                            }
                        } else {
                            showMessage("存档不合法");
                        }
                    } else {
                        K0(cloudListDataBean, fileInputStream, bArr, file, xVar);
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                    showMessage("写入信息异常");
                }
            } catch (FileNotFoundException e5) {
                showMessage("文件没找到");
                e5.printStackTrace();
            }
        } catch (Exception e6) {
            e6.printStackTrace();
            showMessage("写入信息异常2");
        }
    }

    @Override // com.join.mgps.listener.c
    public String q() {
        return this.f48890m.cloudVipLink().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q0(List<CloudListDataBean> list, boolean z3, x xVar) {
        if (list == null) {
            return;
        }
        if (list.size() == 1) {
            try {
                p0(list.get(0), z3, xVar);
                return;
            } catch (Exception unused) {
                xVar.a(false, null);
                return;
            }
        }
        this.f48892n0 = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            p0(list.get(i2), z3, new f(xVar));
        }
        if (this.f48892n0 == list.size()) {
            xVar.a(true, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r0(CloudListDataBean cloudListDataBean, String str) {
        String[] strArr;
        try {
            w0(true);
            if (this.f48903t == 1) {
                strArr = new String[]{"", ""};
            } else if (cloudListDataBean.getArchiveCoverFilePath() == null) {
                return;
            } else {
                strArr = new String[]{cloudListDataBean.getArchiveFilePath(), cloudListDataBean.getArchiveCoverFilePath()};
            }
            l lVar = new l();
            AccountBean accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
            com.join.android.app.common.http.h b4 = com.join.android.app.common.http.h.b();
            String d4 = b4.d(strArr, accountData.getUid() + "", accountData.getToken(), this.f48901s, cloudListDataBean.getArchiveName(), cloudListDataBean.getArchiveFileName(), lVar, str, this.f48903t);
            if (com.join.mgps.Util.d2.i(d4)) {
                CLoudUploadMain cLoudUploadMain = (CLoudUploadMain) JsonMapper.getInstance().fromJson(d4, CLoudUploadMain.class);
                if (cLoudUploadMain.getCode() == 600) {
                    w0(false);
                    showMessage(cLoudUploadMain.getData_info().getMsg());
                    return;
                } else if ("701".equals(cLoudUploadMain.getMsg())) {
                    A0();
                    showMessage("你的登陆已失效，请重新登陆。");
                } else {
                    showMessage(cLoudUploadMain.getMsg());
                }
            } else {
                showMessage("分享失败");
            }
            w0(false);
        } catch (Exception e4) {
            e4.printStackTrace();
            showMessage("分享失败");
            w0(false);
        }
    }

    @Override // com.join.mgps.listener.c
    public void s(CloudListDataBean cloudListDataBean, boolean z3) {
        if (h0()) {
            if (!this.f48890m.DownloadRecoderNotice().d().booleanValue()) {
                a0(cloudListDataBean, z3);
            } else {
                new com.join.mgps.dialog.w(getActivity(), R.style.HKDialogLoading).g("下载须知").d("下载后，将以备份存档为准，覆盖本地同名存档").f("确定").b("取消").e(new a(cloudListDataBean, z3)).a(new t()).c(new s()).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(getContext()).b(str);
    }

    @Override // com.join.mgps.listener.c
    public void t(CloudListDataBean cloudListDataBean, int i2) {
        File file;
        File file2;
        if (i2 == 1) {
            Z(cloudListDataBean);
        } else if (i2 == 2) {
            Iterator<CloudListDataBean> it2 = this.f48893o.iterator();
            while (it2.hasNext()) {
                CloudListDataBean next = it2.next();
                if (next.getArchiveFileName().equals(cloudListDataBean.getArchiveFileName())) {
                    it2.remove();
                    String archiveFilePath = next.getArchiveFilePath();
                    if (archiveFilePath.contains("file://")) {
                        archiveFilePath = archiveFilePath.replace("file://", "");
                    }
                    UtilsMy.delete(new File(archiveFilePath));
                    X(archiveFilePath);
                    DownloadTask B = g1.f.G().B(this.f48901s);
                    if (B != null) {
                        String str = getActivity().getFilesDir().toString() + "/emus/" + UtilsMy.w1(Integer.parseInt(B.getRomType())) + net.lingala.zip4j.util.e.F0 + new File(UtilsMy.v3(B.getGameZipPath())).getName() + net.lingala.zip4j.util.e.F0;
                        UtilsMy.delete(new File(str + file.getName()));
                        String replace = next.getArchiveCoverFilePath().replace("file://", "");
                        UtilsMy.delete(new File(replace));
                        UtilsMy.delete(new File(str + file2.getName()));
                        X(replace);
                    }
                    Iterator<RomArchived> it3 = this.f48891n.iterator();
                    if (it3.hasNext() && it3.next().getFileName().equals(next.getArchiveFileName())) {
                        it3.remove();
                    }
                    E0();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0(boolean z3) {
        try {
            if (z3) {
                this.D.show();
            } else {
                this.D.dismiss();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<CloudListDataBean> list) {
        if (this.A != null) {
            try {
                this.f48893o.clear();
                if (list != null) {
                    this.f48893o.addAll(list);
                }
                if (this.f48893o.size() == 0) {
                    j0();
                } else {
                    i0();
                }
                if (this.C) {
                    return;
                }
                this.A.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(String str) {
        com.join.mgps.Util.i2.a(getActivity()).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0(boolean z3) {
        try {
            if (z3) {
                this.E.show();
            } else {
                this.E.dismiss();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public byte[] x0(String str) {
        if (str == null) {
            return null;
        }
        return str.getBytes();
    }

    @Override // com.join.mgps.listener.c
    public void y(CloudListDataBean cloudListDataBean) {
        AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        if (accountData != null && accountData.getUid() != 0 && !AccountUtil_.getInstance_(getContext()).isTourist()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cloudListDataBean);
            if (this.f48903t == 1) {
                y0(cloudListDataBean);
                return;
            } else {
                q0(arrayList, false, new i());
                return;
            }
        }
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0(CloudListDataBean cloudListDataBean) {
        if (h0()) {
            if (g1.f.G().B(this.f48901s).getPlugin_num().equals("31") && !cloudListDataBean.getArchiveFileName().contains("_v2")) {
                com.join.mgps.Util.i2.a(getContext()).b("此版本存档不能分享");
            } else if (this.f48897q.getPapaMoney() < this.f48890m.getArchiveCoinPref().d().intValue()) {
                com.join.mgps.Util.i2.a(getContext()).b("铜板余额不足");
            } else {
                com.join.mgps.dialog.a0 a0Var = new com.join.mgps.dialog.a0(getActivity(), R.style.HKDialogLoading);
                com.join.mgps.dialog.a0 b4 = a0Var.d("发布需要先扣除您" + this.f48890m.getArchiveCoinPref().d() + "铜板保证金，他人下载所支付铜板将完全归你所有。").g("确定").c("取消").f(new h(cloudListDataBean)).b(new g());
                StringBuilder sb = new StringBuilder();
                sb.append(this.f48890m.getArchiveCoinPref().d());
                sb.append("铜板");
                b4.e(sb.toString()).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z0(CloudListDataBean cloudListDataBean) {
        if (!this.f48890m.uploadRecoderNotice().d().booleanValue()) {
            G0(cloudListDataBean);
        } else {
            new com.join.mgps.dialog.w(getActivity(), R.style.HKDialogLoading).g("备份须知").d("上传后，将以本地存档为准，覆盖云端同名存档。").f("确定").b("取消").e(new e(cloudListDataBean)).a(new d()).c(new c()).h(false).show();
        }
    }
}
