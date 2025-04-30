package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.vipzone.bean.IconGame;
import java.util.List;
/* loaded from: classes3.dex */
class GameHlistAdapter extends BaseAdapter {
    Context context;
    int from;
    List<IconGame> iconGames;

    /* loaded from: classes3.dex */
    class CollHolder {
        SimpleDraweeView cardImage;
        TextView gameName;
        View main;

        CollHolder() {
        }
    }

    public GameHlistAdapter(List<IconGame> list, Context context, int i2) {
        this.iconGames = list;
        this.context = context;
        this.from = i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.iconGames.size();
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
            view = LayoutInflater.from(this.context).inflate(R.layout.vip_center_icongame_layout, (ViewGroup) null);
            collHolder = new CollHolder();
            collHolder.cardImage = (SimpleDraweeView) view.findViewById(R.id.cardImage);
            collHolder.gameName = (TextView) view.findViewById(R.id.gameName);
            collHolder.main = view.findViewById(R.id.main);
            view.setTag(collHolder);
        } else {
            collHolder = (CollHolder) view.getTag();
        }
        final IconGame iconGame = this.iconGames.get(i2);
        MyImageLoader.h(collHolder.cardImage, iconGame.getGame_ico());
        collHolder.gameName.setText(iconGame.getGame_name());
        collHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.GameHlistAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                IntentUtil.getInstance().goGameDetialActivity(GameHlistAdapter.this.context, iconGame.getGame_id(), GameHlistAdapter.this.from);
            }
        });
        return view;
    }
}
