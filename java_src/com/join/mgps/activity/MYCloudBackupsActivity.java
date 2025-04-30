package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import com.join.mgps.dto.CloudBackupsListBean;
import java.io.File;
import java.sql.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mycloud_backups_layout)
/* loaded from: classes3.dex */
public class MYCloudBackupsActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ListView f33703a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f33704b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f33705c;

    /* renamed from: d  reason: collision with root package name */
    private Context f33706d;

    /* renamed from: e  reason: collision with root package name */
    private AccountBean f33707e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.b f33708f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f33709a;

        a(b bVar) {
            this.f33709a = bVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            CloudBackupsDetialActivity_.G0(MYCloudBackupsActivity.this.f33706d).a(this.f33709a.getItem(i2)).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<CloudBackupsCanUseBean> f33711a;

        /* renamed from: b  reason: collision with root package name */
        private LayoutInflater f33712b;

        public b(List<CloudBackupsCanUseBean> list) {
            this.f33711a = list;
            this.f33712b = LayoutInflater.from(MYCloudBackupsActivity.this.f33706d);
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public CloudBackupsCanUseBean getItem(int i2) {
            return this.f33711a.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f33711a.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.f33712b.inflate(R.layout.cloudbackups_can_list, (ViewGroup) null);
            }
            ((TextView) com.join.mgps.Util.o2.a(view, R.id.phoneType)).setText(this.f33711a.get(i2).getBrand_name());
            ((TextView) com.join.mgps.Util.o2.a(view, R.id.upTime)).setText(com.join.mgps.Util.x.e(new Date(Long.parseLong(this.f33711a.get(i2).getAdd_time()) * 1000), "yyyy-MM.dd HH:mm:ss"));
            ((TextView) com.join.mgps.Util.o2.a(view, R.id.handOrAuto)).setText("自动");
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0() {
        File file = new File(com.join.mgps.pref.h.n(this.f33706d).g() + "recoverdata");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.f33707e = AccountUtil_.getInstance_(this.f33706d).getAccountData();
        com.join.mgps.rpc.b bVar = this.f33708f;
        AccountResultMainBean<CloudBackupsListBean> S = bVar.S(this.f33707e.getUid() + "", this.f33707e.getToken());
        if (S == null || S.getError() != 0) {
            return;
        }
        H0(S.getData().getBackup_list());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(List<CloudBackupsCanUseBean> list) {
        b bVar = new b(list);
        this.f33703a.setAdapter((ListAdapter) bVar);
        this.f33703a.setOnItemClickListener(new a(bVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f33708f = com.join.mgps.rpc.impl.a.b0();
        this.f33706d = this;
        this.f33704b.setText("我的云备份");
        this.f33705c.setImageResource(R.drawable.settingicon);
        this.f33705c.setVisibility(0);
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
