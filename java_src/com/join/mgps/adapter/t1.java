package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameInfoAdapterV2.java */
/* loaded from: classes3.dex */
public class t1 extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private List<GameInfoBean> f44053a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f44054b;

    /* renamed from: c  reason: collision with root package name */
    private Context f44055c;

    /* renamed from: d  reason: collision with root package name */
    private e f44056d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameInfoAdapterV2.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44057a;

        a(int i2) {
            this.f44057a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t1.this.f44056d.a(this.f44057a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameInfoAdapterV2.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44059a;

        b(int i2) {
            this.f44059a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t1.this.f44056d.a(this.f44059a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameInfoAdapterV2.java */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private View f44061a;

        /* renamed from: b  reason: collision with root package name */
        private View f44062b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f44063c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f44064d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f44065e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44066f;

        public c(@NonNull View view) {
            super(view);
            this.f44063c = (SimpleDraweeView) view.findViewById(R.id.iv_icon);
            this.f44064d = (TextView) view.findViewById(R.id.tv_gameName);
            this.f44065e = (TextView) view.findViewById(R.id.tv_roomCounts);
            this.f44061a = view.findViewById(R.id.main);
            this.f44062b = view.findViewById(R.id.cover);
            this.f44066f = (TextView) view.findViewById(R.id.romeName);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameInfoAdapterV2.java */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private View f44068a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f44069b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44070c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f44071d;

        public d(@NonNull View view) {
            super(view);
            this.f44069b = (SimpleDraweeView) view.findViewById(R.id.iv_icon);
            this.f44070c = (TextView) view.findViewById(R.id.tv_gameName);
            this.f44071d = (TextView) view.findViewById(R.id.tv_roomCounts);
            this.f44068a = view.findViewById(R.id.main);
        }
    }

    /* compiled from: GameInfoAdapterV2.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(int i2);
    }

    /* compiled from: GameInfoAdapterV2.java */
    /* loaded from: classes3.dex */
    private static class f {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f44073a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f44074b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44075c;

        private f() {
        }
    }

    public t1(Context context, boolean z3) {
        this.f44055c = context;
        this.f44054b = z3;
    }

    public List<GameInfoBean> b() {
        return this.f44053a;
    }

    public void c(int i2, c cVar) {
        GameInfoBean gameInfoBean = this.f44053a.get(i2);
        cVar.f44064d.setText(gameInfoBean.getTitle());
        MyImageLoader.e(cVar.f44063c, R.drawable.bg_gameinfo, gameInfoBean.getPic_remote_vertical(), r.c.f12144g);
        if (gameInfoBean.getRoom_count() == -1) {
            cVar.f44065e.setVisibility(8);
            cVar.f44066f.setVisibility(8);
            cVar.f44064d.setTextColor(-1);
        } else {
            cVar.f44065e.setVisibility(0);
            cVar.f44066f.setVisibility(0);
            cVar.f44064d.setTextColor(-1);
            TextView textView = cVar.f44065e;
            textView.setText(gameInfoBean.getRoom_count() + "");
        }
        cVar.f44062b.setOnClickListener(new a(i2));
    }

    public void d(int i2, d dVar) {
        GameInfoBean gameInfoBean = this.f44053a.get(i2);
        dVar.f44070c.setText(gameInfoBean.getGame_name());
        if (com.join.mgps.Util.d2.i(gameInfoBean.getPic_cover())) {
            SimpleDraweeView simpleDraweeView = dVar.f44069b;
            String pic_cover = gameInfoBean.getPic_cover();
            Context context = this.f44055c;
            MyImageLoader.j(simpleDraweeView, pic_cover, MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp4)));
        } else {
            SimpleDraweeView simpleDraweeView2 = dVar.f44069b;
            String game_ico = gameInfoBean.getGame_ico();
            Context context2 = this.f44055c;
            MyImageLoader.j(simpleDraweeView2, game_ico, MyImageLoader.D(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp4)));
        }
        TextView textView = dVar.f44071d;
        textView.setText(gameInfoBean.getRoom_count() + "");
        dVar.f44068a.setOnClickListener(new b(i2));
    }

    public void e(List<GameInfoBean> list) {
        this.f44053a = list;
        notifyDataSetChanged();
    }

    public void f(e eVar) {
        this.f44056d = eVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<GameInfoBean> list = this.f44053a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.f44054b ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        try {
            if (getItemViewType(i2) == 1) {
                c(i2, (c) viewHolder);
            } else {
                d(i2, (d) viewHolder);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (i2 == 1) {
            return new c(LayoutInflater.from(this.f44055c).inflate(R.layout.item_gameinfo, viewGroup, false));
        }
        return new d(LayoutInflater.from(this.f44055c).inflate(R.layout.item_gameinfo_1, viewGroup, false));
    }
}
