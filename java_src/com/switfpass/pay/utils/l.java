package com.switfpass.pay.utils;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
public class l extends Dialog {
    public static final int A = 10;
    public static final int B = 11;
    public static final int C = 12;

    /* renamed from: p  reason: collision with root package name */
    public static final int f59003p = 0;

    /* renamed from: q  reason: collision with root package name */
    public static final int f59004q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f59005r = 2;

    /* renamed from: s  reason: collision with root package name */
    public static final int f59006s = 3;

    /* renamed from: t  reason: collision with root package name */
    public static final int f59007t = 4;

    /* renamed from: u  reason: collision with root package name */
    public static final int f59008u = 5;

    /* renamed from: v  reason: collision with root package name */
    public static final int f59009v = 8;

    /* renamed from: w  reason: collision with root package name */
    public static final int f59010w = 6;

    /* renamed from: x  reason: collision with root package name */
    public static final int f59011x = 7;

    /* renamed from: y  reason: collision with root package name */
    public static final int f59012y = 8;

    /* renamed from: z  reason: collision with root package name */
    public static final int f59013z = 9;

    /* renamed from: a  reason: collision with root package name */
    private Context f59014a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f59015b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f59016c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f59017d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f59018e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f59019f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f59020g;

    /* renamed from: h  reason: collision with root package name */
    private ViewGroup f59021h;

    /* renamed from: i  reason: collision with root package name */
    private i f59022i;

    /* renamed from: j  reason: collision with root package name */
    private View f59023j;

    /* renamed from: k  reason: collision with root package name */
    private View f59024k;

    /* renamed from: l  reason: collision with root package name */
    private EditText f59025l;

    /* renamed from: m  reason: collision with root package name */
    private LinearLayout f59026m;

    /* renamed from: n  reason: collision with root package name */
    private String f59027n;

    /* renamed from: o  reason: collision with root package name */
    private String f59028o;

    public l(Context context, int i2, String str, String str2, String str3, String str4, i iVar) {
        super(context);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_dialog_info(), (ViewGroup) null);
        this.f59021h = viewGroup;
        setContentView(viewGroup);
        k(str3);
        j(str4);
        this.f59014a = context;
        this.f59022i = iVar;
        c(str, str2, i2);
        b(i2);
    }

    public l(Context context, String str, String str2, String str3, int i2, i iVar) {
        super(context);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_dialog_info(), (ViewGroup) null);
        this.f59021h = viewGroup;
        setContentView(viewGroup);
        this.f59014a = context;
        this.f59022i = iVar;
        c(str, str2, i2);
        b(i2);
    }

    private void b(int i2) {
        this.f59020g.setOnClickListener(new h1(this, i2));
        this.f59019f.setOnClickListener(new i1(this, i2));
    }

    private void c(String str, String str2, int i2) {
        TextView textView;
        String str3;
        this.f59015b = (TextView) findViewById(Resourcemap.getById_title());
        this.f59016c = (TextView) findViewById(Resourcemap.getById_content());
        this.f59019f = (TextView) findViewById(Resourcemap.getById_btnOk());
        this.f59020g = (TextView) findViewById(Resourcemap.getById_btnCancel());
        this.f59023j = findViewById(Resourcemap.getById_line_img());
        this.f59025l = (EditText) findViewById(Resourcemap.getById_et_content());
        this.f59026m = (LinearLayout) findViewById(Resourcemap.getById_pay_lay_revers());
        this.f59017d = (TextView) findViewById(Resourcemap.getById_pay_money());
        this.f59018e = (TextView) findViewById(Resourcemap.getById_pay_order_no());
        this.f59024k = findViewById(Resourcemap.getById_pay_img());
        if (i2 != 3 && i2 != 4) {
            switch (i2) {
                case 8:
                    this.f59020g.setVisibility(8);
                    this.f59023j.setVisibility(8);
                    textView = this.f59019f;
                    str3 = "确定";
                    textView.setText(str3);
                    break;
                case 9:
                    this.f59025l.setVisibility(0);
                    this.f59016c.setVisibility(8);
                    this.f59020g.setVisibility(0);
                    this.f59023j.setVisibility(0);
                    break;
                case 10:
                    this.f59018e.setText(g());
                    this.f59017d.setText(f());
                    this.f59026m.setVisibility(0);
                    this.f59016c.setVisibility(8);
                    this.f59019f.setText("冲正");
                    textView = this.f59020g;
                    str3 = "继续查询";
                    textView.setText(str3);
                    break;
                case 11:
                    this.f59020g.setVisibility(8);
                    this.f59023j.setVisibility(8);
                    this.f59019f.setVisibility(8);
                    this.f59024k.setVisibility(8);
                    this.f59026m.setVisibility(8);
                    break;
                case 12:
                    textView = this.f59019f;
                    str3 = "继续支付";
                    textView.setText(str3);
                    break;
            }
        } else {
            this.f59019f.setTextColor(-16776961);
        }
        this.f59015b.setText(str);
        this.f59016c.setText(str2);
    }

    public String f() {
        return this.f59028o;
    }

    public String g() {
        return this.f59027n;
    }

    public void h(String str) {
        TextView textView = this.f59019f;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void i(String str) {
        this.f59016c.setText(str);
    }

    public void j(String str) {
        this.f59028o = str;
    }

    public void k(String str) {
        this.f59027n = str;
    }

    public void l(j jVar, int i2) {
    }

    public void m(k kVar) {
    }

    public void n(Class cls) {
        this.f59014a.startActivity(new Intent(this.f59014a, cls));
    }
}
