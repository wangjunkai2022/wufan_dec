package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyGameSettingsPopupWindow.java */
/* loaded from: classes3.dex */
public class c0 extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    View f46781a;

    /* renamed from: b  reason: collision with root package name */
    View f46782b;

    /* renamed from: c  reason: collision with root package name */
    View f46783c;

    /* renamed from: d  reason: collision with root package name */
    a f46784d;

    /* compiled from: MyGameSettingsPopupWindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();
    }

    public c0(Context context) {
        super(context);
        init();
    }

    public a a() {
        return this.f46784d;
    }

    public void b(a aVar) {
        this.f46784d = aVar;
    }

    public void c(View view) {
        showAtLocation(view, 80, 0, 0);
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_settings, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f46781a = this.parentView.findViewById(R.id.settings);
        this.f46782b = this.parentView.findViewById(R.id.scan);
        this.f46783c = this.parentView.findViewById(R.id.cancel);
        this.f46781a.setOnClickListener(this);
        this.f46782b.setOnClickListener(this);
        this.f46783c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.settings) {
            a aVar = this.f46784d;
            if (aVar != null) {
                aVar.a();
            }
            dismiss();
        } else if (id != R.id.scan) {
            if (id == R.id.cancel) {
                dismiss();
            }
        } else {
            a aVar2 = this.f46784d;
            if (aVar2 != null) {
                aVar2.b();
            }
            dismiss();
        }
    }
}
