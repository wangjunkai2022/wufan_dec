package com.join.mgps.activity;

import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.adapter.z4;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RecomeWifiDatabean;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.recom_wifi_activity_layout)
/* loaded from: classes3.dex */
public class RecomWifiActivity extends BaseActivity implements o1.d {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f34991a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f34992b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    GridView f34993c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f34994d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34995e;

    /* renamed from: f  reason: collision with root package name */
    List<CollectionBeanSub> f34996f;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RecomWifiActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z4 f34998a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f34999b;

        b(z4 z4Var, List list) {
            this.f34998a = z4Var;
            this.f34999b = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RecomWifiActivity.this.finish();
            for (CollectionBeanSub collectionBeanSub : this.f34998a.b()) {
                boolean z3 = true;
                List list = this.f34999b;
                if (list != null) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((DownloadTask) it2.next()).getCrc_link_type_val().equals(collectionBeanSub.getGame_id())) {
                                z3 = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (z3) {
                    com.php25.PDownload.d.c(collectionBeanSub.getDownloadtaskDown(), RecomWifiActivity.this);
                }
            }
        }
    }

    public o1.d E0() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        RecomeWifiDatabean recomeWifiDatabean = (RecomeWifiDatabean) getIntent().getSerializableExtra("data");
        this.f34996f = recomeWifiDatabean.getGame_list();
        String title = recomeWifiDatabean.getTitle();
        if (com.join.mgps.Util.d2.i(title)) {
            this.f34995e.setText(title);
        }
        this.f34992b.setVisibility(0);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f34991a.setOnClickListener(new a());
        z4 z4Var = new z4(this, this.f34996f);
        float f4 = 0.0f;
        for (CollectionBeanSub collectionBeanSub : this.f34996f) {
            f4 += Float.parseFloat(collectionBeanSub.getSize());
        }
        String format = new DecimalFormat(".00").format(f4);
        Button button = this.f34994d;
        button.setText("下载（" + this.f34996f.size() + "个，共" + format + "MB)");
        this.f34993c.setAdapter((ListAdapter) z4Var);
        this.f34994d.setOnClickListener(new b(z4Var, d4));
    }

    @Override // o1.d
    public void p(List<CollectionBeanSub> list) {
        float f4 = 0.0f;
        for (CollectionBeanSub collectionBeanSub : list) {
            f4 += Float.parseFloat(collectionBeanSub.getSize());
        }
        String format = new DecimalFormat(".00").format(f4);
        Button button = this.f34994d;
        button.setText("下载（" + list.size() + "个，共" + format + "MB)");
    }
}
