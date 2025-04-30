package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dto.GameDownInfo;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.enums.Dtype;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.choice_down_activity)
/* loaded from: classes3.dex */
public class ChociceDownActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f28515a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28516b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f28517c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28518d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f28519e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f28520f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28521g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f28522h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f28523i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.d f28524j;
    @Extra

    /* renamed from: k  reason: collision with root package name */
    DownloadTask f28525k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    UpdateIntentDataBean f28526l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    int f28527m = 0;

    /* renamed from: n  reason: collision with root package name */
    Context f28528n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    LinearLayout f28529o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f28530p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    ImageView f28531q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    RelativeLayout f28532r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    RelativeLayout f28533s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28534a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDownInfo.Addr1Bean f28535b;

        a(int i2, GameDownInfo.Addr1Bean addr1Bean) {
            this.f28534a = i2;
            this.f28535b = addr1Bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = this.f28534a;
            if (i2 == 1) {
                ChociceDownActivity.this.f28525k.setUrl(this.f28535b.getUrl());
                if (ChociceDownActivity.this.f28525k.getStatus() == 9) {
                    com.php25.PDownload.d.b(ChociceDownActivity.this.f28525k);
                    ChociceDownActivity chociceDownActivity = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity.f28525k, chociceDownActivity.f28528n);
                } else if (ChociceDownActivity.this.f28525k.getFileType().equals(Dtype.apk.name()) && ChociceDownActivity.this.f28526l != null) {
                    EMUUpdateTable n4 = n1.q.o().n(ChociceDownActivity.this.f28525k.getCrc_link_type_val());
                    n4.setDown_url_remote(ChociceDownActivity.this.f28525k.getUrl());
                    n1.q.o().update(n4);
                    ChociceDownActivity.this.f28526l.getDownloadTask().setUrl(ChociceDownActivity.this.f28525k.getUrl());
                    UpdateLodingActivity_.M0(ChociceDownActivity.this.f28528n).a(ChociceDownActivity.this.f28526l).start();
                } else {
                    ChociceDownActivity chociceDownActivity2 = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity2.f28525k, chociceDownActivity2.f28528n);
                }
            } else if (i2 == 2) {
                ChociceDownActivity chociceDownActivity3 = ChociceDownActivity.this;
                if (chociceDownActivity3.f28526l == null) {
                    chociceDownActivity3.f28526l = new UpdateIntentDataBean();
                    ChociceDownActivity chociceDownActivity4 = ChociceDownActivity.this;
                    chociceDownActivity4.f28526l.setDownloadTask(chociceDownActivity4.f28525k);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f28535b.getUrl());
                intentDateBean.setObject(ChociceDownActivity.this.f28526l);
                intentDateBean.setFrom(com.join.mgps.Util.u.f27861t);
                if (ChociceDownActivity.this.f28527m == 11) {
                    intentDateBean.setFrom("11");
                }
                IntentUtil.getInstance().intentActivity(ChociceDownActivity.this.f28528n, intentDateBean);
            } else if (i2 == 3) {
                IntentUtil.getInstance().goBrowser(ChociceDownActivity.this.f28528n, this.f28535b.getUrl());
            }
            ChociceDownActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28537a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDownInfo.Addr1Bean f28538b;

        b(int i2, GameDownInfo.Addr1Bean addr1Bean) {
            this.f28537a = i2;
            this.f28538b = addr1Bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = this.f28537a;
            if (i2 == 1) {
                ChociceDownActivity.this.f28525k.setUrl(this.f28538b.getUrl());
                if (ChociceDownActivity.this.f28525k.getStatus() == 9) {
                    com.php25.PDownload.d.b(ChociceDownActivity.this.f28525k);
                    ChociceDownActivity chociceDownActivity = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity.f28525k, chociceDownActivity.f28528n);
                } else if (ChociceDownActivity.this.f28525k.getFileType().equals(Dtype.apk.name()) && ChociceDownActivity.this.f28526l != null) {
                    EMUUpdateTable n4 = n1.q.o().n(ChociceDownActivity.this.f28525k.getCrc_link_type_val());
                    n4.setDown_url_remote(ChociceDownActivity.this.f28525k.getUrl());
                    n1.q.o().update(n4);
                    ChociceDownActivity.this.f28526l.getDownloadTask().setUrl(ChociceDownActivity.this.f28525k.getUrl());
                    UpdateLodingActivity_.M0(ChociceDownActivity.this.f28528n).a(ChociceDownActivity.this.f28526l).start();
                } else {
                    ChociceDownActivity chociceDownActivity2 = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity2.f28525k, chociceDownActivity2.f28528n);
                }
            } else if (i2 == 2) {
                ChociceDownActivity chociceDownActivity3 = ChociceDownActivity.this;
                if (chociceDownActivity3.f28526l == null) {
                    chociceDownActivity3.f28526l = new UpdateIntentDataBean();
                    ChociceDownActivity chociceDownActivity4 = ChociceDownActivity.this;
                    chociceDownActivity4.f28526l.setDownloadTask(chociceDownActivity4.f28525k);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f28538b.getUrl());
                intentDateBean.setObject(ChociceDownActivity.this.f28526l);
                intentDateBean.setFrom(com.join.mgps.Util.u.f27861t);
                if (ChociceDownActivity.this.f28527m == 11) {
                    intentDateBean.setFrom("11");
                }
                IntentUtil.getInstance().intentActivity(ChociceDownActivity.this.f28528n, intentDateBean);
            } else if (i2 == 3) {
                IntentUtil.getInstance().goBrowser(ChociceDownActivity.this.f28528n, this.f28538b.getUrl());
            }
            ChociceDownActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28540a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDownInfo.Addr1Bean f28541b;

        c(int i2, GameDownInfo.Addr1Bean addr1Bean) {
            this.f28540a = i2;
            this.f28541b = addr1Bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = this.f28540a;
            if (i2 == 1) {
                ChociceDownActivity.this.f28525k.setUrl(this.f28541b.getUrl());
                if (ChociceDownActivity.this.f28525k.getStatus() == 9) {
                    com.php25.PDownload.d.b(ChociceDownActivity.this.f28525k);
                    ChociceDownActivity chociceDownActivity = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity.f28525k, chociceDownActivity.f28528n);
                } else if (ChociceDownActivity.this.f28525k.getFileType().equals(Dtype.apk.name()) && ChociceDownActivity.this.f28526l != null) {
                    EMUUpdateTable n4 = n1.q.o().n(ChociceDownActivity.this.f28525k.getCrc_link_type_val());
                    n4.setDown_url_remote(ChociceDownActivity.this.f28525k.getUrl());
                    n1.q.o().update(n4);
                    ChociceDownActivity.this.f28526l.getDownloadTask().setUrl(ChociceDownActivity.this.f28525k.getUrl());
                    UpdateLodingActivity_.M0(ChociceDownActivity.this.f28528n).a(ChociceDownActivity.this.f28526l).start();
                } else {
                    ChociceDownActivity chociceDownActivity2 = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity2.f28525k, chociceDownActivity2.f28528n);
                }
            } else if (i2 == 2) {
                ChociceDownActivity chociceDownActivity3 = ChociceDownActivity.this;
                if (chociceDownActivity3.f28526l == null) {
                    chociceDownActivity3.f28526l = new UpdateIntentDataBean();
                    ChociceDownActivity chociceDownActivity4 = ChociceDownActivity.this;
                    chociceDownActivity4.f28526l.setDownloadTask(chociceDownActivity4.f28525k);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f28541b.getUrl());
                intentDateBean.setObject(ChociceDownActivity.this.f28526l);
                intentDateBean.setFrom(com.join.mgps.Util.u.f27861t);
                if (ChociceDownActivity.this.f28527m == 11) {
                    intentDateBean.setFrom("11");
                }
                IntentUtil.getInstance().intentActivity(ChociceDownActivity.this.f28528n, intentDateBean);
            } else if (i2 == 3) {
                IntentUtil.getInstance().goBrowser(ChociceDownActivity.this.f28528n, this.f28541b.getUrl());
            }
            ChociceDownActivity.this.finish();
        }
    }

    private void J0(String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type_val(str);
        intentDateBean.setFrom(com.join.mgps.Util.u.f27861t);
        intentDateBean.setObject(this.f28525k);
        ShareWebActivity_.O2(this.f28528n).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        UpdateIntentDataBean updateIntentDataBean;
        UpdateIntentDataBean updateIntentDataBean2;
        if (this.f28525k == null && (updateIntentDataBean2 = this.f28526l) != null) {
            this.f28525k = updateIntentDataBean2.getDownloadTask();
        }
        finish();
        Intent intent = new Intent();
        intent.setAction(f1.a.f65475f0);
        this.f28528n.sendBroadcast(intent);
        if (this.f28527m == 12) {
            if (this.f28525k.getFileType().equals(Dtype.apk.name()) && (updateIntentDataBean = this.f28526l) != null) {
                updateIntentDataBean.getDownloadTask().setUrl(this.f28525k.getUrl());
                UpdateLodingActivity_.M0(this.f28528n).a(this.f28526l).start();
                return;
            }
            UtilsMy.A0(g1.f.G().B(this.f28525k.getCrc_link_type_val()));
            com.php25.PDownload.d.c(this.f28525k, this.f28528n);
            return;
        }
        com.php25.PDownload.d.c(this.f28525k, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        UpdateIntentDataBean updateIntentDataBean;
        try {
            finish();
            Intent intent = new Intent();
            intent.setAction(f1.a.f65475f0);
            this.f28528n.sendBroadcast(intent);
            if (this.f28525k == null && (updateIntentDataBean = this.f28526l) != null) {
                this.f28525k = updateIntentDataBean.getDownloadTask();
            }
            IntentUtil.getInstance().goBrowser(this.f28528n, this.f28525k.getUrl());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(GameDownInfo gameDownInfo) {
        try {
            this.f28530p.setVisibility(8);
            this.f28529o.setVisibility(8);
            this.f28532r.setVisibility(0);
            this.f28515a.setText(gameDownInfo.getTitle());
            this.f28516b.setText(gameDownInfo.getSub_title());
            int lv_type = gameDownInfo.getLv_type();
            List<GameDownInfo.Addr1Bean> down_url = gameDownInfo.getDown_url();
            this.f28518d.setVisibility(8);
            this.f28519e.setVisibility(8);
            this.f28522h.setVisibility(8);
            for (int i2 = 0; i2 < down_url.size(); i2++) {
                GameDownInfo.Addr1Bean addr1Bean = down_url.get(i2);
                if (i2 == 0) {
                    this.f28518d.setText(addr1Bean.getTitle());
                    this.f28518d.setVisibility(0);
                    this.f28518d.setOnClickListener(new a(lv_type, addr1Bean));
                }
                if (i2 == 1) {
                    this.f28519e.setText(addr1Bean.getTitle());
                    this.f28519e.setVisibility(0);
                    this.f28519e.setOnClickListener(new b(lv_type, addr1Bean));
                }
                if (i2 == 2) {
                    this.f28522h.setText(addr1Bean.getTitle());
                    this.f28522h.setVisibility(0);
                    this.f28522h.setOnClickListener(new c(lv_type, addr1Bean));
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f28528n = this;
        this.f28524j = com.join.mgps.rpc.impl.c.P1();
        if (this.f28525k == null && this.f28526l == null) {
            com.join.mgps.Util.i2.a(this.f28528n).b("下载数据为空");
            return;
        }
        try {
            if (this.f28527m == 12) {
                EMUUpdateTable n4 = n1.q.o().n(this.f28525k.getCrc_link_type_val());
                n4.setDown_url_remote(this.f28525k.getUrl());
                n1.q.o().update(n4);
                this.f28525k.setVer(n4.getVer());
                this.f28525k.setVer_name(n4.getVer_name());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        int i2 = this.f28527m;
        if (i2 != 0 && i2 != 11) {
            this.f28533s.setVisibility(0);
            this.f28530p.setVisibility(8);
            this.f28529o.setVisibility(8);
            this.f28532r.setVisibility(8);
            return;
        }
        showLoding();
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        if (com.join.android.app.common.utils.f.j(this.f28528n)) {
            try {
                ResultMainBean<GameDownInfo> C0 = this.f28524j.C0(RequestBeanUtil.getInstance(this.f28528n).getSimulatorRequest("", this.f28525k.getCrc_link_type_val(), 0));
                if (C0 != null && C0.getFlag() == 1 && C0.getMessages().getData() != null) {
                    I0(C0.getMessages().getData());
                } else {
                    showLodingFailed();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f28529o.setVisibility(0);
            this.f28530p.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.f28530p.setVisibility(0);
            this.f28529o.setVisibility(8);
            this.f28532r.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
