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
@EActivity(R.layout.activity_wsc_key_map)
/* loaded from: classes3.dex */
public class HandShankWSCActivity extends HandShankBaseActivity implements View.OnClickListener {
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f32540c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32541d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32542e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32543f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32544g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32545h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32546i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32547j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32548k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f32549l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    Button f32550m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    Button f32551n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f32552o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f32553p;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, String> f32554q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    private Map<String, Integer> f32555r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    private Map<String, String> f32556s = new HashMap();

    /* renamed from: t  reason: collision with root package name */
    private Map<String, a> f32557t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f32558u;

    /* renamed from: v  reason: collision with root package name */
    private List<String> f32559v;

    /* renamed from: w  reason: collision with root package name */
    private List<String> f32560w;

    /* renamed from: x  reason: collision with root package name */
    private Button f32561x;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32562a;

        /* renamed from: b  reason: collision with root package name */
        public int f32563b;

        /* renamed from: c  reason: collision with root package name */
        public int f32564c;

        /* renamed from: d  reason: collision with root package name */
        public int f32565d;

        /* renamed from: e  reason: collision with root package name */
        public int f32566e;

        /* renamed from: f  reason: collision with root package name */
        public int f32567f;

        /* renamed from: g  reason: collision with root package name */
        public int f32568g;

        /* renamed from: h  reason: collision with root package name */
        public int f32569h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32562a = i2;
            this.f32563b = i4;
            this.f32564c = i5;
            this.f32565d = i6;
            this.f32566e = i7;
            this.f32567f = i8;
            this.f32568g = i9;
            this.f32569h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.WSC.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.f50910b1.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32553p.setText("WSC游戏手柄设置");
        this.f32540c.setTag(com.join.mgps.joystick.map.b.P0);
        this.f32541d.setTag(com.join.mgps.joystick.map.b.Q0);
        this.f32540c.setText("选择");
        this.f32541d.setText("开始");
        this.f32540c.setOnClickListener(this);
        this.f32541d.setOnClickListener(this);
        this.f32542e.setOnClickListener(this);
        this.f32544g.setOnClickListener(this);
        this.f32545h.setOnClickListener(this);
        this.f32543f.setOnClickListener(this);
        this.f32546i.setOnClickListener(this);
        this.f32547j.setOnClickListener(this);
        this.f32548k.setOnClickListener(this);
        this.f32549l.setOnClickListener(this);
        this.f32551n.setOnClickListener(this);
        this.f32550m.setOnClickListener(this);
        ((View) this.f32540c.getParent()).setVisibility(8);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32557t = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.Q0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.P0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.R0, new a(R.id.f17848a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.S0, new a(R.id.f17850b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.Y0, new a(R.id.up, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.up_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.f50907a1, new a(R.id.down, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.down_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.X0, new a(R.id.left, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.left_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.Z0, new a(R.id.right, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.right_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.T0, new a(R.id.f17865l1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.V0, new a(R.id.f17866l2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l2_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.U0, new a(R.id.f17871r1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        this.f32557t.put(com.join.mgps.joystick.map.b.W0, new a(R.id.f17872r2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r2_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.b(str)) {
                this.f32555r.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32555r;
        if (map == null || map.size() == 0) {
            this.f32555r.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50932j, 104);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50941m, 21);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50947o, 20);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50944n, 19);
            this.f32555r.put(com.join.mgps.joystick.map.b.f50950p, 22);
        }
        Map<String, String> V0 = V0();
        this.f32556s = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32556s.put(com.join.mgps.joystick.map.b.P0, com.join.mgps.joystick.map.b.f50911c);
            this.f32556s.put(com.join.mgps.joystick.map.b.Q0, com.join.mgps.joystick.map.b.f50914d);
            this.f32556s.put(com.join.mgps.joystick.map.b.R0, com.join.mgps.joystick.map.b.f50923g);
            this.f32556s.put(com.join.mgps.joystick.map.b.S0, com.join.mgps.joystick.map.b.f50926h);
            this.f32556s.put(com.join.mgps.joystick.map.b.T0, com.join.mgps.joystick.map.b.f50929i);
            this.f32556s.put(com.join.mgps.joystick.map.b.U0, com.join.mgps.joystick.map.b.f50935k);
            this.f32556s.put(com.join.mgps.joystick.map.b.V0, com.join.mgps.joystick.map.b.f50932j);
            this.f32556s.put(com.join.mgps.joystick.map.b.W0, com.join.mgps.joystick.map.b.f50938l);
            this.f32556s.put(com.join.mgps.joystick.map.b.X0, com.join.mgps.joystick.map.b.f50941m);
            this.f32556s.put(com.join.mgps.joystick.map.b.Y0, com.join.mgps.joystick.map.b.f50944n);
            this.f32556s.put(com.join.mgps.joystick.map.b.Z0, com.join.mgps.joystick.map.b.f50950p);
            this.f32556s.put(com.join.mgps.joystick.map.b.f50907a1, com.join.mgps.joystick.map.b.f50947o);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.f50910b1.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32558u = true;
        this.f32554q.clear();
        this.f32554q.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.P0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.Q0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.R0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.S0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.T0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.U0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50932j, com.join.mgps.joystick.map.b.V0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50938l, com.join.mgps.joystick.map.b.W0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50941m, com.join.mgps.joystick.map.b.X0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50944n, com.join.mgps.joystick.map.b.Y0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50950p, com.join.mgps.joystick.map.b.Z0);
        this.f32554q.put(com.join.mgps.joystick.map.b.f50947o, com.join.mgps.joystick.map.b.f50907a1);
        this.f32556s.clear();
        this.f32556s.put(com.join.mgps.joystick.map.b.P0, com.join.mgps.joystick.map.b.f50911c);
        this.f32556s.put(com.join.mgps.joystick.map.b.Q0, com.join.mgps.joystick.map.b.f50914d);
        this.f32556s.put(com.join.mgps.joystick.map.b.R0, com.join.mgps.joystick.map.b.f50923g);
        this.f32556s.put(com.join.mgps.joystick.map.b.S0, com.join.mgps.joystick.map.b.f50926h);
        this.f32556s.put(com.join.mgps.joystick.map.b.T0, com.join.mgps.joystick.map.b.f50929i);
        this.f32556s.put(com.join.mgps.joystick.map.b.U0, com.join.mgps.joystick.map.b.f50935k);
        this.f32556s.put(com.join.mgps.joystick.map.b.V0, com.join.mgps.joystick.map.b.f50932j);
        this.f32556s.put(com.join.mgps.joystick.map.b.W0, com.join.mgps.joystick.map.b.f50938l);
        this.f32556s.put(com.join.mgps.joystick.map.b.X0, com.join.mgps.joystick.map.b.f50941m);
        this.f32556s.put(com.join.mgps.joystick.map.b.Y0, com.join.mgps.joystick.map.b.f50944n);
        this.f32556s.put(com.join.mgps.joystick.map.b.Z0, com.join.mgps.joystick.map.b.f50950p);
        this.f32556s.put(com.join.mgps.joystick.map.b.f50907a1, com.join.mgps.joystick.map.b.f50947o);
        for (String str : this.f32556s.keySet()) {
            a aVar = this.f32557t.get(str);
            ((TextView) findViewById(aVar.f32569h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32556s.get(str)));
            ((Button) findViewById(aVar.f32562a)).setBackgroundResource(aVar.f32563b);
            if (aVar.f32566e != 0) {
                ((Button) findViewById(aVar.f32562a)).setTextColor(getResources().getColor(aVar.f32566e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.WSC, b1(this.f32554q));
        this.f32554q.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32557t.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32557t.get(key);
            if (this.f32554q.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32562a);
                if (aVar.f32566e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32568g));
                }
                button.setBackgroundResource(aVar.f32565d);
                ((TextView) findViewById(aVar.f32569h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32554q, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32562a);
                if (aVar.f32566e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32566e));
                }
                button2.setBackgroundResource(aVar.f32563b);
            }
        }
    }

    private void f1() {
        this.f32559v = new ArrayList();
        this.f32560w = new ArrayList();
        for (String str : this.f32556s.keySet()) {
            if (!this.f32554q.containsValue(str)) {
                this.f32560w.add(str);
            }
        }
        for (String str2 : this.f32556s.values()) {
            if (!this.f32554q.containsKey(str2)) {
                this.f32559v.add(str2);
            }
        }
        Iterator<String> it2 = this.f32560w.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32556s.get(next);
            if (this.f32559v.contains(str3)) {
                it2.remove();
                this.f32559v.remove(str3);
                this.f32554q.put(str3, next);
            }
        }
        if (this.f32559v.size() >= this.f32560w.size()) {
            for (int i2 = 0; i2 < this.f32560w.size(); i2++) {
                this.f32554q.put(this.f32559v.get(i2), this.f32560w.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32556s.keySet()) {
            String str2 = this.f32556s.get(str);
            a aVar = this.f32557t.get(str);
            if (this.f32555r.containsKey(str2)) {
                ((TextView) findViewById(aVar.f32569h)).setText(com.join.mgps.joystick.map.b.f50905a.get(str2));
            } else {
                ((TextView) findViewById(aVar.f32569h)).setText("");
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
        if (this.f32558u) {
            this.f32558u = false;
            finish();
            return;
        }
        if (this.f32554q.size() < 12) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.WSC, b1(this.f32554q));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        Button button;
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32555r.containsValue(Integer.valueOf(i2)) && (button = this.f32561x) != null) {
                String str = (String) button.getTag();
                String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32555r, Integer.valueOf(i2));
                if (this.f32554q.containsKey(str2)) {
                    ((TextView) findViewById(this.f32557t.get(this.f32554q.get(str2)).f32569h)).setText("");
                }
                if (this.f32556s.containsValue(str2)) {
                    ((TextView) findViewById(this.f32557t.get((String) com.join.mgps.joystick.map.b.c(this.f32556s, str2)).f32569h)).setText("");
                }
                this.f32554q.put(str2, str);
                this.f32558u = false;
                this.f32561x.setBackgroundResource(this.f32557t.get(str).f32565d);
                this.f32561x = null;
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
        if (this.f32554q.containsValue(str)) {
            return;
        }
        Button button = this.f32561x;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32557t.get(this.f32561x.getTag());
            this.f32561x.setBackgroundResource(aVar.f32563b);
            if (aVar.f32566e != 0) {
                this.f32561x.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32561x = button2;
        a aVar2 = this.f32557t.get(button2.getTag());
        this.f32561x.setBackgroundResource(aVar2.f32564c);
        if (aVar2.f32566e != 0) {
            this.f32561x.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
