package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameLevelBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FriendGameLevelAdapter.java */
/* loaded from: classes3.dex */
public class a0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final Context f41225a;

    /* renamed from: b  reason: collision with root package name */
    private List<GameLevelBean> f41226b = new ArrayList();

    /* compiled from: FriendGameLevelAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f41227a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f41228b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41229c;

        a() {
        }
    }

    public a0(Context context) {
        this.f41225a = context;
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public GameLevelBean getItem(int i2) {
        return this.f41226b.get(i2);
    }

    public <E> List<GameLevelBean> b() {
        return this.f41226b;
    }

    public void c(List<GameLevelBean> list) {
        this.f41226b = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41226b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a aVar;
        if (view == null) {
            aVar = new a();
            view2 = LayoutInflater.from(this.f41225a).inflate(R.layout.item_game_level_card, viewGroup, false);
            aVar.f41227a = (SimpleDraweeView) view2.findViewById(R.id.ic);
            aVar.f41228b = (TextView) view2.findViewById(R.id.name);
            aVar.f41229c = (TextView) view2.findViewById(R.id.level);
            view2.setTag(aVar);
        } else {
            view2 = view;
            aVar = (a) view.getTag();
        }
        GameLevelBean item = getItem(i2);
        if (TextUtils.isEmpty(item.getSrc())) {
            int level = item.getLevel();
            MyImageLoader.d(aVar.f41227a, level == 5 ? R.drawable.gameleve5 : level == 4 ? R.drawable.gameleve4 : level == 3 ? R.drawable.gameleve2 : level == 2 ? R.drawable.gameleve3 : R.drawable.gameleve1, "");
        } else {
            MyImageLoader.h(aVar.f41227a, item.getSrc());
        }
        aVar.f41228b.setText(item.getGameName());
        aVar.f41229c.setText(item.getLevelName());
        return view2;
    }
}
