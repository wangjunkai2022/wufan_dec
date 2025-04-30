package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FightServerChoseAdapter.java */
/* loaded from: classes3.dex */
public class u extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44258a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.join.mgps.data.a> f44259b = new ArrayList(0);

    /* compiled from: FightServerChoseAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.data.a f44260a;

        a(com.join.mgps.data.a aVar) {
            this.f44260a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            intent.putExtra(BuildQRCodeActivity_.D, this.f44260a.a() + "_" + this.f44260a.b());
            intent.setAction(com.join.mgps.broadcast.b.f44787a);
            u.this.f44258a.sendBroadcast(intent);
        }
    }

    /* compiled from: FightServerChoseAdapter.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        public Button f44262a;

        b() {
        }
    }

    public u(Context context) {
        this.f44258a = context;
    }

    public void b(List<com.join.mgps.data.a> list) {
        this.f44259b.clear();
        this.f44259b.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44259b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        b bVar;
        com.join.mgps.data.a aVar = this.f44259b.get(i2);
        if (view == null) {
            bVar = new b();
            view2 = LayoutInflater.from(this.f44258a).inflate(R.layout.listview_dialog_fight_server_chose, (ViewGroup) null);
            bVar.f44262a = (Button) view2.findViewById(R.id.room);
            view2.setTag(bVar);
        } else {
            view2 = view;
            bVar = (b) view.getTag();
        }
        Button button = bVar.f44262a;
        button.setText(aVar.a() + "-" + aVar.b());
        bVar.f44262a.setOnClickListener(new a(aVar));
        return view2;
    }
}
