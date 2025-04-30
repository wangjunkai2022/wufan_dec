package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RadioGroup;
import app.mgsim.arena.AreaInfo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.p2;
import com.join.mgps.customview.g0;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.fragment.roomlist.c;
import com.papa91.battle.protocol.BattleArea;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: ArenaGameListSortDialog.java */
/* loaded from: classes3.dex */
public class k implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47745a;

    /* renamed from: b  reason: collision with root package name */
    Activity f47746b;

    /* renamed from: c  reason: collision with root package name */
    int f47747c = 1;

    /* renamed from: d  reason: collision with root package name */
    int f47748d = 3;

    /* renamed from: e  reason: collision with root package name */
    RadioGroup f47749e;

    /* renamed from: f  reason: collision with root package name */
    RadioGroup f47750f;

    /* renamed from: g  reason: collision with root package name */
    private c.m f47751g;

    /* renamed from: h  reason: collision with root package name */
    ConcurrentHashMap<Integer, AreaInfo> f47752h;

    /* renamed from: i  reason: collision with root package name */
    AreaInfo f47753i;

    /* renamed from: j  reason: collision with root package name */
    int f47754j;

    /* renamed from: k  reason: collision with root package name */
    ImageView f47755k;

    /* renamed from: l  reason: collision with root package name */
    ImageView f47756l;

    /* renamed from: m  reason: collision with root package name */
    ImageView f47757m;

    /* renamed from: n  reason: collision with root package name */
    View f47758n;

    /* renamed from: o  reason: collision with root package name */
    View f47759o;

    /* renamed from: p  reason: collision with root package name */
    View f47760p;

    /* renamed from: q  reason: collision with root package name */
    View f47761q;

    /* renamed from: r  reason: collision with root package name */
    View f47762r;

    /* renamed from: s  reason: collision with root package name */
    View f47763s;

    /* renamed from: t  reason: collision with root package name */
    g0.e f47764t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaGameListSortDialog.java */
    /* loaded from: classes3.dex */
    public class a implements RadioGroup.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            if (i2 == R.id.rb_phone) {
                k.this.f47747c = 2;
            } else if (i2 != R.id.rb_synthesize) {
            } else {
                k.this.f47747c = 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaGameListSortDialog.java */
    /* loaded from: classes3.dex */
    public class b implements RadioGroup.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            switch (i2) {
                case R.id.rb_rank_asc /* 2131299524 */:
                    k.this.f47748d = 4;
                    return;
                case R.id.rb_rank_desc /* 2131299525 */:
                    k.this.f47748d = 3;
                    return;
                case R.id.rb_remoned /* 2131299526 */:
                case R.id.rb_synthesize /* 2131299528 */:
                default:
                    k.this.f47748d = 3;
                    return;
                case R.id.rb_seat_asc /* 2131299527 */:
                    k.this.f47748d = 6;
                    return;
                case R.id.rb_time_asc /* 2131299529 */:
                    k.this.f47748d = 5;
                    return;
            }
        }
    }

    public k(Activity activity, c.m mVar, g0.e eVar, ConcurrentHashMap<Integer, AreaInfo> concurrentHashMap, AreaInfo areaInfo, int i2) {
        this.f47746b = activity;
        this.f47764t = eVar;
        this.f47751g = mVar;
        b(activity);
        this.f47754j = i2;
        c(concurrentHashMap, areaInfo);
        this.f47752h = concurrentHashMap;
        this.f47753i = areaInfo;
    }

    private void e(View view, boolean z3, View view2, boolean z4) {
        view.setBackgroundResource(z3 ? R.drawable.bg_circle_eb3a25 : R.drawable.bg_circle_30d92d);
        view2.setVisibility(z4 ? 0 : 8);
    }

    public void a() {
        this.f47745a.dismiss();
    }

    void b(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f47745a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f47745a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_room_sort, (ViewGroup) null);
        inflate.findViewById(R.id.iv_close).setOnClickListener(this);
        inflate.findViewById(R.id.tvSubmit).setOnClickListener(this);
        this.f47749e = (RadioGroup) inflate.findViewById(R.id.rgRoomType);
        this.f47750f = (RadioGroup) inflate.findViewById(R.id.rgRoomSort);
        this.f47758n = inflate.findViewById(R.id.view_bj);
        this.f47759o = inflate.findViewById(R.id.view_sh);
        this.f47760p = inflate.findViewById(R.id.view_gz);
        this.f47762r = inflate.findViewById(R.id.rl_sh);
        this.f47761q = inflate.findViewById(R.id.rl_bj);
        this.f47763s = inflate.findViewById(R.id.rl_gz);
        this.f47757m = (ImageView) inflate.findViewById(R.id.iv_gz_battle_area_rec);
        this.f47756l = (ImageView) inflate.findViewById(R.id.iv_sh_battle_area_rec);
        this.f47755k = (ImageView) inflate.findViewById(R.id.iv_bj_battle_area_rec);
        p2.b(inflate, R.id.rl_bj).setOnClickListener(this);
        p2.b(inflate, R.id.rl_sh).setOnClickListener(this);
        p2.b(inflate, R.id.rl_gz).setOnClickListener(this);
        this.f47749e.setOnCheckedChangeListener(new a());
        this.f47750f.setOnCheckedChangeListener(new b());
        this.f47745a.setContentView(inflate);
        Window window = this.f47745a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void c(ConcurrentHashMap<Integer, AreaInfo> concurrentHashMap, AreaInfo areaInfo) {
        Enumeration<AreaInfo> elements = concurrentHashMap.elements();
        this.f47761q.setSelected(false);
        this.f47762r.setSelected(false);
        this.f47763s.setSelected(false);
        while (elements.hasMoreElements()) {
            AreaInfo nextElement = elements.nextElement();
            if (nextElement.getArea() == areaInfo.getArea()) {
                AreaInfo areaInfo2 = new AreaInfo();
                this.f47753i = areaInfo2;
                areaInfo2.setArea(nextElement.getArea());
                this.f47753i.setHost(nextElement.getHost());
                this.f47753i.setOnLinePeopleCounts(nextElement.getOnLinePeopleCounts());
                this.f47753i.setPingTime(nextElement.getPingTime());
                this.f47753i.setPort(nextElement.getPort());
            }
            if (nextElement.getArea() == 1) {
                e(this.f47758n, com.join.mgps.socket.fight.arena.c.m(nextElement.getPingTime()), this.f47755k, nextElement.getArea() == this.f47754j);
                if (nextElement.getArea() == areaInfo.getArea()) {
                    this.f47761q.setSelected(true);
                }
            } else if (nextElement.getArea() == 2) {
                e(this.f47759o, com.join.mgps.socket.fight.arena.c.m(nextElement.getPingTime()), this.f47756l, nextElement.getArea() == this.f47754j);
                if (nextElement.getArea() == areaInfo.getArea()) {
                    this.f47762r.setSelected(true);
                }
            } else if (nextElement.getArea() == 3) {
                e(this.f47760p, com.join.mgps.socket.fight.arena.c.m(nextElement.getPingTime()), this.f47757m, nextElement.getArea() == this.f47754j);
                if (nextElement.getArea() == areaInfo.getArea()) {
                    this.f47763s.setSelected(true);
                }
            }
        }
    }

    public void d(int i2, List<GameConfig> list, String str, int i4) {
        this.f47747c = i2;
        this.f47749e.check(i2 == 2 ? R.id.rb_phone : R.id.rb_synthesize);
        this.f47748d = i4;
        if (i4 == 3) {
            this.f47750f.check(R.id.rb_rank_desc);
        } else if (i4 == 4) {
            this.f47750f.check(R.id.rb_rank_asc);
        } else if (i4 == 5) {
            this.f47750f.check(R.id.rb_time_asc);
        } else if (i4 != 6) {
            this.f47750f.check(R.id.rb_rank_desc);
        } else {
            this.f47750f.check(R.id.rb_seat_asc);
        }
    }

    public void f() {
        if (this.f47745a.isShowing()) {
            return;
        }
        this.f47745a.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_close) {
            c.m mVar = this.f47751g;
            if (mVar != null) {
                mVar.b(this.f47748d, this.f47747c);
            }
            a();
        } else if (id != R.id.tvSubmit) {
            if (id == R.id.rl_bj) {
                this.f47764t.a(BattleArea.BJ);
                this.f47753i.setArea(1);
            } else if (id == R.id.rl_sh) {
                this.f47764t.a(BattleArea.SH);
                this.f47753i.setArea(2);
            } else if (id == R.id.rl_gz) {
                this.f47764t.a(BattleArea.GZ);
                this.f47753i.setArea(3);
            }
            c(this.f47752h, this.f47753i);
        } else {
            c.m mVar2 = this.f47751g;
            if (mVar2 != null) {
                mVar2.b(this.f47748d, this.f47747c);
            }
            a();
        }
    }
}
