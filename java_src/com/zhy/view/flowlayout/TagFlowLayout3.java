package com.zhy.view.flowlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.mgps.customview.WrapContentGridView;
import com.zhy.view.flowlayout.TagFlowLayout3;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class TagFlowLayout3 extends WrapContentGridView {

    /* renamed from: a  reason: collision with root package name */
    int f64944a;

    /* renamed from: b  reason: collision with root package name */
    List<String> f64945b;

    /* renamed from: c  reason: collision with root package name */
    a f64946c;

    /* renamed from: d  reason: collision with root package name */
    b f64947d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends BaseAdapter {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.zhy.view.flowlayout.TagFlowLayout3$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0439a {

            /* renamed from: a  reason: collision with root package name */
            public TextView f64949a;

            C0439a() {
            }
        }

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i2, C0439a c0439a, ViewGroup viewGroup, View view) {
            TagFlowLayout3 tagFlowLayout3 = TagFlowLayout3.this;
            tagFlowLayout3.f64944a = i2;
            b bVar = tagFlowLayout3.f64947d;
            if (bVar != null) {
                bVar.a(c0439a.f64949a, i2, viewGroup);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = TagFlowLayout3.this.f64945b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<String> list = TagFlowLayout3.this.f64945b;
            if (list != null) {
                return list.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return super.getItemViewType(i2);
        }

        @Override // android.widget.Adapter
        public View getView(final int i2, View view, final ViewGroup viewGroup) {
            final C0439a c0439a;
            if (view != null) {
                c0439a = (C0439a) view.getTag();
            } else {
                c0439a = new C0439a();
                view = LayoutInflater.from(TagFlowLayout3.this.getContext()).inflate(com.join.android.app.mgsim.wufun.R.layout.serchtag_item_layout1, (ViewGroup) null);
                c0439a.f64949a = (TextView) view.findViewById(com.join.android.app.mgsim.wufun.R.id.tv_tab_title);
                view.setTag(c0439a);
            }
            c0439a.f64949a.setText((String) getItem(i2));
            c0439a.f64949a.setOnClickListener(new View.OnClickListener() { // from class: com.zhy.view.flowlayout.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TagFlowLayout3.a.this.b(i2, c0439a, viewGroup, view2);
                }
            });
            TagFlowLayout3 tagFlowLayout3 = TagFlowLayout3.this;
            if (i2 == tagFlowLayout3.f64944a) {
                c0439a.f64949a.setTextColor(tagFlowLayout3.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.tag_back_color));
                c0439a.f64949a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.tab_selected_f7f7f7_r12);
            } else {
                c0439a.f64949a.setTextColor(tagFlowLayout3.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.money_text_color));
                c0439a.f64949a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.transparent_bg);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(View view, int i2, ViewGroup viewGroup);
    }

    public TagFlowLayout3(Context context) {
        super(context);
        this.f64944a = 0;
        this.f64945b = new ArrayList();
        this.f64946c = new a();
        a(context);
    }

    private void a(Context context) {
        setAdapter((ListAdapter) this.f64946c);
    }

    public List<String> getData() {
        return this.f64945b;
    }

    public b getListener() {
        return this.f64947d;
    }

    public int getSelectedPosition() {
        return this.f64944a;
    }

    public void setData(List<String> list) {
        this.f64945b.clear();
        if (list == null) {
            return;
        }
        this.f64945b.addAll(list);
        a aVar = this.f64946c;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void setListener(b bVar) {
        this.f64947d = bVar;
    }

    public void setSelectedPosition(int i2) {
        this.f64944a = i2;
        a aVar = this.f64946c;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public TagFlowLayout3(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f64944a = 0;
        this.f64945b = new ArrayList();
        this.f64946c = new a();
        a(context);
    }

    public TagFlowLayout3(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f64944a = 0;
        this.f64945b = new ArrayList();
        this.f64946c = new a();
        a(context);
    }
}
