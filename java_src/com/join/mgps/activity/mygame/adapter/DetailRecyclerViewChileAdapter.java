package com.join.mgps.activity.mygame.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.List;
/* loaded from: classes3.dex */
public class DetailRecyclerViewChileAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<GamedownRecomendItemBean> arrayList;
    private Context ctx;
    private String gameId;
    private int position;

    /* loaded from: classes3.dex */
    public class ViewHolder1 extends RecyclerView.ViewHolder {
        private TextView appName;
        private TextView comment;
        private TextView gameScore;
        private MStarBar gameStar;
        private SimpleDraweeView icon;
        private SimpleDraweeView img;
        private View main;
        private TextView scrolNew;
        private TextView tag;

        public ViewHolder1(View view) {
            super(view);
            this.appName = (TextView) view.findViewById(R.id.appName);
            this.gameStar = (MStarBar) view.findViewById(R.id.gameStar);
            this.tag = (TextView) view.findViewById(R.id.tag);
            this.gameScore = (TextView) view.findViewById(R.id.gameScore);
            this.main = view.findViewById(R.id.main);
            this.img = (SimpleDraweeView) view.findViewById(R.id.img);
            this.icon = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.comment = (TextView) view.findViewById(R.id.comment);
            this.scrolNew = (TextView) view.findViewById(R.id.scrolNew);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0148  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0158  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setData(int r8) {
            /*
                Method dump skipped, instructions count: 378
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter.ViewHolder1.setData(int):void");
        }
    }

    public DetailRecyclerViewChileAdapter(Context context, List<GamedownRecomendItemBean> list, int i2) {
        this.ctx = context;
        this.arrayList = list;
        this.position = i2;
    }

    IntentDateBean fromSearch(IntentDateBean intentDateBean) {
        ExtBean extBean = new ExtBean();
        int i2 = this.position;
        if (i2 == 0) {
            extBean.setFrom("130");
        } else if (i2 == 2) {
            extBean.setFrom("128");
        } else if (i2 == 3) {
            extBean.setFrom("131");
        }
        intentDateBean.setExtBean(extBean);
        return intentDateBean;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        try {
            ((ViewHolder1) viewHolder).setData(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new ViewHolder1(View.inflate(this.ctx, R.layout.detail_guesslike_item, null));
    }

    public void sendPoint(GamedownRecomendItemBean gamedownRecomendItemBean) {
        GamedownRecomendItemBean.RecContext rec_context = gamedownRecomendItemBean.getRec_context();
        if (rec_context == null || gamedownRecomendItemBean.isHasSendData()) {
            return;
        }
        gamedownRecomendItemBean.setHasSendData(true);
        Ext ext = new Ext();
        ext.setRecTid(rec_context.getTid());
        ext.setRecScene(rec_context.getScene());
        ext.setRecPosition(rec_context.getPosition());
        ext.setRecVersion(rec_context.getVersion());
        ext.setGameId(gamedownRecomendItemBean.getGame_id());
        p l4 = p.l(this.ctx);
        Event event = Event.gameRecShow;
        l4.K1(event, ext);
        t0.d("downrecom", event.name() + "  " + rec_context.getTid() + "  " + rec_context.getScene() + "   " + rec_context.getPosition() + "  " + rec_context.getVersion());
    }

    public void setGameId(String str) {
        this.gameId = str;
    }
}
