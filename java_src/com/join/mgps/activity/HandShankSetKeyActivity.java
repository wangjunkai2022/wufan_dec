package com.join.mgps.activity;

import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
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
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.handshank_set_key)
/* loaded from: classes3.dex */
public class HandShankSetKeyActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* renamed from: c  reason: collision with root package name */
    private Map<String, a> f32505c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f32506d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32507e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32508f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32509g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32510h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32511i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32512j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32513k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f32514l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    Button f32515m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    Button f32516n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f32517o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    Button f32518p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    Button f32519q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    Button f32520r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    String f32521s;

    /* renamed from: t  reason: collision with root package name */
    private Button f32522t;

    /* renamed from: u  reason: collision with root package name */
    private List<String> f32523u;

    /* renamed from: v  reason: collision with root package name */
    private List<String> f32524v;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f32525a;

        /* renamed from: b  reason: collision with root package name */
        public int f32526b;

        /* renamed from: c  reason: collision with root package name */
        public int f32527c;

        /* renamed from: d  reason: collision with root package name */
        public int f32528d;

        /* renamed from: e  reason: collision with root package name */
        public int f32529e;

        /* renamed from: f  reason: collision with root package name */
        public int f32530f;

        /* renamed from: g  reason: collision with root package name */
        public int f32531g;

        public a(int i2, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f32525a = i2;
            this.f32526b = i4;
            this.f32527c = i5;
            this.f32528d = i6;
            this.f32529e = i7;
            this.f32530f = i8;
            this.f32531g = i9;
        }
    }

    private void V0() {
        this.f32507e.setOnClickListener(this);
        this.f32508f.setOnClickListener(this);
        this.f32509g.setOnClickListener(this);
        this.f32510h.setOnClickListener(this);
        this.f32517o.setOnClickListener(this);
        this.f32518p.setOnClickListener(this);
        this.f32519q.setOnClickListener(this);
        this.f32520r.setOnClickListener(this);
        this.f32511i.setOnClickListener(this);
        this.f32514l.setOnClickListener(this);
        this.f32512j.setOnClickListener(this);
        this.f32513k.setOnClickListener(this);
        this.f32516n.setOnClickListener(this);
        this.f32515m.setOnClickListener(this);
    }

    private void W0() {
        HashMap hashMap = new HashMap();
        this.f32505c = hashMap;
        hashMap.put(com.join.mgps.joystick.map.b.f50929i, new a(R.id.f17865l1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50932j, new a(R.id.f17866l2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50935k, new a(R.id.f17871r1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50938l, new a(R.id.f17872r2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50920f, new a(R.id.f17878y, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50917e, new a(R.id.f17877x, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50923g, new a(R.id.f17848a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50926h, new a(R.id.f17850b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50911c, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50914d, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50944n, new a(R.id.up, R.drawable.handshank_set_top_normal, R.drawable.handshank_set_top_selected, R.drawable.handshank_set_top_pressed, 0, 0, 0));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50947o, new a(R.id.down, R.drawable.handshank_set_down_normal, R.drawable.handshank_set_down_selected, R.drawable.handshank_set_down_pressed, 0, 0, 0));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50941m, new a(R.id.left, R.drawable.handshank_set_left_normal, R.drawable.handshank_set_left_selected, R.drawable.handshank_set_left_pressed, 0, 0, 0));
        this.f32505c.put(com.join.mgps.joystick.map.b.f50950p, new a(R.id.right, R.drawable.handshank_set_right_normal, R.drawable.handshank_set_right_selected, R.drawable.handshank_set_right_pressed, 0, 0, 0));
        this.f32506d = new HashMap();
    }

    private void a1() {
        for (Map.Entry<String, a> entry : this.f32505c.entrySet()) {
            String key = entry.getKey();
            a aVar = this.f32505c.get(key);
            if (this.f32506d.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f32525a);
                if (aVar.f32529e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f32531g));
                }
                button.setBackgroundResource(aVar.f32528d);
            } else {
                Button button2 = (Button) findViewById(aVar.f32525a);
                if (aVar.f32529e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f32529e));
                }
                button2.setBackgroundResource(aVar.f32526b);
            }
        }
    }

    private void b1() {
        this.f32523u = new ArrayList();
        this.f32524v = new ArrayList();
        for (String str : com.join.mgps.joystick.map.b.f50908b.keySet()) {
            if (!this.f32506d.containsValue(str)) {
                this.f32524v.add(str);
            }
        }
        for (Integer num : com.join.mgps.joystick.map.b.f50908b.values()) {
            Map<String, String> map = this.f32506d;
            if (!map.containsKey(num + "")) {
                List<String> list = this.f32523u;
                list.add(num + "");
            }
        }
        Iterator<String> it2 = this.f32524v.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            Integer num2 = com.join.mgps.joystick.map.b.f50908b.get(next);
            List<String> list2 = this.f32523u;
            if (list2.contains(num2 + "")) {
                it2.remove();
                List<String> list3 = this.f32523u;
                list3.remove(num2 + "");
                Map<String, String> map2 = this.f32506d;
                map2.put(num2 + "", next);
            }
        }
        if (this.f32523u.size() == this.f32524v.size()) {
            for (int i2 = 0; i2 < this.f32523u.size(); i2++) {
                this.f32506d.put(this.f32523u.get(i2), this.f32524v.get(i2));
            }
        }
    }

    private void clear() {
        for (String str : this.f32505c.keySet()) {
            a aVar = this.f32505c.get(str);
            Button button = (Button) findViewById(aVar.f32525a);
            button.setBackgroundResource(aVar.f32526b);
            if (aVar.f32529e != 0) {
                button.setTextColor(getResources().getColor(aVar.f32529e));
            }
        }
        this.f32506d.clear();
        this.f32506d.put("108", com.join.mgps.joystick.map.b.f50914d);
        this.f32506d.put("109", com.join.mgps.joystick.map.b.f50911c);
        this.f32506d.put("99", com.join.mgps.joystick.map.b.f50917e);
        this.f32506d.put("96", com.join.mgps.joystick.map.b.f50923g);
        this.f32506d.put("100", com.join.mgps.joystick.map.b.f50920f);
        this.f32506d.put("97", com.join.mgps.joystick.map.b.f50926h);
        this.f32506d.put("102", com.join.mgps.joystick.map.b.f50929i);
        this.f32506d.put("104", com.join.mgps.joystick.map.b.f50932j);
        this.f32506d.put("103", com.join.mgps.joystick.map.b.f50935k);
        this.f32506d.put("105", com.join.mgps.joystick.map.b.f50938l);
        this.f32506d.put("21", com.join.mgps.joystick.map.b.f50941m);
        this.f32506d.put("19", com.join.mgps.joystick.map.b.f50944n);
        this.f32506d.put("22", com.join.mgps.joystick.map.b.f50950p);
        this.f32506d.put("20", com.join.mgps.joystick.map.b.f50947o);
        this.f32506d.put("107", com.join.mgps.joystick.map.b.f50956r);
        this.f32506d.put("106", com.join.mgps.joystick.map.b.f50953q);
        com.join.mgps.joystick.map.d.p(KeyMap.keySection, this.f32506d);
        this.f32506d.clear();
        Toast.makeText(this, "按钮重置成功", 1).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity
    public boolean L0(int i2, PadKeyEvent padKeyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(padKeyEvent.c())) {
            return false;
        }
        if (padKeyEvent.d() != 0) {
            Y0(i2, N0(padKeyEvent));
        }
        return super.L0(i2, padKeyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        if (TextUtils.isEmpty(this.f32521s)) {
            finish();
        } else if (this.f32521s.equals("first")) {
            Intent intent = new Intent(this, HandShankYesActivity_.class);
            intent.setFlags(603979776);
            startActivity(intent);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        if (this.f32506d.size() < 14) {
            b1();
        }
        this.f32506d.put("107", com.join.mgps.joystick.map.b.f50956r);
        this.f32506d.put("106", com.join.mgps.joystick.map.b.f50953q);
        com.join.mgps.joystick.map.d.p(KeyMap.keySection, this.f32506d);
        Intent intent = new Intent(this, HandShankYesActivity_.class);
        intent.setFlags(603979776);
        startActivity(intent);
        finish();
    }

    public boolean Y0(int i2, KeyEvent keyEvent) {
        Button button;
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (i2 != 106 && i2 != 107 && (button = this.f32522t) != null) {
                Map<String, String> map = this.f32506d;
                map.put(i2 + "", (String) button.getTag());
                this.f32522t.setBackgroundResource(this.f32505c.get(this.f32522t.getTag()).f32528d);
                this.f32522t.setTextColor(getResources().getColor(R.color.handshank_key_set_pressed_txt));
                this.f32522t = null;
                a1();
            }
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        W0();
        V0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = (String) view.getTag();
        if (this.f32506d.containsValue(str)) {
            return;
        }
        Button button = this.f32522t;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.f32505c.get(this.f32522t.getTag());
            this.f32522t.setBackgroundResource(aVar.f32526b);
            if (aVar.f32529e != 0) {
                this.f32522t.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.f32522t = button2;
        a aVar2 = this.f32505c.get(button2.getTag());
        this.f32522t.setBackgroundResource(aVar2.f32527c);
        if (aVar2.f32529e != 0) {
            this.f32522t.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
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
