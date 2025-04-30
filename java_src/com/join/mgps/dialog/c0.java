package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.CouponsData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: CouponDialog.java */
/* loaded from: classes3.dex */
public class c0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private boolean f47577a;

    /* renamed from: b  reason: collision with root package name */
    private int f47578b;

    /* renamed from: c  reason: collision with root package name */
    private Context f47579c;

    /* renamed from: d  reason: collision with root package name */
    private List<CouponsData> f47580d;

    /* renamed from: e  reason: collision with root package name */
    private o1.c f47581e;

    /* renamed from: f  reason: collision with root package name */
    Map<String, CouponsData> f47582f;

    /* renamed from: g  reason: collision with root package name */
    private Button f47583g;

    /* compiled from: CouponDialog.java */
    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkBox);
            if (!checkBox.isChecked()) {
                int i4 = 0;
                for (String str : c0.this.f47582f.keySet()) {
                    i4 += c0.this.f47582f.get(str).getMoney();
                }
                if (i4 >= c0.this.f47578b) {
                    i2.a(c0.this.f47579c).b("已足够支付!");
                    return;
                }
            }
            checkBox.setChecked(!checkBox.isChecked());
        }
    }

    /* compiled from: CouponDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.dismiss();
            if (c0.this.f47582f.size() == 0) {
                return;
            }
            int i2 = 0;
            for (String str : c0.this.f47582f.keySet()) {
                i2 += c0.this.f47582f.get(str).getMoney();
            }
            if (c0.this.f47577a || i2 >= c0.this.f47578b) {
                c0.this.f47581e.a(c0.this.f47582f);
            } else {
                i2.a(c0.this.f47579c).b("金额不足");
            }
        }
    }

    /* compiled from: CouponDialog.java */
    /* loaded from: classes3.dex */
    class c extends BaseAdapter {

        /* compiled from: CouponDialog.java */
        /* loaded from: classes3.dex */
        class a implements CompoundButton.OnCheckedChangeListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f47587a;

            a(int i2) {
                this.f47587a = i2;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                double d4;
                CouponsData couponsData = (CouponsData) c0.this.f47580d.get(this.f47587a);
                if (z3) {
                    c0.this.f47582f.put(couponsData.getId(), couponsData);
                } else {
                    c0.this.f47582f.remove(couponsData.getId());
                }
                int i2 = 0;
                for (String str : c0.this.f47582f.keySet()) {
                    i2 += c0.this.f47582f.get(str).getMoney();
                }
                Double.isNaN(Math.round(i2));
                c0.this.f47583g.setText("确认（已选择" + (d4 / 100.0d) + "元）");
            }
        }

        c() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return c0.this.f47580d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            double d4;
            View inflate = LayoutInflater.from(c0.this.f47579c).inflate(R.layout.papa_coupon_item_layout, (ViewGroup) null);
            CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.checkBox);
            TextView textView = (TextView) inflate.findViewById(R.id.money);
            TextView textView2 = (TextView) inflate.findViewById(R.id.expireDate);
            Set<String> keySet = c0.this.f47582f.keySet();
            CouponsData couponsData = (CouponsData) c0.this.f47580d.get(i2);
            ((TextView) inflate.findViewById(R.id.couponName)).setText("名称:" + couponsData.getName());
            int money = couponsData.getMoney();
            if (keySet.contains(couponsData.getId())) {
                checkBox.setChecked(true);
            } else {
                checkBox.setChecked(false);
            }
            Double.isNaN(Math.round(money));
            textView.setText(Html.fromHtml("金额:<font color='0xfc3f5e' >" + (d4 / 100.0d) + "</font>元"), TextView.BufferType.SPANNABLE);
            StringBuilder sb = new StringBuilder();
            sb.append("截至时间：");
            sb.append(couponsData.getExpire_date());
            textView2.setText(sb.toString());
            checkBox.setClickable(false);
            checkBox.setOnCheckedChangeListener(new a(i2));
            return inflate;
        }
    }

    public c0(Context context) {
        super(context);
        this.f47577a = false;
        this.f47582f = new HashMap();
        this.f47579c = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f47579c).inflate(R.layout.papa_coupon_dialog_layout, (ViewGroup) null);
        setContentView(inflate);
        ListView listView = (ListView) inflate.findViewById(R.id.listView);
        this.f47583g = (Button) inflate.findViewById(R.id.ok);
        listView.setAdapter((ListAdapter) new c());
        listView.setOnItemClickListener(new a());
        this.f47583g.setOnClickListener(new b());
    }

    public c0(Context context, int i2, List<CouponsData> list, o1.c cVar, int i4, boolean z3) {
        super(context, i2);
        this.f47577a = false;
        this.f47582f = new HashMap();
        this.f47579c = context;
        this.f47580d = list;
        this.f47581e = cVar;
        this.f47578b = i4;
        this.f47577a = z3;
        setOwnerActivity((Activity) context);
    }

    protected c0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47577a = false;
        this.f47582f = new HashMap();
    }
}
