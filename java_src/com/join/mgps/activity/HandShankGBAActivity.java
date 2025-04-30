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
@EActivity(R.layout.activity_gba_key_map)
/* loaded from: classes3.dex */
public class HandShankGBAActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, String> f32274c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32275d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32276e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32277f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32278g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32279h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32280i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32281j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32282k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f32283l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f32284m;

    /* renamed from: n  reason: collision with root package name */
    private Button f32285n;

    /* renamed from: o  reason: collision with root package name */
    private Map<String, String> f32286o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    private Map<String, Integer> f32287p = new HashMap();

    /* renamed from: q  reason: collision with root package name */
    private Map<String, String> f32288q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    private Map<String, a> f32289r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32290s;

    /* renamed from: t  reason: collision with root package name */
    private List<String> f32291t;

    /* renamed from: u  reason: collision with root package name */
    private List<String> f32292u;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32293a;

        /* renamed from: b  reason: collision with root package name */
        public int f32294b;

        /* renamed from: c  reason: collision with root package name */
        public int f32295c;

        /* renamed from: d  reason: collision with root package name */
        public int f32296d;

        /* renamed from: e  reason: collision with root package name */
        public int f32297e;

        /* renamed from: f  reason: collision with root package name */
        public int f32298f;

        /* renamed from: g  reason: collision with root package name */
        public int f32299g;

        /* renamed from: h  reason: collision with root package name */
        public int f32300h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32293a = i2;
            this.f32294b = i4;
            this.f32295c = i5;
            this.f32296d = i6;
            this.f32297e = i7;
            this.f32298f = i8;
            this.f32299g = i9;
            this.f32300h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.GBA.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.K.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32284m.setText("GBA手柄设置");
        this.f32275d.setTag(com.join.mgps.joystick.map.b.C);
        this.f32276e.setTag(com.join.mgps.joystick.map.b.D);
        this.f32275d.setText("选择");
        this.f32276e.setText("开始");
        this.f32275d.setOnClickListener(this);
        this.f32276e.setOnClickListener(this);
        this.f32275d.setOnClickListener(this);
        this.f32276e.setOnClickListener(this);
        this.f32277f.setOnClickListener(this);
        this.f32278g.setOnClickListener(this);
        this.f32279h.setOnClickListener(this);
        this.f32280i.setOnClickListener(this);
        this.f32281j.setOnClickListener(this);
        this.f32282k.setOnClickListener(this);
        this.f32283l.setOnClickListener(this);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32289r = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.D, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.C, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.E, new a(R.id.f17848a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.F, new a(R.id.f17850b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.x_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.G, new a(R.id.f17864l, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.H, new a(R.id.f17870r, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.I, new a(R.id.turbo_a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.f32289r.put(com.join.mgps.joystick.map.b.J, new a(R.id.turbo_b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.y_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.f32287p.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32287p;
        if (map == null || map.size() == 0) {
            this.f32287p.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50932j, 104);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32287p.put(com.join.mgps.joystick.map.b.f50956r, 107);
        }
        Map<String, String> V0 = V0();
        this.f32288q = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32288q.put(com.join.mgps.joystick.map.b.C, com.join.mgps.joystick.map.b.f50911c);
            this.f32288q.put(com.join.mgps.joystick.map.b.D, com.join.mgps.joystick.map.b.f50914d);
            this.f32288q.put(com.join.mgps.joystick.map.b.E, com.join.mgps.joystick.map.b.f50923g);
            this.f32288q.put(com.join.mgps.joystick.map.b.F, com.join.mgps.joystick.map.b.f50917e);
            this.f32288q.put(com.join.mgps.joystick.map.b.H, com.join.mgps.joystick.map.b.f50935k);
            this.f32288q.put(com.join.mgps.joystick.map.b.G, com.join.mgps.joystick.map.b.f50929i);
            this.f32288q.put(com.join.mgps.joystick.map.b.J, com.join.mgps.joystick.map.b.f50920f);
            this.f32288q.put(com.join.mgps.joystick.map.b.I, com.join.mgps.joystick.map.b.f50926h);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.K.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32290s = true;
        this.f32286o.clear();
        this.f32286o.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.C);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.D);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50917e, com.join.mgps.joystick.map.b.F);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.E);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50920f, com.join.mgps.joystick.map.b.J);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.I);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.G);
        this.f32286o.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.H);
        this.f32288q.clear();
        this.f32288q.put(com.join.mgps.joystick.map.b.C, com.join.mgps.joystick.map.b.f50911c);
        this.f32288q.put(com.join.mgps.joystick.map.b.D, com.join.mgps.joystick.map.b.f50914d);
        this.f32288q.put(com.join.mgps.joystick.map.b.E, com.join.mgps.joystick.map.b.f50923g);
        this.f32288q.put(com.join.mgps.joystick.map.b.F, com.join.mgps.joystick.map.b.f50917e);
        this.f32288q.put(com.join.mgps.joystick.map.b.H, com.join.mgps.joystick.map.b.f50935k);
        this.f32288q.put(com.join.mgps.joystick.map.b.G, com.join.mgps.joystick.map.b.f50929i);
        this.f32288q.put(com.join.mgps.joystick.map.b.J, com.join.mgps.joystick.map.b.f50920f);
        this.f32288q.put(com.join.mgps.joystick.map.b.I, com.join.mgps.joystick.map.b.f50926h);
        for (String str : this.f32288q.keySet()) {
            a aVar = this.f32289r.get(str);
            ((TextView) findViewById(aVar.f32300h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32288q.get(str)));
            ((Button) findViewById(aVar.f32293a)).setBackgroundResource(aVar.f32294b);
            if (aVar.f32297e != 0) {
                ((Button) findViewById(aVar.f32293a)).setTextColor(getResources().getColor(aVar.f32297e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.GBA, b1(this.f32286o));
        this.f32286o.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32289r.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32289r.get(key);
            if (this.f32286o.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32293a);
                if (aVar.f32297e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32299g));
                }
                button.setBackgroundResource(aVar.f32296d);
                ((TextView) findViewById(aVar.f32300h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32286o, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32293a);
                if (aVar.f32297e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32297e));
                }
                button2.setBackgroundResource(aVar.f32294b);
            }
        }
    }

    private void f1() {
        this.f32291t = new ArrayList();
        this.f32292u = new ArrayList();
        for (String str : this.f32288q.keySet()) {
            if (!this.f32286o.containsValue(str)) {
                this.f32292u.add(str);
            }
        }
        for (String str2 : this.f32288q.values()) {
            if (!this.f32286o.containsKey(str2)) {
                this.f32291t.add(str2);
            }
        }
        Iterator<String> it2 = this.f32292u.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32288q.get(next);
            if (this.f32291t.contains(str3)) {
                it2.remove();
                this.f32291t.remove(str3);
                this.f32286o.put(str3, next);
            }
        }
        if (this.f32291t.size() >= this.f32292u.size()) {
            for (int i2 = 0; i2 < this.f32292u.size(); i2++) {
                this.f32286o.put(this.f32291t.get(i2), this.f32292u.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32288q.keySet()) {
            ((TextView) findViewById(this.f32289r.get(str).f32300h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32288q.get(str)));
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
        if (this.f32290s) {
            this.f32290s = false;
            finish();
            return;
        }
        if (this.f32286o.size() < 8) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.GBA, b1(this.f32286o));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32287p.containsValue(Integer.valueOf(i2))) {
                if (i2 == 4) {
                    finish();
                    return true;
                }
                Button button = this.f32285n;
                if (button != null) {
                    String str = (String) button.getTag();
                    String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32287p, Integer.valueOf(i2));
                    if (this.f32286o.containsKey(str2)) {
                        ((TextView) findViewById(this.f32289r.get(this.f32286o.get(str2)).f32300h)).setText("");
                    }
                    if (this.f32288q.containsValue(str2)) {
                        ((TextView) findViewById(this.f32289r.get((String) com.join.mgps.joystick.map.b.c(this.f32288q, str2)).f32300h)).setText("");
                    }
                    this.f32286o.put(str2, str);
                    this.f32290s = false;
                    this.f32285n.setBackgroundResource(this.f32289r.get(str).f32296d);
                    this.f32285n = null;
                    e1();
                }
                return true;
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
        if (this.f32286o.containsValue(str)) {
            return;
        }
        Button button = this.f32285n;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32289r.get(this.f32285n.getTag());
            this.f32285n.setBackgroundResource(aVar.f32294b);
            if (aVar.f32297e != 0) {
                this.f32285n.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32285n = button2;
        a aVar2 = this.f32289r.get(button2.getTag());
        this.f32285n.setBackgroundResource(aVar2.f32295c);
        if (aVar2.f32297e != 0) {
            this.f32285n.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
