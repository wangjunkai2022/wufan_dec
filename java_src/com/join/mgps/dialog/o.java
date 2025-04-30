package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa91.battle.protocol.GameRoom;
/* compiled from: ArenaRoomTypeDialog.java */
/* loaded from: classes3.dex */
public class o extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f47811a;

    /* renamed from: b  reason: collision with root package name */
    private RadioButton f47812b;

    /* renamed from: c  reason: collision with root package name */
    private RadioButton f47813c;

    /* renamed from: d  reason: collision with root package name */
    private int f47814d;

    /* renamed from: e  reason: collision with root package name */
    private d f47815e;

    /* renamed from: f  reason: collision with root package name */
    private View f47816f;

    /* renamed from: g  reason: collision with root package name */
    View f47817g;

    /* renamed from: h  reason: collision with root package name */
    TextView f47818h;

    /* renamed from: i  reason: collision with root package name */
    TextView f47819i;

    /* renamed from: j  reason: collision with root package name */
    TextView f47820j;

    /* renamed from: k  reason: collision with root package name */
    TextView f47821k;

    /* renamed from: l  reason: collision with root package name */
    TextView f47822l;

    /* renamed from: m  reason: collision with root package name */
    RadioButton f47823m;

    /* renamed from: n  reason: collision with root package name */
    RadioButton f47824n;

    /* renamed from: o  reason: collision with root package name */
    RadioButton f47825o;

    /* renamed from: p  reason: collision with root package name */
    RadioButton f47826p;

    /* renamed from: q  reason: collision with root package name */
    String f47827q;

    /* renamed from: r  reason: collision with root package name */
    String f47828r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f47829s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f47830t;

    /* renamed from: u  reason: collision with root package name */
    private GameRoom f47831u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaRoomTypeDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f47832a;

        a(Context context) {
            this.f47832a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.M(this.f47832a, o.this.f47818h.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaRoomTypeDialog.java */
    /* loaded from: classes3.dex */
    public class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (!z3) {
                if (com.join.mgps.Util.d2.h(o.this.f47827q)) {
                    if (com.join.mgps.Util.d2.i(o.this.f47828r)) {
                        o oVar = o.this;
                        oVar.f47827q = oVar.f47828r;
                    } else {
                        o oVar2 = o.this;
                        oVar2.f47827q = ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + "";
                    }
                }
            } else {
                o.this.f47827q = "";
            }
            if (com.join.mgps.Util.d2.i(o.this.f47827q)) {
                TextView textView = o.this.f47821k;
                textView.setText("房间性质（密码" + o.this.f47827q + ")");
                return;
            }
            o.this.f47821k.setText("房间性质");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaRoomTypeDialog.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.f47815e.b();
        }
    }

    /* compiled from: ArenaRoomTypeDialog.java */
    /* loaded from: classes3.dex */
    public interface d {

        /* renamed from: a  reason: collision with root package name */
        public static final int f47836a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f47837b = 2;

        void a(int i2, boolean z3, boolean z4, String str);

        void b();
    }

    public o(@NonNull Context context) {
        super(context, R.style.newtrans_floating_dialog);
        this.f47814d = 2;
        this.f47827q = "";
        this.f47828r = "";
        c(context);
    }

    private void b(int i2, boolean z3, boolean z4) {
        if (i2 == 2) {
            this.f47813c.setChecked(true);
        } else {
            this.f47813c.setChecked(false);
        }
        if (z3) {
            this.f47823m.setChecked(true);
            this.f47826p.setChecked(false);
            this.f47827q = "";
        } else {
            if (com.join.mgps.Util.d2.h(this.f47827q)) {
                if (com.join.mgps.Util.d2.i(this.f47828r)) {
                    this.f47827q = this.f47828r;
                } else {
                    this.f47827q = ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + "";
                }
            }
            this.f47823m.setChecked(false);
            this.f47826p.setChecked(true);
        }
        if (com.join.mgps.Util.d2.i(this.f47827q)) {
            TextView textView = this.f47821k;
            textView.setText("房间性质（密码" + this.f47827q + ")");
        } else {
            this.f47821k.setText("房间性质");
        }
        if (z4) {
            this.f47824n.setChecked(true);
            this.f47825o.setChecked(false);
            return;
        }
        this.f47825o.setChecked(true);
        this.f47824n.setChecked(false);
    }

    private void c(Context context) {
        this.f47811a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_arena_room_type, (ViewGroup) null);
        setContentView(inflate);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.f47812b = (RadioButton) inflate.findViewById(R.id.roomTypePhoneLL);
        this.f47813c = (RadioButton) inflate.findViewById(R.id.roomTypeAllLL);
        this.f47816f = inflate.findViewById(R.id.iv_close);
        this.f47818h = (TextView) inflate.findViewById(R.id.tv_roomNum);
        this.f47819i = (TextView) inflate.findViewById(R.id.copyTv);
        this.f47823m = (RadioButton) inflate.findViewById(R.id.rl_setNo_pwd);
        this.f47826p = (RadioButton) inflate.findViewById(R.id.rl_set_pwd);
        this.f47824n = (RadioButton) inflate.findViewById(R.id.iv_switch_onlook);
        this.f47820j = (TextView) inflate.findViewById(R.id.finishButn);
        this.f47825o = (RadioButton) inflate.findViewById(R.id.iv_switch_onlook_n);
        this.f47817g = inflate.findViewById(R.id.rl_net_archive);
        this.f47822l = (TextView) inflate.findViewById(R.id.tv_archive_name);
        this.f47821k = (TextView) inflate.findViewById(R.id.roomxingzhiT);
        this.f47819i.setOnClickListener(new a(context));
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.f47823m.setOnCheckedChangeListener(new b());
        View view = this.f47817g;
        if (view != null) {
            view.setOnClickListener(new c());
        }
    }

    private void d(boolean z3, View... viewArr) {
        for (View view : viewArr) {
            view.setSelected(z3);
        }
    }

    public void e(String str) {
        this.f47822l.setText(str);
    }

    public void f(GameRoom gameRoom, d dVar) {
        int i2 = gameRoom.getAllowPCJoin() ? 2 : 1;
        boolean hasJoinPassword = true ^ gameRoom.getHasJoinPassword();
        boolean allowSpectatorJoin = gameRoom.getAllowSpectatorJoin();
        this.f47814d = i2;
        this.f47815e = dVar;
        this.f47830t = allowSpectatorJoin;
        this.f47829s = hasJoinPassword;
        this.f47831u = gameRoom;
        TextView textView = this.f47818h;
        textView.setText(gameRoom.getRoomId() + "");
        g1.f G = g1.f.G();
        DownloadTask B = G.B("" + gameRoom.getGameId());
        if (!gameRoom.getElite()) {
            String plugin_num = B.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.FC.value() + "")) {
                this.f47817g.setVisibility(0);
                this.f47812b.setOnClickListener(this);
                this.f47813c.setOnClickListener(this);
                this.f47816f.setOnClickListener(this);
                this.f47820j.setOnClickListener(this);
                if (!gameRoom.getHasJoinPassword() && com.join.mgps.Util.d2.i(gameRoom.getPassword())) {
                    this.f47828r = gameRoom.getPassword();
                    this.f47827q = gameRoom.getPassword();
                    TextView textView2 = this.f47821k;
                    textView2.setText("房间性质（密码" + gameRoom.getPassword() + ")");
                } else {
                    this.f47821k.setText("房间性质");
                }
                b(this.f47814d, hasJoinPassword, allowSpectatorJoin);
            }
        }
        this.f47817g.setVisibility(8);
        this.f47812b.setOnClickListener(this);
        this.f47813c.setOnClickListener(this);
        this.f47816f.setOnClickListener(this);
        this.f47820j.setOnClickListener(this);
        if (!gameRoom.getHasJoinPassword()) {
        }
        this.f47821k.setText("房间性质");
        b(this.f47814d, hasJoinPassword, allowSpectatorJoin);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.roomTypePhoneLL || id == R.id.roomTypeAllLL) {
            return;
        }
        if (id == R.id.iv_close) {
            dismiss();
        } else if (id == R.id.finishButn) {
            if (this.f47815e != null) {
                if (this.f47812b.isChecked()) {
                    this.f47814d = 1;
                } else {
                    this.f47814d = 2;
                }
                this.f47815e.a(this.f47814d, this.f47823m.isChecked(), this.f47824n.isChecked(), this.f47827q);
            }
            dismiss();
        }
    }

    public o(@NonNull Context context, int i2) {
        super(context, R.style.newtrans_floating_dialog);
        this.f47814d = 2;
        this.f47827q = "";
        this.f47828r = "";
        c(context);
    }
}
