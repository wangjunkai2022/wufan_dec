package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DetailResultBean;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CheckInviteDialogActivity_ extends CheckInviteDialogActivity implements g3.a, i3.a, i3.b {

    /* renamed from: y0  reason: collision with root package name */
    public static final String f28492y0 = "data";

    /* renamed from: w0  reason: collision with root package name */
    private final i3.c f28493w0 = new i3.c();

    /* renamed from: x0  reason: collision with root package name */
    private final Map<Class<?>, Object> f28494x0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.W0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CheckInviteDialogActivity_.super.O0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f28498a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, DetailResultBean detailResultBean) {
            super(str, j4, str2);
            this.f28498a = detailResultBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CheckInviteDialogActivity_.super.H0(this.f28498a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CheckInviteDialogActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f28505a;

        j(GameRoom gameRoom) {
            this.f28505a = gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.V0(this.f28505a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f28507a;

        k(ArenaResponse arenaResponse) {
            this.f28507a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.P0(this.f28507a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28509a;

        l(String str) {
            this.f28509a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.showToast(this.f28509a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28511a;

        m(int i2) {
            this.f28511a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.S0(this.f28511a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    public static class o extends org.androidannotations.api.builder.a<o> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28514a;

        public o(Context context) {
            super(context, CheckInviteDialogActivity_.class);
        }

        public o a(String str) {
            return (o) super.extra("data", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28514a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public o(Fragment fragment) {
            super(fragment.getActivity(), CheckInviteDialogActivity_.class);
            this.f28514a = fragment;
        }
    }

    public static o i1(Context context) {
        return new o(context);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("data")) {
            return;
        }
        this.f28457a = extras.getString("data");
    }

    public static o j1(Fragment fragment) {
        return new o(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void H0(DetailResultBean detailResultBean) {
        org.androidannotations.api.a.l(new d("", 0L, "", detailResultBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void N0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void O0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void P0(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new k(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void S0(int i2) {
        org.androidannotations.api.b.e("", new m(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void V0(GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new j(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void W0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28494x0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void getData() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28493w0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.net_whole_invite_dialog);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28458b = (TextView) aVar.internalFindViewById(R.id.dialog_content);
        this.f28459c = (Button) aVar.internalFindViewById(R.id.dialog_button_cancle);
        this.f28460d = (Button) aVar.internalFindViewById(R.id.dialog_button_ok);
        this.f28461e = (SimpleDraweeView) aVar.internalFindViewById(R.id.romImgIv);
        this.f28462f = (TextView) aVar.internalFindViewById(R.id.romNameTv);
        this.f28463g = (TextView) aVar.internalFindViewById(R.id.romSizeTv);
        this.f28464h = (SimpleDraweeView) aVar.internalFindViewById(R.id.plugImgIv);
        this.f28465i = (TextView) aVar.internalFindViewById(R.id.plugNameTv);
        this.f28466j = (TextView) aVar.internalFindViewById(R.id.plugSizeTv);
        this.f28477t = (LinearLayout) aVar.internalFindViewById(R.id.game_lay);
        this.f28478u = (LinearLayout) aVar.internalFindViewById(R.id.rom_lay);
        this.f28479v = (LinearLayout) aVar.internalFindViewById(R.id.plug_lay);
        this.f28480w = (LinearLayout) aVar.internalFindViewById(R.id.loading_lay);
        this.f28481x = (TextView) aVar.internalFindViewById(R.id.dialog_content_2);
        this.A = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        Button button = this.f28459c;
        if (button != null) {
            button.setOnClickListener(new f());
        }
        Button button2 = this.f28460d;
        if (button2 != null) {
            button2.setOnClickListener(new g());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new h());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new i());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28494x0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28493w0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new l(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28493w0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28493w0.a(this);
    }
}
