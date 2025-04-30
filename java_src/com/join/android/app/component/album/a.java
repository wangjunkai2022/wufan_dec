package com.join.android.app.component.album;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.join.android.app.component.album.lib.b;
import com.join.android.app.mgsim.wufun.R;
import java.util.List;
/* compiled from: AlbumPopupWindow.java */
/* loaded from: classes.dex */
public class a extends PopupWindow {

    /* renamed from: f  reason: collision with root package name */
    public static e f17398f;

    /* renamed from: a  reason: collision with root package name */
    private final Context f17399a;

    /* renamed from: b  reason: collision with root package name */
    private final View f17400b;

    /* renamed from: c  reason: collision with root package name */
    private ListView f17401c;

    /* renamed from: d  reason: collision with root package name */
    private com.join.android.app.component.album.lib.b f17402d;

    /* renamed from: e  reason: collision with root package name */
    private int f17403e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AlbumPopupWindow.java */
    /* renamed from: com.join.android.app.component.album.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0134a implements View.OnClickListener {
        View$OnClickListenerC0134a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AlbumPopupWindow.java */
    /* loaded from: classes.dex */
    public class b implements b.g {

        /* compiled from: AlbumPopupWindow.java */
        /* renamed from: com.join.android.app.component.album.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0135a implements AdapterView.OnItemClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f17406a;

            C0135a(Object obj) {
                this.f17406a = obj;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
                e eVar = a.f17398f;
                if (eVar != null) {
                    eVar.a((com.join.android.app.component.album.lib.a) ((List) this.f17406a).get(i2));
                }
            }
        }

        b() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void a() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void b(Object obj) {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void c(Object obj) {
            com.join.android.app.component.album.adapter.a aVar = new com.join.android.app.component.album.adapter.a(a.this.f17399a, (List) obj);
            a.this.f17401c.setAdapter((ListAdapter) aVar);
            aVar.notifyDataSetChanged();
            a.this.f17401c.setOnItemClickListener(new C0135a(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AlbumPopupWindow.java */
    /* loaded from: classes.dex */
    public class c implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f17408a;

        c(List list) {
            this.f17408a = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            e eVar = a.f17398f;
            if (eVar != null) {
                eVar.a((com.join.android.app.component.album.lib.a) this.f17408a.get(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AlbumPopupWindow.java */
    /* loaded from: classes.dex */
    public class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                a.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* compiled from: AlbumPopupWindow.java */
    /* loaded from: classes.dex */
    public interface e {
        void a(com.join.android.app.component.album.lib.a aVar);
    }

    public a(Context context, View view, int i2, int i4, com.join.android.app.component.album.lib.b bVar) {
        super(view, i2, i4, true);
        this.f17399a = context;
        this.f17400b = view;
        this.f17402d = bVar;
        e();
        g();
        d();
    }

    private void d() {
        this.f17401c = (ListView) this.f17400b.findViewById(R.id.list);
        this.f17400b.findViewById(R.id.main).setOnClickListener(new View$OnClickListenerC0134a());
        double d4 = this.f17403e;
        Double.isNaN(d4);
        ((RelativeLayout.LayoutParams) this.f17401c.getLayoutParams()).height = (int) (d4 * 0.6d);
        com.join.android.app.component.album.lib.b bVar = this.f17402d;
        if (bVar == null) {
            com.join.android.app.component.album.lib.b bVar2 = new com.join.android.app.component.album.lib.b(this.f17399a);
            this.f17402d = bVar2;
            bVar2.l(new b());
        } else {
            List<com.join.android.app.component.album.lib.a> f4 = bVar.f();
            com.join.android.app.component.album.adapter.a aVar = new com.join.android.app.component.album.adapter.a(this.f17399a, f4);
            this.f17401c.setAdapter((ListAdapter) aVar);
            aVar.notifyDataSetChanged();
            this.f17401c.setOnItemClickListener(new c(f4));
        }
        c();
    }

    private void e() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) this.f17399a).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f17403e = displayMetrics.heightPixels;
    }

    private void g() {
        setBackgroundDrawable(new BitmapDrawable());
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new d());
    }

    public void c() {
    }

    public void f(e eVar) {
        f17398f = eVar;
    }

    public void h() {
        List<com.join.android.app.component.album.lib.a> f4 = this.f17402d.f();
        com.join.android.app.component.album.adapter.a aVar = (com.join.android.app.component.album.adapter.a) this.f17401c.getAdapter();
        aVar.c(f4);
        aVar.notifyDataSetChanged();
    }
}
