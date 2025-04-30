package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;
import java.util.ArrayList;
/* compiled from: PostingSelectCoinsDialog.java */
/* loaded from: classes3.dex */
public class q1 {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47883a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47884b;

    /* renamed from: c  reason: collision with root package name */
    private GridView f47885c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<c> f47886d;

    /* renamed from: e  reason: collision with root package name */
    private d f47887e;

    /* renamed from: f  reason: collision with root package name */
    private PostingActivity.m f47888f;

    /* renamed from: g  reason: collision with root package name */
    private int f47889g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostingSelectCoinsDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q1.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostingSelectCoinsDialog.java */
    /* loaded from: classes3.dex */
    public class b implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f47891a;

        b(Activity activity) {
            this.f47891a = activity;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            int i4 = ((c) q1.this.f47886d.get(i2)).f47893a;
            if (i4 * 2 > q1.this.f47889g) {
                return;
            }
            Activity activity = this.f47891a;
            com.join.mgps.Util.a0.c0(activity).E(activity, i4);
            q1.this.f47888f.d(i4);
            q1.this.f47886d.clear();
            q1.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostingSelectCoinsDialog.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        int f47893a;

        /* renamed from: b  reason: collision with root package name */
        boolean f47894b;

        public c(int i2) {
            this.f47893a = i2;
        }

        public boolean a() {
            return this.f47894b;
        }

        public void b(boolean z3) {
            this.f47894b = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PostingSelectCoinsDialog.java */
    /* loaded from: classes3.dex */
    public class d extends BaseAdapter {

        /* compiled from: PostingSelectCoinsDialog.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            TextView f47897a;

            a() {
            }
        }

        private d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return q1.this.f47886d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return q1.this.f47886d.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_posting_slecte_coins, (ViewGroup) null);
                aVar = new a();
                aVar.f47897a = (TextView) view.findViewById(R.id.tv_value);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            c cVar = (c) q1.this.f47886d.get(i2);
            TextView textView = aVar.f47897a;
            textView.setText(cVar.f47893a + "\n铜板");
            if (cVar.f47893a * 2 > q1.this.f47889g) {
                aVar.f47897a.setTextColor(Color.parseColor("#a8a8a8"));
                aVar.f47897a.setBackgroundResource(R.drawable.bg_frame_a8a8a8);
            } else if (cVar.a()) {
                aVar.f47897a.setTextColor(-1);
                aVar.f47897a.setBackgroundResource(R.drawable.bg_border_3ca4fd);
            } else {
                aVar.f47897a.setTextColor(Color.parseColor("#3CA4FD"));
                aVar.f47897a.setBackgroundResource(R.drawable.bg_frame_3ca4fd);
            }
            return view;
        }

        /* synthetic */ d(q1 q1Var, a aVar) {
            this();
        }
    }

    public q1(Activity activity, PostingActivity.m mVar) {
        e();
        this.f47888f = mVar;
        f(activity);
    }

    private void e() {
        ArrayList<c> arrayList = new ArrayList<>();
        this.f47886d = arrayList;
        arrayList.add(new c(0));
        this.f47886d.add(new c(5));
        this.f47886d.add(new c(10));
        this.f47886d.add(new c(30));
        this.f47886d.add(new c(50));
        this.f47886d.add(new c(60));
        this.f47886d.add(new c(80));
        this.f47886d.add(new c(100));
    }

    public void d() {
        this.f47883a.dismiss();
    }

    void f(Activity activity) {
        this.f47883a = new Dialog(activity, R.style.newtrans_no_floating_dialog);
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_posting_select_coins, (ViewGroup) null);
        inflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f47884b = (TextView) inflate.findViewById(R.id.tv_current_copper);
        this.f47885c = (GridView) inflate.findViewById(R.id.mGridView);
        d dVar = new d(this, null);
        this.f47887e = dVar;
        this.f47885c.setAdapter((ListAdapter) dVar);
        this.f47885c.setOnItemClickListener(new b(activity));
        this.f47883a.setContentView(inflate);
        Window window = this.f47883a.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setGravity(17);
    }

    public void g(String str, int i2) {
        try {
            this.f47889g = Integer.parseInt(str);
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
        TextView textView = this.f47884b;
        textView.setText(Html.fromHtml("当前可用铜板数：<font color=#000000>" + str + "</font>"));
        int i4 = -1;
        int i5 = 0;
        while (true) {
            if (i5 >= this.f47886d.size()) {
                break;
            } else if (this.f47886d.get(i5).f47893a == i2) {
                i4 = i5;
                break;
            } else {
                i5++;
            }
        }
        if (i4 >= 0) {
            this.f47886d.get(i4).b(true);
            this.f47887e.notifyDataSetChanged();
        }
    }

    public void h() {
        if (this.f47883a.isShowing()) {
            return;
        }
        this.f47883a.show();
    }
}
