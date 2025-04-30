package com.join.mgps.activity.arena;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.i2;
import com.join.mgps.adapter.t1;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.rpc.impl.k;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.newarena_gameroom_selecter_activity)
/* loaded from: classes3.dex */
public class GameRoomSelecterActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f36628a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RecyclerView f36629b;

    /* renamed from: c  reason: collision with root package name */
    Context f36630c;

    /* renamed from: d  reason: collision with root package name */
    g f36631d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    GameInfoBean f36632e;

    /* renamed from: f  reason: collision with root package name */
    t1 f36633f;

    /* renamed from: g  reason: collision with root package name */
    List<GameInfoBean> f36634g;

    /* renamed from: h  reason: collision with root package name */
    List<GameInfoBean> f36635h = new ArrayList();

    /* loaded from: classes3.dex */
    class a implements e {
        a() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomSelecterActivity.e
        public void onItemClick(int i2) {
            GameRoomSelecterActivity gameRoomSelecterActivity = GameRoomSelecterActivity.this;
            gameRoomSelecterActivity.f36632e = gameRoomSelecterActivity.f36635h.get(i2);
            GameRoomSelecterActivity.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements t1.e {
        b() {
        }

        @Override // com.join.mgps.adapter.t1.e
        public void a(int i2) {
            Intent intent = new Intent();
            intent.putExtra("mGameInfo", GameRoomSelecterActivity.this.f36634g.get(i2));
            GameRoomSelecterActivity.this.setResult(10001, intent);
            GameRoomSelecterActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Callback<ResultMainBean<ArenaGameRoomListConfig>> {
        c() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Response<ResultMainBean<ArenaGameRoomListConfig>> response) {
            ResultMainBean<ArenaGameRoomListConfig> body = response.body();
            if (body == null || body.getMessages().getData() == null) {
                GameRoomSelecterActivity.this.showToast("获取游戏配置信息失败！");
            } else if (body.getMessages().getData().getCurrent_collection_cfg() == null) {
                GameRoomSelecterActivity.this.F0();
            } else {
                String collection_id = body.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
                if (TextUtils.isEmpty(collection_id) || Integer.parseInt(collection_id) <= 0) {
                    GameRoomSelecterActivity.this.F0();
                } else if (body.getMessages().getData().getGame_list() == null || body.getMessages().getData().getGame_list().size() <= 0) {
                    GameRoomSelecterActivity.this.F0();
                } else {
                    List<GameConfig> game_list = body.getMessages().getData().getGame_list();
                    ArrayList arrayList = new ArrayList();
                    for (GameConfig gameConfig : game_list) {
                        GameInfoBean gameInfoBean = new GameInfoBean();
                        gameInfoBean.setCollection_id(gameConfig.getCollection_id());
                        gameInfoBean.setPic_remote(gameConfig.getGame_ico());
                        gameInfoBean.setGame_ico(gameConfig.getGame_ico());
                        gameInfoBean.setGame_id(gameConfig.getGame_id());
                        gameInfoBean.setGame_name(gameConfig.getGame_name());
                        gameInfoBean.setRoom_count(gameConfig.getRoom_count());
                        gameInfoBean.setTitle(gameConfig.getTitle());
                        arrayList.add(gameInfoBean);
                    }
                    GameRoomSelecterActivity.this.f36634g.clear();
                    GameRoomSelecterActivity.this.f36634g.addAll(arrayList);
                    GameRoomSelecterActivity.this.f36633f.notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Callback<ResultResMainBean<GameListBannerBean>> {
        d() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultResMainBean<GameListBannerBean>> call, Throwable th) {
            GameRoomSelecterActivity.this.finish();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultResMainBean<GameListBannerBean>> call, Response<ResultResMainBean<GameListBannerBean>> response) {
            ResultResMainBean<GameListBannerBean> body = response.body();
            if (body != null) {
                try {
                    List<GameInfoBean> game_list = body.getData().getGame_list();
                    if (game_list != null && game_list.size() > 0) {
                        GameRoomSelecterActivity.this.f36635h.addAll(game_list);
                        GameRoomSelecterActivity.this.f36631d.notifyDataSetChanged();
                    } else {
                        GameRoomSelecterActivity.this.finish();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    GameRoomSelecterActivity.this.finish();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onItemClick(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f36640a;

        /* renamed from: b  reason: collision with root package name */
        TextView f36641b;

        public f(@NonNull View view) {
            super(view);
            this.f36640a = view.findViewById(R.id.main);
            this.f36641b = (TextView) view.findViewById(R.id.name);
        }
    }

    /* loaded from: classes3.dex */
    class g extends RecyclerView.Adapter<f> {

        /* renamed from: a  reason: collision with root package name */
        private e f36643a;

        /* renamed from: b  reason: collision with root package name */
        private int f36644b = -1024;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f36646a;

            a(int i2) {
                this.f36646a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                g gVar = g.this;
                gVar.notifyItemChanged(gVar.f36644b);
                g.this.f36644b = this.f36646a;
                g gVar2 = g.this;
                gVar2.notifyItemChanged(gVar2.f36644b);
                g.this.f36643a.onItemClick(this.f36646a);
            }
        }

        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(f fVar, int i2) {
            GameInfoBean gameInfoBean = GameRoomSelecterActivity.this.f36635h.get(i2);
            if (this.f36644b == -1024 && gameInfoBean.getCollection_id().equals(GameRoomSelecterActivity.this.f36632e.getCollection_id())) {
                fVar.f36640a.setSelected(true);
            } else {
                fVar.f36640a.setSelected(this.f36644b == i2);
            }
            fVar.f36641b.setText(gameInfoBean.getTitle());
            fVar.f36640a.setOnClickListener(new a(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: e */
        public f onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            return new f(LayoutInflater.from(GameRoomSelecterActivity.this.f36630c).inflate(R.layout.newarena_roomselecter_item, viewGroup, false));
        }

        public void f(e eVar) {
            this.f36643a = eVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameRoomSelecterActivity.this.f36635h.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0() {
        i2.a(this.f36630c).b("获取数据失败");
    }

    private void H0() {
        k.n0().m0().u(AccountUtil_.getInstance_(this.f36630c).getUid()).enqueue(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToast(String str) {
    }

    void G0() {
        String collection_id;
        int i2;
        try {
            if (TextUtils.isEmpty(this.f36632e.getCollection_id())) {
                collection_id = this.f36632e.getGame_id();
                i2 = 1;
            } else {
                collection_id = this.f36632e.getCollection_id();
                i2 = 2;
            }
            com.join.mgps.rpc.impl.c.P1().O1().q(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i2)).enqueue(new c());
        } catch (Exception unused) {
            F0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f36629b.setLayoutManager(new LinearLayoutManager(this));
        g gVar = new g();
        this.f36631d = gVar;
        gVar.f(new a());
        this.f36629b.setAdapter(this.f36631d);
        this.f36630c = this;
        this.f36628a.setLayoutManager(new GridLayoutManager(this, 2));
        t1 t1Var = new t1(this.f36630c, false);
        this.f36633f = t1Var;
        t1Var.f(new b());
        this.f36634g = this.f36633f.b();
        this.f36628a.setAdapter(this.f36633f);
        G0();
        H0();
    }
}
