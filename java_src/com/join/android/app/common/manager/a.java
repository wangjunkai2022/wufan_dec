package com.join.android.app.common.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogManager.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: k  reason: collision with root package name */
    private static a f17076k = null;

    /* renamed from: l  reason: collision with root package name */
    public static final int f17077l = 80;

    /* renamed from: m  reason: collision with root package name */
    public static final int f17078m = 17;

    /* renamed from: n  reason: collision with root package name */
    public static final int f17079n = 1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f17080o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final int f17081p = 3;

    /* renamed from: b  reason: collision with root package name */
    private Button f17083b;

    /* renamed from: c  reason: collision with root package name */
    private Button f17084c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f17085d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f17086e;

    /* renamed from: f  reason: collision with root package name */
    private View f17087f;

    /* renamed from: g  reason: collision with root package name */
    private Context f17088g;

    /* renamed from: h  reason: collision with root package name */
    private Toast f17089h;

    /* renamed from: i  reason: collision with root package name */
    private int f17090i = 80;

    /* renamed from: j  reason: collision with root package name */
    private Handler f17091j = new Handler(new C0130a());

    /* renamed from: a  reason: collision with root package name */
    private PopupWindow f17082a = null;

    /* compiled from: DialogManager.java */
    /* renamed from: com.join.android.app.common.manager.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0130a implements Handler.Callback {
        C0130a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            try {
                a.this.f17082a.showAtLocation(a.this.f17087f.findViewById(R.id.full_main), 17, 0, 0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return false;
        }
    }

    private a() {
    }

    private DisplayMetrics g(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static a h() {
        if (f17076k == null) {
            f17076k = new a();
        }
        return f17076k;
    }

    private void n() {
        this.f17082a.setFocusable(true);
        this.f17082a.setOutsideTouchable(false);
        this.f17082a.setBackgroundDrawable(new ColorDrawable(0));
        this.f17082a.update();
    }

    public void c(View view, int i2, int i4, int i5, int i6, View view2) {
        this.f17082a = new PopupWindow(view, i2, i4);
        n();
        this.f17082a.showAtLocation(view2, 51, i5, i6);
    }

    public void d(Context context, String str, String str2) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.alert_dialog_view, (ViewGroup) null);
        this.f17087f = inflate;
        this.f17085d = (TextView) inflate.findViewById(R.id.tv_dialog_title);
        this.f17086e = (TextView) this.f17087f.findViewById(R.id.tv_dialog_content);
        this.f17085d.setText(str);
        this.f17086e.setText(str2);
        this.f17084c = (Button) this.f17087f.findViewById(R.id.btn_dialog_cancel);
        this.f17083b = (Button) this.f17087f.findViewById(R.id.btn_dialog_ok);
        this.f17082a = new PopupWindow(this.f17087f, -1, -1);
        n();
        this.f17091j.sendEmptyMessage(0);
    }

    public void e(Context context, String str, String str2) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.alert_dialog_view, (ViewGroup) null);
        this.f17087f = inflate;
        this.f17085d = (TextView) inflate.findViewById(R.id.tv_dialog_title);
        this.f17086e = (TextView) this.f17087f.findViewById(R.id.tv_dialog_content);
        this.f17085d.setText(str);
        this.f17086e.setText(str2);
        this.f17084c = (Button) this.f17087f.findViewById(R.id.btn_dialog_cancel);
        this.f17083b = (Button) this.f17087f.findViewById(R.id.btn_dialog_ok);
        this.f17082a = new PopupWindow(this.f17087f, -1, -1);
        n();
        this.f17091j.sendEmptyMessage(0);
    }

    public void f() {
        PopupWindow popupWindow = this.f17082a;
        if (popupWindow != null) {
            try {
                popupWindow.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    public int i(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    public void j(Context context, String str, int i2) {
        Toast.makeText(context, str, 0).show();
    }

    public void k(String str, View.OnClickListener onClickListener) {
        this.f17084c.setOnClickListener(onClickListener);
        this.f17084c.setText(str);
    }

    public void l(Context context) {
        this.f17088g = context;
    }

    public void m(String str, View.OnClickListener onClickListener) {
        this.f17083b.setOnClickListener(onClickListener);
        this.f17083b.setText(str);
    }

    public void o(int i2) {
        this.f17090i = i2;
    }

    public int p(Activity activity) {
        return g(activity).heightPixels;
    }

    public int q(Activity activity) {
        return g(activity).widthPixels;
    }
}
