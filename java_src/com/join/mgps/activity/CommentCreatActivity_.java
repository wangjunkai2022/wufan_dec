package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CommentCreatActivity_ extends CommentCreatActivity implements g3.a, i3.a, i3.b {
    public static final String B = "commentId";
    public static final String C = "commentContent";
    public static final String D = "commentStars";
    public static final String E = "gameId";
    public static final String F = "gameType";
    public static final String G = "gameIsStart";
    public static final String H = "packageName";
    public static final String I = "isEdit";
    public static final String J = "phoneModel";
    public static final String K = "commentScoreSwitch";

    /* renamed from: n0  reason: collision with root package name */
    public static final String f29151n0 = "bespeakSwitch";

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f29152z = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentCreatActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentCreatActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29155a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ double f29156b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29157c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f29158d;

        c(int i2, double d4, String str, String str2) {
            this.f29155a = i2;
            this.f29156b = d4;
            this.f29157c = str;
            this.f29158d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.I0(this.f29155a, this.f29156b, this.f29157c, this.f29158d);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29160a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29161b;

        d(String str, boolean z3) {
            this.f29160a = str;
            this.f29161b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.J0(this.f29160a, this.f29161b);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f29163a;

        e(CommentResponse commentResponse) {
            this.f29163a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.K0(this.f29163a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29165a;

        f(String str) {
            this.f29165a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.showMessage(this.f29165a);
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f29167a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29168b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29169c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, float f4, String str3, String str4) {
            super(str, j4, str2);
            this.f29167a = f4;
            this.f29168b = str3;
            this.f29169c = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentCreatActivity_.super.N0(this.f29167a, this.f29168b, this.f29169c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentCreatActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class i extends org.androidannotations.api.builder.a<i> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29172a;

        public i(Context context) {
            super(context, CommentCreatActivity_.class);
        }

        public i a(int i2) {
            return (i) super.extra("bespeakSwitch", i2);
        }

        public i b(String str) {
            return (i) super.extra("commentContent", str);
        }

        public i c(String str) {
            return (i) super.extra("commentId", str);
        }

        public i d(String str) {
            return (i) super.extra("commentScoreSwitch", str);
        }

        public i e(float f4) {
            return (i) super.extra("commentStars", f4);
        }

        public i f(String str) {
            return (i) super.extra("gameId", str);
        }

        public i g(int i2) {
            return (i) super.extra("gameIsStart", i2);
        }

        public i h(String str) {
            return (i) super.extra("gameType", str);
        }

        public i i(boolean z3) {
            return (i) super.extra("isEdit", z3);
        }

        public i j(String str) {
            return (i) super.extra("packageName", str);
        }

        public i k(String str) {
            return (i) super.extra(CommentCreatActivity_.J, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29172a;
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

        public i(Fragment fragment) {
            super(fragment.getActivity(), CommentCreatActivity_.class);
            this.f29172a = fragment;
        }
    }

    public static i U0(Context context) {
        return new i(context);
    }

    public static i V0(Fragment fragment) {
        return new i(fragment);
    }

    private void init_(Bundle bundle) {
        this.f29145w = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commentId")) {
                this.f29133k = extras.getString("commentId");
            }
            if (extras.containsKey("commentContent")) {
                this.f29134l = extras.getString("commentContent");
            }
            if (extras.containsKey("commentStars")) {
                this.f29135m = extras.getFloat("commentStars");
            }
            if (extras.containsKey("gameId")) {
                this.f29136n = extras.getString("gameId");
            }
            if (extras.containsKey("gameType")) {
                this.f29137o = extras.getString("gameType");
            }
            if (extras.containsKey("gameIsStart")) {
                this.f29138p = extras.getInt("gameIsStart");
            }
            if (extras.containsKey("packageName")) {
                this.f29139q = extras.getString("packageName");
            }
            if (extras.containsKey("isEdit")) {
                this.f29140r = extras.getBoolean("isEdit");
            }
            if (extras.containsKey(J)) {
                this.f29141s = extras.getString(J);
            }
            if (extras.containsKey("commentScoreSwitch")) {
                this.f29142t = extras.getString("commentScoreSwitch");
            }
            if (extras.containsKey("bespeakSwitch")) {
                this.f29143u = extras.getInt("bespeakSwitch");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void H0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void I0(int i2, double d4, String str, String str2) {
        org.androidannotations.api.b.e("", new c(i2, d4, str, str2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void J0(String str, boolean z3) {
        org.androidannotations.api.b.e("", new d(str, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void K0(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new e(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void N0(float f4, String str, String str2) {
        org.androidannotations.api.a.l(new g("", 0L, "", f4, str, str2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29152z);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.comment_creat_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29124b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29125c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29126d = (TextView) aVar.internalFindViewById(R.id.textTopRight);
        this.f29127e = (MStarBar) aVar.internalFindViewById(R.id.mstarBar);
        this.f29128f = (LinearLayout) aVar.internalFindViewById(R.id.starLl);
        this.f29129g = (TextView) aVar.internalFindViewById(R.id.mstarBarTx);
        this.f29130h = (EditText) aVar.internalFindViewById(R.id.commentcreat_et);
        this.f29131i = (CheckBox) aVar.internalFindViewById(R.id.phoneModleCB);
        this.f29132j = (TextView) aVar.internalFindViewById(R.id.tvTips);
        ImageView imageView = this.f29124b;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        TextView textView = this.f29126d;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29152z.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29152z.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29152z.a(this);
    }
}
