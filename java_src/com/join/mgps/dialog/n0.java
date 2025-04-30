package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FightServerChoseDialog.java */
/* loaded from: classes3.dex */
public class n0 extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47794a;

    /* renamed from: b  reason: collision with root package name */
    ListView f47795b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.adapter.u f47796c;

    /* compiled from: FightServerChoseDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.dismiss();
        }
    }

    public n0(Context context, int i2) {
        super(context, i2);
        this.f47794a = context;
    }

    public void a(List<String> list) {
        ArrayList arrayList = new ArrayList(0);
        for (String str : list) {
            com.join.mgps.data.a aVar = new com.join.mgps.data.a();
            aVar.c(str.substring(0, str.lastIndexOf("_")));
            aVar.d(str.substring(str.lastIndexOf("_") + 1));
            arrayList.add(aVar);
        }
        this.f47796c.b(arrayList);
        this.f47796c.notifyDataSetChanged();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f47794a).inflate(R.layout.dialog_fight_server_chose, (ViewGroup) null);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        inflate.findViewById(R.id.cancel).setOnClickListener(new a());
        this.f47795b = (ListView) inflate.findViewById(R.id.listView);
        com.join.mgps.adapter.u uVar = new com.join.mgps.adapter.u(this.f47794a);
        this.f47796c = uVar;
        this.f47795b.setAdapter((ListAdapter) uVar);
        setContentView(inflate);
    }

    public n0(Context context) {
        super(context);
        this.f47794a = context;
    }
}
