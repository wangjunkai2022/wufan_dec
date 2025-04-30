package com.join.mgps.activity;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyCodes;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_fc_key_map1)
/* loaded from: classes3.dex */
public class HandShankFCActivity extends HandShankBaseActivity implements View.OnClickListener {
    View[] B;
    a[] C;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f32243c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f32244d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32245e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f32246f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f32247g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f32248h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f32249i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f32250j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f32251k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f32252l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    Button f32253m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    Button f32254n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f32255o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    Button f32256p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    Button f32257q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    Button f32258r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    Button f32259s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    Button f32260t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    Button f32261u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    Button f32262v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    TextView f32263w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    Button f32264x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f32265y;

    /* renamed from: z  reason: collision with root package name */
    final String f32266z = "FC游戏手柄设置";
    KeyMap.EmuMap A = KeyMap.EmuMap.FC;
    com.join.mgps.joystick.map.d D = new com.join.mgps.joystick.map.d(this.A);
    HashMap<String, String> E = new HashMap<>();
    HashMap<String, String> F = new HashMap<>();
    HashMap<String, String> G = new HashMap<>();
    View H = null;

    private View Y0(String str) {
        int i2 = 0;
        while (true) {
            View[] viewArr = this.B;
            if (viewArr == null || i2 >= viewArr.length) {
                break;
            }
            a aVar = (a) viewArr[i2].getTag();
            if (aVar != null && !TextUtils.isEmpty(aVar.f32268b) && aVar.f32268b.equals(str)) {
                return this.B[i2];
            }
            i2++;
        }
        return null;
    }

    private void a1() {
        com.join.mgps.joystick.map.d.f(this.A);
        for (Map.Entry entry : com.join.mgps.joystick.map.d.c(KeyMap.keySection).entrySet()) {
            this.E.put((String) entry.getValue(), (String) entry.getKey());
        }
        this.F.putAll(com.join.mgps.joystick.map.d.c(this.A.section));
        this.G.putAll(this.F);
    }

    private void initView() {
        this.B = new View[]{this.f32243c, this.f32244d, this.f32253m, this.f32251k, this.f32252l, this.f32245e, this.f32246f, this.f32247g, this.f32248h, this.f32249i, this.f32250j, this.f32254n, this.f32255o, this.f32256p, this.f32257q, this.f32258r, this.f32259s, this.f32260t, this.f32261u, this.f32262v};
        KeyCodes keyCodes = KeyCodes.KEY_A;
        int value = keyCodes.value();
        KeyCodes keyCodes2 = KeyCodes.KEY_B;
        KeyCodes keyCodes3 = KeyCodes.KEY_C;
        int value2 = keyCodes3.value();
        KeyCodes keyCodes4 = KeyCodes.KEY_D;
        a[] aVarArr = {new a(KeyCodes.KEY_SELECT), new a(KeyCodes.KEY_START), new a(value | keyCodes2.value() | keyCodes3.value()), new a(keyCodes.value() | keyCodes2.value()), new a(value2 | keyCodes4.value()), new a(keyCodes), new a(keyCodes2), new a(keyCodes3), new a(keyCodes4), new a(KeyCodes.KEY_E), new a(KeyCodes.KEY_F), new a(KeyCodes.KEY_1), new a(KeyCodes.KEY_2), new a(KeyCodes.KEY_3), new a(KeyCodes.KEY_4), new a(KeyCodes.KEY_SP0), new a(KeyCodes.KEY_SP1), new a(KeyCodes.KEY_SP2), new a(KeyCodes.KEY_SP3), new a(KeyCodes.KEY_SP4)};
        this.C = aVarArr;
        X0(this.B, aVarArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity
    public boolean L0(int i2, PadKeyEvent padKeyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(padKeyEvent.c())) {
            return false;
        }
        if (padKeyEvent.d() != 0) {
            d1(i2, N0(padKeyEvent));
        }
        return super.L0(i2, padKeyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        finish();
    }

    void V0(View view, String str) {
        if (view == null || view.getTag() == null) {
            return;
        }
        View Y0 = Y0(str);
        if (Y0 != null) {
            W0(Y0);
        }
        a aVar = (a) view.getTag();
        aVar.f32268b = str;
        this.G.put(aVar.f32267a, str);
        g1(view);
    }

    void W0(View view) {
        if (view == null || view.getTag() == null) {
            return;
        }
        a aVar = (a) view.getTag();
        aVar.f32268b = "";
        this.G.put(aVar.f32267a, "");
        g1(view);
    }

    void X0(View[] viewArr, a[] aVarArr) {
        for (int i2 = 0; viewArr != null && i2 < viewArr.length; i2++) {
            if (viewArr[i2] != null) {
                viewArr[i2].setOnClickListener(this);
                aVarArr[i2].b();
                viewArr[i2].setTag(aVarArr[i2]);
                g1(viewArr[i2]);
            }
        }
    }

    String Z0(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replace("KEY_", "").replace("BUTTON_", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f32263w.setText("FC游戏手柄设置");
        a1();
        initView();
    }

    boolean b1(int i2) {
        HashMap<String, String> hashMap = this.E;
        if (hashMap != null) {
            return hashMap.containsKey(i2 + "");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c1() {
        if (this.f32265y) {
            this.f32265y = false;
            finish();
            return;
        }
        com.join.mgps.joystick.map.d.m(this, this.A, this.G);
        finish();
    }

    public boolean d1(int i2, KeyEvent keyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            if (b1(i2) && this.H != null) {
                HashMap<String, String> hashMap = this.E;
                V0(this.H, hashMap.get(i2 + ""));
                this.f32265y = false;
            }
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e1() {
        this.G.clear();
        for (String str : this.F.keySet()) {
            this.F.put(str, "");
        }
        KeyMap.EmuMap emuMap = this.A;
        if (emuMap != null) {
            for (String str2 : emuMap.map.keySet()) {
                this.F.put(str2, this.A.map.get(str2));
            }
        }
        this.G.putAll(this.F);
        X0(this.B, this.C);
    }

    void f1(View view) {
        if (view == null) {
            return;
        }
        View view2 = this.H;
        if (view2 != null) {
            if (view2.getId() == view.getId()) {
                g1(this.H);
                return;
            }
            g1(this.H);
        }
        this.H = view;
        if (view instanceof Button) {
            view.setBackgroundResource(R.drawable.handshank_set_skey_selected);
            ((Button) view).setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
        }
    }

    void g1(View view) {
        if (view == null || view.getTag() == null) {
            return;
        }
        a aVar = (a) view.getTag();
        if (view instanceof Button) {
            if (aVar.a()) {
                view.setBackgroundResource(R.drawable.handshank_set_skey_pressed);
                Button button = (Button) view;
                button.setTextColor(getResources().getColor(R.color.handshank_key_set_pressed_txt));
                String Z0 = Z0(aVar.f32268b);
                if (TextUtils.isEmpty(Z0)) {
                    Z0 = "";
                }
                button.setText(Z0);
            } else {
                view.setBackgroundResource(R.drawable.handshank_set_skey_normal);
                Button button2 = (Button) view;
                button2.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
                button2.setText("待定");
            }
        }
        this.H = null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar = (a) view.getTag();
        f1(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        String f32267a;

        /* renamed from: b  reason: collision with root package name */
        String f32268b;

        public a(KeyCodes keyCodes) {
            String str = keyCodes.value() + "";
            this.f32267a = str;
            HashMap<String, String> hashMap = HandShankFCActivity.this.G;
            if (hashMap != null) {
                this.f32268b = hashMap.get(str);
            }
        }

        public boolean a() {
            return !TextUtils.isEmpty(this.f32268b);
        }

        public void b() {
            HashMap<String, String> hashMap = HandShankFCActivity.this.G;
            if (hashMap != null) {
                this.f32268b = hashMap.get(this.f32267a);
            }
        }

        public a(int i2) {
            String str = i2 + "";
            this.f32267a = str;
            HashMap<String, String> hashMap = HandShankFCActivity.this.G;
            if (hashMap != null) {
                this.f32268b = hashMap.get(str);
            }
        }

        public a(String str, String str2) {
            this.f32267a = str;
            this.f32268b = str2;
        }
    }
}
