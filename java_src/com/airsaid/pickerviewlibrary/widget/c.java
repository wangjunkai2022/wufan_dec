package com.airsaid.pickerviewlibrary.widget;

import android.content.Context;
import android.view.View;
import com.airsaid.pickerviewlibrary.R;
import com.airsaid.pickerviewlibrary.TimePickerView;
import com.airsaid.pickerviewlibrary.widget.wheelview.WheelView;
import com.facebook.common.statfs.StatFsHelper;
import com.join.mgps.Util.u;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
/* compiled from: WheelTime.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: k  reason: collision with root package name */
    public static DateFormat f9332k = new SimpleDateFormat("yyyy-MM-dd HH:mm");

    /* renamed from: l  reason: collision with root package name */
    public static final int f9333l = 1990;

    /* renamed from: m  reason: collision with root package name */
    public static final int f9334m = 2100;

    /* renamed from: a  reason: collision with root package name */
    private View f9335a;

    /* renamed from: b  reason: collision with root package name */
    private WheelView f9336b;

    /* renamed from: c  reason: collision with root package name */
    private WheelView f9337c;

    /* renamed from: d  reason: collision with root package name */
    private WheelView f9338d;

    /* renamed from: e  reason: collision with root package name */
    private WheelView f9339e;

    /* renamed from: f  reason: collision with root package name */
    private WheelView f9340f;

    /* renamed from: g  reason: collision with root package name */
    private TimePickerView.Type f9341g;

    /* renamed from: h  reason: collision with root package name */
    private int f9342h;

    /* renamed from: i  reason: collision with root package name */
    private int f9343i;

    /* renamed from: j  reason: collision with root package name */
    private float f9344j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WheelTime.java */
    /* loaded from: classes2.dex */
    public class a implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f9345a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f9346b;

        a(List list, List list2) {
            this.f9345a = list;
            this.f9346b = list2;
        }

        @Override // f.c
        public void a(int i2) {
            int i4 = i2 + c.this.f9342h;
            int i5 = 28;
            if (this.f9345a.contains(String.valueOf(c.this.f9337c.getCurrentItem() + 1))) {
                c.this.f9338d.setAdapter(new e.b(1, 31));
                i5 = 31;
            } else if (this.f9346b.contains(String.valueOf(c.this.f9337c.getCurrentItem() + 1))) {
                c.this.f9338d.setAdapter(new e.b(1, 30));
                i5 = 30;
            } else if ((i4 % 4 != 0 || i4 % 100 == 0) && i4 % StatFsHelper.f11741h != 0) {
                c.this.f9338d.setAdapter(new e.b(1, 28));
            } else {
                c.this.f9338d.setAdapter(new e.b(1, 29));
                i5 = 29;
            }
            int i6 = i5 - 1;
            if (c.this.f9338d.getCurrentItem() > i6) {
                c.this.f9338d.setCurrentItem(i6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WheelTime.java */
    /* loaded from: classes2.dex */
    public class b implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f9348a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f9349b;

        b(List list, List list2) {
            this.f9348a = list;
            this.f9349b = list2;
        }

        @Override // f.c
        public void a(int i2) {
            int i4 = i2 + 1;
            int i5 = 28;
            if (this.f9348a.contains(String.valueOf(i4))) {
                c.this.f9338d.setAdapter(new e.b(1, 31));
                i5 = 31;
            } else if (this.f9349b.contains(String.valueOf(i4))) {
                c.this.f9338d.setAdapter(new e.b(1, 30));
                i5 = 30;
            } else if (((c.this.f9336b.getCurrentItem() + c.this.f9342h) % 4 != 0 || (c.this.f9336b.getCurrentItem() + c.this.f9342h) % 100 == 0) && (c.this.f9336b.getCurrentItem() + c.this.f9342h) % StatFsHelper.f11741h != 0) {
                c.this.f9338d.setAdapter(new e.b(1, 28));
            } else {
                c.this.f9338d.setAdapter(new e.b(1, 29));
                i5 = 29;
            }
            int i6 = i5 - 1;
            if (c.this.f9338d.getCurrentItem() > i6) {
                c.this.f9338d.setCurrentItem(i6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WheelTime.java */
    /* renamed from: com.airsaid.pickerviewlibrary.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C0023c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9351a;

        static {
            int[] iArr = new int[TimePickerView.Type.values().length];
            f9351a = iArr;
            try {
                iArr[TimePickerView.Type.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9351a[TimePickerView.Type.YEAR_MONTH_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9351a[TimePickerView.Type.HOURS_MINS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9351a[TimePickerView.Type.MONTH_DAY_HOUR_MIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9351a[TimePickerView.Type.YEAR_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public c(View view) {
        this.f9342h = f9333l;
        this.f9343i = 2100;
        this.f9344j = 5.0f;
        this.f9335a = view;
        this.f9341g = TimePickerView.Type.ALL;
        p(view);
    }

    private void n() {
        StringBuilder sb = new StringBuilder();
        sb.append("mTextSize: ");
        sb.append(this.f9344j);
        float f4 = this.f9344j;
        int i2 = C0023c.f9351a[this.f9341g.ordinal()];
        if (i2 == 1) {
            f4 *= 3.0f;
        } else if (i2 == 2) {
            f4 *= 4.0f;
            this.f9339e.setVisibility(8);
            this.f9340f.setVisibility(8);
        } else if (i2 == 3) {
            f4 *= 4.0f;
            this.f9336b.setVisibility(8);
            this.f9337c.setVisibility(8);
            this.f9338d.setVisibility(8);
        } else if (i2 == 4) {
            f4 *= 3.0f;
            this.f9336b.setVisibility(8);
        } else if (i2 == 5) {
            f4 *= 4.0f;
            this.f9338d.setVisibility(8);
            this.f9339e.setVisibility(8);
            this.f9340f.setVisibility(8);
        }
        this.f9338d.setTextSize(f4);
        this.f9337c.setTextSize(f4);
        this.f9336b.setTextSize(f4);
        this.f9339e.setTextSize(f4);
        this.f9340f.setTextSize(f4);
    }

    public int e() {
        return this.f9343i;
    }

    public int f() {
        return this.f9342h;
    }

    public String g() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f9336b.getCurrentItem() + this.f9342h);
        stringBuffer.append("-");
        stringBuffer.append(this.f9337c.getCurrentItem() + 1);
        stringBuffer.append("-");
        stringBuffer.append(this.f9338d.getCurrentItem() + 1);
        stringBuffer.append(" ");
        stringBuffer.append(this.f9339e.getCurrentItem());
        stringBuffer.append(":");
        stringBuffer.append(this.f9340f.getCurrentItem());
        return stringBuffer.toString();
    }

    public View h() {
        return this.f9335a;
    }

    public void i(boolean z3) {
        this.f9336b.setCyclic(z3);
        this.f9337c.setCyclic(z3);
        this.f9338d.setCyclic(z3);
        this.f9339e.setCyclic(z3);
        this.f9340f.setCyclic(z3);
    }

    public void j(int i2) {
        this.f9343i = i2;
    }

    public void k(int i2, int i4, int i5) {
        l(i2, i4, i5, 0, 0);
    }

    public void l(int i2, int i4, int i5, int i6, int i7) {
        List asList = Arrays.asList("1", "3", "5", "7", "8", u.f27861t, "12");
        List asList2 = Arrays.asList("4", "6", "9", "11");
        Context context = this.f9335a.getContext();
        WheelView wheelView = (WheelView) this.f9335a.findViewById(R.id.year);
        this.f9336b = wheelView;
        wheelView.setAdapter(new e.b(this.f9342h, this.f9343i));
        this.f9336b.setLabel(context.getString(R.string.pickerview_year));
        this.f9336b.setCurrentItem(i2 - this.f9342h);
        WheelView wheelView2 = (WheelView) this.f9335a.findViewById(R.id.month);
        this.f9337c = wheelView2;
        wheelView2.setAdapter(new e.b(1, 12));
        this.f9337c.setLabel(context.getString(R.string.pickerview_month));
        this.f9337c.setCurrentItem(i4);
        this.f9338d = (WheelView) this.f9335a.findViewById(R.id.day);
        int i8 = i4 + 1;
        if (asList.contains(String.valueOf(i8))) {
            this.f9338d.setAdapter(new e.b(1, 31));
        } else if (asList2.contains(String.valueOf(i8))) {
            this.f9338d.setAdapter(new e.b(1, 30));
        } else if ((i2 % 4 == 0 && i2 % 100 != 0) || i2 % StatFsHelper.f11741h == 0) {
            this.f9338d.setAdapter(new e.b(1, 29));
        } else {
            this.f9338d.setAdapter(new e.b(1, 28));
        }
        this.f9338d.setLabel(context.getString(R.string.pickerview_day));
        this.f9338d.setCurrentItem(i5 - 1);
        WheelView wheelView3 = (WheelView) this.f9335a.findViewById(R.id.hour);
        this.f9339e = wheelView3;
        wheelView3.setAdapter(new e.b(0, 23));
        this.f9339e.setLabel(context.getString(R.string.pickerview_hours));
        this.f9339e.setCurrentItem(i6);
        WheelView wheelView4 = (WheelView) this.f9335a.findViewById(R.id.min);
        this.f9340f = wheelView4;
        wheelView4.setAdapter(new e.b(0, 59));
        this.f9340f.setLabel(context.getString(R.string.pickerview_minutes));
        this.f9340f.setCurrentItem(i7);
        a aVar = new a(asList, asList2);
        b bVar = new b(asList, asList2);
        this.f9336b.setOnItemSelectedListener(aVar);
        this.f9337c.setOnItemSelectedListener(bVar);
        n();
    }

    public void m(int i2) {
        this.f9342h = i2;
    }

    public void o(float f4) {
        this.f9344j = f4;
        n();
    }

    public void p(View view) {
        this.f9335a = view;
    }

    public c(View view, TimePickerView.Type type) {
        this.f9342h = f9333l;
        this.f9343i = 2100;
        this.f9344j = 5.0f;
        this.f9335a = view;
        this.f9341g = type;
        p(view);
    }
}
