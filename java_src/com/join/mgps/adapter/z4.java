package com.join.mgps.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.RecomWifiActivity;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RecomWifiAdapter.java */
/* loaded from: classes3.dex */
public class z4 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    RecomWifiActivity f44687a;

    /* renamed from: b  reason: collision with root package name */
    List<CollectionBeanSub> f44688b;

    /* renamed from: c  reason: collision with root package name */
    List<CollectionBeanSub> f44689c;

    /* renamed from: d  reason: collision with root package name */
    LayoutInflater f44690d;

    /* renamed from: e  reason: collision with root package name */
    private o1.d f44691e;

    /* compiled from: RecomWifiAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CheckBox f44692a;

        a(CheckBox checkBox) {
            this.f44692a = checkBox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f44692a.isChecked()) {
                this.f44692a.setChecked(false);
            } else {
                this.f44692a.setChecked(true);
            }
        }
    }

    /* compiled from: RecomWifiAdapter.java */
    /* loaded from: classes3.dex */
    class b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44694a;

        b(int i2) {
            this.f44694a = i2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                z4 z4Var = z4.this;
                z4Var.f44689c.add(z4Var.f44688b.get(this.f44694a));
            } else {
                z4 z4Var2 = z4.this;
                z4Var2.f44689c.remove(z4Var2.f44688b.get(this.f44694a));
            }
            z4.this.f44691e.p(z4.this.f44689c);
        }
    }

    public z4(RecomWifiActivity recomWifiActivity, List<CollectionBeanSub> list) {
        this.f44687a = recomWifiActivity;
        this.f44688b = list;
        this.f44690d = LayoutInflater.from(recomWifiActivity);
        ArrayList arrayList = new ArrayList();
        this.f44689c = arrayList;
        arrayList.addAll(list);
        this.f44691e = recomWifiActivity.E0();
    }

    public List<CollectionBeanSub> b() {
        return this.f44689c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44688b.size();
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
        if (view == null) {
            view = this.f44690d.inflate(R.layout.recome_wifi_item, (ViewGroup) null);
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.o2.a(view, R.id.icon);
        CheckBox checkBox = (CheckBox) com.join.mgps.Util.o2.a(view, R.id.box);
        ((TextView) com.join.mgps.Util.o2.a(view, R.id.appName)).setText(this.f44688b.get(i2).getGame_name());
        MyImageLoader.d(simpleDraweeView, R.drawable.main_normal_icon, this.f44688b.get(i2).getIco_remote());
        simpleDraweeView.setOnClickListener(new a(checkBox));
        checkBox.setOnCheckedChangeListener(new b(i2));
        return view;
    }
}
