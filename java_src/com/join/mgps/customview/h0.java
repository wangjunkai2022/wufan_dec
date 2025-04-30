package com.join.mgps.customview;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.dto.GroupInfoBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: PopSelectPostingGroup.java */
/* loaded from: classes3.dex */
public class h0 extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    ListView f46890a;

    /* renamed from: b  reason: collision with root package name */
    PostingActivity.m f46891b;

    /* compiled from: PopSelectPostingGroup.java */
    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f46892a;

        a(List list) {
            this.f46892a = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, View view, int i2, long j4) {
            if (((b) this.f46892a.get(i2)).f46896a == 2) {
                h0.this.f46891b.c(((b) this.f46892a.get(i2)).f46897b);
                h0.this.dismiss();
            }
        }
    }

    /* compiled from: PopSelectPostingGroup.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: e  reason: collision with root package name */
        static final int f46894e = 1;

        /* renamed from: f  reason: collision with root package name */
        static final int f46895f = 2;

        /* renamed from: a  reason: collision with root package name */
        int f46896a;

        /* renamed from: b  reason: collision with root package name */
        GroupInfoBean f46897b;

        /* renamed from: c  reason: collision with root package name */
        String f46898c;

        b() {
        }
    }

    /* compiled from: PopSelectPostingGroup.java */
    /* loaded from: classes3.dex */
    class c extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<b> f46900a;

        /* compiled from: PopSelectPostingGroup.java */
        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            TextView f46902a;

            a() {
            }
        }

        /* compiled from: PopSelectPostingGroup.java */
        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            TextView f46904a;

            /* renamed from: b  reason: collision with root package name */
            ImageView f46905b;

            b() {
            }
        }

        public c(List<b> list) {
            this.f46900a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f46900a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f46900a.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return this.f46900a.get(i2).f46896a;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            b bVar2;
            int i4 = this.f46900a.get(i2).f46896a;
            a aVar = null;
            if (view == null) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_select_posting_group, (ViewGroup) null);
                        bVar2 = new b();
                        bVar2.f46904a = (TextView) view.findViewById(R.id.tv_name);
                        bVar2.f46905b = (ImageView) view.findViewById(R.id.iv_selected);
                        view.setTag(bVar2);
                    }
                    bVar2 = null;
                } else {
                    a aVar2 = new a();
                    View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_posting_group_title, (ViewGroup) null);
                    aVar2.f46902a = (TextView) inflate.findViewById(R.id.tv_title);
                    inflate.setTag(aVar2);
                    bVar = null;
                    aVar = aVar2;
                    view = inflate;
                    bVar2 = bVar;
                }
            } else if (i4 != 1) {
                if (i4 == 2) {
                    bVar2 = (b) view.getTag();
                }
                bVar2 = null;
            } else {
                bVar = null;
                aVar = (a) view.getTag();
                bVar2 = bVar;
            }
            if (i4 == 1) {
                aVar.f46902a.setText(this.f46900a.get(i2).f46898c);
            } else if (i4 == 2) {
                bVar2.f46904a.setText(this.f46900a.get(i2).f46897b.getName());
                if (this.f46900a.get(i2).f46897b.isSelected()) {
                    bVar2.f46905b.setVisibility(0);
                } else {
                    bVar2.f46905b.setVisibility(8);
                }
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    public h0(Activity activity, PostingActivity.m mVar) {
        this.f46891b = mVar;
        View inflate = LayoutInflater.from(activity).inflate(R.layout.pop_select_posting_group, (ViewGroup) null);
        this.f46890a = (ListView) inflate.findViewById(R.id.mListView);
        setContentView(inflate);
        setSoftInputMode(16);
        setWidth(activity.getWindowManager().getDefaultDisplay().getWidth());
        setHeight(-1);
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        update();
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(R.style.PopupAnimation_100);
    }

    public void a(List<GroupInfoBean> list, List<GroupInfoBean> list2, GroupInfoBean groupInfoBean) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        if (list != null && list.size() > 0) {
            if (groupInfoBean != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= list.size()) {
                        break;
                    } else if (list.get(i4).getFid() == groupInfoBean.getFid()) {
                        list.get(i4).setSelected(true);
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            b bVar = new b();
            bVar.f46896a = 1;
            bVar.f46898c = "推荐";
            arrayList.add(bVar);
            for (GroupInfoBean groupInfoBean2 : list) {
                b bVar2 = new b();
                bVar2.f46896a = 2;
                bVar2.f46897b = groupInfoBean2;
                arrayList.add(bVar2);
            }
        }
        if (list2 != null && list2.size() > 0) {
            if (groupInfoBean != null) {
                while (true) {
                    if (i2 >= list2.size()) {
                        break;
                    } else if (list2.get(i2).getFid() == groupInfoBean.getFid()) {
                        list2.get(i2).setSelected(true);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            b bVar3 = new b();
            bVar3.f46896a = 1;
            bVar3.f46898c = "我的";
            arrayList.add(bVar3);
            for (GroupInfoBean groupInfoBean3 : list2) {
                b bVar4 = new b();
                bVar4.f46896a = 2;
                bVar4.f46897b = groupInfoBean3;
                arrayList.add(bVar4);
            }
        }
        this.f46890a.setAdapter((ListAdapter) new c(arrayList));
        this.f46890a.setOnItemClickListener(new a(arrayList));
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        if (Build.VERSION.SDK_INT == 24) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            setHeight(view.getResources().getDisplayMetrics().heightPixels - rect.bottom);
        }
        super.showAsDropDown(view);
    }
}
