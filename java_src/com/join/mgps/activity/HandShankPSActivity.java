package com.join.mgps.activity;

import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_ps_key_map)
/* loaded from: classes3.dex */
public class HandShankPSActivity extends HandShankBaseActivity implements View.OnClickListener {
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f32403c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32404d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32405e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32406f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32407g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32408h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32409i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32410j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32411k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f32412l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    Button f32413m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f32414n;

    /* renamed from: o  reason: collision with root package name */
    private Map<String, String> f32415o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    private Map<String, Integer> f32416p = new HashMap();

    /* renamed from: q  reason: collision with root package name */
    private Map<String, String> f32417q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    private Map<String, a> f32418r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32419s;

    /* renamed from: t  reason: collision with root package name */
    private List<String> f32420t;

    /* renamed from: u  reason: collision with root package name */
    private List<String> f32421u;

    /* renamed from: v  reason: collision with root package name */
    private Button f32422v;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32423a;

        /* renamed from: b  reason: collision with root package name */
        public int f32424b;

        /* renamed from: c  reason: collision with root package name */
        public int f32425c;

        /* renamed from: d  reason: collision with root package name */
        public int f32426d;

        /* renamed from: e  reason: collision with root package name */
        public int f32427e;

        /* renamed from: f  reason: collision with root package name */
        public int f32428f;

        /* renamed from: g  reason: collision with root package name */
        public int f32429g;

        /* renamed from: h  reason: collision with root package name */
        public int f32430h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32423a = i2;
            this.f32424b = i4;
            this.f32425c = i5;
            this.f32426d = i6;
            this.f32427e = i7;
            this.f32428f = i8;
            this.f32429g = i9;
            this.f32430h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.PS.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.N0.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32414n.setText("PS游戏手柄设置");
        this.f32403c.setTag(com.join.mgps.joystick.map.b.D0);
        this.f32404d.setTag(com.join.mgps.joystick.map.b.E0);
        this.f32403c.setText("选择");
        this.f32404d.setText("开始");
        this.f32403c.setOnClickListener(this);
        this.f32404d.setOnClickListener(this);
        this.f32405e.setOnClickListener(this);
        this.f32407g.setOnClickListener(this);
        this.f32408h.setOnClickListener(this);
        this.f32406f.setOnClickListener(this);
        this.f32409i.setOnClickListener(this);
        this.f32410j.setOnClickListener(this);
        this.f32411k.setOnClickListener(this);
        this.f32412l.setOnClickListener(this);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32418r = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.E0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.D0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.G0, new a(R.id.f17848a, R.drawable.handshank_psp_a_normal, R.drawable.handshank_psp_a_selected, R.drawable.handshank_psp_a_pressed, 0, 0, 0, R.id.a_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.I0, new a(R.id.f17850b, R.drawable.handshank_psp_b_normal, R.drawable.handshank_psp_b_selected, R.drawable.handshank_psp_b_pressed, 0, 0, 0, R.id.b_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.F0, new a(R.id.f17877x, R.drawable.handshank_psp_x_normal, R.drawable.handshank_psp_x_selected, R.drawable.handshank_psp_x_pressed, 0, 0, 0, R.id.x_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.H0, new a(R.id.f17878y, R.drawable.handshank_psp_y_normal, R.drawable.handshank_psp_y_selected, R.drawable.handshank_psp_y_pressed, 0, 0, 0, R.id.y_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.J0, new a(R.id.f17865l1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.L0, new a(R.id.f17866l2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l2_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.K0, new a(R.id.f17871r1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        this.f32418r.put(com.join.mgps.joystick.map.b.M0, new a(R.id.f17872r2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r2_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.f32416p.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32416p;
        if (map == null || map.size() == 0) {
            this.f32416p.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32416p.put(com.join.mgps.joystick.map.b.f50932j, 104);
        }
        Map<String, String> V0 = V0();
        this.f32417q = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32417q.put(com.join.mgps.joystick.map.b.D0, com.join.mgps.joystick.map.b.f50911c);
            this.f32417q.put(com.join.mgps.joystick.map.b.E0, com.join.mgps.joystick.map.b.f50914d);
            this.f32417q.put(com.join.mgps.joystick.map.b.F0, com.join.mgps.joystick.map.b.f50917e);
            this.f32417q.put(com.join.mgps.joystick.map.b.G0, com.join.mgps.joystick.map.b.f50923g);
            this.f32417q.put(com.join.mgps.joystick.map.b.H0, com.join.mgps.joystick.map.b.f50920f);
            this.f32417q.put(com.join.mgps.joystick.map.b.I0, com.join.mgps.joystick.map.b.f50926h);
            this.f32417q.put(com.join.mgps.joystick.map.b.J0, com.join.mgps.joystick.map.b.f50929i);
            this.f32417q.put(com.join.mgps.joystick.map.b.K0, com.join.mgps.joystick.map.b.f50935k);
            this.f32417q.put(com.join.mgps.joystick.map.b.L0, com.join.mgps.joystick.map.b.f50932j);
            this.f32417q.put(com.join.mgps.joystick.map.b.M0, com.join.mgps.joystick.map.b.f50938l);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.N0.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32419s = true;
        this.f32415o.clear();
        this.f32415o.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.D0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.E0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50917e, com.join.mgps.joystick.map.b.F0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.G0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50920f, com.join.mgps.joystick.map.b.H0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.I0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.J0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.K0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.L0);
        this.f32415o.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.M0);
        this.f32417q.clear();
        this.f32417q.put(com.join.mgps.joystick.map.b.D0, com.join.mgps.joystick.map.b.f50911c);
        this.f32417q.put(com.join.mgps.joystick.map.b.E0, com.join.mgps.joystick.map.b.f50914d);
        this.f32417q.put(com.join.mgps.joystick.map.b.F0, com.join.mgps.joystick.map.b.f50917e);
        this.f32417q.put(com.join.mgps.joystick.map.b.G0, com.join.mgps.joystick.map.b.f50923g);
        this.f32417q.put(com.join.mgps.joystick.map.b.H0, com.join.mgps.joystick.map.b.f50920f);
        this.f32417q.put(com.join.mgps.joystick.map.b.I0, com.join.mgps.joystick.map.b.f50926h);
        this.f32417q.put(com.join.mgps.joystick.map.b.J0, com.join.mgps.joystick.map.b.f50929i);
        this.f32417q.put(com.join.mgps.joystick.map.b.K0, com.join.mgps.joystick.map.b.f50935k);
        this.f32417q.put(com.join.mgps.joystick.map.b.L0, com.join.mgps.joystick.map.b.f50932j);
        this.f32417q.put(com.join.mgps.joystick.map.b.M0, com.join.mgps.joystick.map.b.f50938l);
        for (String str : this.f32417q.keySet()) {
            a aVar = this.f32418r.get(str);
            ((TextView) findViewById(aVar.f32430h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32417q.get(str)));
            ((Button) findViewById(aVar.f32423a)).setBackgroundResource(aVar.f32424b);
            if (aVar.f32427e != 0) {
                ((Button) findViewById(aVar.f32423a)).setTextColor(getResources().getColor(aVar.f32427e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.PS, b1(this.f32415o));
        this.f32415o.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32418r.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32418r.get(key);
            if (this.f32415o.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32423a);
                if (aVar.f32427e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32429g));
                }
                button.setBackgroundResource(aVar.f32426d);
                ((TextView) findViewById(aVar.f32430h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32415o, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32423a);
                if (aVar.f32427e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32427e));
                }
                button2.setBackgroundResource(aVar.f32424b);
            }
        }
    }

    private void f1() {
        this.f32420t = new ArrayList();
        this.f32421u = new ArrayList();
        for (String str : this.f32417q.keySet()) {
            if (!this.f32415o.containsValue(str)) {
                this.f32421u.add(str);
            }
        }
        for (String str2 : this.f32417q.values()) {
            if (!this.f32415o.containsKey(str2)) {
                this.f32420t.add(str2);
            }
        }
        Iterator<String> it2 = this.f32421u.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32417q.get(next);
            if (this.f32420t.contains(str3)) {
                it2.remove();
                this.f32420t.remove(str3);
                this.f32415o.put(str3, next);
            }
        }
        if (this.f32420t.size() >= this.f32421u.size()) {
            for (int i2 = 0; i2 < this.f32421u.size(); i2++) {
                this.f32415o.put(this.f32420t.get(i2), this.f32421u.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32417q.keySet()) {
            String str2 = this.f32417q.get(str);
            a aVar = this.f32418r.get(str);
            if (this.f32416p.containsKey(str2)) {
                ((TextView) findViewById(aVar.f32430h)).setText(com.join.mgps.joystick.map.b.f50905a.get(str2));
            } else {
                ((TextView) findViewById(aVar.f32430h)).setText("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity
    public boolean L0(int i2, PadKeyEvent padKeyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(padKeyEvent.c())) {
            return false;
        }
        if (padKeyEvent.d() != 0) {
            a1(i2, N0(padKeyEvent));
        }
        return super.L0(i2, padKeyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        if (this.f32419s) {
            this.f32419s = false;
            finish();
            return;
        }
        if (this.f32415o.size() < 10) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.PS, b1(this.f32415o));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        Button button;
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32416p.containsValue(Integer.valueOf(i2)) && (button = this.f32422v) != null) {
                String str = (String) button.getTag();
                String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32416p, Integer.valueOf(i2));
                if (this.f32415o.containsKey(str2)) {
                    ((TextView) findViewById(this.f32418r.get(this.f32415o.get(str2)).f32430h)).setText("");
                }
                if (this.f32417q.containsValue(str2)) {
                    ((TextView) findViewById(this.f32418r.get((String) com.join.mgps.joystick.map.b.c(this.f32417q, str2)).f32430h)).setText("");
                }
                this.f32415o.put(str2, str);
                this.f32419s = false;
                this.f32422v.setBackgroundResource(this.f32418r.get(str).f32426d);
                this.f32422v = null;
                e1();
            }
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        X0();
        W0();
        initView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d1() {
        c1();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = (String) view.getTag();
        if (this.f32415o.containsValue(str)) {
            return;
        }
        Button button = this.f32422v;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32418r.get(this.f32422v.getTag());
            this.f32422v.setBackgroundResource(aVar.f32424b);
            if (aVar.f32427e != 0) {
                this.f32422v.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32422v = button2;
        a aVar2 = this.f32418r.get(button2.getTag());
        this.f32422v.setBackgroundResource(aVar2.f32425c);
        if (aVar2.f32427e != 0) {
            this.f32422v.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
