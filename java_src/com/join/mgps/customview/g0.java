package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import app.mgsim.arena.AreaInfo;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.p2;
import com.join.mgps.dto.GameConfig;
import com.papa91.battle.protocol.BattleArea;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: PopBattleArea.java */
/* loaded from: classes3.dex */
public class g0 extends PopupWindow implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    View f46856a;

    /* renamed from: b  reason: collision with root package name */
    View f46857b;

    /* renamed from: c  reason: collision with root package name */
    View f46858c;

    /* renamed from: d  reason: collision with root package name */
    TextView f46859d;

    /* renamed from: e  reason: collision with root package name */
    TextView f46860e;

    /* renamed from: f  reason: collision with root package name */
    TextView f46861f;

    /* renamed from: g  reason: collision with root package name */
    ImageView f46862g;

    /* renamed from: h  reason: collision with root package name */
    ImageView f46863h;

    /* renamed from: i  reason: collision with root package name */
    ImageView f46864i;

    /* renamed from: j  reason: collision with root package name */
    View f46865j;

    /* renamed from: k  reason: collision with root package name */
    View f46866k;

    /* renamed from: l  reason: collision with root package name */
    View f46867l;

    /* renamed from: m  reason: collision with root package name */
    TextView f46868m;

    /* renamed from: n  reason: collision with root package name */
    View f46869n;

    /* renamed from: o  reason: collision with root package name */
    ListView f46870o;

    /* renamed from: p  reason: collision with root package name */
    e f46871p;

    /* renamed from: q  reason: collision with root package name */
    f f46872q;

    /* renamed from: r  reason: collision with root package name */
    Handler f46873r = new a();

    /* renamed from: s  reason: collision with root package name */
    Context f46874s;

    /* renamed from: t  reason: collision with root package name */
    public View f46875t;

    /* compiled from: PopBattleArea.java */
    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        void a() {
            removeMessages(3);
            removeMessages(4);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Animation loadAnimation = AnimationUtils.loadAnimation(g0.this.f46874s, R.anim.scale_in);
            Animation loadAnimation2 = AnimationUtils.loadAnimation(g0.this.f46874s, R.anim.scale_out);
            int i2 = message.what;
            if (i2 == 0) {
                a();
                g0.this.f46867l.startAnimation(loadAnimation2);
                sendEmptyMessageDelayed(4, 200L);
            } else if (i2 == 1) {
                a();
                g0.this.f46866k.startAnimation(loadAnimation2);
                sendEmptyMessageDelayed(3, 200L);
            } else if (i2 == 3) {
                g0.this.f46866k.setVisibility(8);
                g0.this.f46867l.setVisibility(0);
                g0.this.f46867l.startAnimation(loadAnimation);
            } else if (i2 != 4) {
            } else {
                g0.this.f46867l.setVisibility(8);
                g0.this.f46866k.setVisibility(0);
                g0.this.f46866k.startAnimation(loadAnimation);
            }
        }
    }

    /* compiled from: PopBattleArea.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.dismiss();
        }
    }

    /* compiled from: PopBattleArea.java */
    /* loaded from: classes3.dex */
    class c implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f46878a;

        c(e eVar) {
            this.f46878a = eVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, View view, int i2, long j4) {
            f fVar = g0.this.f46872q;
            if (fVar == null) {
                return;
            }
            GameConfig gameConfig = fVar.a().size() > i2 ? g0.this.f46872q.a().get(i2) : null;
            e eVar = this.f46878a;
            if (eVar != null) {
                eVar.b(gameConfig);
            }
            g0.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PopBattleArea.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                g0.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* compiled from: PopBattleArea.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(BattleArea battleArea);

        void b(GameConfig gameConfig);
    }

    /* compiled from: PopBattleArea.java */
    /* loaded from: classes3.dex */
    public class f extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<GameConfig> f46881a;

        /* compiled from: PopBattleArea.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            public SimpleDraweeView f46883a;

            /* renamed from: b  reason: collision with root package name */
            public TextView f46884b;

            /* renamed from: c  reason: collision with root package name */
            public TextView f46885c;

            a() {
            }
        }

        public f() {
        }

        public List<GameConfig> a() {
            if (this.f46881a == null) {
                this.f46881a = new ArrayList();
            }
            return this.f46881a;
        }

        @Override // android.widget.Adapter
        /* renamed from: b */
        public GameConfig getItem(int i2) {
            List<GameConfig> list = this.f46881a;
            if (list == null) {
                return null;
            }
            return list.get(i2);
        }

        public void c(List<GameConfig> list) {
            if (this.f46881a == null) {
                this.f46881a = new ArrayList();
            }
            this.f46881a.clear();
            this.f46881a.addAll(list);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<GameConfig> list = this.f46881a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view != null) {
                aVar = (a) view.getTag();
            } else {
                view = LayoutInflater.from(g0.this.f46874s).inflate(R.layout.arena_game_list_item, (ViewGroup) null);
                aVar = new a();
                aVar.f46883a = (SimpleDraweeView) view.findViewById(R.id.icon);
                aVar.f46884b = (TextView) view.findViewById(R.id.room_count);
                aVar.f46885c = (TextView) view.findViewById(R.id.title);
                view.setTag(aVar);
            }
            GameConfig item = getItem(i2);
            MyImageLoader.h(aVar.f46883a, item.getGame_ico());
            aVar.f46885c.setText(item.getGame_name());
            int room_count = item.getRoom_count();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            SpannableString spannableString = new SpannableString(room_count + "");
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF47500")), 0, spannableString.length(), 17);
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.append((CharSequence) "房");
            aVar.f46884b.setText(spannableStringBuilder);
            return view;
        }
    }

    public g0(Context context, e eVar) {
        this.f46874s = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.pop_battle_area, (ViewGroup) null);
        this.f46856a = inflate.findViewById(R.id.view_bj);
        this.f46857b = inflate.findViewById(R.id.view_sh);
        this.f46858c = inflate.findViewById(R.id.view_gz);
        this.f46859d = (TextView) inflate.findViewById(R.id.tv_bj);
        this.f46860e = (TextView) inflate.findViewById(R.id.tv_sh);
        this.f46861f = (TextView) inflate.findViewById(R.id.tv_gz);
        this.f46864i = (ImageView) inflate.findViewById(R.id.iv_gz_battle_area_rec);
        this.f46863h = (ImageView) inflate.findViewById(R.id.iv_sh_battle_area_rec);
        this.f46862g = (ImageView) inflate.findViewById(R.id.iv_bj_battle_area_rec);
        this.f46865j = p2.b(inflate, R.id.rl_sel);
        this.f46866k = p2.b(inflate, R.id.rl_areas);
        this.f46867l = p2.b(inflate, R.id.rl_games);
        this.f46868m = (TextView) p2.b(inflate, R.id.area_title);
        this.f46869n = p2.b(inflate, R.id.iv_arrow);
        this.f46870o = (ListView) p2.b(inflate, R.id.listview);
        this.f46865j.setOnClickListener(this);
        this.f46871p = eVar;
        p2.b(inflate, R.id.rl_bj).setOnClickListener(this);
        p2.b(inflate, R.id.rl_sh).setOnClickListener(this);
        p2.b(inflate, R.id.rl_gz).setOnClickListener(this);
        inflate.findViewById(R.id.emptyView).setOnClickListener(new b());
        setContentView(inflate);
        setWidth(context.getResources().getDisplayMetrics().widthPixels);
        setHeight(-2);
        update();
        e();
        f fVar = new f();
        this.f46872q = fVar;
        this.f46870o.setAdapter((ListAdapter) fVar);
        this.f46870o.setOnItemClickListener(new c(eVar));
    }

    private void d(View view, boolean z3, View view2, boolean z4) {
        view.setBackgroundResource(z3 ? R.drawable.bg_circle_eb3a25 : R.drawable.bg_circle_30d92d);
        view2.setVisibility(z4 ? 0 : 8);
    }

    private void e() {
        setBackgroundDrawable(new BitmapDrawable());
        setTouchable(true);
        setOutsideTouchable(true);
        setFocusable(true);
        setTouchInterceptor(new d());
    }

    public void a(BattleArea battleArea, boolean z3) {
        if (z3) {
            this.f46865j.setVisibility(8);
        } else {
            this.f46865j.setVisibility(0);
        }
        this.f46868m.setText(com.join.mgps.socket.fight.arena.c.d(battleArea));
    }

    public void b(ConcurrentHashMap<Integer, AreaInfo> concurrentHashMap, AreaInfo areaInfo) {
        Enumeration<AreaInfo> elements = concurrentHashMap.elements();
        while (elements.hasMoreElements()) {
            AreaInfo nextElement = elements.nextElement();
            if (nextElement.getArea() == 1) {
                TextView textView = this.f46859d;
                textView.setText("在线：" + nextElement.getOnLinePeopleCounts() + "人");
                d(this.f46856a, com.join.mgps.socket.fight.arena.c.m(nextElement.getPingTime()), this.f46862g, nextElement.getArea() == areaInfo.getArea());
                if (nextElement.getArea() == areaInfo.getArea()) {
                    this.f46868m.setText("北京区");
                }
            } else if (nextElement.getArea() == 2) {
                TextView textView2 = this.f46860e;
                textView2.setText("在线：" + nextElement.getOnLinePeopleCounts() + "人");
                d(this.f46857b, com.join.mgps.socket.fight.arena.c.m(nextElement.getPingTime()), this.f46863h, nextElement.getArea() == areaInfo.getArea());
                if (nextElement.getArea() == areaInfo.getArea()) {
                    this.f46868m.setText("上海区");
                }
            } else if (nextElement.getArea() == 3) {
                TextView textView3 = this.f46861f;
                textView3.setText("在线：" + nextElement.getOnLinePeopleCounts() + "人");
                d(this.f46858c, com.join.mgps.socket.fight.arena.c.m(nextElement.getPingTime()), this.f46864i, nextElement.getArea() == areaInfo.getArea());
                if (nextElement.getArea() == areaInfo.getArea()) {
                    this.f46868m.setText("广东区");
                }
            }
        }
    }

    public void c(List<GameConfig> list) {
        if (this.f46872q == null) {
            f fVar = new f();
            this.f46872q = fVar;
            this.f46870o.setAdapter((ListAdapter) fVar);
        }
        this.f46872q.c(list);
        this.f46872q.notifyDataSetChanged();
    }

    void f() {
        this.f46869n.setSelected(true);
        this.f46873r.sendEmptyMessage(0);
    }

    void g() {
        this.f46869n.setSelected(false);
        this.f46873r.sendEmptyMessage(1);
    }

    void h() {
        if (!this.f46869n.isSelected()) {
            f();
        } else {
            g();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.rl_sel) {
            h();
        } else if (id == R.id.rl_bj) {
            this.f46871p.a(BattleArea.BJ);
            dismiss();
        } else if (id == R.id.rl_sh) {
            this.f46871p.a(BattleArea.SH);
            dismiss();
        } else if (id == R.id.rl_gz) {
            this.f46871p.a(BattleArea.GZ);
            dismiss();
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        this.f46875t = view;
        if (Build.VERSION.SDK_INT == 24) {
            try {
                Rect rect = new Rect();
                this.f46875t.getGlobalVisibleRect(rect);
                setHeight(this.f46875t.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        super.showAsDropDown(view);
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        this.f46875t = view;
        super.showAtLocation(view, i2, i4, i5);
    }
}
