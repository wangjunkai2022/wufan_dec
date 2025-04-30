package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameInfoAdapter.java */
/* loaded from: classes3.dex */
public class s1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<GameInfoBean> f43882a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f43883b;

    /* renamed from: c  reason: collision with root package name */
    private Context f43884c;

    /* compiled from: GameInfoAdapter.java */
    /* loaded from: classes3.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43885a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f43886b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43887c;

        private b() {
        }
    }

    public s1(Context context, List<GameInfoBean> list, boolean z3) {
        this.f43882a = new ArrayList();
        this.f43882a = list;
        this.f43884c = context;
        this.f43883b = z3;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<GameInfoBean> list = this.f43882a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<GameInfoBean> list = this.f43882a;
        if (list != null) {
            return list.get(i2);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            if (this.f43883b) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_gameinfo, (ViewGroup) null);
            } else {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_gameinfo_1, (ViewGroup) null);
            }
            bVar = new b();
            bVar.f43885a = (SimpleDraweeView) view.findViewById(R.id.iv_icon);
            bVar.f43886b = (TextView) view.findViewById(R.id.tv_gameName);
            bVar.f43887c = (TextView) view.findViewById(R.id.tv_roomCounts);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        GameInfoBean gameInfoBean = this.f43882a.get(i2);
        if (this.f43883b) {
            bVar.f43886b.setText(gameInfoBean.getTitle());
            MyImageLoader.d(bVar.f43885a, R.drawable.iv_default_newarena_item, gameInfoBean.getPic_remote());
        } else {
            bVar.f43886b.setText(gameInfoBean.getGame_name());
            SimpleDraweeView simpleDraweeView = bVar.f43885a;
            String game_ico = gameInfoBean.getGame_ico();
            Context context = this.f43884c;
            MyImageLoader.f(simpleDraweeView, R.drawable.ic_default_list_arena, game_ico, MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp14)));
        }
        TextView textView = bVar.f43887c;
        textView.setText(gameInfoBean.getRoom_count() + "");
        return view;
    }
}
