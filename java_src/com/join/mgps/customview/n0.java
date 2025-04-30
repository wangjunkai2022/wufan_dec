package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.vipzone.bean.ScreeningConditionBean;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.zhy.view.flowlayout.TagFlowSpecialLayout;
import java.util.List;
/* compiled from: SpecialFilterBottomPopupWindow.java */
/* loaded from: classes3.dex */
public class n0 extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    TagFlowSpecialLayout f47032a;

    /* renamed from: b  reason: collision with root package name */
    TagFlowSpecialLayout f47033b;

    /* renamed from: c  reason: collision with root package name */
    TagFlowSpecialLayout f47034c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47035d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47036e;

    /* renamed from: f  reason: collision with root package name */
    private String f47037f;

    /* renamed from: g  reason: collision with root package name */
    f f47038g;

    /* renamed from: h  reason: collision with root package name */
    SpecialTag f47039h;

    /* renamed from: i  reason: collision with root package name */
    SpecialTag f47040i;

    /* renamed from: j  reason: collision with root package name */
    SpecialTag f47041j;

    /* renamed from: k  reason: collision with root package name */
    ScreeningConditionBean f47042k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterBottomPopupWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                n0 n0Var = n0.this;
                n0Var.f47039h = n0Var.f47042k.getSort_type().get(0);
                n0 n0Var2 = n0.this;
                n0Var2.f47040i = n0Var2.f47042k.getGame_type().get(0);
                n0 n0Var3 = n0.this;
                n0Var3.f47041j = n0Var3.f47042k.getGame_class().get(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            n0 n0Var4 = n0.this;
            n0Var4.c(n0Var4.f47042k.getSort_type());
            n0 n0Var5 = n0.this;
            n0Var5.c(n0Var5.f47042k.getGame_type());
            n0 n0Var6 = n0.this;
            n0Var6.c(n0Var6.f47042k.getGame_class());
            n0.this.f47032a.b();
            n0.this.f47033b.b();
            n0.this.f47034c.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterBottomPopupWindow.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0 n0Var = n0.this;
            n0Var.f47038g.onfinifilter(n0Var.f47032a.getSelectedItem(), n0.this.f47033b.getSelectedItem(), n0.this.f47034c.getSelectedItem());
            n0.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterBottomPopupWindow.java */
    /* loaded from: classes3.dex */
    public class c implements TagFlowSpecialLayout.b {
        c() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowSpecialLayout.b
        public void a(View view, SpecialTag specialTag, ViewGroup viewGroup) {
            n0.this.f47039h = specialTag;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterBottomPopupWindow.java */
    /* loaded from: classes3.dex */
    public class d implements TagFlowSpecialLayout.b {
        d() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowSpecialLayout.b
        public void a(View view, SpecialTag specialTag, ViewGroup viewGroup) {
            n0.this.f47040i = specialTag;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterBottomPopupWindow.java */
    /* loaded from: classes3.dex */
    public class e implements TagFlowSpecialLayout.b {
        e() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowSpecialLayout.b
        public void a(View view, SpecialTag specialTag, ViewGroup viewGroup) {
            n0.this.f47041j = specialTag;
        }
    }

    /* compiled from: SpecialFilterBottomPopupWindow.java */
    /* loaded from: classes3.dex */
    public interface f {
        void onfinifilter(SpecialTag specialTag, SpecialTag specialTag2, SpecialTag specialTag3);
    }

    public n0(Context context) {
        super(context);
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<SpecialTag> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            SpecialTag specialTag = list.get(i2);
            if (i2 == 0) {
                specialTag.setIsselected(true);
            } else {
                specialTag.setIsselected(false);
            }
        }
    }

    public f b() {
        return this.f47038g;
    }

    public void d(ScreeningConditionBean screeningConditionBean) {
        c(screeningConditionBean.getSort_type());
        c(screeningConditionBean.getGame_type());
        c(screeningConditionBean.getGame_class());
    }

    public void e(f fVar) {
        this.f47038g = fVar;
    }

    public void f(View view, ScreeningConditionBean screeningConditionBean) {
        this.f47042k = screeningConditionBean;
        showAtLocation(view, 80, 0, 0);
        try {
            this.f47039h = screeningConditionBean.getSort_type().get(0);
            this.f47040i = screeningConditionBean.getGame_type().get(0);
            this.f47041j = screeningConditionBean.getGame_class().get(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f47032a.setData(screeningConditionBean.getSort_type());
        this.f47033b.setData(screeningConditionBean.getGame_type());
        this.f47034c.setData(screeningConditionBean.getGame_class());
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_special_filter_bottom_operate, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f47032a = (TagFlowSpecialLayout) this.parentView.findViewById(R.id.filter1);
        this.f47033b = (TagFlowSpecialLayout) this.parentView.findViewById(R.id.filter2);
        this.f47034c = (TagFlowSpecialLayout) this.parentView.findViewById(R.id.filter3);
        this.f47035d = (TextView) this.parentView.findViewById(R.id.resetButn);
        this.f47036e = (TextView) this.parentView.findViewById(R.id.setting);
        this.f47035d.setOnClickListener(new a());
        this.f47036e.setOnClickListener(new b());
        this.f47032a.setListener(new c());
        this.f47033b.setListener(new d());
        this.f47034c.setListener(new e());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
    }
}
