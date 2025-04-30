package com.airsaid.pickerviewlibrary;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2.dex */
public class TimePickerView extends com.airsaid.pickerviewlibrary.widget.a implements View.OnClickListener {

    /* renamed from: n  reason: collision with root package name */
    private Context f9273n;

    /* renamed from: o  reason: collision with root package name */
    private View f9274o;

    /* renamed from: p  reason: collision with root package name */
    private TextView f9275p;

    /* renamed from: q  reason: collision with root package name */
    private com.airsaid.pickerviewlibrary.widget.c f9276q;

    /* renamed from: r  reason: collision with root package name */
    private Button f9277r;

    /* renamed from: s  reason: collision with root package name */
    private Button f9278s;

    /* renamed from: t  reason: collision with root package name */
    private a f9279t;

    /* loaded from: classes2.dex */
    public enum Type {
        ALL,
        YEAR_MONTH_DAY,
        HOURS_MINS,
        MONTH_DAY_HOUR_MIN,
        YEAR_MONTH
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(Date date);
    }

    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: b  reason: collision with root package name */
        public static final float f9280b = 6.0f;

        /* renamed from: c  reason: collision with root package name */
        public static final float f9281c = 5.0f;

        /* renamed from: d  reason: collision with root package name */
        public static final float f9282d = 4.0f;

        public b() {
        }
    }

    public TimePickerView(Context context, Type type) {
        super(context);
        this.f9273n = context;
        p();
        o(type);
    }

    private void o(Type type) {
        this.f9276q = new com.airsaid.pickerviewlibrary.widget.c(d(R.id.timepicker), type);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i2 = calendar.get(1);
        int i4 = calendar.get(2);
        int i5 = calendar.get(5);
        int i6 = calendar.get(11);
        int i7 = calendar.get(12);
        Calendar calendar2 = Calendar.getInstance();
        w(calendar2.get(1) - 100, calendar2.get(1) + 100);
        this.f9276q.l(i2, i4, i5, i6, i7);
    }

    private void p() {
        LayoutInflater.from(this.f9273n).inflate(R.layout.pickerview_time, this.f9306c);
        this.f9274o = d(R.id.rlt_head_view);
        this.f9275p = (TextView) d(R.id.tvTitle);
        this.f9277r = (Button) d(R.id.btnSubmit);
        this.f9278s = (Button) d(R.id.btnCancel);
        this.f9277r.setOnClickListener(this);
        this.f9278s.setOnClickListener(this);
    }

    public void A(float f4) {
        this.f9276q.o(f4);
    }

    public void B(Date date) {
        Calendar calendar = Calendar.getInstance();
        if (date == null) {
            calendar.setTimeInMillis(System.currentTimeMillis());
        } else {
            calendar.setTime(date);
        }
        this.f9276q.l(calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(11), calendar.get(12));
    }

    public void C(String str) {
        this.f9275p.setText(str);
    }

    public void D(int i2) {
        this.f9275p.setTextColor(i2);
    }

    public void E(float f4) {
        this.f9275p.setTextSize(f4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btnSubmit) {
            if (this.f9279t != null) {
                try {
                    this.f9279t.a(com.airsaid.pickerviewlibrary.widget.c.f9332k.parse(this.f9276q.g()));
                } catch (ParseException e4) {
                    e4.printStackTrace();
                }
            }
            b();
        } else if (id == R.id.btnCancel) {
            b();
        }
    }

    public void q(String str) {
        this.f9278s.setText(str);
    }

    public void r(int i2) {
        this.f9278s.setTextColor(i2);
    }

    public void s(float f4) {
        this.f9278s.setTextSize(f4);
    }

    public void t(boolean z3) {
        this.f9276q.i(z3);
    }

    public void u(int i2) {
        this.f9274o.setBackgroundColor(i2);
    }

    public void v(a aVar) {
        this.f9279t = aVar;
    }

    public void w(int i2, int i4) {
        this.f9276q.m(i2);
        this.f9276q.j(i4);
    }

    public void x(String str) {
        this.f9277r.setText(str);
    }

    public void y(int i2) {
        this.f9277r.setTextColor(i2);
    }

    public void z(float f4) {
        this.f9277r.setTextSize(f4);
    }
}
