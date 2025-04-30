package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.ForumActivity;
/* compiled from: ForumGroupOrderbyPopWindow.java */
/* loaded from: classes3.dex */
public class g extends PopupWindow implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    View f46850a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f46851b;

    /* renamed from: c  reason: collision with root package name */
    private b f46852c;

    /* renamed from: d  reason: collision with root package name */
    RadioButton f46853d;

    /* renamed from: e  reason: collision with root package name */
    RadioButton f46854e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumGroupOrderbyPopWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                g.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* compiled from: ForumGroupOrderbyPopWindow.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(int i2);
    }

    public g(Context context) {
        super(context);
        this.f46851b = context;
        a();
    }

    private void a() {
        this.f46850a = LayoutInflater.from(this.f46851b).inflate(R.layout.mg_forum_group_oderby_popwindow, (ViewGroup) null);
        this.f46850a.setLayoutParams(new ViewGroup.LayoutParams((int) TypedValue.applyDimension(1, 126.0f, this.f46851b.getResources().getDisplayMetrics()), -2));
        setContentView(this.f46850a);
        setWidth((int) TypedValue.applyDimension(1, 126.0f, this.f46851b.getResources().getDisplayMetrics()));
        setHeight(-2);
        e();
        b();
    }

    private void b() {
        this.f46853d = (RadioButton) this.f46850a.findViewById(R.id.latestPost);
        this.f46854e = (RadioButton) this.f46850a.findViewById(R.id.latestComment);
        this.f46853d.setOnClickListener(this);
        this.f46854e.setOnClickListener(this);
        c(ForumActivity.D);
    }

    private void e() {
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    public void c(int i2) {
        RadioButton radioButton;
        if (this.f46853d == null || (radioButton = this.f46854e) == null) {
            return;
        }
        boolean z3 = i2 == 1;
        radioButton.setSelected(z3);
        this.f46854e.setChecked(z3);
        this.f46853d.setSelected(!z3);
        this.f46853d.setChecked(!z3);
    }

    public void d(b bVar) {
        this.f46852c = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.latestPost) {
            this.f46852c.a(2);
            dismiss();
        } else if (id == R.id.latestComment) {
            this.f46852c.a(1);
            dismiss();
        }
    }

    public g(Context context, int i2, int i4) {
        super(i2, i4);
        this.f46851b = context;
        a();
    }
}
