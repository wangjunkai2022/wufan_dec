package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.NewArenaMainActivty_;
import java.util.List;
/* compiled from: ArenaCreateDialog1.java */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47724a;

    /* renamed from: b  reason: collision with root package name */
    Activity f47725b;

    /* renamed from: c  reason: collision with root package name */
    ListView f47726c;

    /* renamed from: d  reason: collision with root package name */
    View f47727d;

    /* renamed from: e  reason: collision with root package name */
    View f47728e;

    /* renamed from: f  reason: collision with root package name */
    TextView f47729f;

    /* renamed from: g  reason: collision with root package name */
    c f47730g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaCreateDialog1.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ArenaCreateDialog1.java */
    /* loaded from: classes3.dex */
    public class b extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<DownloadTask> f47732a;

        /* compiled from: ArenaCreateDialog1.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            TextView f47734a;

            /* renamed from: b  reason: collision with root package name */
            View f47735b;

            a() {
            }
        }

        public b(List<DownloadTask> list) {
            this.f47732a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f47732a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f47732a.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_arena_room_sort, (ViewGroup) null);
                aVar = new a();
                aVar.f47734a = (TextView) view.findViewById(R.id.tv_info);
                View findViewById = view.findViewById(R.id.emptyView);
                aVar.f47735b = findViewById;
                findViewById.setVisibility(0);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            aVar.f47734a.setText(this.f47732a.get(i2).getShowName());
            aVar.f47734a.setBackgroundResource(R.drawable.room_sort_gray_border);
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* compiled from: ArenaCreateDialog1.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(DownloadTask downloadTask);
    }

    public j(Activity activity, c cVar) {
        this.f47730g = cVar;
        this.f47725b = activity;
        e(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        c();
        ((NewArenaMainActivty_.h) NewArenaMainActivty_.F1(view.getContext()).flags(67108864)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(List list, AdapterView adapterView, View view, int i2, long j4) {
        c cVar = this.f47730g;
        if (cVar != null) {
            cVar.a((DownloadTask) list.get(i2));
        }
        c();
    }

    public void c() {
        this.f47724a.dismiss();
    }

    public c d() {
        return this.f47730g;
    }

    void e(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f47724a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f47724a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_arena_create, (ViewGroup) null);
        inflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f47726c = (ListView) inflate.findViewById(R.id.list);
        this.f47727d = inflate.findViewById(R.id.noRecord);
        this.f47729f = (TextView) inflate.findViewById(R.id.tv_top);
        View findViewById = inflate.findViewById(R.id.tv2);
        this.f47728e = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.this.f(view);
            }
        });
        this.f47724a.setContentView(inflate);
        Window window = this.f47724a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void h(final List<DownloadTask> list, boolean z3) {
        if (list != null && list.size() != 0) {
            this.f47727d.setVisibility(8);
            this.f47726c.setVisibility(0);
            this.f47726c.setAdapter((ListAdapter) new b(list));
            this.f47726c.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.dialog.i
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i2, long j4) {
                    j.this.g(list, adapterView, view, i2, j4);
                }
            });
            return;
        }
        this.f47727d.setVisibility(0);
        this.f47726c.setVisibility(8);
        this.f47729f.setText("提示");
    }

    public void i(c cVar) {
        this.f47730g = cVar;
    }

    public void j() {
        if (this.f47724a.isShowing()) {
            return;
        }
        this.f47724a.show();
    }
}
