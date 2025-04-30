package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.ServerListData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ServiceState;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.gamedetial_more_service_layout)
/* loaded from: classes3.dex */
public class DetialMoreServiceListActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f29448a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView f29449b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f29450c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f29451d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f29452e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f29453f;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: g  reason: collision with root package name */
    ImageView f29454g;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: h  reason: collision with root package name */
    CustomerDownloadView f29455h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.d f29456i;
    @StringRes(resName = "net_excption")

    /* renamed from: j  reason: collision with root package name */
    String f29457j;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: k  reason: collision with root package name */
    String f29458k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    String f29459l;

    /* renamed from: n  reason: collision with root package name */
    private Context f29461n;

    /* renamed from: p  reason: collision with root package name */
    List<ServiceState> f29463p;

    /* renamed from: q  reason: collision with root package name */
    com.join.mgps.adapter.m f29464q;

    /* renamed from: m  reason: collision with root package name */
    private int f29460m = 1;

    /* renamed from: o  reason: collision with root package name */
    private boolean f29462o = false;

    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E0() {
        new ArrayList();
        if (com.join.android.app.common.utils.f.j(this.f29461n)) {
            this.f29462o = true;
            try {
                try {
                    RequestModel requestModel = new RequestModel();
                    requestModel.setDefault(this.f29461n);
                    RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
                    requestGameIdArgs.setGameId(this.f29459l);
                    requestGameIdArgs.setPage(1);
                    requestGameIdArgs.setUid(AccountUtil_.getInstance_(this.f29461n).getAccountData().getUid());
                    requestModel.setArgs(requestGameIdArgs);
                    ResponseModel<ServerListData> body = com.join.mgps.rpc.impl.h.L().J().Q(requestModel.makeSign()).execute().body();
                    if (body != null && body.getData() != null) {
                        List<ServiceState> game_open_server_list = body.getData().getGame_open_server_list();
                        if (game_open_server_list != null && game_open_server_list.size() > 0) {
                            if (game_open_server_list.size() == 0) {
                                G0();
                            } else {
                                this.f29460m++;
                            }
                            H0(game_open_server_list);
                            I0();
                        } else {
                            G0();
                        }
                    } else {
                        I0();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    I0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f29462o = false;
            }
        }
        I0();
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        this.f29460m = 1;
        E0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        this.f29449b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(List<ServiceState> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f29451d.setVisibility(8);
        this.f29450c.setVisibility(8);
        this.f29449b.setVisibility(0);
        if (this.f29460m <= 2) {
            this.f29463p.clear();
        }
        this.f29463p.addAll(list);
        if (this.f29460m == 2) {
            this.f29448a.setText("开合服表");
            this.f29463p.size();
            this.f29464q.notifyDataSetChanged();
            return;
        }
        this.f29464q.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        this.f29449b.r();
        this.f29449b.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29456i = com.join.mgps.rpc.impl.c.P1();
        this.f29461n = this;
        com.join.mgps.adapter.m mVar = new com.join.mgps.adapter.m(this.f29461n);
        this.f29464q = mVar;
        this.f29463p = mVar.a();
        showLoding();
        E0();
        this.f29449b.setPreLoadCount(10);
        this.f29449b.b();
        this.f29449b.c();
        this.f29449b.setOnItemClickListener(new a());
        this.f29449b.setAdapter((ListAdapter) this.f29464q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f29460m = 1;
        showLoding();
        E0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f29450c.setVisibility(0);
        this.f29451d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<ServiceState> list = this.f29463p;
        if (list == null || list.size() == 0) {
            this.f29451d.setVisibility(0);
            this.f29450c.setVisibility(8);
            this.f29449b.setVisibility(8);
        }
    }
}
