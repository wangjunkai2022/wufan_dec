package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bytedance.sdk.openadsdk.R;
import java.util.List;
/* loaded from: classes4.dex */
public class AppDetailInfoActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f57175a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f57176b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f57177c;

    /* renamed from: d  reason: collision with root package name */
    private RecyclerView f57178d;

    /* renamed from: e  reason: collision with root package name */
    private long f57179e;

    /* renamed from: f  reason: collision with root package name */
    private long f57180f;

    /* renamed from: g  reason: collision with root package name */
    private List<Pair<String, String>> f57181g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class a extends RecyclerView.Adapter<Object> {
        private a() {
        }
    }

    private void b() {
        this.f57175a = (ImageView) findViewById(R.id.iv_detail_back);
        this.f57176b = (TextView) findViewById(R.id.tv_empty);
        this.f57178d = (RecyclerView) findViewById(R.id.permission_list);
        this.f57177c = (LinearLayout) findViewById(R.id.ll_download);
        if (this.f57181g.isEmpty()) {
            this.f57178d.setVisibility(8);
            this.f57176b.setVisibility(0);
        } else {
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
            linearLayoutManager.setOrientation(1);
            this.f57178d.setLayoutManager(linearLayoutManager);
            this.f57178d.setAdapter(new a());
        }
        this.f57175a.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.AppDetailInfoActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.a("lp_app_detail_click_close", AppDetailInfoActivity.this.f57180f);
                AppDetailInfoActivity.this.finish();
            }
        });
        this.f57177c.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.AppDetailInfoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.a("lp_app_detail_click_download", AppDetailInfoActivity.this.f57180f);
                b.a().b(AppDetailInfoActivity.this.f57180f);
                com.ss.android.socialbase.appdownloader.c.a((Activity) AppDetailInfoActivity.this);
                com.ss.android.socialbase.appdownloader.c.a(b.a().b());
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        e.a("lp_app_detail_click_close", this.f57180f);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ttdownloader_activity_app_detail_info);
        if (a()) {
            b();
        } else {
            com.ss.android.socialbase.appdownloader.c.a((Activity) this);
        }
    }

    public static void a(Activity activity, long j4) {
        Intent intent = new Intent(activity, AppDetailInfoActivity.class);
        intent.putExtra("app_info_id", j4);
        activity.startActivity(intent);
    }

    private boolean a() {
        this.f57179e = getIntent().getLongExtra("app_info_id", 0L);
        com.ss.android.downloadlib.addownload.b.b a4 = c.a().a(this.f57179e);
        if (a4 == null) {
            return false;
        }
        this.f57180f = a4.f57113b;
        this.f57181g = a4.f57119h;
        return true;
    }
}
