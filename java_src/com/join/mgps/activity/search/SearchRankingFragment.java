package com.join.mgps.activity.search;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.SearchHintActivity;
import com.join.mgps.dto.GameInfoBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
@EFragment(R.layout.search_ranking_fragment_layout)
/* loaded from: classes3.dex */
public class SearchRankingFragment extends Fragment {
    SearchHintActivity activity;
    SearchRankingAdapter adapter;
    List<GameInfoBean> listDatas;
    @ViewById
    RecyclerView recyclerView;
    int type = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class SearchRankingAdapter extends RecyclerView.Adapter<SearchRankingHolder> {
        SearchRankingAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<GameInfoBean> list = SearchRankingFragment.this.listDatas;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull SearchRankingHolder searchRankingHolder, int i2) {
            final GameInfoBean gameInfoBean = SearchRankingFragment.this.listDatas.get(i2);
            if (i2 == 0) {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_first_back);
            } else if (i2 == 1) {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_secend_back);
            } else if (i2 == 2) {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_thrid_back);
            } else {
                searchRankingHolder.rankingNumberBack.setBackgroundResource(R.drawable.search_rank_normal_back);
            }
            if (i2 == SearchRankingFragment.this.listDatas.size() - 1) {
                searchRankingHolder.line.setVisibility(8);
            }
            searchRankingHolder.appName.setText(gameInfoBean.getGame_name());
            MyImageLoader.d(searchRankingHolder.icon, R.drawable.main_normal_icon, gameInfoBean.getGame_ico());
            TextView textView = searchRankingHolder.rankingNumber;
            textView.setText("" + (i2 + 1));
            searchRankingHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.search.SearchRankingFragment.SearchRankingAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    p l4 = p.l(view.getContext());
                    Event event = Event.clickSearchRankingGame;
                    Ext ext = new Ext();
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(SearchRankingFragment.this.type - 1);
                    Ext gameId = ext.setPosition(sb.toString()).setGameId(gameInfoBean.getGame_id());
                    l4.K1(event, gameId.setFrom(SearchRankingFragment.this.type + ""));
                    SearchRankingFragment.this.activity.W0(gameInfoBean.getGame_name(), gameInfoBean.getGame_id());
                }
            });
            searchRankingHolder.tag.setVisibility(8);
            if (gameInfoBean.isThe_hot()) {
                searchRankingHolder.tag.setVisibility(0);
                searchRankingHolder.tag.setText("热");
                searchRankingHolder.tag.setBackgroundResource(R.drawable.corner_red_strokebg_4);
                searchRankingHolder.tag.setTextColor(Color.parseColor("#FF7039"));
            } else if (gameInfoBean.isThe_new()) {
                searchRankingHolder.tag.setVisibility(0);
                searchRankingHolder.tag.setText("新");
                searchRankingHolder.tag.setBackgroundResource(R.drawable.corner_yellow_strokebg_4);
                searchRankingHolder.tag.setTextColor(Color.parseColor("#FF911A"));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public SearchRankingHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            return new SearchRankingHolder(LayoutInflater.from(SearchRankingFragment.this.activity).inflate(R.layout.search_ranking_listitem, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class SearchRankingHolder extends RecyclerView.ViewHolder {
        TextView appName;
        SimpleDraweeView icon;
        View line;
        View main;
        TextView rankingNumber;
        TextView rankingNumberBack;
        TextView tag;

        public SearchRankingHolder(@NonNull View view) {
            super(view);
            this.rankingNumber = (TextView) view.findViewById(R.id.rankingNumber);
            this.rankingNumberBack = (TextView) view.findViewById(R.id.rankingNumberBack);
            this.icon = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.appName = (TextView) view.findViewById(R.id.appName);
            this.tag = (TextView) view.findViewById(R.id.tag);
            this.line = view.findViewById(R.id.line);
            this.main = view.findViewById(R.id.main);
        }
    }

    public static SearchRankingFragment getInstance(int i2) {
        SearchRankingFragment_ searchRankingFragment_ = new SearchRankingFragment_();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        searchRankingFragment_.setArguments(bundle);
        return searchRankingFragment_;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterVidew() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.type = arguments.getInt("type");
        }
        this.adapter = new SearchRankingAdapter();
        SearchHintActivity searchHintActivity = (SearchHintActivity) getActivity();
        this.activity = searchHintActivity;
        this.recyclerView.setLayoutManager(new LinearLayoutManager(searchHintActivity));
        this.listDatas = new ArrayList();
        this.listDatas = this.activity.S0(this.type);
        this.recyclerView.setAdapter(this.adapter);
    }
}
