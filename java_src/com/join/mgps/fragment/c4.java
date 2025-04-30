package com.join.mgps.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.dto.RankingMainDataBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: RankingFragment.java */
@EFragment(R.layout.fragment_rank)
/* loaded from: classes4.dex */
public class c4 extends d {
    @Pref

    /* renamed from: a  reason: collision with root package name */
    PrefDef_ f48505a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SlidingTabLayout1 f48506b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ViewPagerCompat f48507c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.customview.d0 f48508d;

    /* renamed from: e  reason: collision with root package name */
    String f48509e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankingFragment.java */
    /* loaded from: classes4.dex */
    public class a implements Callback<ResponseModel<RankingMainDataBean>> {
        a() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<RankingMainDataBean>> call, Throwable th) {
            c4.this.N();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<RankingMainDataBean>> call, Response<ResponseModel<RankingMainDataBean>> response) {
            ResponseModel<RankingMainDataBean> body = response.body();
            if (body == null || body.getData() == null || body.getData().getRank_type() == null || body.getData().getRank_type().size() <= 0) {
                c4.this.N();
                return;
            }
            String jsonString = JsonMapper.toJsonString(body.getData().getRank_type());
            if (!c4.this.f48509e.equals(jsonString)) {
                new PrefDef_(c4.this.getActivity()).rankingMenu2().g(jsonString);
            }
            c4.this.P(body.getData().getRank_type());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (TextUtils.isEmpty(this.f48509e)) {
            this.f48509e = "[{\"id\":1,\"title\":\"网游榜\"},{\"id\":2,\"title\":\"单机榜\"},{\"id\":3,\"title\":\"模拟器榜\"}]";
        }
        List<TagData> list = (List) JsonMapper.getInstance().fromJson(this.f48509e, JsonMapper.getInstance().createCollectionType(List.class, TagData.class));
        if (list.isEmpty()) {
            list = (List) JsonMapper.getInstance().fromJson("[{\"id\":1,\"title\":\"网游榜\"},{\"id\":2,\"title\":\"单机榜\"},{\"id\":3,\"title\":\"模拟器榜\"}]", JsonMapper.getInstance().createCollectionType(List.class, TagData.class));
        }
        P(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O() {
        RequestModel requestModel = new RequestModel(getActivity());
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setType(0);
        luckHistoryrequest.setPage(1);
        luckHistoryrequest.setUid(AccountUtil_.getInstance_(getActivity()).getAccountData().getUid());
        requestModel.setArgs(luckHistoryrequest);
        com.join.mgps.rpc.impl.h.L().J().f0(requestModel.makeSign()).enqueue(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P(List<TagData> list) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (TagData tagData : list) {
                arrayList.add(j4.f0(tagData.getId() + "", tagData.getTitle()));
                arrayList2.add(tagData.getTitle());
            }
            com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getChildFragmentManager(), arrayList, arrayList2);
            this.f48508d = d0Var;
            d0Var.d(arrayList, arrayList2);
            this.f48508d.notifyDataSetChanged();
            this.f48507c.setAdapter(this.f48508d);
            this.f48506b.setViewPager(this.f48507c);
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f48507c.setCurrentItem(arguments.getInt("table", 0));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48509e = this.f48505a.rankingMenu2().d();
        O();
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
        if (this.f48508d == null || this.f48507c == null || !isVisible()) {
            return;
        }
        Fragment item = this.f48508d.getItem(this.f48507c.getCurrentItem());
        if (item instanceof j4) {
            ((j4) item).lazyLoad();
        }
    }
}
