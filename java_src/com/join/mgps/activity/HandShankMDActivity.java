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
@EActivity(R.layout.activity_md_key_map)
/* loaded from: classes3.dex */
public class HandShankMDActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, String> f32340c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32341d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32342e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32343f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32344g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32345h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32346i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32347j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32348k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f32349l;

    /* renamed from: m  reason: collision with root package name */
    private Button f32350m;

    /* renamed from: n  reason: collision with root package name */
    private Map<String, String> f32351n = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    private Map<String, Integer> f32352o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    private Map<String, String> f32353p = new HashMap();

    /* renamed from: q  reason: collision with root package name */
    private Map<String, a> f32354q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f32355r;

    /* renamed from: s  reason: collision with root package name */
    private List<String> f32356s;

    /* renamed from: t  reason: collision with root package name */
    private List<String> f32357t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32358a;

        /* renamed from: b  reason: collision with root package name */
        public int f32359b;

        /* renamed from: c  reason: collision with root package name */
        public int f32360c;

        /* renamed from: d  reason: collision with root package name */
        public int f32361d;

        /* renamed from: e  reason: collision with root package name */
        public int f32362e;

        /* renamed from: f  reason: collision with root package name */
        public int f32363f;

        /* renamed from: g  reason: collision with root package name */
        public int f32364g;

        /* renamed from: h  reason: collision with root package name */
        public int f32365h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32358a = i2;
            this.f32359b = i4;
            this.f32360c = i5;
            this.f32361d = i6;
            this.f32362e = i7;
            this.f32363f = i8;
            this.f32364g = i9;
            this.f32365h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.MD.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.B0.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32349l.setText("MD手柄设置");
        this.f32341d.setTag(com.join.mgps.joystick.map.b.f50963t0);
        this.f32342e.setTag(com.join.mgps.joystick.map.b.f50966u0);
        this.f32341d.setText("选择");
        this.f32342e.setText("开始");
        this.f32341d.setOnClickListener(this);
        this.f32342e.setOnClickListener(this);
        this.f32341d.setOnClickListener(this);
        this.f32342e.setOnClickListener(this);
        this.f32343f.setOnClickListener(this);
        this.f32344g.setOnClickListener(this);
        this.f32345h.setOnClickListener(this);
        this.f32346i.setOnClickListener(this);
        this.f32347j.setOnClickListener(this);
        this.f32348k.setOnClickListener(this);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32354q = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.f50966u0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.f50963t0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.f50969v0, new a(R.id.f17877x, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.x_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.f50978y0, new a(R.id.f17850b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.f50975x0, new a(R.id.f17878y, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.y_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.f50972w0, new a(R.id.f17848a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.A0, new a(R.id.f17854c, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        this.f32354q.put(com.join.mgps.joystick.map.b.f50981z0, new a(R.id.f17879z, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.f32352o.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32352o;
        if (map == null || map.size() == 0) {
            this.f32352o.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50932j, 104);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32352o.put(com.join.mgps.joystick.map.b.f50956r, 107);
        }
        Map<String, String> V0 = V0();
        this.f32353p = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32353p.put(com.join.mgps.joystick.map.b.f50963t0, com.join.mgps.joystick.map.b.f50911c);
            this.f32353p.put(com.join.mgps.joystick.map.b.f50966u0, com.join.mgps.joystick.map.b.f50914d);
            this.f32353p.put(com.join.mgps.joystick.map.b.f50972w0, com.join.mgps.joystick.map.b.f50923g);
            this.f32353p.put(com.join.mgps.joystick.map.b.f50978y0, com.join.mgps.joystick.map.b.f50926h);
            this.f32353p.put(com.join.mgps.joystick.map.b.f50969v0, com.join.mgps.joystick.map.b.f50917e);
            this.f32353p.put(com.join.mgps.joystick.map.b.f50975x0, com.join.mgps.joystick.map.b.f50920f);
            this.f32353p.put(com.join.mgps.joystick.map.b.A0, com.join.mgps.joystick.map.b.f50935k);
            this.f32353p.put(com.join.mgps.joystick.map.b.f50981z0, com.join.mgps.joystick.map.b.f50929i);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.B0.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32355r = true;
        this.f32351n.clear();
        this.f32351n.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.f50963t0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.f50966u0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50917e, com.join.mgps.joystick.map.b.f50969v0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.f50972w0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50920f, com.join.mgps.joystick.map.b.f50975x0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.f50978y0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.f50981z0);
        this.f32351n.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.A0);
        this.f32353p.clear();
        this.f32353p.put(com.join.mgps.joystick.map.b.f50963t0, com.join.mgps.joystick.map.b.f50911c);
        this.f32353p.put(com.join.mgps.joystick.map.b.f50966u0, com.join.mgps.joystick.map.b.f50914d);
        this.f32353p.put(com.join.mgps.joystick.map.b.f50969v0, com.join.mgps.joystick.map.b.f50917e);
        this.f32353p.put(com.join.mgps.joystick.map.b.f50972w0, com.join.mgps.joystick.map.b.f50923g);
        this.f32353p.put(com.join.mgps.joystick.map.b.f50975x0, com.join.mgps.joystick.map.b.f50920f);
        this.f32353p.put(com.join.mgps.joystick.map.b.f50978y0, com.join.mgps.joystick.map.b.f50926h);
        this.f32353p.put(com.join.mgps.joystick.map.b.f50981z0, com.join.mgps.joystick.map.b.f50929i);
        this.f32353p.put(com.join.mgps.joystick.map.b.A0, com.join.mgps.joystick.map.b.f50935k);
        for (String str : this.f32353p.keySet()) {
            a aVar = this.f32354q.get(str);
            ((TextView) findViewById(aVar.f32365h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32353p.get(str)));
            ((Button) findViewById(aVar.f32358a)).setBackgroundResource(aVar.f32359b);
            if (aVar.f32362e != 0) {
                ((Button) findViewById(aVar.f32358a)).setTextColor(getResources().getColor(aVar.f32362e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.MD, b1(this.f32351n));
        this.f32351n.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32354q.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32354q.get(key);
            if (this.f32351n.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32358a);
                if (aVar.f32362e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32364g));
                }
                button.setBackgroundResource(aVar.f32361d);
                ((TextView) findViewById(aVar.f32365h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32351n, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32358a);
                if (aVar.f32362e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32362e));
                }
                button2.setBackgroundResource(aVar.f32359b);
            }
        }
    }

    private void f1() {
        this.f32356s = new ArrayList();
        this.f32357t = new ArrayList();
        for (String str : this.f32353p.keySet()) {
            if (!this.f32351n.containsValue(str)) {
                this.f32357t.add(str);
            }
        }
        for (String str2 : this.f32353p.values()) {
            if (!this.f32351n.containsKey(str2)) {
                this.f32356s.add(str2);
            }
        }
        Iterator<String> it2 = this.f32357t.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32353p.get(next);
            if (this.f32356s.contains(str3)) {
                it2.remove();
                this.f32356s.remove(str3);
                this.f32351n.put(str3, next);
            }
        }
        if (this.f32356s.size() >= this.f32357t.size()) {
            for (int i2 = 0; i2 < this.f32357t.size(); i2++) {
                this.f32351n.put(this.f32356s.get(i2), this.f32357t.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32353p.keySet()) {
            ((TextView) findViewById(this.f32354q.get(str).f32365h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32353p.get(str)));
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
        if (this.f32355r) {
            this.f32355r = false;
            finish();
            return;
        }
        if (this.f32351n.size() < 8) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.MD, b1(this.f32351n));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32352o.containsValue(Integer.valueOf(i2))) {
                if (i2 == 4) {
                    finish();
                    return true;
                }
                Button button = this.f32350m;
                if (button != null) {
                    String str = (String) button.getTag();
                    String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32352o, Integer.valueOf(i2));
                    if (this.f32351n.containsKey(str2)) {
                        ((TextView) findViewById(this.f32354q.get(this.f32351n.get(str2)).f32365h)).setText("");
                    }
                    if (this.f32353p.containsValue(str2)) {
                        ((TextView) findViewById(this.f32354q.get((String) com.join.mgps.joystick.map.b.c(this.f32353p, str2)).f32365h)).setText("");
                    }
                    this.f32351n.put(str2, str);
                    this.f32355r = false;
                    this.f32350m.setBackgroundResource(this.f32354q.get(str).f32361d);
                    this.f32350m = null;
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
        if (this.f32351n.containsValue(str)) {
            return;
        }
        Button button = this.f32350m;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32354q.get(this.f32350m.getTag());
            this.f32350m.setBackgroundResource(aVar.f32359b);
            if (aVar.f32362e != 0) {
                this.f32350m.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32350m = button2;
        a aVar2 = this.f32354q.get(button2.getTag());
        this.f32350m.setBackgroundResource(aVar2.f32360c);
        if (aVar2.f32362e != 0) {
            this.f32350m.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
