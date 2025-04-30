package com.join.mgps.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.v5;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameMasteryLevel;
import com.join.mgps.dto.GameTimeLevel;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.activity_simulator_exit_play)
/* loaded from: classes3.dex */
public class SimulatorExitPlayActivity extends BaseAppCompatActivity implements v5.a {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f35682a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f35683b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f35684c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RecyclerView f35685d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    View f35686e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f35687f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f35688g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f35689h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f35690i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ProgressBar f35691j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.j f35692k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.rpc.i f35693l;

    /* renamed from: m  reason: collision with root package name */
    v5 f35694m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    String f35695n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    int f35696o;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    boolean f35697p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    int f35698q;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    int f35699r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    int f35700s;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    String f35701t;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    int[] f35702u;

    /* renamed from: v  reason: collision with root package name */
    private SimulatorExitPlayResponseData f35703v;
    @Pref

    /* renamed from: w  reason: collision with root package name */
    PrefDef_ f35704w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Callback<ResponseModel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35705a;

        a(int i2) {
            this.f35705a = i2;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel> call, Response<ResponseModel> response) {
            if (response != null && response.body() != null) {
                ResponseModel body = response.body();
                if (body.getError() == 0) {
                    SimulatorExitPlayActivity.this.E0(this.f35705a);
                    return;
                } else {
                    SimulatorExitPlayActivity.this.toast(body.getMsg());
                    return;
                }
            }
            SimulatorExitPlayActivity.this.toast("添加失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I0(AppBeanMain appBeanMain, View view) {
        IntentUtil.getInstance().intentActivity(this, appBeanMain.getIntentDataBean());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(int i2) {
        toast("已发送加好友申请");
        v5 v5Var = this.f35694m;
        if (v5Var == null) {
            return;
        }
        for (FriendBackGameRspBean.FriendInfo friendInfo : v5Var.d()) {
            if (friendInfo.getUid() == i2) {
                friendInfo.setSendFriendRequestStatus(true);
                this.f35694m.notifyDataSetChanged();
                return;
            }
        }
    }

    void F0() {
        int i2;
        SimulatorExitPlayResponseData simulatorExitPlayResponseData = this.f35703v;
        if (simulatorExitPlayResponseData == null || simulatorExitPlayResponseData.getGameMasteryLevel() == null) {
            return;
        }
        try {
            GameMasteryLevel gameMasteryLevel = this.f35703v.getGameMasteryLevel();
            int i4 = 0;
            int[] iArr = new int[0];
            int i5 = this.f35696o;
            int current_lv_times = gameMasteryLevel.getCurrent_lv_times();
            int next_lv_times = gameMasteryLevel.getNext_lv_times();
            if (TextUtils.isEmpty(gameMasteryLevel.getLevel())) {
                i2 = 0;
            } else if (gameMasteryLevel.getLevel().equals("传说")) {
                i2 = 5;
            } else if (gameMasteryLevel.getLevel().equals("宗师")) {
                i2 = 4;
            } else if (gameMasteryLevel.getLevel().equals("精英")) {
                i2 = 3;
            } else {
                i2 = gameMasteryLevel.getLevel().equals("资深") ? 2 : 1;
            }
            try {
                ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.f35704w.gameTimeLvCfg().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, GameTimeLevel.class));
                if (arrayList != null) {
                    iArr = new int[arrayList.size()];
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        iArr[i6] = ((GameTimeLevel) arrayList.get(i6)).getVal();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            int i7 = current_lv_times + i5;
            int i8 = 0;
            while (i4 < iArr.length) {
                i2 = i4 + 1;
                next_lv_times = iArr[i4] - i8;
                i8 = iArr[i4];
                if (i7 <= next_lv_times || i4 == iArr.length - 1) {
                    break;
                }
                i7 -= next_lv_times;
                i4 = i2;
            }
            this.f35699r = Math.min(i7, next_lv_times);
            this.f35700s = next_lv_times;
            this.f35698q = i2;
            Q0();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        O0(1);
        com.join.mgps.va.overmind.e.p().Q();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        IntentUtil.getInstance().goShareWebActivity(this, this.f35701t);
    }

    @Background
    public void J0(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            HashMap hashMap = new HashMap();
            hashMap.put("uid", Integer.valueOf(accountData.getUid()));
            hashMap.put("token", accountData.getToken());
            hashMap.put("likeUid", Integer.valueOf(i2));
            ResponseModel a4 = this.f35693l.a(hashMap);
            if (a4 != null) {
                if (a4.getError() == 0) {
                    K0(i2);
                } else {
                    toast(a4.getMsg());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(int i2) {
        toast("点赞成功");
        v5 v5Var = this.f35694m;
        if (v5Var == null) {
            return;
        }
        for (FriendBackGameRspBean.FriendInfo friendInfo : v5Var.d()) {
            if (friendInfo.getUid() == i2) {
                friendInfo.setLikeStatus(false);
                this.f35694m.notifyDataSetChanged();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                RequestModel<SimulatorExitPlayRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this).setArgs(new SimulatorExitPlayRequestArgs());
                requestModel.getArgs().setUid(accountData.getUid() + "");
                requestModel.getArgs().setToken(accountData.getToken() + "");
                requestModel.getArgs().setGameId(this.f35695n);
                if (this.f35702u == null) {
                    this.f35702u = new int[0];
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 : this.f35702u) {
                    arrayList.add(Integer.valueOf(i2));
                }
                requestModel.getArgs().setBattleUidList(arrayList);
                ResponseModel<SimulatorExitPlayResponseData> G = this.f35692k.G(requestModel);
                if (G != null) {
                    if (G.getFlag() == 1) {
                        P0(G.getData());
                        return;
                    } else {
                        toast(G.getMessage());
                        return;
                    }
                }
                toast(getString(R.string.request_failure));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        O0(0);
        com.join.mgps.va.overmind.e.p().g();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        IntentUtil.getInstance().goMyAccountLoginActivity(this);
    }

    void O0(int i2) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, 100);
        intent.putExtra("exit", i2);
        sendBroadcast(intent);
        com.join.mgps.va.overmind.e.e0(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(SimulatorExitPlayResponseData simulatorExitPlayResponseData) {
        this.f35703v = simulatorExitPlayResponseData;
        if (simulatorExitPlayResponseData == null) {
            return;
        }
        v5 v5Var = this.f35694m;
        if (v5Var != null) {
            v5Var.d().clear();
            this.f35694m.e().clear();
            if (simulatorExitPlayResponseData.getBuddyList() != null && simulatorExitPlayResponseData.getBuddyList().size() > 0) {
                this.f35682a.setText("对局详情");
                Iterator<FriendBackGameRspBean.FriendInfo> it2 = simulatorExitPlayResponseData.getBuddyList().iterator();
                while (it2.hasNext()) {
                    String uid = AccountUtil_.getInstance_(this).getUid();
                    if (uid.equals(it2.next().getUid() + "")) {
                        it2.remove();
                    }
                }
                this.f35694m.d().addAll(simulatorExitPlayResponseData.getBuddyList());
            } else {
                this.f35682a.setText("为您推荐以下游戏");
            }
            if (simulatorExitPlayResponseData.getGameList() != null && simulatorExitPlayResponseData.getGameList().size() > 0) {
                this.f35694m.e().addAll(simulatorExitPlayResponseData.getGameList());
            }
            this.f35694m.notifyDataSetChanged();
        }
        F0();
        if (simulatorExitPlayResponseData.getAdInfo() != null && simulatorExitPlayResponseData.getAdInfo().getMain() != null && simulatorExitPlayResponseData.getAdInfo().getMain().getAd_switch() == 1) {
            this.f35683b.setVisibility(0);
            this.f35684c.setVisibility(0);
            if (simulatorExitPlayResponseData.getAdInfo().getMain() != null) {
                MyImageLoader.h(this.f35683b, simulatorExitPlayResponseData.getAdInfo().getMain().getPic_remote());
                this.f35684c.setText(simulatorExitPlayResponseData.getAdInfo().getMain().getTitle());
            }
            if (simulatorExitPlayResponseData.getAdInfo().getSub() == null || simulatorExitPlayResponseData.getAdInfo().getSub().size() <= 0) {
                return;
            }
            final AppBeanMain appBeanMain = simulatorExitPlayResponseData.getAdInfo().getSub().get(0);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.activity.u2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SimulatorExitPlayActivity.this.I0(appBeanMain, view);
                }
            };
            this.f35683b.setOnClickListener(onClickListener);
            this.f35684c.setOnClickListener(onClickListener);
            return;
        }
        this.f35683b.setVisibility(8);
        this.f35684c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        int i2;
        String str;
        String str2;
        if (this.f35697p) {
            return;
        }
        int i4 = this.f35698q;
        if (i4 == 5) {
            i2 = R.drawable.gameleve5;
            str = "传说";
            str2 = "#FF760C";
        } else if (i4 == 4) {
            i2 = R.drawable.gameleve4;
            str = "宗师";
            str2 = "#F9C439";
        } else if (i4 == 3) {
            i2 = R.drawable.gameleve2;
            str = "精英";
            str2 = "#DB64EE";
        } else if (i4 == 2) {
            i2 = R.drawable.gameleve3;
            str = "资深";
            str2 = "#65C73C";
        } else {
            i2 = R.drawable.gameleve1;
            str = "见习";
            str2 = "#21E1E5";
        }
        this.f35688g.setTextColor(Color.parseColor(str2));
        this.f35688g.setText(str);
        this.f35690i.setImageResource(i2);
        this.f35691j.setMax(100);
        this.f35691j.invalidate();
        if (this.f35700s == 0) {
            this.f35700s = this.f35699r;
        }
        int i5 = this.f35700s;
        if (i5 != 0) {
            this.f35691j.setProgress((this.f35699r * 100) / i5);
            TextView textView = this.f35689h;
            textView.setText(this.f35699r + net.lingala.zip4j.util.e.F0 + this.f35700s);
        }
    }

    void R0(int i2) {
        this.f35686e.setVisibility(i2);
        this.f35687f.setVisibility(i2);
        this.f35688g.setVisibility(i2);
        this.f35689h.setVisibility(i2);
        this.f35690i.setVisibility(i2);
        this.f35691j.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void add(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(i2);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            com.join.mgps.rpc.impl.g.p().o().b(friendReqBean).enqueue(new a(i2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void afterLogin() {
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35682a.setText("对局详情");
        this.f35692k = com.join.mgps.rpc.impl.h.L();
        this.f35693l = com.join.mgps.rpc.impl.g.p();
        if (this.f35697p) {
            R0(8);
        } else {
            R0(0);
            if (AccountUtil_.getInstance_(this).isTourist()) {
                this.f35686e.setVisibility(0);
            } else {
                this.f35686e.setVisibility(8);
            }
        }
        Q0();
        v5 v5Var = new v5(this);
        this.f35694m = v5Var;
        v5Var.n(this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.f35685d.setLayoutManager(linearLayoutManager);
        this.f35685d.setAdapter(this.f35694m);
        com.papa.sim.statistic.p.l(this).K1(Event.ExitGame_Recommend, new Ext());
    }

    @Override // com.join.mgps.adapter.v5.a
    public void b(int i2) {
        if (IntentUtil.getInstance().isLogined(this) && !IntentUtil.getInstance().isTourist(this)) {
            add(i2);
            Ext ext = new Ext();
            ext.setFrom("1");
            com.papa.sim.statistic.p.l(this).K1(Event.addFriends, ext);
            return;
        }
        IntentUtil.getInstance().goLogin(this);
    }

    @Override // com.join.mgps.adapter.v5.a
    public void c(int i2) {
        if (IntentUtil.getInstance().isLogined(this) && !IntentUtil.getInstance().isTourist(this)) {
            J0(i2);
        } else {
            IntentUtil.getInstance().goLogin(this);
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().setStatusBarColor(-16777216);
            getWindow().setNavigationBarColor(-16777216);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f35697p) {
            R0(8);
        } else {
            R0(0);
            if (AccountUtil_.getInstance_(this).isTourist()) {
                this.f35686e.setVisibility(0);
            } else {
                this.f35686e.setVisibility(8);
                F0();
            }
        }
        v5 v5Var = this.f35694m;
        if (v5Var == null || v5Var.d() == null || this.f35694m.d().size() >= 1) {
            return;
        }
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitle() {
        if (com.join.android.app.common.utils.f.j(this)) {
            this.f35682a.setText("为您推荐以下游戏");
        } else {
            this.f35682a.setText("网络已断开，请检查网络设置");
        }
    }
}
