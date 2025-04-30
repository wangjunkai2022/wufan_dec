package com.zhy.view.flowlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.join.mgps.customview.WrapContentGridView;
import com.zhy.view.flowlayout.TagFlowSpecialLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class TagFlowSpecialLayout extends WrapContentGridView {

    /* renamed from: a  reason: collision with root package name */
    SpecialTag f64951a;

    /* renamed from: b  reason: collision with root package name */
    List<SpecialTag> f64952b;

    /* renamed from: c  reason: collision with root package name */
    a f64953c;

    /* renamed from: d  reason: collision with root package name */
    b f64954d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends BaseAdapter {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.zhy.view.flowlayout.TagFlowSpecialLayout$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0440a {

            /* renamed from: a  reason: collision with root package name */
            public TextView f64956a;

            C0440a() {
            }
        }

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(SpecialTag specialTag, C0440a c0440a, ViewGroup viewGroup, View view) {
            for (SpecialTag specialTag2 : TagFlowSpecialLayout.this.f64952b) {
                specialTag2.setIsselected(false);
            }
            specialTag.setIsselected(true);
            TagFlowSpecialLayout tagFlowSpecialLayout = TagFlowSpecialLayout.this;
            tagFlowSpecialLayout.f64951a = specialTag;
            b bVar = tagFlowSpecialLayout.f64954d;
            if (bVar != null) {
                bVar.a(c0440a.f64956a, specialTag, viewGroup);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<SpecialTag> list = TagFlowSpecialLayout.this.f64952b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<SpecialTag> list = TagFlowSpecialLayout.this.f64952b;
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
        public View getView(int i2, View view, final ViewGroup viewGroup) {
            final C0440a c0440a;
            if (view != null) {
                c0440a = (C0440a) view.getTag();
            } else {
                c0440a = new C0440a();
                view = LayoutInflater.from(TagFlowSpecialLayout.this.getContext()).inflate(com.join.android.app.mgsim.wufun.R.layout.specialtag_item_layout1, (ViewGroup) null);
                c0440a.f64956a = (TextView) view;
                view.setTag(c0440a);
            }
            final SpecialTag specialTag = (SpecialTag) getItem(i2);
            if (specialTag.isIsselected()) {
                TagFlowSpecialLayout.this.f64951a = specialTag;
            }
            c0440a.f64956a.setText(specialTag.getTitle());
            c0440a.f64956a.setOnClickListener(new View.OnClickListener() { // from class: com.zhy.view.flowlayout.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TagFlowSpecialLayout.a.this.b(specialTag, c0440a, viewGroup, view2);
                }
            });
            if (specialTag.isIsselected()) {
                c0440a.f64956a.setTextColor(TagFlowSpecialLayout.this.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.app_blue_color));
                c0440a.f64956a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.specialtag_selected_back);
            } else {
                c0440a.f64956a.setTextColor(TagFlowSpecialLayout.this.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.money_text_color));
                c0440a.f64956a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.alph);
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
        void a(View view, SpecialTag specialTag, ViewGroup viewGroup);
    }

    public TagFlowSpecialLayout(Context context) {
        super(context);
        this.f64952b = new ArrayList();
        this.f64953c = new a();
        a(context);
    }

    private void a(Context context) {
        setAdapter((ListAdapter) this.f64953c);
    }

    public void b() {
        a aVar = this.f64953c;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public List<SpecialTag> getData() {
        return this.f64952b;
    }

    public b getListener() {
        return this.f64954d;
    }

    public void setData(List<SpecialTag> list) {
        this.f64952b.clear();
        if (list == null) {
            return;
        }
        this.f64952b.addAll(list);
        a aVar = this.f64953c;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void setListener(b bVar) {
        this.f64954d = bVar;
    }

    @Override // android.widget.AdapterView
    public SpecialTag getSelectedItem() {
        return this.f64951a;
    }

    public TagFlowSpecialLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f64952b = new ArrayList();
        this.f64953c = new a();
        a(context);
    }

    public TagFlowSpecialLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f64952b = new ArrayList();
        this.f64953c = new a();
        a(context);
    }
}
