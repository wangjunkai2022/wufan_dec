package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.j;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.x;
import com.join.mgps.activity.vipzone.VipCenterActivity;
import com.join.mgps.activity.vipzone.bean.IconGame;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.activity.vipzone.bean.Luckbean;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.activity.vipzone.bean.VipCenterGameListitem;
import com.join.mgps.activity.vipzone.bean.VipCenterRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterResultData;
import com.join.mgps.activity.vipzone.dialog.LuckDrawBasPopupWindow;
import com.join.mgps.activity.vipzone.dialog.LuckDrawFinishDialog;
import com.join.mgps.customview.ScratchView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.vip_center_activity)
/* loaded from: classes3.dex */
public class VipCenterActivity extends BaseAppCompatActivity {
    VipcenterAdapter adapter;
    Context context;
    @ViewById
    View line;
    @ViewById
    View loding_faile;
    @ViewById
    View loding_layout;
    Luckbean luckbean;
    private LuckDrawBasPopupWindow prizeData;
    private LuckDrawBasPopupWindow prizeList;
    private LuckDrawBasPopupWindow prizeRule;
    @ViewById
    RecyclerView recyclerView;
    @ViewById
    TextView title_textview;
    List<VipCenterDataMain> vipCenterDataMains = new ArrayList();
    boolean isstruckting = false;

    /* loaded from: classes3.dex */
    class CollHolder {
        SimpleDraweeView cardImage;
        TextView gameName;

        CollHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class CollotionHlistAdapter extends BaseAdapter {
        List<RecomDatabean> recomDatabeans;

        public CollotionHlistAdapter(List<RecomDatabean> list) {
            this.recomDatabeans = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.recomDatabeans.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            CollHolder collHolder;
            if (view == null) {
                view = LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_imagecard_layout, (ViewGroup) null);
                collHolder = new CollHolder();
                collHolder.cardImage = (SimpleDraweeView) view.findViewById(R.id.cardImage);
                view.setTag(collHolder);
            } else {
                collHolder = (CollHolder) view.getTag();
            }
            if (i2 == 0) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) collHolder.cardImage.getLayoutParams();
                layoutParams.setMargins(VipCenterActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp30), 0, 0, 0);
                collHolder.cardImage.setLayoutParams(layoutParams);
            } else {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) collHolder.cardImage.getLayoutParams();
                layoutParams2.setMargins(VipCenterActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp16), 0, 0, 0);
                collHolder.cardImage.setLayoutParams(layoutParams2);
            }
            final RecomDatabean recomDatabean = this.recomDatabeans.get(i2);
            MyImageLoader.i(collHolder.cardImage, recomDatabean.getMain().getPic_remote(), r.c.f12144g);
            collHolder.cardImage.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.CollotionHlistAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    IntentUtil.getInstance().intentActivity(VipCenterActivity.this.context, recomDatabean.getSub().get(0).getIntentDataBean());
                }
            });
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipCardHolder extends VipHolder {
        TextView detail;
        SimpleDraweeView iv_user_avatar;
        TextView time;
        TextView userName;

        public VipCardHolder(@NonNull View view) {
            super(view);
            this.iv_user_avatar = (SimpleDraweeView) view.findViewById(R.id.iv_user_avatar);
            this.userName = (TextView) view.findViewById(R.id.userName);
            this.time = (TextView) view.findViewById(R.id.time);
            this.detail = (TextView) view.findViewById(R.id.detail);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipCenterDataMain {
        public static final int COLOCTION = 5;
        public static final int EMPTY = 6;
        public static final int HLIST = 4;
        public static final int LUCKGIFT = 2;
        public static final int TITLE = 3;
        public static final int VIPCARD = 1;
        Object object;
        int type;

        public VipCenterDataMain(int i2, Object obj) {
            this.type = i2;
            this.object = obj;
        }

        public Object getObject() {
            return this.object;
        }

        public int getType() {
            return this.type;
        }

        public void setObject(Object obj) {
            this.object = obj;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipHlistHolder extends VipHolder {
        HListView listview;

        public VipHlistHolder(@NonNull View view) {
            super(view);
            this.listview = (HListView) view.findViewById(R.id.listview);
        }
    }

    /* loaded from: classes3.dex */
    class VipHolder extends RecyclerView.ViewHolder {
        public VipHolder(@NonNull View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipLuckDrawlHolder extends VipHolder {
        SimpleDraweeView prizeDataImg;
        LinearLayout prizeDataLayout;
        TextView prizeDataName;
        SimpleDraweeView prizeListImg;
        LinearLayout prizeListLayout;
        TextView prizeListName;
        SimpleDraweeView prizeRuleImg;
        LinearLayout prizeRuleLayout;
        TextView prizeRuleName;
        ScratchView scratch;
        TextView scratchBack;
        TextView todayScratchNumber;

        public VipLuckDrawlHolder(@NonNull View view) {
            super(view);
            this.prizeListImg = (SimpleDraweeView) view.findViewById(R.id.prizeListImg);
            this.prizeListName = (TextView) view.findViewById(R.id.prizeListName);
            this.prizeDataName = (TextView) view.findViewById(R.id.prizeDataName);
            this.prizeRuleName = (TextView) view.findViewById(R.id.prizeRuleName);
            this.scratch = (ScratchView) view.findViewById(R.id.scratch);
            this.todayScratchNumber = (TextView) view.findViewById(R.id.todayScratchNumber);
            this.prizeListLayout = (LinearLayout) view.findViewById(R.id.prizeListLayout);
            this.prizeDataLayout = (LinearLayout) view.findViewById(R.id.prizeDataLayout);
            this.prizeRuleLayout = (LinearLayout) view.findViewById(R.id.prizeRuleLayout);
            this.scratchBack = (TextView) view.findViewById(R.id.scratchBack);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipTitleHolder extends VipHolder {
        TextView more;
        TextView title;

        public VipTitleHolder(@NonNull View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.more = (TextView) view.findViewById(R.id.more);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipcenterAdapter extends RecyclerView.Adapter<VipHolder> {
        VipcenterAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
            IntentUtil.getInstance().goVip(VipCenterActivity.this.context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return VipCenterActivity.this.vipCenterDataMains.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return VipCenterActivity.this.vipCenterDataMains.get(i2).getType();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull VipHolder vipHolder, int i2) {
            VipCenterDataMain vipCenterDataMain = VipCenterActivity.this.vipCenterDataMains.get(i2);
            int itemViewType = getItemViewType(i2);
            int i4 = 0;
            if (itemViewType == 1) {
                VipCardHolder vipCardHolder = (VipCardHolder) vipHolder;
                AccountBean accountData = AccountUtil_.getInstance_(VipCenterActivity.this.context).getAccountData();
                vipCardHolder.userName.setText(accountData.getNickname());
                vipCardHolder.detail.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VipCenterActivity.VipcenterAdapter.this.lambda$onBindViewHolder$0(view);
                    }
                });
                try {
                    i4 = Integer.parseInt(x.q(accountData.getVip_exp_time() * 1000));
                } catch (Exception unused) {
                }
                if (i4 >= 2037) {
                    vipCardHolder.time.setText("悟饭VIP 终生会员");
                } else {
                    TextView textView = vipCardHolder.time;
                    textView.setText("悟饭VIP " + x.j(accountData.getVip_exp_time() * 1000) + "到期");
                }
                MyImageLoader.h(vipCardHolder.iv_user_avatar, accountData.getAvatarSrc());
            } else if (itemViewType != 2) {
                if (itemViewType == 3) {
                    final VipCenterGameListitem vipCenterGameListitem = (VipCenterGameListitem) vipCenterDataMain.getObject();
                    VipTitleHolder vipTitleHolder = (VipTitleHolder) vipHolder;
                    vipTitleHolder.title.setText(vipCenterGameListitem.getTitle());
                    if ("会员专享合集".equals(vipCenterGameListitem.getTitle())) {
                        vipTitleHolder.more.setVisibility(8);
                    } else {
                        vipTitleHolder.more.setVisibility(0);
                    }
                    vipTitleHolder.more.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IntentDateBean intentDateBean = new IntentDateBean();
                            intentDateBean.setLink_type(3);
                            intentDateBean.setJump_type(vipCenterGameListitem.getBoard_id());
                            IntentUtil.getInstance().intentActivity(VipCenterActivity.this.context, intentDateBean);
                        }
                    });
                } else if (itemViewType == 4) {
                    ((VipHlistHolder) vipHolder).listview.setAdapter((ListAdapter) new GameHlistAdapter((List) vipCenterDataMain.getObject(), VipCenterActivity.this.context, 139));
                } else if (itemViewType != 5) {
                } else {
                    ((VipHlistHolder) vipHolder).listview.setAdapter((ListAdapter) new CollotionHlistAdapter((List) vipCenterDataMain.getObject()));
                }
            } else {
                final Luckbean luckbean = (Luckbean) vipCenterDataMain.getObject();
                final VipLuckDrawlHolder vipLuckDrawlHolder = (VipLuckDrawlHolder) vipHolder;
                TextView textView2 = vipLuckDrawlHolder.todayScratchNumber;
                textView2.setText("今日剩余机会：" + luckbean.getCount() + "次");
                if (luckbean.getLastPrize() != null) {
                    vipLuckDrawlHolder.scratchBack.setText(luckbean.getLastPrize().getTitle());
                }
                if (luckbean.getCount() == 0) {
                    vipLuckDrawlHolder.scratch.setCanCratch(false);
                    vipLuckDrawlHolder.scratch.setNumber(luckbean.getCount());
                } else {
                    vipLuckDrawlHolder.scratch.setCanCratch(true);
                    vipLuckDrawlHolder.scratch.setNumber(luckbean.getCount());
                }
                vipLuckDrawlHolder.scratch.setOnScratchListener(new ScratchView.c() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.1
                    @Override // com.join.mgps.customview.ScratchView.c
                    public void onScratch() {
                        if (luckbean.getCount() > 0) {
                            VipCenterActivity vipCenterActivity = VipCenterActivity.this;
                            if (vipCenterActivity.isstruckting) {
                                return;
                            }
                            vipCenterActivity.isstruckting = true;
                            vipCenterActivity.startScratchPrize();
                        }
                    }
                });
                vipLuckDrawlHolder.scratch.setOnCompleteListener(new ScratchView.b() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.2
                    @Override // com.join.mgps.customview.ScratchView.b
                    public void complete() {
                        vipLuckDrawlHolder.scratch.setCanCratch(false);
                        vipLuckDrawlHolder.scratch.setNumber(luckbean.getCount());
                        VipCenterActivity.this.delaysetStrcth(vipLuckDrawlHolder.scratch);
                        vipLuckDrawlHolder.scratch.setVisibility(8);
                        PrizeBean lastPrize = luckbean.getLastPrize();
                        if (lastPrize != null) {
                            new LuckDrawFinishDialog(VipCenterActivity.this.context).showMydialog(lastPrize);
                            if (luckbean.getCount() > 0) {
                                vipLuckDrawlHolder.scratch.setVisibility(0);
                                vipLuckDrawlHolder.scratch.k();
                            }
                        }
                    }
                });
                vipLuckDrawlHolder.prizeListLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (VipCenterActivity.this.prizeList == null) {
                            VipCenterActivity.this.prizeList = new LuckDrawBasPopupWindow(VipCenterActivity.this.context, 2, j.n(VipCenterActivity.this).k(VipCenterActivity.this) / 2);
                            VipCenterActivity.this.prizeList.setWidth(-1);
                        }
                        VipCenterActivity.this.prizeList.show(VipCenterActivity.this.recyclerView, luckbean, 2);
                    }
                });
                vipLuckDrawlHolder.prizeDataLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (VipCenterActivity.this.prizeData == null) {
                            VipCenterActivity.this.prizeData = new LuckDrawBasPopupWindow(VipCenterActivity.this.context, 1, j.n(VipCenterActivity.this).k(VipCenterActivity.this) / 2);
                            VipCenterActivity.this.prizeData.setWidth(-1);
                        }
                        VipCenterActivity.this.prizeData.show(VipCenterActivity.this.recyclerView, luckbean, 1);
                    }
                });
                vipLuckDrawlHolder.prizeRuleLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (VipCenterActivity.this.prizeRule == null) {
                            VipCenterActivity.this.prizeRule = new LuckDrawBasPopupWindow(VipCenterActivity.this.context, 3, j.n(VipCenterActivity.this).k(VipCenterActivity.this) / 2);
                            VipCenterActivity.this.prizeRule.setWidth(-1);
                        }
                        VipCenterActivity.this.prizeRule.show(VipCenterActivity.this.recyclerView, luckbean, 3);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public VipHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            switch (i2) {
                case 1:
                    return new VipCardHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_vipcard_layout, viewGroup, false));
                case 2:
                    return new VipLuckDrawlHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_luckdrawl_layout, viewGroup, false));
                case 3:
                    return new VipTitleHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_title_layout, viewGroup, false));
                case 4:
                case 5:
                    return new VipHlistHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_hlistview_layout, viewGroup, false));
                case 6:
                    TextView textView = new TextView(VipCenterActivity.this.context);
                    textView.setHeight(VipCenterActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp100));
                    return new VipHlistHolder(textView);
                default:
                    return null;
            }
        }
    }

    private void addItemHlist(VipCenterGameListitem vipCenterGameListitem) {
        if (vipCenterGameListitem != null) {
            List<IconGame> game_list = vipCenterGameListitem.getGame_list();
            this.vipCenterDataMains.add(new VipCenterDataMain(3, vipCenterGameListitem));
            this.vipCenterDataMains.add(new VipCenterDataMain(4, game_list));
        }
    }

    private void getData() {
        RequestModel<VipCenterRequestBean> requestModel = new RequestModel<>(this);
        VipCenterRequestBean vipCenterRequestBean = new VipCenterRequestBean();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        vipCenterRequestBean.setUid(accountData.getUid());
        vipCenterRequestBean.setUserToken(accountData.getToken());
        vipCenterRequestBean.setVip(accountData.getVip_level());
        requestModel.setArgs(vipCenterRequestBean);
        h.L().J().i0(requestModel).enqueue(new Callback<ResponseModel<VipCenterResultData>>() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<VipCenterResultData>> call, Throwable th) {
                List<VipCenterDataMain> list = VipCenterActivity.this.vipCenterDataMains;
                if (list == null || list.size() == 0) {
                    VipCenterActivity.this.loding_faile.setVisibility(0);
                    VipCenterActivity.this.loding_layout.setVisibility(8);
                    VipCenterActivity.this.recyclerView.setVisibility(8);
                }
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<VipCenterResultData>> call, Response<ResponseModel<VipCenterResultData>> response) {
                if (response == null || response.body() == null) {
                    return;
                }
                ResponseModel<VipCenterResultData> body = response.body();
                if (body.getCode() == 200) {
                    VipCenterActivity.this.showData(body.getData());
                    return;
                }
                VipCenterActivity.this.loding_faile.setVisibility(0);
                VipCenterActivity.this.loding_layout.setVisibility(8);
                VipCenterActivity.this.recyclerView.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showData(VipCenterResultData vipCenterResultData) {
        if (vipCenterResultData == null) {
            return;
        }
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.recyclerView.setVisibility(0);
        this.vipCenterDataMains.add(new VipCenterDataMain(1, ""));
        VipCenterDataMain vipCenterDataMain = new VipCenterDataMain(2, vipCenterResultData.getLuck_draw_info());
        this.luckbean = vipCenterResultData.getLuck_draw_info();
        this.vipCenterDataMains.add(vipCenterDataMain);
        addItemHlist(vipCenterResultData.getMod_game_list());
        addItemHlist(vipCenterResultData.getGf_game_list());
        addItemHlist(vipCenterResultData.getOs_game_list());
        addItemHlist(vipCenterResultData.getCp_game_list());
        VipCenterGameListitem vipCenterGameListitem = new VipCenterGameListitem();
        vipCenterGameListitem.setTitle("会员专享合集");
        this.vipCenterDataMains.add(new VipCenterDataMain(3, vipCenterGameListitem));
        this.vipCenterDataMains.add(new VipCenterDataMain(5, vipCenterResultData.getMember_collection()));
        this.vipCenterDataMains.add(new VipCenterDataMain(6, null));
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScratchPrize() {
        RequestModel<LuckHistoryrequest> requestModel = new RequestModel<>(this.context);
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setPage(1);
        AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        luckHistoryrequest.setUid(accountData.getUid());
        luckHistoryrequest.setUserToken(accountData.getToken());
        requestModel.setArgs(luckHistoryrequest);
        h.L().J().k0(requestModel).enqueue(new Callback<ResponseModel<PrizeBean>>() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<PrizeBean>> call, Throwable th) {
                VipCenterActivity.this.isstruckting = false;
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<PrizeBean>> call, Response<ResponseModel<PrizeBean>> response) {
                if (response != null && response.body() != null && response.body().getCode() == 200) {
                    VipCenterActivity.this.luckbean.setLastPrize(response.body().getData());
                    Luckbean luckbean = VipCenterActivity.this.luckbean;
                    luckbean.setCount(luckbean.getCount() - 1);
                    VipCenterActivity.this.adapter.notifyDataSetChanged();
                } else if (response == null || response.body() == null || response.body().getCode() != 500) {
                } else {
                    i2.a(VipCenterActivity.this.context).b(response.body().getMessage());
                    VipCenterActivity.this.isstruckting = false;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.context = this;
        p.l(this).K1(Event.visitMembercen, new Ext());
        this.title_textview.setText("会员中心");
        this.title_textview.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        this.title_textview.setGravity(17);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        VipcenterAdapter vipcenterAdapter = new VipcenterAdapter();
        this.adapter = vipcenterAdapter;
        this.recyclerView.setAdapter(vipcenterAdapter);
        this.line.setVisibility(8);
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void delaysetStrcth(ScratchView scratchView) {
        this.isstruckting = false;
        if (this.luckbean.getCount() == 0) {
            scratchView.setCanCratch(false);
        } else {
            scratchView.setCanCratch(true);
        }
        scratchView.setNumber(this.luckbean.getCount());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        getData();
    }
}
