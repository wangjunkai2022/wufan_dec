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
@EActivity(R.layout.activity_gbc_key_map)
/* loaded from: classes3.dex */
public class HandShankGBCActivity extends HandShankBaseActivity implements View.OnClickListener {
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f32308c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32309d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32310e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32311f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32312g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32313h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32314i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32315j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f32316k;

    /* renamed from: l  reason: collision with root package name */
    private Map<String, String> f32317l = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    private Map<String, Integer> f32318m = new HashMap();

    /* renamed from: n  reason: collision with root package name */
    private Map<String, String> f32319n = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    private Map<String, a> f32320o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f32321p;

    /* renamed from: q  reason: collision with root package name */
    private List<String> f32322q;

    /* renamed from: r  reason: collision with root package name */
    private List<String> f32323r;

    /* renamed from: s  reason: collision with root package name */
    private Button f32324s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32325a;

        /* renamed from: b  reason: collision with root package name */
        public int f32326b;

        /* renamed from: c  reason: collision with root package name */
        public int f32327c;

        /* renamed from: d  reason: collision with root package name */
        public int f32328d;

        /* renamed from: e  reason: collision with root package name */
        public int f32329e;

        /* renamed from: f  reason: collision with root package name */
        public int f32330f;

        /* renamed from: g  reason: collision with root package name */
        public int f32331g;

        /* renamed from: h  reason: collision with root package name */
        public int f32332h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32325a = i2;
            this.f32326b = i4;
            this.f32327c = i5;
            this.f32328d = i6;
            this.f32329e = i7;
            this.f32330f = i8;
            this.f32331g = i9;
            this.f32332h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.GBC.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.f50937k1.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32316k.setText("GBC游戏手柄设置");
        this.f32308c.setTag(com.join.mgps.joystick.map.b.f50916d1);
        this.f32309d.setTag(com.join.mgps.joystick.map.b.f50919e1);
        this.f32308c.setText("选择");
        this.f32309d.setText("开始");
        this.f32308c.setOnClickListener(this);
        this.f32309d.setOnClickListener(this);
        this.f32310e.setOnClickListener(this);
        this.f32311f.setOnClickListener(this);
        this.f32312g.setOnClickListener(this);
        this.f32313h.setOnClickListener(this);
        this.f32314i.setOnClickListener(this);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32320o = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.f50919e1, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32320o.put(com.join.mgps.joystick.map.b.f50916d1, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32320o.put(com.join.mgps.joystick.map.b.f50922f1, new a(R.id.f17848a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.f32320o.put(com.join.mgps.joystick.map.b.f50925g1, new a(R.id.f17850b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.f32320o.put(com.join.mgps.joystick.map.b.f50928h1, new a(R.id.f17877x, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.x_tv));
        this.f32320o.put(com.join.mgps.joystick.map.b.f50931i1, new a(R.id.f17878y, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.y_tv));
        this.f32320o.put(com.join.mgps.joystick.map.b.f50934j1, new a(R.id.ab, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.f32318m.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32318m;
        if (map == null || map.size() == 0) {
            this.f32318m.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50932j, 104);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32318m.put(com.join.mgps.joystick.map.b.f50956r, 107);
        }
        Map<String, String> V0 = V0();
        this.f32319n = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32319n.put(com.join.mgps.joystick.map.b.f50916d1, com.join.mgps.joystick.map.b.f50911c);
            this.f32319n.put(com.join.mgps.joystick.map.b.f50919e1, com.join.mgps.joystick.map.b.f50914d);
            this.f32319n.put(com.join.mgps.joystick.map.b.f50928h1, com.join.mgps.joystick.map.b.f50917e);
            this.f32319n.put(com.join.mgps.joystick.map.b.f50922f1, com.join.mgps.joystick.map.b.f50923g);
            this.f32319n.put(com.join.mgps.joystick.map.b.f50931i1, com.join.mgps.joystick.map.b.f50920f);
            this.f32319n.put(com.join.mgps.joystick.map.b.f50925g1, com.join.mgps.joystick.map.b.f50926h);
            this.f32319n.put(com.join.mgps.joystick.map.b.f50934j1, com.join.mgps.joystick.map.b.f50935k);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.f50937k1.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32321p = true;
        this.f32317l.clear();
        this.f32317l.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.f50916d1);
        this.f32317l.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.f50919e1);
        this.f32317l.put(com.join.mgps.joystick.map.b.f50917e, com.join.mgps.joystick.map.b.f50928h1);
        this.f32317l.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.f50922f1);
        this.f32317l.put(com.join.mgps.joystick.map.b.f50920f, com.join.mgps.joystick.map.b.f50931i1);
        this.f32317l.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.f50925g1);
        this.f32317l.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.f50934j1);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50916d1, com.join.mgps.joystick.map.b.f50911c);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50919e1, com.join.mgps.joystick.map.b.f50914d);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50928h1, com.join.mgps.joystick.map.b.f50917e);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50922f1, com.join.mgps.joystick.map.b.f50923g);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50931i1, com.join.mgps.joystick.map.b.f50920f);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50925g1, com.join.mgps.joystick.map.b.f50926h);
        this.f32319n.put(com.join.mgps.joystick.map.b.f50934j1, com.join.mgps.joystick.map.b.f50935k);
        for (String str : this.f32319n.keySet()) {
            a aVar = this.f32320o.get(str);
            ((TextView) findViewById(aVar.f32332h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32319n.get(str)));
            ((Button) findViewById(aVar.f32325a)).setBackgroundResource(aVar.f32326b);
            if (aVar.f32329e != 0) {
                ((Button) findViewById(aVar.f32325a)).setTextColor(getResources().getColor(aVar.f32329e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.GBC, b1(this.f32317l));
        this.f32317l.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32320o.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32320o.get(key);
            if (this.f32317l.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32325a);
                if (aVar.f32329e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32331g));
                }
                button.setBackgroundResource(aVar.f32328d);
                ((TextView) findViewById(aVar.f32332h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32317l, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32325a);
                if (aVar.f32329e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32329e));
                }
                button2.setBackgroundResource(aVar.f32326b);
            }
        }
    }

    private void f1() {
        this.f32322q = new ArrayList();
        this.f32323r = new ArrayList();
        for (String str : this.f32319n.keySet()) {
            if (!this.f32317l.containsValue(str)) {
                this.f32323r.add(str);
            }
        }
        for (String str2 : this.f32319n.values()) {
            if (!this.f32317l.containsKey(str2)) {
                this.f32322q.add(str2);
            }
        }
        Iterator<String> it2 = this.f32323r.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32319n.get(next);
            if (this.f32322q.contains(str3)) {
                it2.remove();
                this.f32322q.remove(str3);
                this.f32317l.put(str3, next);
            }
        }
        if (this.f32322q.size() >= this.f32323r.size()) {
            for (int i2 = 0; i2 < this.f32323r.size(); i2++) {
                this.f32317l.put(this.f32322q.get(i2), this.f32323r.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32319n.keySet()) {
            ((TextView) findViewById(this.f32320o.get(str).f32332h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32319n.get(str)));
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
        if (this.f32321p) {
            this.f32321p = false;
            finish();
            return;
        }
        if (this.f32317l.size() < 7) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.GBC, b1(this.f32317l));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32318m.containsValue(Integer.valueOf(i2))) {
                if (i2 == 4) {
                    finish();
                    return true;
                }
                Button button = this.f32324s;
                if (button != null) {
                    String str = (String) button.getTag();
                    String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32318m, Integer.valueOf(i2));
                    if (this.f32317l.containsKey(str2)) {
                        ((TextView) findViewById(this.f32320o.get(this.f32317l.get(str2)).f32332h)).setText("");
                    }
                    if (this.f32319n.containsValue(str2)) {
                        ((TextView) findViewById(this.f32320o.get((String) com.join.mgps.joystick.map.b.c(this.f32319n, str2)).f32332h)).setText("");
                    }
                    this.f32317l.put(str2, str);
                    this.f32321p = false;
                    this.f32324s.setBackgroundResource(this.f32320o.get(str).f32328d);
                    this.f32324s = null;
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
        if (this.f32317l.containsValue(str)) {
            return;
        }
        Button button = this.f32324s;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32320o.get(this.f32324s.getTag());
            this.f32324s.setBackgroundResource(aVar.f32326b);
            if (aVar.f32329e != 0) {
                this.f32324s.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32324s = button2;
        a aVar2 = this.f32320o.get(button2.getTag());
        this.f32324s.setBackgroundResource(aVar2.f32327c);
        if (aVar2.f32329e != 0) {
            this.f32324s.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
