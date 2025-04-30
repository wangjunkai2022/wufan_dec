package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyGamePlugPopupWindow.java */
/* loaded from: classes3.dex */
public class b0 extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    View f46774a;

    /* renamed from: b  reason: collision with root package name */
    View f46775b;

    /* renamed from: c  reason: collision with root package name */
    View f46776c;

    /* renamed from: d  reason: collision with root package name */
    private String f46777d;

    /* renamed from: e  reason: collision with root package name */
    a f46778e;

    /* compiled from: MyGamePlugPopupWindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(String str);

        void b(String str);
    }

    public b0(Context context) {
        super(context);
        init();
    }

    public a a() {
        return this.f46778e;
    }

    public void b(a aVar) {
        this.f46778e = aVar;
    }

    public void c(View view, String str) {
        d(view, str, false);
    }

    public void d(View view, String str, boolean z3) {
        this.f46777d = str;
        showAtLocation(view, 80, 0, 0);
        if (z3) {
            this.f46774a.setVisibility(8);
            this.f46776c.setVisibility(8);
            return;
        }
        this.f46774a.setVisibility(0);
        this.f46776c.setVisibility(0);
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_plug, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f46774a = this.parentView.findViewById(R.id.detail);
        this.f46775b = this.parentView.findViewById(R.id.delete);
        this.f46776c = this.parentView.findViewById(R.id.line);
        this.f46774a.setOnClickListener(this);
        this.f46775b.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.detail) {
            dismiss();
            a aVar = this.f46778e;
            if (aVar != null) {
                aVar.b(this.f46777d);
            }
        } else if (id != R.id.delete) {
            if (id == R.id.cancel) {
                dismiss();
            }
        } else {
            dismiss();
            a aVar2 = this.f46778e;
            if (aVar2 != null) {
                aVar2.a(this.f46777d);
            }
        }
    }
}
