package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import app.mgsim.arena.UserType;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.t0;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomPosition;
/* loaded from: classes3.dex */
public class PlayerInfoContainerView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private b[] f45925a;

    /* renamed from: b  reason: collision with root package name */
    Activity f45926b;

    /* renamed from: c  reason: collision with root package name */
    int f45927c;

    /* renamed from: d  reason: collision with root package name */
    UserType f45928d;

    /* renamed from: e  reason: collision with root package name */
    private a f45929e;

    /* loaded from: classes3.dex */
    public interface a {
        void a(RoomPosition roomPosition, int i2);

        void b(int i2);

        boolean c();

        void d();

        void e(RoomPosition roomPosition, boolean z3, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f45930a;

        /* renamed from: b  reason: collision with root package name */
        private View f45931b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f45932c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f45933d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f45934e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f45935f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f45936g;

        /* renamed from: h  reason: collision with root package name */
        private LinearLayout f45937h;

        /* renamed from: i  reason: collision with root package name */
        private ImageView f45938i;

        /* renamed from: j  reason: collision with root package name */
        private ImageView f45939j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f45940k;

        /* renamed from: l  reason: collision with root package name */
        private ViewGroup f45941l;

        /* renamed from: m  reason: collision with root package name */
        private int f45942m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f45943n = false;

        /* renamed from: o  reason: collision with root package name */
        private RoomPosition f45944o;

        /* renamed from: p  reason: collision with root package name */
        private View f45945p;

        /* renamed from: q  reason: collision with root package name */
        private LinearLayout f45946q;

        /* renamed from: r  reason: collision with root package name */
        private TextView f45947r;

        /* renamed from: s  reason: collision with root package name */
        private TextView f45948s;

        /* renamed from: t  reason: collision with root package name */
        private ImageView f45949t;

        /* renamed from: u  reason: collision with root package name */
        private View f45950u;

        /* renamed from: v  reason: collision with root package name */
        private View f45951v;

        /* renamed from: w  reason: collision with root package name */
        private VipView f45952w;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (b.this.f45944o != null) {
                    if (b.this.f45944o.getUid() == 0) {
                        if (b.this.f45944o.getClosed()) {
                            PlayerInfoContainerView.this.f45929e.e(b.this.f45944o, false, b.this.f45942m);
                            return;
                        } else if (PlayerInfoContainerView.this.f45929e.c()) {
                            PlayerInfoContainerView.this.f45929e.b(b.this.f45942m);
                            return;
                        } else {
                            PlayerInfoContainerView.this.f45929e.e(b.this.f45944o, true, b.this.f45942m);
                            return;
                        }
                    }
                    PlayerInfoContainerView.this.f45929e.a(b.this.f45944o, b.this.f45942m);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.join.mgps.customview.PlayerInfoContainerView$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0194b implements View.OnClickListener {
            View$OnClickListenerC0194b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerInfoContainerView.this.f45929e.d();
            }
        }

        public b(Context context, ViewGroup viewGroup, int i2) {
            this.f45930a = context;
            this.f45941l = viewGroup;
            this.f45942m = i2;
            c();
        }

        private void d() {
            if (PlayerInfoContainerView.this.f45926b == null) {
                return;
            }
            float j4 = (com.join.android.app.common.utils.j.n(this.f45930a).j(PlayerInfoContainerView.this.f45926b) * 9.0f) / 16.0f;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45951v.getLayoutParams();
            layoutParams.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp180) * j4);
            layoutParams.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp239) * j4);
            this.f45951v.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f45945p.getLayoutParams();
            layoutParams2.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp100) * j4);
            layoutParams2.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp100) * j4);
            layoutParams2.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp28) * j4);
            this.f45945p.setLayoutParams(layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f45933d.getLayoutParams();
            layoutParams3.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp96) * j4);
            layoutParams3.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp96) * j4);
            layoutParams3.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * j4);
            this.f45933d.setLayoutParams(layoutParams3);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f45949t.getLayoutParams();
            layoutParams4.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * j4);
            layoutParams4.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * j4);
            layoutParams4.bottomMargin = -((int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp15) * j4));
            this.f45949t.setLayoutParams(layoutParams4);
            RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) this.f45935f.getLayoutParams();
            layoutParams5.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp14) * j4);
            this.f45935f.setLayoutParams(layoutParams5);
            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) this.f45946q.getLayoutParams();
            layoutParams6.topMargin = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp11) * j4);
            this.f45946q.setLayoutParams(layoutParams6);
            this.f45952w.setSize((int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * j4), (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp30) * j4));
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) this.f45932c.getLayoutParams();
            layoutParams7.width = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp37) * j4);
            layoutParams7.height = (int) (PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp37) * j4);
            this.f45932c.setLayoutParams(layoutParams7);
            this.f45932c.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp22) * j4);
            this.f45934e.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp24) * j4);
            this.f45935f.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp24) * j4);
            this.f45936g.setTextSize(0, PlayerInfoContainerView.this.getResources().getDimensionPixelSize(R.dimen.wdp18) * j4);
        }

        private void e() {
            int i2 = PlayerInfoContainerView.this.f45927c;
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3 || i2 == 4) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45951v.getLayoutParams();
                    int i4 = this.f45942m;
                    if (i4 == 1) {
                        layoutParams.leftMargin = 0;
                    } else if (i4 == 2) {
                        layoutParams.rightMargin = 0;
                    }
                    layoutParams.width = PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp224);
                    this.f45951v.setLayoutParams(layoutParams);
                    return;
                }
                return;
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f45951v.getLayoutParams();
            int width = this.f45941l.getWidth();
            if (width > 0) {
                int dimensionPixelOffset = (((width / 2) - PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp228)) / 2) / 2;
                if (PlayerInfoContainerView.this.f45927c == 2) {
                    int i5 = this.f45942m;
                    if (i5 == 1) {
                        layoutParams2.leftMargin = dimensionPixelOffset;
                    } else if (i5 == 2) {
                        layoutParams2.rightMargin = dimensionPixelOffset;
                    }
                }
            }
            layoutParams2.width = PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp228);
            this.f45951v.setLayoutParams(layoutParams2);
        }

        void c() {
            View inflate = LayoutInflater.from(this.f45930a).inflate(R.layout.item_game_room_player_info, (ViewGroup) null);
            this.f45931b = inflate;
            this.f45939j = (ImageView) inflate.findViewById(R.id.iv_haveReady);
            this.f45950u = this.f45931b.findViewById(R.id.mDefaultBg);
            this.f45945p = this.f45931b.findViewById(R.id.borderView);
            this.f45932c = (TextView) this.f45931b.findViewById(R.id.tv_p);
            this.f45933d = (SimpleDraweeView) this.f45931b.findViewById(R.id.iv_bg);
            this.f45934e = (TextView) this.f45931b.findViewById(R.id.tv_name);
            this.f45935f = (TextView) this.f45931b.findViewById(R.id.tv_nick_name);
            this.f45936g = (TextView) this.f45931b.findViewById(R.id.tv_delay_time);
            this.f45938i = (ImageView) this.f45931b.findViewById(R.id.iv_state);
            this.f45940k = (TextView) this.f45931b.findViewById(R.id.tv_state);
            this.f45946q = (LinearLayout) this.f45931b.findViewById(R.id.ll_out_device);
            this.f45947r = (TextView) this.f45931b.findViewById(R.id.iv_out_device);
            this.f45948s = (TextView) this.f45931b.findViewById(R.id.iv_pc_device);
            this.f45952w = (VipView) this.f45931b.findViewById(R.id.vipView);
            this.f45937h = (LinearLayout) this.f45931b.findViewById(R.id.ll_state);
            this.f45951v = this.f45931b.findViewById(R.id.rl_top);
            this.f45949t = (ImageView) this.f45931b.findViewById(R.id.ivProficiencyLevel);
            int i2 = this.f45942m;
            if (i2 == 1) {
                this.f45932c.setText("1P");
            } else if (i2 == 2) {
                this.f45932c.setText("2P");
            } else if (i2 == 3) {
                this.f45932c.setText("3P");
            } else if (i2 == 4) {
                this.f45932c.setText("4P");
            }
            this.f45931b.findViewById(R.id.rl_top).setOnClickListener(new a());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            if (this.f45942m > 1) {
                layoutParams.leftMargin = PlayerInfoContainerView.this.getResources().getDimensionPixelOffset(R.dimen.wdp20);
            }
            this.f45941l.addView(this.f45931b, layoutParams);
        }

        public void f(RoomPosition roomPosition, boolean z3, boolean z4) {
            e();
            this.f45944o = roomPosition;
            this.f45943n = z3;
            if (roomPosition.getUid() == 0) {
                this.f45939j.setVisibility(8);
                this.f45935f.setVisibility(4);
                this.f45946q.setVisibility(4);
                this.f45934e.setVisibility(8);
                this.f45938i.setVisibility(0);
                this.f45940k.setVisibility(0);
                this.f45937h.setVisibility(0);
                this.f45933d.setVisibility(8);
                if (roomPosition.getClosed()) {
                    this.f45938i.setImageDrawable(PlayerInfoContainerView.this.getContext().getResources().getDrawable(R.drawable.new_arena_locked));
                    this.f45940k.setVisibility(4);
                } else {
                    this.f45938i.setImageDrawable(PlayerInfoContainerView.this.getContext().getResources().getDrawable(R.drawable.new_arena_empty));
                    if (PlayerInfoContainerView.this.f45928d == UserType.OWNER) {
                        this.f45940k.setVisibility(0);
                    } else {
                        this.f45940k.setVisibility(8);
                    }
                }
                this.f45950u.setBackgroundResource(R.drawable.newarena_room_positionback);
                this.f45952w.setVipData(0, 0);
                this.f45933d.setVisibility(4);
                this.f45935f.setVisibility(4);
                this.f45946q.setVisibility(4);
                this.f45948s.setVisibility(4);
                this.f45949t.setVisibility(4);
                this.f45945p.setVisibility(4);
                this.f45940k.setOnClickListener(new View$OnClickListenerC0194b());
                return;
            }
            this.f45933d.setVisibility(0);
            this.f45938i.setVisibility(8);
            this.f45935f.setVisibility(0);
            this.f45946q.setVisibility(0);
            this.f45934e.setVisibility(0);
            this.f45940k.setVisibility(8);
            if (roomPosition.getState() == RoomPosition.State.READY && !z3) {
                this.f45939j.setVisibility(0);
            } else {
                this.f45939j.setVisibility(8);
            }
            t0.b("GameRoomActivity", "RoomPosition player Avatar:" + roomPosition.getAvatar());
            MyImageLoader.l(this.f45933d, roomPosition.getAvatar());
            this.f45935f.setText(roomPosition.getNickname());
            TextView textView = this.f45936g;
            textView.setText(roomPosition.getPingVal() + "ms");
            if (this.f45944o.getPeripheral()) {
                this.f45947r.setVisibility(0);
            } else {
                this.f45947r.setVisibility(8);
            }
            if (this.f45944o.getPlatform().getNumber() == 1) {
                this.f45948s.setVisibility(0);
            } else {
                this.f45948s.setVisibility(8);
            }
            if (this.f45944o.getVip()) {
                this.f45952w.setVipData(1, 0);
            } else {
                this.f45952w.setVipData(0, 0);
            }
            this.f45934e.setTextColor(Color.parseColor(this.f45944o.getBattleTitleColor()));
            this.f45934e.setText(this.f45944o.getBattleTitle());
            this.f45945p.setVisibility(0);
            switch (roomPosition.getProficiencyLevel()) {
                case 1:
                    this.f45949t.setVisibility(0);
                    this.f45949t.setBackgroundResource(R.drawable.mg_proficiency_level_trainee);
                    this.f45945p.setBackgroundResource(R.drawable.bg_border_yellow);
                    break;
                case 2:
                    this.f45949t.setVisibility(0);
                    this.f45949t.setBackgroundResource(R.drawable.mg_proficiency_level_senior);
                    this.f45945p.setBackgroundResource(R.drawable.mg_proficiency_level_senior_bg);
                    break;
                case 3:
                    this.f45949t.setVisibility(0);
                    this.f45949t.setBackgroundResource(R.drawable.mg_proficiency_level_elite);
                    this.f45945p.setBackgroundResource(R.drawable.mg_proficiency_level_elite_bg);
                    break;
                case 4:
                    this.f45949t.setVisibility(0);
                    this.f45949t.setBackgroundResource(R.drawable.mg_proficiency_level_master);
                    this.f45945p.setBackgroundResource(R.drawable.mg_proficiency_level_master_bg);
                    break;
                case 5:
                    this.f45949t.setVisibility(0);
                    this.f45949t.setBackgroundResource(R.drawable.mg_proficiency_level_legend);
                    this.f45945p.setBackgroundResource(R.drawable.mg_proficiency_level_legend_bg);
                    break;
                case 6:
                    this.f45949t.setVisibility(0);
                    this.f45949t.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest);
                    this.f45945p.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest_bg);
                    break;
                default:
                    this.f45949t.setVisibility(8);
                    this.f45945p.setBackgroundResource(R.drawable.mg_proficiency_level_0_bg);
                    break;
            }
            if (z3) {
                this.f45950u.setBackgroundResource(R.drawable.new_arena_isouner);
            } else if (z4) {
                this.f45950u.setBackgroundResource(R.drawable.newarena_room_positionback_my);
            } else {
                this.f45950u.setBackgroundResource(R.drawable.newarena_room_positionback);
            }
        }
    }

    public PlayerInfoContainerView(Context context) {
        super(context);
        this.f45925a = new b[4];
        this.f45927c = 4;
        b(context);
    }

    private void b(Context context) {
        setOrientation(0);
        this.f45925a[0] = new b(context, this, 1);
        this.f45925a[1] = new b(context, this, 2);
        this.f45925a[2] = new b(context, this, 3);
        this.f45925a[3] = new b(context, this, 4);
    }

    public void c(GameRoom gameRoom, int i2, Activity activity) {
        this.f45926b = activity;
        this.f45927c = gameRoom.getSeatsNumber();
        this.f45928d = com.join.mgps.socket.fight.arena.c.f(gameRoom, AccountUtil_.getInstance_(activity));
        int leader = gameRoom.getLeader();
        int i4 = this.f45927c;
        if (i4 == 1) {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(8);
            getChildAt(2).setVisibility(8);
            getChildAt(3).setVisibility(8);
            this.f45925a[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == i2);
        } else if (i4 == 2) {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(0);
            getChildAt(2).setVisibility(8);
            getChildAt(3).setVisibility(8);
            this.f45925a[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == i2);
            this.f45925a[1].f(gameRoom.getP2(), gameRoom.getP2().getUid() == leader, gameRoom.getP2().getUid() == i2);
        } else if (i4 == 3) {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(0);
            getChildAt(2).setVisibility(0);
            getChildAt(3).setVisibility(8);
            this.f45925a[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == i2);
            this.f45925a[1].f(gameRoom.getP2(), gameRoom.getP2().getUid() == leader, gameRoom.getP2().getUid() == i2);
            this.f45925a[2].f(gameRoom.getP3(), gameRoom.getP3().getUid() == leader, gameRoom.getP3().getUid() == i2);
        } else if (i4 != 4) {
        } else {
            getChildAt(0).setVisibility(0);
            getChildAt(1).setVisibility(0);
            getChildAt(2).setVisibility(0);
            getChildAt(3).setVisibility(0);
            this.f45925a[0].f(gameRoom.getP1(), gameRoom.getP1().getUid() == leader, gameRoom.getP1().getUid() == i2);
            this.f45925a[1].f(gameRoom.getP2(), gameRoom.getP2().getUid() == leader, gameRoom.getP2().getUid() == i2);
            this.f45925a[2].f(gameRoom.getP3(), gameRoom.getP3().getUid() == leader, gameRoom.getP3().getUid() == i2);
            this.f45925a[3].f(gameRoom.getP4(), gameRoom.getP4().getUid() == leader, gameRoom.getP4().getUid() == i2);
        }
    }

    public void setPlayerInfoCallback(a aVar) {
        this.f45929e = aVar;
    }

    public PlayerInfoContainerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45925a = new b[4];
        this.f45927c = 4;
        b(context);
    }
}
