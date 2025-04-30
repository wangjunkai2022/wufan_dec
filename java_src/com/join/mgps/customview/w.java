package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyGameDeleteGameSoucePopupWindow.java */
/* loaded from: classes3.dex */
public class w extends u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    TextView f47257a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47258b;

    /* renamed from: c  reason: collision with root package name */
    TextView f47259c;

    /* renamed from: d  reason: collision with root package name */
    private String f47260d;

    /* renamed from: e  reason: collision with root package name */
    a f47261e;

    /* compiled from: MyGameDeleteGameSoucePopupWindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(String str);
    }

    public w(Context context) {
        super(context);
        init();
    }

    public a a() {
        return this.f47261e;
    }

    public void b(a aVar) {
        this.f47261e = aVar;
    }

    public void c(View view, String str) {
        showAtLocation(view, 80, 0, 0);
        TextView textView = this.f47257a;
        textView.setText("是否保留“" + str + "”的游戏存档？");
    }

    void init() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_deletesouce_game, (ViewGroup) null);
        this.parentView = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        this.f47257a = (TextView) this.parentView.findViewById(R.id.name);
        this.f47258b = (TextView) this.parentView.findViewById(R.id.delete);
        this.f47259c = (TextView) this.parentView.findViewById(R.id.cancel);
        this.f47258b.setText("删除");
        this.f47259c.setText("保留");
        this.f47258b.setOnClickListener(this);
        this.f47259c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.delete) {
            if (id == R.id.cancel) {
                dismiss();
                return;
            }
            return;
        }
        a aVar = this.f47261e;
        if (aVar != null) {
            aVar.a(this.f47260d);
        }
        dismiss();
    }
}
