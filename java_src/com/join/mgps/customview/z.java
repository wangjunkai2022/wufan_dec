package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MyGameFilterPopupWindow.java */
/* loaded from: classes3.dex */
public class z extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private Context f47264a;

    /* renamed from: b  reason: collision with root package name */
    private View f47265b;

    /* renamed from: c  reason: collision with root package name */
    public View f47266c;

    /* renamed from: d  reason: collision with root package name */
    View f47267d;

    /* renamed from: e  reason: collision with root package name */
    ListView f47268e;

    /* renamed from: f  reason: collision with root package name */
    BaseAdapter f47269f;

    /* renamed from: g  reason: collision with root package name */
    List<String> f47270g;

    /* renamed from: h  reason: collision with root package name */
    String f47271h;

    /* renamed from: i  reason: collision with root package name */
    d f47272i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                z.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return z.this.f47270g.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            if (i2 < z.this.f47270g.size()) {
                return z.this.f47270g.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            e eVar;
            if (view != null) {
                eVar = (e) view.getTag();
            } else {
                eVar = new e();
                view = LayoutInflater.from(z.this.f47264a).inflate(R.layout.pop_my_game_filter_item, (ViewGroup) null);
                eVar.f47276a = (TextView) view.findViewById(R.id.title);
                eVar.f47277b = view.findViewById(R.id.f17870r);
                eVar.f47278c = view.findViewById(R.id.rRect);
                eVar.f47279d = view.findViewById(R.id.line);
                view.setTag(eVar);
            }
            String str = (String) getItem(i2);
            eVar.f47276a.setText(str);
            if (!TextUtils.isEmpty(z.this.f47271h) && z.this.f47271h.equals(str)) {
                eVar.f47276a.setSelected(true);
                eVar.f47277b.setVisibility(0);
            } else {
                eVar.f47276a.setSelected(false);
                eVar.f47277b.setVisibility(4);
            }
            if (i2 == getCount() - 1) {
                eVar.f47279d.setVisibility(4);
            } else {
                eVar.f47279d.setVisibility(0);
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public class c implements Animation.AnimationListener {
        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            z.super.dismiss();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: MyGameFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a(String str);
    }

    /* compiled from: MyGameFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        public TextView f47276a;

        /* renamed from: b  reason: collision with root package name */
        public View f47277b;

        /* renamed from: c  reason: collision with root package name */
        public View f47278c;

        /* renamed from: d  reason: collision with root package name */
        public View f47279d;

        e() {
        }
    }

    public z(Context context) {
        super(context);
        this.f47270g = new ArrayList();
        this.f47264a = context;
        l();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(android.widget.AdapterView adapterView, View view, int i2, long j4) {
        String str = this.f47270g.get(i2);
        dismiss();
        d dVar = this.f47272i;
        if (dVar != null) {
            dVar.a(str);
        }
    }

    private void l() {
        setAnimationStyle(R.style.animationNone);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f47264a, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        loadAnimation.setDuration(100L);
        alphaAnimation.setDuration(100L);
        this.f47268e.startAnimation(loadAnimation);
        this.f47267d.startAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new c());
    }

    void e() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f47264a, R.anim.scale_in);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        loadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f47268e.startAnimation(loadAnimation);
        this.f47267d.startAnimation(alphaAnimation);
    }

    void f() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f47264a, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        loadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f47268e.startAnimation(loadAnimation);
        this.f47267d.startAnimation(alphaAnimation);
    }

    public d g() {
        return this.f47272i;
    }

    void h() {
        View inflate = LayoutInflater.from(this.f47264a).inflate(R.layout.pop_my_game_filter, (ViewGroup) null);
        this.f47265b = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        update();
        this.f47268e = (ListView) this.f47265b.findViewById(R.id.list);
        View findViewById = this.f47265b.findViewById(R.id.bg);
        this.f47267d = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z.this.i(view);
            }
        });
        b bVar = new b();
        this.f47269f = bVar;
        this.f47268e.setAdapter((ListAdapter) bVar);
        this.f47268e.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.customview.y
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(android.widget.AdapterView adapterView, View view, int i2, long j4) {
                z.this.j(adapterView, view, i2, j4);
            }
        });
    }

    public void k(d dVar) {
        this.f47272i = dVar;
    }

    public void m(View view, List<String> list, String str) {
        showAsDropDown(view);
        this.f47270g.clear();
        if (list != null && list.size() > 0) {
            this.f47270g.addAll(list);
        }
        this.f47269f.notifyDataSetChanged();
        this.f47271h = str;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        this.f47266c = view;
        if (Build.VERSION.SDK_INT == 24) {
            try {
                Rect rect = new Rect();
                this.f47266c.getGlobalVisibleRect(rect);
                setHeight(this.f47266c.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        super.showAsDropDown(view);
        e();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        this.f47266c = view;
        super.showAtLocation(view, i2, i4, i5);
    }

    public z(Context context, View view, int i2, int i4) {
        super(view, i2, i4, true);
        this.f47270g = new ArrayList();
        this.f47264a = context;
        this.f47265b = view;
        l();
    }
}
