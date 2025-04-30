package com.join.mgps.activity;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.e6;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestOnlineCouponArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.join.mgps.dto.SimulatorFastEntryListBean;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: SimulatorFastEntryActivity.java */
@EActivity(R.layout.activity_simulator_fast_entry)
/* loaded from: classes3.dex */
class v2 extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f38422a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f38423b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f38424c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ScrollTextViewLayout f38425d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f38426e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f38427f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    RecyclerView f38428g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f38429h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f38430i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    View f38431j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D0() {
        IntentUtil.getInstance().goSearchHintActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(SimulatorFastEntryBean simulatorFastEntryBean) {
        if (TextUtils.isEmpty(simulatorFastEntryBean.getSearch_bar_hint())) {
            this.f38426e.setHint(simulatorFastEntryBean.getSearch_bar_hint());
        }
        ArrayList arrayList = new ArrayList();
        if (simulatorFastEntryBean.getFast_entry() != null && simulatorFastEntryBean.getFast_entry().size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            List<SimulatorFastEntryBean.FastEntryBean> fast_entry = simulatorFastEntryBean.getFast_entry();
            int size = fast_entry.size();
            int i2 = (size + 9) / 10;
            int i4 = 0;
            while (i4 < i2) {
                int i5 = i4 * 10;
                i4++;
                arrayList2.add(fast_entry.subList(i5, Math.min(i4 * 10, size)));
            }
            arrayList.add(new SimulatorFastEntryListBean(1, arrayList2));
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp20))));
        }
        if (simulatorFastEntryBean.getThe_new() != null && simulatorFastEntryBean.getThe_new().size() > 0) {
            arrayList.add(new SimulatorFastEntryListBean(2, simulatorFastEntryBean.getThe_new()));
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
        }
        if (simulatorFastEntryBean.getWill_play() != null && simulatorFastEntryBean.getWill_play().getGames() != null && simulatorFastEntryBean.getWill_play().getGames().size() > 0) {
            arrayList.add(new SimulatorFastEntryListBean(3, simulatorFastEntryBean.getWill_play()));
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
        }
        if (simulatorFastEntryBean.getChange_game() != null && simulatorFastEntryBean.getChange_game().size() > 0) {
            arrayList.add(new SimulatorFastEntryListBean(0, "改版游戏"));
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp24))));
            arrayList.add(new SimulatorFastEntryListBean(4, simulatorFastEntryBean.getChange_game()));
            arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp6))));
        }
        if (simulatorFastEntryBean.getTag_game() != null && simulatorFastEntryBean.getTag_game().size() > 0) {
            for (int i6 = 0; i6 < simulatorFastEntryBean.getTag_game().size(); i6++) {
                SimulatorFastEntryBean.TagGameBean tagGameBean = simulatorFastEntryBean.getTag_game().get(i6);
                arrayList.add(new SimulatorFastEntryListBean(0, tagGameBean.getTitle(), tagGameBean.getId()));
                arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp24))));
                arrayList.add(new SimulatorFastEntryListBean(5, tagGameBean.getList()));
                arrayList.add(new SimulatorFastEntryListBean(6, Float.valueOf(getResources().getDimension(R.dimen.wdp30))));
            }
        }
        this.f38428g.setLayoutManager(new LinearLayoutManager(this));
        this.f38428g.setAdapter(new e6(this, arrayList));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        com.join.mgps.Util.t0.c("显示主界面main");
        LinearLayout linearLayout = this.f38430i;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f38429h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f38428g;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
        RelativeLayout relativeLayout = this.f38422a;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        } else if (i2 >= 19) {
            getWindow().addFlags(67108864);
        }
        showLoding();
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(new RequestOnlineCouponArgs());
            requestModel.setDefault(this);
            ResponseModel<SimulatorFastEntryBean> body = com.join.mgps.rpc.impl.h.L().J().S(requestModel.makeSign()).execute().body();
            if (body != null && body.getCode() == 200 && body.getData() != null) {
                F0();
                E0(body.getData());
            } else {
                showLodingFailed();
            }
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.t0.c("显示加载中");
        LinearLayout linearLayout = this.f38429h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f38430i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f38428g;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f38430i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f38429h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f38428g;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        RelativeLayout relativeLayout = this.f38422a;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
    }
}
