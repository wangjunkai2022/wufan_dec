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
@EActivity(R.layout.activity_sfc_key_map)
/* loaded from: classes3.dex */
public class HandShankSFCActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, String> f32471c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32472d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32473e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32474f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32475g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32476h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32477i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32478j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f32479k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f32480l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    Button f32481m;

    /* renamed from: n  reason: collision with root package name */
    private Button f32482n;

    /* renamed from: o  reason: collision with root package name */
    private Map<String, String> f32483o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    private Map<String, Integer> f32484p = new HashMap();

    /* renamed from: q  reason: collision with root package name */
    private Map<String, String> f32485q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    private Map<String, a> f32486r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32487s;

    /* renamed from: t  reason: collision with root package name */
    private List<String> f32488t;

    /* renamed from: u  reason: collision with root package name */
    private List<String> f32489u;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32490a;

        /* renamed from: b  reason: collision with root package name */
        public int f32491b;

        /* renamed from: c  reason: collision with root package name */
        public int f32492c;

        /* renamed from: d  reason: collision with root package name */
        public int f32493d;

        /* renamed from: e  reason: collision with root package name */
        public int f32494e;

        /* renamed from: f  reason: collision with root package name */
        public int f32495f;

        /* renamed from: g  reason: collision with root package name */
        public int f32496g;

        /* renamed from: h  reason: collision with root package name */
        public int f32497h;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f32490a = i2;
            this.f32491b = i4;
            this.f32492c = i5;
            this.f32493d = i6;
            this.f32494e = i7;
            this.f32495f = i8;
            this.f32496g = i9;
            this.f32497h = i10;
        }
    }

    private Map<String, String> V0() {
        HashMap hashMap = new HashMap();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.SFC.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.f50927h0.entrySet()) {
            hashMap.put(entry.getKey(), (String) c4.get(entry.getValue()));
        }
        return hashMap;
    }

    private void W0() {
        this.f32479k.setText("SFC手柄设置");
        this.f32472d.setTag(com.join.mgps.joystick.map.b.Z);
        this.f32473e.setTag(com.join.mgps.joystick.map.b.f50906a0);
        this.f32472d.setText("选择");
        this.f32473e.setText("开始");
        this.f32472d.setOnClickListener(this);
        this.f32473e.setOnClickListener(this);
        this.f32474f.setOnClickListener(this);
        this.f32475g.setOnClickListener(this);
        this.f32476h.setOnClickListener(this);
        this.f32477i.setOnClickListener(this);
        this.f32478j.setOnClickListener(this);
        this.f32480l.setOnClickListener(this);
        this.f32481m.setOnClickListener(this);
    }

    private void X0() {
        HashMap hashMap = new HashMap();
        this.f32486r = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.f50906a0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.Z, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.f50909b0, new a(R.id.f17877x, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.x_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.f50912c0, new a(R.id.f17848a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.f50915d0, new a(R.id.f17878y, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.y_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.f50918e0, new a(R.id.f17850b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.f50921f0, new a(R.id.f17865l1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.f32486r.put(com.join.mgps.joystick.map.b.f50924g0, new a(R.id.f17871r1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        Y0();
    }

    private void Y0() {
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            String str2 = (String) c4.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.f32484p.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.f32484p;
        if (map == null || map.size() == 0) {
            this.f32484p.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50932j, 104);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32484p.put(com.join.mgps.joystick.map.b.f50956r, 107);
        }
        Map<String, String> V0 = V0();
        this.f32485q = V0;
        if (V0 == null || V0.size() == 0) {
            this.f32485q.put(com.join.mgps.joystick.map.b.Z, com.join.mgps.joystick.map.b.f50911c);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50906a0, com.join.mgps.joystick.map.b.f50914d);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50909b0, com.join.mgps.joystick.map.b.f50917e);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50912c0, com.join.mgps.joystick.map.b.f50923g);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50915d0, com.join.mgps.joystick.map.b.f50920f);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50918e0, com.join.mgps.joystick.map.b.f50926h);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50921f0, com.join.mgps.joystick.map.b.f50929i);
            this.f32485q.put(com.join.mgps.joystick.map.b.f50924g0, com.join.mgps.joystick.map.b.f50935k);
        }
    }

    private Map<String, String> b1(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, com.join.mgps.joystick.map.b.f50927h0.get(map.get(str)));
        }
        return hashMap;
    }

    private void c1() {
        this.f32487s = true;
        this.f32483o.clear();
        this.f32483o.put(com.join.mgps.joystick.map.b.f50911c, com.join.mgps.joystick.map.b.Z);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50914d, com.join.mgps.joystick.map.b.f50906a0);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50917e, com.join.mgps.joystick.map.b.f50909b0);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50923g, com.join.mgps.joystick.map.b.f50912c0);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50920f, com.join.mgps.joystick.map.b.f50915d0);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50926h, com.join.mgps.joystick.map.b.f50918e0);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50929i, com.join.mgps.joystick.map.b.f50921f0);
        this.f32483o.put(com.join.mgps.joystick.map.b.f50935k, com.join.mgps.joystick.map.b.f50924g0);
        this.f32485q.clear();
        this.f32485q.put(com.join.mgps.joystick.map.b.Z, com.join.mgps.joystick.map.b.f50911c);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50906a0, com.join.mgps.joystick.map.b.f50914d);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50909b0, com.join.mgps.joystick.map.b.f50917e);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50912c0, com.join.mgps.joystick.map.b.f50923g);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50915d0, com.join.mgps.joystick.map.b.f50920f);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50918e0, com.join.mgps.joystick.map.b.f50926h);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50921f0, com.join.mgps.joystick.map.b.f50929i);
        this.f32485q.put(com.join.mgps.joystick.map.b.f50924g0, com.join.mgps.joystick.map.b.f50935k);
        for (String str : this.f32485q.keySet()) {
            a aVar = this.f32486r.get(str);
            ((TextView) findViewById(aVar.f32497h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32485q.get(str)));
            ((Button) findViewById(aVar.f32490a)).setBackgroundResource(aVar.f32491b);
            if (aVar.f32494e != 0) {
                ((Button) findViewById(aVar.f32490a)).setTextColor(getResources().getColor(aVar.f32494e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.SFC, b1(this.f32483o));
        this.f32483o.clear();
    }

    private void e1() {
        for (Map.Entry<String, a> entry : this.f32486r.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32486r.get(key);
            if (this.f32483o.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32490a);
                if (aVar.f32494e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32496g));
                }
                button.setBackgroundResource(aVar.f32493d);
                ((TextView) findViewById(aVar.f32497h)).setText(com.join.mgps.joystick.map.b.f50905a.get(com.join.mgps.joystick.map.b.c(this.f32483o, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f32490a);
                if (aVar.f32494e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32494e));
                }
                button2.setBackgroundResource(aVar.f32491b);
            }
        }
    }

    private void f1() {
        this.f32488t = new ArrayList();
        this.f32489u = new ArrayList();
        for (String str : this.f32485q.keySet()) {
            if (!this.f32483o.containsValue(str)) {
                this.f32489u.add(str);
            }
        }
        for (String str2 : this.f32485q.values()) {
            if (!this.f32483o.containsKey(str2)) {
                this.f32488t.add(str2);
            }
        }
        Iterator<String> it2 = this.f32489u.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.f32485q.get(next);
            if (this.f32488t.contains(str3)) {
                it2.remove();
                this.f32488t.remove(str3);
                this.f32483o.put(str3, next);
            }
        }
        if (this.f32488t.size() >= this.f32489u.size()) {
            for (int i2 = 0; i2 < this.f32489u.size(); i2++) {
                this.f32483o.put(this.f32488t.get(i2), this.f32489u.get(i2));
            }
        }
    }

    private void initView() {
        for (String str : this.f32485q.keySet()) {
            ((TextView) findViewById(this.f32486r.get(str).f32497h)).setText(com.join.mgps.joystick.map.b.f50905a.get(this.f32485q.get(str)));
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
        if (this.f32487s) {
            this.f32487s = false;
            finish();
            return;
        }
        if (this.f32483o.size() < 8) {
            f1();
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.SFC, b1(this.f32483o));
        finish();
    }

    public boolean a1(int i2, KeyEvent keyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (this.f32484p.containsValue(Integer.valueOf(i2))) {
                if (i2 == 4) {
                    finish();
                    return true;
                }
                Button button = this.f32482n;
                if (button != null) {
                    String str = (String) button.getTag();
                    String str2 = (String) com.join.mgps.joystick.map.b.c(this.f32484p, Integer.valueOf(i2));
                    if (this.f32483o.containsKey(str2)) {
                        ((TextView) findViewById(this.f32486r.get(this.f32483o.get(str2)).f32497h)).setText("");
                    }
                    if (this.f32485q.containsValue(str2)) {
                        ((TextView) findViewById(this.f32486r.get((String) com.join.mgps.joystick.map.b.c(this.f32485q, str2)).f32497h)).setText("");
                    }
                    this.f32483o.put(str2, str);
                    this.f32487s = false;
                    this.f32482n.setBackgroundResource(this.f32486r.get(str).f32493d);
                    this.f32482n = null;
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
        if (this.f32483o.containsValue(str)) {
            return;
        }
        Button button = this.f32482n;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32486r.get(this.f32482n.getTag());
            this.f32482n.setBackgroundResource(aVar.f32491b);
            if (aVar.f32494e != 0) {
                this.f32482n.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32482n = button2;
        a aVar2 = this.f32486r.get(button2.getTag());
        this.f32482n.setBackgroundResource(aVar2.f32492c);
        if (aVar2.f32494e != 0) {
            this.f32482n.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
