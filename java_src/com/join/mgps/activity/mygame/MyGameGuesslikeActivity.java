package com.join.mgps.activity.mygame;

import android.content.Context;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.mygame_guesslike_activity)
/* loaded from: classes3.dex */
public class MyGameGuesslikeActivity extends BaseAppCompatActivity {
    Context mContext;
    @ViewById
    RecyclerView recyclerView;
    @ViewById
    TextView title_textview;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.mContext = this;
        this.title_textview.setText("猜你喜欢");
        showLoadingLayoutBase();
        getDownloadRecomedData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    void getDownloadRecomedData() {
        String uid = AccountUtil_.getInstance_(this.mContext).getUid();
        String token = AccountUtil_.getInstance_(this.mContext).getToken();
        RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this.mContext);
        QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
        queryDownloadInfoRequestArgs.setGameId("0");
        queryDownloadInfoRequestArgs.setDataType(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        queryDownloadInfoRequestArgs.setUid(uid);
        queryDownloadInfoRequestArgs.setToken(token);
        requestModel.setArgs(queryDownloadInfoRequestArgs);
        h.L().J().n0(requestModel).enqueue(new Callback<ResponseModel<DataGameListBean>>() { // from class: com.join.mgps.activity.mygame.MyGameGuesslikeActivity.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable th) {
                MyGameGuesslikeActivity.this.showFailLayoutBase();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
                if (response != null) {
                    ResponseModel<DataGameListBean> body = response.body();
                    if (body != null && body.getData() != null) {
                        List<GamedownRecomendItemBean> gameList = body.getData().getGameList();
                        if (gameList != null && gameList.size() > 0) {
                            MyGameGuesslikeActivity.this.showGuesslike(gameList);
                            return;
                        } else {
                            MyGameGuesslikeActivity.this.showNoDataLayoutBase();
                            return;
                        }
                    }
                    MyGameGuesslikeActivity.this.showFailLayoutBase();
                    return;
                }
                MyGameGuesslikeActivity.this.showFailLayoutBase();
            }
        });
    }

    @Override // com.BaseAppCompatActivity
    public int getLoadingLayoutResID() {
        return R.id.main;
    }

    @Override // com.BaseAppCompatActivity
    public void loadDataBase() {
        getDownloadRecomedData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showGuesslike(List<GamedownRecomendItemBean> list) {
        Ext ext = new Ext();
        ext.setPosition("3");
        ext.setGameId("0");
        p.l(this.mContext).K1(Event.showGuessYouLike, ext);
        hideLoadingLayoutBase();
        this.recyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        this.recyclerView.setAdapter(new DetailRecyclerViewChileAdapter(this.mContext, list, 3));
    }
}
