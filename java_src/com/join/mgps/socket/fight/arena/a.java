package com.join.mgps.socket.fight.arena;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import app.mgsim.arena.RoomSeatState;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.p2;
import com.join.mgps.dto.ArchiveBean;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.papa91.battle.protocol.KickInfo;
import com.papa91.battle.protocol.RoomPosition;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
/* compiled from: ArenaDialogBuilder.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    public static final int f52156g = 256;

    /* renamed from: h  reason: collision with root package name */
    public static final int f52157h = 257;

    /* renamed from: i  reason: collision with root package name */
    public static final int f52158i = 258;

    /* renamed from: j  reason: collision with root package name */
    public static final String f52159j = "dialog_error_hint";

    /* renamed from: k  reason: collision with root package name */
    public static final String f52160k = "leave_room";

    /* renamed from: l  reason: collision with root package name */
    public static final String f52161l = "toast_move_in_spectator";

    /* renamed from: m  reason: collision with root package name */
    public static final String f52162m = "toast_kic_out_room";

    /* renamed from: n  reason: collision with root package name */
    public static final String f52163n = "net_archive";

    /* renamed from: o  reason: collision with root package name */
    public static final String f52164o = "kick_info";

    /* renamed from: p  reason: collision with root package name */
    public static final String f52165p = "kic_out_room_info";

    /* renamed from: q  reason: collision with root package name */
    public static final String f52166q = "seat_set";

    /* renamed from: r  reason: collision with root package name */
    public static final String f52167r = "set_challenge_gold";

    /* renamed from: s  reason: collision with root package name */
    public static final String f52168s = "share_friends_1";

    /* renamed from: t  reason: collision with root package name */
    public static final String f52169t = "share_friends_2";

    /* renamed from: u  reason: collision with root package name */
    public static final String f52170u = "svr_play_mode";

    /* renamed from: v  reason: collision with root package name */
    private static final int f52171v = Color.parseColor("#ffffff");

    /* renamed from: w  reason: collision with root package name */
    private static final int f52172w = Color.parseColor("#0989BA");

    /* renamed from: a  reason: collision with root package name */
    private Dialog f52173a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f52174b;

    /* renamed from: c  reason: collision with root package name */
    private y f52175c;

    /* renamed from: e  reason: collision with root package name */
    private a0 f52177e;

    /* renamed from: d  reason: collision with root package name */
    private int f52176d = 0;

    /* renamed from: f  reason: collision with root package name */
    private final View.OnClickListener f52178f = new p();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* renamed from: com.join.mgps.socket.fight.arena.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class View$OnClickListenerC0226a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object[] f52179a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52180b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f52181c;

        View$OnClickListenerC0226a(Object[] objArr, int i2, String str) {
            this.f52179a = objArr;
            this.f52180b = i2;
            this.f52181c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            String str2 = "";
            try {
                str = this.f52179a[2].toString();
                try {
                    str2 = this.f52179a[3].toString();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                str = "";
            }
            com.papa.sim.statistic.p.l(a.this.f52174b).g1(AccountUtil_.getInstance_(a.this.f52174b).getUid(), str, str2);
            a.this.f52175c.A0(this.f52180b, this.f52181c);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class a0 {
        private static final String A = "_v2_lob_2.";

        /* renamed from: z  reason: collision with root package name */
        private static final String f52183z = "_lob.";

        /* renamed from: a  reason: collision with root package name */
        private RelativeLayout f52184a;

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f52185b;

        /* renamed from: c  reason: collision with root package name */
        private RelativeLayout f52186c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f52187d;

        /* renamed from: e  reason: collision with root package name */
        private ImageView f52188e;

        /* renamed from: f  reason: collision with root package name */
        private ImageView f52189f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f52190g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f52191h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f52192i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f52193j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f52194k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f52195l;

        /* renamed from: m  reason: collision with root package name */
        private ImageView f52196m;

        /* renamed from: n  reason: collision with root package name */
        private ImageView f52197n;

        /* renamed from: o  reason: collision with root package name */
        private ImageView f52198o;

        /* renamed from: p  reason: collision with root package name */
        private ArchiveBean f52199p;

        /* renamed from: q  reason: collision with root package name */
        private Context f52200q;

        /* renamed from: r  reason: collision with root package name */
        private List<ArchiveBean> f52201r;

        /* renamed from: s  reason: collision with root package name */
        private String f52202s;

        /* renamed from: u  reason: collision with root package name */
        TextView f52204u;

        /* renamed from: v  reason: collision with root package name */
        LinearLayout f52205v;

        /* renamed from: w  reason: collision with root package name */
        RelativeLayout f52206w;

        /* renamed from: t  reason: collision with root package name */
        private boolean f52203t = false;

        /* renamed from: x  reason: collision with root package name */
        boolean f52207x = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ArenaDialogBuilder.java */
        /* renamed from: com.join.mgps.socket.fight.arena.a$a0$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0227a implements View.OnClickListener {
            View$OnClickListenerC0227a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a0 a0Var = a0.this;
                a0Var.f52199p = (ArchiveBean) a0Var.f52201r.get(0);
                if (a0.this.f52196m.getVisibility() == 0) {
                    a.this.f52175c.X(null, "");
                } else {
                    a.this.f52175c.X(a0.this.f52199p, a0.this.f52202s + net.lingala.zip4j.util.e.F0 + a0.this.f52199p.getRecordFile());
                }
                a.this.w();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ArenaDialogBuilder.java */
        /* loaded from: classes4.dex */
        public class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a0 a0Var = a0.this;
                a0Var.f52199p = (ArchiveBean) a0Var.f52201r.get(1);
                if (a0.this.f52197n.getVisibility() == 0) {
                    a.this.f52175c.X(null, "");
                } else {
                    a.this.f52175c.X(a0.this.f52199p, a0.this.f52202s + net.lingala.zip4j.util.e.F0 + a0.this.f52199p.getRecordFile());
                }
                a.this.w();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ArenaDialogBuilder.java */
        /* loaded from: classes4.dex */
        public class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a0 a0Var = a0.this;
                a0Var.f52199p = (ArchiveBean) a0Var.f52201r.get(2);
                if (a0.this.f52198o.getVisibility() == 0) {
                    a.this.f52175c.X(null, "");
                } else {
                    a.this.f52175c.X(a0.this.f52199p, a0.this.f52202s + net.lingala.zip4j.util.e.F0 + a0.this.f52199p.getRecordFile());
                }
                a.this.w();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ArenaDialogBuilder.java */
        /* loaded from: classes4.dex */
        public class d implements Comparator<ArchiveBean> {
            d() {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(ArchiveBean archiveBean, ArchiveBean archiveBean2) {
                if (archiveBean.getFileTime() > archiveBean2.getFileTime()) {
                    return -1;
                }
                return archiveBean.getFileTime() == archiveBean2.getFileTime() ? 0 : 1;
            }
        }

        public a0(Context context, Object... objArr) {
            this.f52199p = null;
            this.f52200q = context;
            l(context);
            this.f52199p = (ArchiveBean) objArr[1];
            i("" + objArr[0]);
        }

        private boolean h(File[] fileArr, File file) {
            boolean z3;
            String name = file.getName();
            for (File file2 : fileArr) {
                String name2 = file2.getName();
                if (!name2.equals(name + A + "1")) {
                    if (!name2.equals(name + A + PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                        if (!name2.equals(name + A + "3")) {
                        }
                    }
                }
                z3 = false;
            }
            z3 = true;
            if (z3) {
                for (File file3 : fileArr) {
                    String name3 = file3.getName();
                    if (!name3.equals(name + f52183z + "1")) {
                        if (!name3.equals(name + f52183z + PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                            if (!name3.equals(name + f52183z + "3")) {
                            }
                        }
                    }
                    this.f52207x = true;
                    break;
                }
            }
            return z3;
        }

        private String k(long j4) {
            return new SimpleDateFormat("HH:mm MM-dd").format(new Date(j4));
        }

        private void l(Context context) {
            a.this.f52173a = new Dialog(context, R.style.newtrans_floating_dialog);
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = a.this.f52173a.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                a.this.f52173a.getWindow().setAttributes(attributes);
            }
            View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_net_archive, (ViewGroup) null);
            this.f52206w = (RelativeLayout) inflate.findViewById(R.id.rl_main);
            this.f52204u = (TextView) inflate.findViewById(R.id.tv_oldArchive);
            this.f52205v = (LinearLayout) inflate.findViewById(R.id.ll_archive);
            this.f52204u.setVisibility(8);
            this.f52205v.setVisibility(0);
            this.f52187d = (ImageView) inflate.findViewById(R.id.iv_archive_1);
            this.f52188e = (ImageView) inflate.findViewById(R.id.iv_archive_2);
            this.f52189f = (ImageView) inflate.findViewById(R.id.iv_archive_3);
            this.f52190g = (TextView) inflate.findViewById(R.id.tv_archive_1);
            this.f52191h = (TextView) inflate.findViewById(R.id.tv_archive_2);
            this.f52192i = (TextView) inflate.findViewById(R.id.tv_archive_3);
            this.f52193j = (TextView) inflate.findViewById(R.id.tv_name_1);
            this.f52194k = (TextView) inflate.findViewById(R.id.tv_name_2);
            this.f52195l = (TextView) inflate.findViewById(R.id.tv_name_3);
            this.f52196m = (ImageView) inflate.findViewById(R.id.iv_choice_1);
            this.f52197n = (ImageView) inflate.findViewById(R.id.iv_choice_2);
            this.f52198o = (ImageView) inflate.findViewById(R.id.iv_choice_3);
            RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.rl_archive_1);
            this.f52184a = relativeLayout;
            relativeLayout.setOnClickListener(new View$OnClickListenerC0227a());
            RelativeLayout relativeLayout2 = (RelativeLayout) inflate.findViewById(R.id.rl_archive_2);
            this.f52185b = relativeLayout2;
            relativeLayout2.setOnClickListener(new b());
            RelativeLayout relativeLayout3 = (RelativeLayout) inflate.findViewById(R.id.rl_archive_3);
            this.f52186c = relativeLayout3;
            relativeLayout3.setOnClickListener(new c());
            a.this.k(inflate);
            a.this.B(inflate, 17, 0, 0);
        }

        private void m() {
            boolean z3;
            boolean z4;
            int size = this.f52201r.size();
            if (size >= 3) {
                z3 = true;
                z4 = true;
            } else {
                z3 = size == 2;
                z4 = false;
            }
            this.f52184a.setVisibility(0);
            this.f52193j.setText(this.f52201r.get(0).getShowName());
            this.f52187d.setImageBitmap(BitmapFactory.decodeFile(this.f52201r.get(0).getIconFile()));
            this.f52190g.setText(this.f52201r.get(0).getUpdate_time());
            if (z3) {
                this.f52185b.setVisibility(0);
                this.f52194k.setText(this.f52201r.get(1).getShowName());
                this.f52188e.setImageBitmap(BitmapFactory.decodeFile(this.f52201r.get(1).getIconFile()));
                this.f52191h.setText(this.f52201r.get(1).getUpdate_time());
            }
            if (z4) {
                this.f52186c.setVisibility(0);
                this.f52195l.setText(this.f52201r.get(2).getShowName());
                this.f52189f.setImageBitmap(BitmapFactory.decodeFile(this.f52201r.get(2).getIconFile()));
                this.f52192i.setText(this.f52201r.get(2).getUpdate_time());
            }
            if (this.f52199p != null) {
                for (int i2 = 0; i2 < this.f52201r.size(); i2++) {
                    if (this.f52199p.getShowName().equals(this.f52201r.get(i2).getShowName())) {
                        p(i2);
                        return;
                    }
                }
            }
        }

        private void o(File file, File[] fileArr, String str) {
            for (File file2 : fileArr) {
                String name = file2.getName();
                if (name.equals(file.getName() + str + "1")) {
                    ArchiveBean archiveBean = new ArchiveBean();
                    archiveBean.setRecordFile(name);
                    archiveBean.setIconFile(this.f52202s + net.lingala.zip4j.util.e.F0 + name + ".png");
                    archiveBean.setFileTime(file2.lastModified());
                    archiveBean.setUpdate_time(k(file2.lastModified()));
                    this.f52201r.add(archiveBean);
                }
                if (name.equals(file.getName() + str + PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                    ArchiveBean archiveBean2 = new ArchiveBean();
                    archiveBean2.setRecordFile(name);
                    archiveBean2.setIconFile(this.f52202s + net.lingala.zip4j.util.e.F0 + name + ".png");
                    archiveBean2.setUpdate_time(k(file2.lastModified()));
                    archiveBean2.setFileTime(file2.lastModified());
                    this.f52201r.add(archiveBean2);
                }
                if (name.equals(file.getName() + str + "3")) {
                    ArchiveBean archiveBean3 = new ArchiveBean();
                    archiveBean3.setRecordFile(name);
                    archiveBean3.setIconFile(this.f52202s + net.lingala.zip4j.util.e.F0 + name + ".png");
                    archiveBean3.setUpdate_time(k(file2.lastModified()));
                    archiveBean3.setFileTime(file2.lastModified());
                    this.f52201r.add(archiveBean3);
                }
            }
            Collections.sort(this.f52201r, new d());
            for (int i2 = 0; i2 < this.f52201r.size(); i2++) {
                this.f52201r.get(i2).setShowName("存档" + (this.f52201r.size() - i2));
            }
        }

        private void p(int i2) {
            if (i2 == 0) {
                this.f52184a.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
                this.f52185b.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f52186c.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f52193j.setTextColor(a.f52171v);
                this.f52194k.setTextColor(a.f52172w);
                this.f52195l.setTextColor(a.f52172w);
                this.f52190g.setTextColor(a.f52171v);
                this.f52191h.setTextColor(a.f52172w);
                this.f52192i.setTextColor(a.f52172w);
                this.f52196m.setVisibility(0);
                this.f52197n.setVisibility(8);
                this.f52198o.setVisibility(8);
            } else if (i2 == 1) {
                this.f52184a.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f52185b.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
                this.f52186c.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f52193j.setTextColor(a.f52172w);
                this.f52194k.setTextColor(a.f52171v);
                this.f52195l.setTextColor(a.f52172w);
                this.f52190g.setTextColor(a.f52172w);
                this.f52191h.setTextColor(a.f52171v);
                this.f52192i.setTextColor(a.f52172w);
                this.f52196m.setVisibility(8);
                this.f52197n.setVisibility(0);
                this.f52198o.setVisibility(8);
            } else if (i2 != 2) {
            } else {
                this.f52184a.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f52185b.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f52186c.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
                this.f52193j.setTextColor(a.f52172w);
                this.f52194k.setTextColor(a.f52172w);
                this.f52195l.setTextColor(a.f52171v);
                this.f52190g.setTextColor(a.f52172w);
                this.f52191h.setTextColor(a.f52172w);
                this.f52192i.setTextColor(a.f52171v);
                this.f52196m.setVisibility(8);
                this.f52197n.setVisibility(8);
                this.f52198o.setVisibility(0);
            }
        }

        boolean i(String str) {
            DownloadTask B = g1.f.G().B(str);
            if (B == null) {
                return false;
            }
            j(B);
            if (this.f52201r.size() <= 0) {
                this.f52203t = false;
                return false;
            }
            this.f52203t = true;
            m();
            return true;
        }

        void j(DownloadTask downloadTask) {
            File[] listFiles;
            this.f52201r = new ArrayList();
            this.f52202s = f0.s(downloadTask.getGameZipPath(), Integer.parseInt(downloadTask.getRomType()));
            File file = new File(this.f52202s);
            if (!file.exists()) {
                file = new File(downloadTask.getGameZipPath()).getParentFile();
                this.f52202s = file.getAbsolutePath();
            }
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                o(file, listFiles, f52183z);
            }
        }

        public boolean n() {
            return this.f52203t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52176d = 1;
            a.this.f52175c.W(a.this.f52176d);
            a.this.w();
        }
    }

    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public static class b0 implements y {
        @Override // com.join.mgps.socket.fight.arena.a.y
        public void A0(int i2, String str) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void C(int i2) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void L(String str) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void P() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void W(int i2) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void X(ArchiveBean archiveBean, String str) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void i0(RoomSeatState roomSeatState, int i2) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void n0(RoomPosition roomPosition, int i2) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void o0(RoomPosition roomPosition) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void t() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void w0(int i2, int i4, Object obj) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void z(int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52176d = 2;
            a.this.f52175c.W(a.this.f52176d);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (a.this.f52176d != 0) {
                a.this.f52175c.W(a.this.f52176d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f52216a;

        e(BattleChallengeConfig battleChallengeConfig) {
            this.f52216a = battleChallengeConfig;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.z(this.f52216a.getBattleChallengeCopper()[0]);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f52218a;

        f(BattleChallengeConfig battleChallengeConfig) {
            this.f52218a = battleChallengeConfig;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.z(this.f52218a.getBattleChallengeCopper()[1]);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f52220a;

        g(BattleChallengeConfig battleChallengeConfig) {
            this.f52220a = battleChallengeConfig;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.z(this.f52220a.getBattleChallengeCopper()[2]);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f52222a;

        h(BattleChallengeConfig battleChallengeConfig) {
            this.f52222a = battleChallengeConfig;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.z(this.f52222a.getBattleChallengeCopper()[3]);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomPosition f52224a;

        i(RoomPosition roomPosition) {
            this.f52224a = roomPosition;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.o0(this.f52224a);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomPosition f52226a;

        j(RoomPosition roomPosition) {
            this.f52226a = roomPosition;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.o0(this.f52226a);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomPosition f52229a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52230b;

        l(RoomPosition roomPosition, int i2) {
            this.f52229a = roomPosition;
            this.f52230b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.n0(this.f52229a, this.f52230b);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomSeatState f52232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52233b;

        m(RoomSeatState roomSeatState, int i2) {
            this.f52232a = roomSeatState;
            this.f52233b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.i0(this.f52232a, this.f52233b);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class n implements DialogInterface.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f52235a;

        n(String str) {
            this.f52235a = str;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            a.this.f52175c.L(this.f52235a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.P();
        }
    }

    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52239a;

        q(int i2) {
            this.f52239a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f52175c != null) {
                a.this.f52175c.C(this.f52239a);
            }
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f52175c != null) {
                a.this.f52175c.t();
            }
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f52175c != null) {
                a.this.f52175c.t();
            }
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52244a;

        u(int i2) {
            this.f52244a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.w0(100, this.f52244a, null);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class v implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52246a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f52247b;

        v(int i2, Object obj) {
            this.f52246a = i2;
            this.f52247b = obj;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.w0(101, this.f52246a, this.f52247b);
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52250a;

        x(int i2) {
            this.f52250a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f52175c.i0(RoomSeatState.REMOVE, this.f52250a);
            a.this.w();
        }
    }

    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public interface y {
        public static final int L = 1;
        public static final int M = 2;
        public static final int N = 100;
        public static final int O = 101;

        void A0(int i2, String str);

        void C(int i2);

        void L(String str);

        void P();

        void W(int i2);

        void X(ArchiveBean archiveBean, String str);

        void i0(RoomSeatState roomSeatState, int i2);

        void n0(RoomPosition roomPosition, int i2);

        void o0(RoomPosition roomPosition);

        void t();

        void w0(int i2, int i4, Object obj);

        void z(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ArenaDialogBuilder.java */
    /* loaded from: classes4.dex */
    public final class z implements DialogInterface.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        private String f52252a;

        public z(String str) {
            this.f52252a = str;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            a.this.f52175c.L(this.f52252a);
        }
    }

    public a(Activity activity, y yVar) {
        this.f52174b = activity;
        this.f52175c = yVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(View view, int i2, int i4, int i5) {
        this.f52173a.setContentView(view);
        Window window = this.f52173a.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (i4 == 0) {
            i4 = -1;
        }
        attributes.width = i4;
        if (i5 == 0) {
            i5 = -1;
        }
        attributes.height = i5;
        window.setGravity(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(View view) {
        view.findViewById(R.id.iv_close).setOnClickListener(this.f52178f);
    }

    private void l(Object... objArr) {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_area_error_hint, (ViewGroup) null);
        int intValue = ((Integer) objArr[0]).intValue();
        int intValue2 = ((Integer) objArr[1]).intValue();
        Button button = (Button) inflate.findViewById(R.id.dialog_button_sure);
        Button button2 = (Button) inflate.findViewById(R.id.dialog_button_cancle);
        Button button3 = (Button) inflate.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) inflate.findViewById(R.id.dialog_content);
        TextView textView2 = (TextView) inflate.findViewById(R.id.tip_title);
        View findViewById = inflate.findViewById(R.id.iv_close);
        String str = (String) objArr[2];
        if (d2.i(str)) {
            textView.setText(str);
        }
        if (intValue == 257) {
            button.setText((String) objArr[3]);
            button.setVisibility(0);
            button2.setVisibility(8);
            button3.setVisibility(8);
            button.setOnClickListener(new r());
        } else if (intValue == 258) {
            textView2.setText("系统提示");
            findViewById.setVisibility(0);
            button.setText((String) objArr[3]);
            button.setVisibility(0);
            button2.setVisibility(8);
            button3.setVisibility(8);
            button.setOnClickListener(new s());
            this.f52173a.setCancelable(false);
            findViewById.setOnClickListener(new t());
        } else {
            button.setVisibility(8);
            button2.setVisibility(0);
            button3.setVisibility(0);
            button2.setText((String) objArr[3]);
            button2.setOnClickListener(new u(intValue2));
            Object obj = objArr[5];
            button3.setText((String) objArr[4]);
            button3.setOnClickListener(new v(intValue2, obj));
        }
        B(inflate, 17, 0, 0);
    }

    private void m(Object... objArr) {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_gameroom_kick, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.tv_kickinfo)).setText((String) objArr[0]);
        this.f52173a.setOnDismissListener(new z(f52164o));
        k(inflate);
        B(inflate, 17, 0, 0);
    }

    private void n(Object... objArr) {
        KickInfo kickInfo = (KickInfo) objArr[0];
        int intValue = ((Integer) objArr[1]).intValue();
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_kickout_room_info, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_title);
        if (!kickInfo.getIsVIP()) {
            textView.setText("把\"" + kickInfo.getNickname() + "\"踢出房间\n需要消耗" + kickInfo.getCopper() + "铜板,您确定要踢出嘛？");
        } else {
            textView.setText("把\"" + kickInfo.getNickname() + "\"踢出房间\n由于对方是VIP用户\n需要消耗" + kickInfo.getCopper() + "铜板 您确定要踢出嘛？");
        }
        inflate.findViewById(R.id.btn_cancel).setOnClickListener(new w());
        inflate.findViewById(R.id.btn_ok).setOnClickListener(new x(intValue));
        k(inflate);
        B(inflate, 17, 0, 0);
    }

    private void o() {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_leave_room, (ViewGroup) null);
        inflate.findViewById(R.id.btnLeave).setOnClickListener(new o());
        k(inflate);
        B(inflate, 17, 0, 0);
    }

    private void p(Object... objArr) {
        this.f52177e = new a0(this.f52174b, objArr);
    }

    private void q(Object... objArr) {
        String str = (String) objArr[0];
        RoomSeatState roomSeatState = (RoomSeatState) objArr[1];
        int intValue = ((Integer) objArr[2]).intValue();
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_game_room_seat, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(R.id.btn_position);
        ((TextView) inflate.findViewById(R.id.tv_position)).setText(str);
        if (roomSeatState == RoomSeatState.OPEN) {
            button.setText("开启位置");
        } else if (roomSeatState == RoomSeatState.CLOSE) {
            button.setText("关闭位置");
        } else if (roomSeatState == RoomSeatState.SEAT) {
            button.setText("坐下");
        } else if (roomSeatState == RoomSeatState.REPORT) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(com.join.mgps.Util.b0.a(this.f52174b, 286.0f), com.join.mgps.Util.b0.a(this.f52174b, 134.0f));
            layoutParams.addRule(13);
            ((RelativeLayout) inflate.findViewById(R.id.rl_main)).setLayoutParams(layoutParams);
            Button button2 = (Button) inflate.findViewById(R.id.btn_report);
            button2.setVisibility(0);
            button2.setOnClickListener(new i((RoomPosition) objArr[3]));
            button.setVisibility(8);
        } else if (roomSeatState == RoomSeatState.REMOVE_AND_REPORT) {
            RoomPosition roomPosition = (RoomPosition) objArr[3];
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(com.join.mgps.Util.b0.a(this.f52174b, 286.0f), com.join.mgps.Util.b0.a(this.f52174b, 180.0f));
            layoutParams2.addRule(13);
            ((RelativeLayout) inflate.findViewById(R.id.rl_main)).setLayoutParams(layoutParams2);
            Button button3 = (Button) inflate.findViewById(R.id.btn_report);
            button3.setVisibility(0);
            button3.setOnClickListener(new j(roomPosition));
            button.setOnClickListener(new l(roomPosition, intValue));
            button.setTextColor(Color.parseColor("#FF4235"));
            button.setText("踢出房间");
            button.setBackgroundResource(R.drawable.bg_btn_border_red_four);
        }
        if (roomSeatState != RoomSeatState.REMOVE_AND_REPORT && roomSeatState != RoomSeatState.REPORT) {
            button.setOnClickListener(new m(roomSeatState, intValue));
        }
        k(inflate);
        B(inflate, 17, 0, 0);
    }

    private void r(Object... objArr) {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_set_challenge_gold, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.ll_set_challenge_gold);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.ll_info);
        BattleChallengeConfig battleChallengeConfig = (BattleChallengeConfig) objArr[0];
        if (battleChallengeConfig.getIsBattle()) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(8);
            int intValue = ((Integer) objArr[1]).intValue();
            ((TextView) inflate.findViewById(R.id.tv_current_copper)).setText(Html.fromHtml("你的账号铜板数:  <font color=#000000>" + battleChallengeConfig.getUserCopper() + "</font>"));
            Button button = (Button) inflate.findViewById(R.id.btn_1);
            button.setText(battleChallengeConfig.getBattleChallengeCopper()[0] + "\n铜板");
            button.setOnClickListener(new e(battleChallengeConfig));
            Button button2 = (Button) inflate.findViewById(R.id.btn_2);
            button2.setText(battleChallengeConfig.getBattleChallengeCopper()[1] + "\n铜板");
            button2.setOnClickListener(new f(battleChallengeConfig));
            Button button3 = (Button) inflate.findViewById(R.id.btn_3);
            button3.setText(battleChallengeConfig.getBattleChallengeCopper()[2] + "\n铜板");
            button3.setOnClickListener(new g(battleChallengeConfig));
            Button button4 = (Button) inflate.findViewById(R.id.btn_4);
            button4.setText(battleChallengeConfig.getBattleChallengeCopper()[3] + "\n铜板");
            button4.setOnClickListener(new h(battleChallengeConfig));
            if (intValue == battleChallengeConfig.getBattleChallengeCopper()[0]) {
                button.setTextColor(-1);
                button.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            } else if (intValue == battleChallengeConfig.getBattleChallengeCopper()[1]) {
                button2.setTextColor(-1);
                button2.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            } else if (intValue == battleChallengeConfig.getBattleChallengeCopper()[2]) {
                button3.setTextColor(-1);
                button3.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            } else if (intValue == battleChallengeConfig.getBattleChallengeCopper()[3]) {
                button4.setTextColor(-1);
                button4.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            }
        } else {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(0);
            ((TextView) inflate.findViewById(R.id.tv_info_title_1)).setText("【" + ((String) objArr[1]) + "】");
            ((TextView) inflate.findViewById(R.id.tv_info_title_2)).setText(Html.fromHtml("挑战金<font color=#3CA4FD>" + battleChallengeConfig.getFixChallengeCopper() + "铜板</font>"));
            ((TextView) inflate.findViewById(R.id.tv_info_detail)).setText("1、进入游戏后扣除挑战金\n2、每次投币都扣除挑战金\n3、达到" + battleChallengeConfig.getChallengeScore() + " 分返还挑战金\n4、完整通关后有随机铜板奖励");
        }
        k(inflate);
        B(inflate, 17, 0, 0);
    }

    private void s(Object... objArr) {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_invite_pwd, (ViewGroup) null);
        String str = (String) objArr[0];
        ((TextView) inflate.findViewById(R.id.tv_pwd_info)).setText(str);
        inflate.findViewById(R.id.btn_copy).setOnClickListener(new View$OnClickListenerC0226a(objArr, ((Integer) objArr[1]).intValue(), str));
        k(inflate);
        B(inflate, 17, 0, 0);
    }

    private void t() {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.layout_invite_battle, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.qq);
        View findViewById2 = inflate.findViewById(R.id.wechat);
        this.f52176d = 0;
        findViewById.setOnClickListener(new b());
        findViewById2.setOnClickListener(new c());
        this.f52173a.setOnDismissListener(new d());
        k(inflate);
        B(inflate, 17, this.f52174b.getResources().getDimensionPixelOffset(R.dimen.wdp526), this.f52174b.getResources().getDimensionPixelOffset(R.dimen.wdp352));
    }

    private void u(Object... objArr) {
        int intValue = ((Integer) objArr[0]).intValue();
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_room_srv_play_mode_tip, (ViewGroup) null);
        p2.b(inflate, R.id.iv_close).setOnClickListener(new k());
        TextView textView = (TextView) p2.b(inflate, R.id.tv_top);
        Button button = (Button) p2.b(inflate, R.id.btnOk);
        if (intValue == 1) {
            textView.setText("即将关闭流畅模式");
            button.setText("确定关闭");
        } else {
            textView.setText("即将开启流畅模式");
            button.setText("确定开启");
        }
        button.setOnClickListener(new q(intValue == 1 ? 0 : 1));
        B(inflate, 17, 0, 0);
    }

    private void v(String str, Object... objArr) {
        Dialog dialog = new Dialog(this.f52174b, R.style.newtrans_no_floating_dialog);
        this.f52173a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f52173a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(this.f52174b).inflate(R.layout.dialog_game_room_toast, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.tv_toast_info)).setText((String) objArr[0]);
        this.f52173a.setOnDismissListener(new n(str));
        B(inflate, 17, com.join.mgps.Util.b0.a(this.f52174b, 273.0f), com.join.mgps.Util.b0.a(this.f52174b, 54.0f));
    }

    public boolean A() {
        a0 a0Var = this.f52177e;
        if (a0Var != null) {
            return a0Var.f52207x;
        }
        return false;
    }

    public synchronized void C() {
        this.f52173a.show();
    }

    public synchronized void D(String str, Object... objArr) {
        w();
        if (str.equals(f52159j)) {
            l(objArr);
            this.f52173a.show();
        } else if (str.equals(f52165p)) {
            n(objArr);
            this.f52173a.show();
        } else if (str.equals(f52160k)) {
            o();
            this.f52173a.show();
        } else {
            if (!str.equals(f52161l) && !str.equals(f52162m)) {
                if (str.equals(f52163n)) {
                    p(objArr);
                    return;
                } else if (str.equals(f52164o)) {
                    m(objArr);
                    this.f52173a.show();
                    return;
                } else if (str.equals(f52166q)) {
                    q(objArr);
                    this.f52173a.show();
                    return;
                } else if (str.equals(f52167r)) {
                    r(objArr);
                    this.f52173a.show();
                    return;
                } else if (str.equals(f52168s)) {
                    t();
                    this.f52173a.show();
                    return;
                } else if (str.equals(f52169t)) {
                    s(objArr);
                    this.f52173a.show();
                    return;
                } else if (str.equals(f52170u)) {
                    u(objArr);
                    this.f52173a.show();
                    return;
                } else {
                    return;
                }
            }
            v(str, objArr);
            this.f52173a.show();
        }
    }

    public synchronized void w() {
        Dialog dialog = this.f52173a;
        if (dialog != null && dialog.isShowing()) {
            this.f52173a.dismiss();
        }
    }

    public Dialog x() {
        return this.f52173a;
    }

    public synchronized boolean y() {
        Dialog dialog = this.f52173a;
        if (dialog != null) {
            return dialog.isShowing();
        }
        return false;
    }

    public boolean z() {
        a0 a0Var = this.f52177e;
        if (a0Var != null) {
            return a0Var.n();
        }
        return false;
    }
}
