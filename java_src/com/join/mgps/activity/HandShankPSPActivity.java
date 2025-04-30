package com.join.mgps.activity;

import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_psp_key_map)
/* loaded from: classes3.dex */
public class HandShankPSPActivity extends HandShankBaseActivity implements View.OnClickListener {
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f32438c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32439d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32440e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32441f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32442g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32443h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32444i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32445j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32446k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f32447l;

    /* renamed from: m  reason: collision with root package name */
    private Map<String, String> f32448m = new HashMap();

    /* renamed from: n  reason: collision with root package name */
    private Map<String, Integer> f32449n = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    private Map<String, String> f32450o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    private Map<String, a> f32451p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f32452q;

    /* renamed from: r  reason: collision with root package name */
    private List<String> f32453r;

    /* renamed from: s  reason: collision with root package name */
    private List<String> f32454s;

    /* renamed from: t  reason: collision with root package name */
    private Button f32455t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32456a;

        /* renamed from: b  reason: collision with root package name */
        public int f32457b;

        /* renamed from: c  reason: collision with root package name */
        public int f32458c;

        /* renamed from: d  reason: collision with root package name */
        public int f32459d;

        /* renamed from: e  reason: collision with root package name */
        public int f32460e;

        /* renamed from: f  reason: collision with root package name */
        public int f32461f;

        /* renamed from: g  reason: collision with root package name */
        public int f32462g;

        /* renamed from: h  reason: collision with root package name */
        public int f32463h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32456a = i2;
            this.f32457b = i4;
            this.f32458c = i5;
            this.f32459d = i6;
            this.f32460e = i7;
            this.f32461f = i8;
            this.f32462g = i9;
            this.f32463h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.PSP.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.f50957r0.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32447l.setText("PSP游戏手柄设置");
        this.f32438c.setTag(com.join.mgps.joystick.map.b.f50933j0);
        this.f32439d.setTag(com.join.mgps.joystick.map.b.f50936k0);
        this.f32438c.setText("选择");
        this.f32439d.setText("开始");
        this.f32438c.setOnClickListener(this);
        this.f32439d.setOnClickListener(this);
        this.f32440e.setOnClickListener(this);
        this.f32441f.setOnClickListener(this);
        this.f32442g.setOnClickListener(this);
        this.f32443h.setOnClickListener(this);
        this.f32444i.setOnClickListener(this);
        this.f32445j.setOnClickListener(this);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32451p = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.f50936k0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50933j0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50942m0, new a(R.id.f17848a, R.drawable.handshank_psp_a_normal, R.drawable.handshank_psp_a_selected, R.drawable.handshank_psp_a_pressed, 0, 0, 0, R.id.a_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50948o0, new a(R.id.f17850b, R.drawable.handshank_psp_b_normal, R.drawable.handshank_psp_b_selected, R.drawable.handshank_psp_b_pressed, 0, 0, 0, R.id.b_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50939l0, new a(R.id.f17877x, R.drawable.handshank_psp_x_normal, R.drawable.handshank_psp_x_selected, R.drawable.handshank_psp_x_pressed, 0, 0, 0, R.id.x_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50945n0, new a(R.id.f17878y, R.drawable.handshank_psp_y_normal, R.drawable.handshank_psp_y_selected, R.drawable.handshank_psp_y_pressed, 0, 0, 0, R.id.y_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50951p0, new a(R.id.f17864l, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.f32451p.put(com.join.mgps.joystick.map.b.f50954q0, new a(R.id.f17870r, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.f32449n.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32449n;
        if (map == null || map.size() == 0) {
            this.f32449n.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32449n.put(com.join.mgps.joystick.map.b.f50935k, 103);
        }
        Map<String, String> V0 = V0();
        this.f32450o = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32450o.put(com.join.mgps.joystick.map.b.f50933j0, com.join.mgps.joystick.map.b.f50911c);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50936k0, com.join.mgps.joystick.map.b.f50914d);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50939l0, com.join.mgps.joystick.map.b.f50917e);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50942m0, com.join.mgps.joystick.map.b.f50923g);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50945n0, com.join.mgps.joystick.map.b.f50920f);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50948o0, com.join.mgps.joystick.map.b.f50926h);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50951p0, com.join.mgps.joystick.map.b.f50929i);
            this.f32450o.put(com.join.mgps.joystick.map.b.f50954q0, com.join.mgps.joystick.map.b.f50935k);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.f50957r0.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32452q = true;
        this.f32448m.clear();
        this.f32448m.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.f50933j0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.f50936k0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50917e, com.join.mgps.joystick.map.b.f50939l0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.f50942m0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50920f, com.join.mgps.joystick.map.b.f50945n0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.f50948o0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.f50951p0);
        this.f32448m.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.f50954q0);
        this.f32450o.clear();
        this.f32450o.put(com.join.mgps.joystick.map.b.f50933j0, com.join.mgps.joystick.map.b.f50911c);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50936k0, com.join.mgps.joystick.map.b.f50914d);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50939l0, com.join.mgps.joystick.map.b.f50917e);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50942m0, com.join.mgps.joystick.map.b.f50923g);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50945n0, com.join.mgps.joystick.map.b.f50920f);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50948o0, com.join.mgps.joystick.map.b.f50926h);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50951p0, com.join.mgps.joystick.map.b.f50929i);
        this.f32450o.put(com.join.mgps.joystick.map.b.f50954q0, com.join.mgps.joystick.map.b.f50935k);
        for (String str : this.f32450o.keySet()) {
            a aVar = this.f32451p.get(str);
            ((TextView) findViewById(aVar.f32463h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32450o.get(str)));
            ((Button) findViewById(aVar.f32456a)).setBackgroundResource(aVar.f32457b);
            if (aVar.f32460e != 0) {
                ((Button) findViewById(aVar.f32456a)).setTextColor(getResources().getColor(aVar.f32460e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.PSP, b1(this.f32448m));
        this.f32448m.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32451p.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32451p.get(key);
            if (this.f32448m.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32456a);
                PrintStream printStream = System.out;
                printStream.println("t----------" + aVar.f32460e);
                PrintStream printStream2 = System.out;
                printStream2.println("btn----------" + button);
                if (aVar.f32460e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32462g));
                }
                button.setBackgroundResource(aVar.f32459d);
                ((TextView) findViewById(aVar.f32463h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32448m, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32456a);
                if (aVar.f32460e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32460e));
                }
                button2.setBackgroundResource(aVar.f32457b);
            }
        }
    }

    private void f1() {
        this.f32453r = new ArrayList();
        this.f32454s = new ArrayList();
        for (String str : this.f32450o.keySet()) {
            if (!this.f32448m.containsValue(str)) {
                this.f32454s.add(str);
            }
        }
        for (String str2 : this.f32450o.values()) {
            if (!this.f32448m.containsKey(str2)) {
                this.f32453r.add(str2);
            }
        }
        Iterator<String> it2 = this.f32454s.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32450o.get(next);
            if (this.f32453r.contains(str3)) {
                it2.remove();
                this.f32453r.remove(str3);
                this.f32448m.put(str3, next);
            }
        }
        if (this.f32453r.size() >= this.f32454s.size()) {
            for (int i2 = 0; i2 < this.f32454s.size(); i2++) {
                this.f32448m.put(this.f32453r.get(i2), this.f32454s.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32450o.keySet()) {
            String str2 = this.f32450o.get(str);
            a aVar = this.f32451p.get(str);
            if (this.f32449n.containsKey(str2)) {
                ((TextView) findViewById(aVar.f32463h)).setText(com.join.mgps.joystick.map.b.f50905a.get(str2));
            } else {
                ((TextView) findViewById(aVar.f32463h)).setText("");
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
        if (this.f32452q) {
            this.f32452q = false;
            finish();
            return;
        }
        if (this.f32448m.size() < 8) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.PSP, b1(this.f32448m));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        Button button;
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32449n.containsValue(Integer.valueOf(i2)) && (button = this.f32455t) != null) {
                String str = (String) button.getTag();
                String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32449n, Integer.valueOf(i2));
                if (this.f32448m.containsKey(str2)) {
                    ((TextView) findViewById(this.f32451p.get(this.f32448m.get(str2)).f32463h)).setText("");
                }
                if (this.f32450o.containsValue(str2)) {
                    ((TextView) findViewById(this.f32451p.get((String) com.join.mgps.joystick.map.b.c(this.f32450o, str2)).f32463h)).setText("");
                }
                this.f32448m.put(str2, str);
                this.f32452q = false;
                this.f32455t.setBackgroundResource(this.f32451p.get(str).f32459d);
                this.f32455t = null;
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
        if (this.f32448m.containsValue(str)) {
            return;
        }
        Button button = this.f32455t;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32451p.get(this.f32455t.getTag());
            this.f32455t.setBackgroundResource(aVar.f32457b);
            if (aVar.f32460e != 0) {
                this.f32455t.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32455t = button2;
        a aVar2 = this.f32451p.get(button2.getTag());
        this.f32455t.setBackgroundResource(aVar2.f32458c);
        if (aVar2.f32460e != 0) {
            this.f32455t.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
