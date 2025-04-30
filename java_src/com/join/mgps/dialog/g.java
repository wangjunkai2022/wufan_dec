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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.fragment.roomlist.c;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ArenaCreateDialog.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47666a;

    /* renamed from: b  reason: collision with root package name */
    Activity f47667b;

    /* renamed from: c  reason: collision with root package name */
    ListView f47668c;

    /* renamed from: d  reason: collision with root package name */
    c.m f47669d;

    /* renamed from: e  reason: collision with root package name */
    int f47670e = 1;

    /* renamed from: f  reason: collision with root package name */
    int f47671f = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaCreateDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.b();
        }
    }

    /* compiled from: ArenaCreateDialog.java */
    /* loaded from: classes3.dex */
    class b implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f47673a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f47674b;

        b(List list, boolean z3) {
            this.f47673a = list;
            this.f47674b = z3;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (((c) this.f47673a.get(i2)).f47677b == g.this.f47670e) {
                return;
            }
            GameConfig gameConfig = ((c) this.f47673a.get(i2)).f47676a;
            if (!this.f47674b) {
                g.this.b();
                g.this.f47669d.d(gameConfig);
                return;
            }
            g.this.b();
            if (gameConfig.getElite_match_switch() == 1) {
                g.this.f47669d.d(gameConfig);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArenaCreateDialog.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        GameConfig f47676a;

        /* renamed from: b  reason: collision with root package name */
        int f47677b;

        /* renamed from: c  reason: collision with root package name */
        boolean f47678c;

        c() {
        }
    }

    /* compiled from: ArenaCreateDialog.java */
    /* loaded from: classes3.dex */
    private class d extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<c> f47680a;

        /* compiled from: ArenaCreateDialog.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            TextView f47682a;

            /* renamed from: b  reason: collision with root package name */
            View f47683b;

            a() {
            }
        }

        /* compiled from: ArenaCreateDialog.java */
        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            TextView f47685a;

            b() {
            }
        }

        public d(List<c> list) {
            this.f47680a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f47680a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f47680a.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return this.f47680a.get(i2).f47677b;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i2);
            a aVar = null;
            if (view == null) {
                if (itemViewType == g.this.f47670e) {
                    view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_arena_create_title, (ViewGroup) null);
                    b bVar = new b();
                    bVar.f47685a = (TextView) view.findViewById(R.id.tv_title);
                    view.setTag(bVar);
                } else {
                    view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_arena_room_sort, (ViewGroup) null);
                    aVar = new a();
                    aVar.f47682a = (TextView) view.findViewById(R.id.tv_info);
                    View findViewById = view.findViewById(R.id.emptyView);
                    aVar.f47683b = findViewById;
                    findViewById.setVisibility(0);
                    view.setTag(aVar);
                }
            } else if (itemViewType == g.this.f47670e) {
                b bVar2 = (b) view.getTag();
            } else {
                aVar = (a) view.getTag();
            }
            c cVar = this.f47680a.get(i2);
            if (itemViewType != g.this.f47670e) {
                aVar.f47682a.setText(cVar.f47676a.getGame_name());
                aVar.f47682a.setBackgroundResource(R.drawable.room_sort_gray_border);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public g(Activity activity, c.m mVar) {
        this.f47669d = mVar;
        this.f47667b = activity;
        c(activity);
    }

    private c a(GameConfig gameConfig, int i2, boolean z3) {
        c cVar = new c();
        cVar.f47677b = i2;
        cVar.f47676a = gameConfig;
        cVar.f47678c = z3;
        return cVar;
    }

    public void b() {
        this.f47666a.dismiss();
    }

    void c(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f47666a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f47666a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_arena_create, (ViewGroup) null);
        inflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f47668c = (ListView) inflate.findViewById(R.id.list);
        this.f47666a.setContentView(inflate);
        Window window = this.f47666a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void d(List<GameConfig> list, boolean z3) {
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!z3) {
            for (GameConfig gameConfig : list) {
                if (!z3) {
                    arrayList.add(a(gameConfig, this.f47671f, false));
                }
            }
        } else {
            ArrayList<GameConfig> arrayList2 = new ArrayList();
            ArrayList<GameConfig> arrayList3 = new ArrayList();
            for (GameConfig gameConfig2 : list) {
                if (gameConfig2.getElite_match_switch() == 1) {
                    arrayList2.add(gameConfig2);
                } else {
                    arrayList3.add(gameConfig2);
                }
            }
            if (arrayList2.size() > 0) {
                for (GameConfig gameConfig3 : arrayList2) {
                    arrayList.add(a(gameConfig3, this.f47671f, true));
                }
            }
            if (arrayList3.size() > 0) {
                arrayList.add(a(null, this.f47670e, true));
                for (GameConfig gameConfig4 : arrayList3) {
                    arrayList.add(a(gameConfig4, this.f47671f, true));
                }
            }
        }
        this.f47668c.setAdapter((ListAdapter) new d(arrayList));
        this.f47668c.setOnItemClickListener(new b(arrayList, z3));
    }

    public void e() {
        if (this.f47666a.isShowing()) {
            return;
        }
        this.f47666a.show();
    }
}
