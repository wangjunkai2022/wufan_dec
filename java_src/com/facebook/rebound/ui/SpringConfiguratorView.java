package com.facebook.rebound.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import com.facebook.rebound.g;
import com.facebook.rebound.i;
import com.facebook.rebound.k;
import com.facebook.rebound.l;
import com.facebook.rebound.m;
import com.facebook.rebound.o;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class SpringConfiguratorView extends FrameLayout {

    /* renamed from: n  reason: collision with root package name */
    private static final int f13480n = 100000;

    /* renamed from: o  reason: collision with root package name */
    private static final float f13481o = 0.0f;

    /* renamed from: p  reason: collision with root package name */
    private static final float f13482p = 200.0f;

    /* renamed from: q  reason: collision with root package name */
    private static final float f13483q = 0.0f;

    /* renamed from: r  reason: collision with root package name */
    private static final float f13484r = 50.0f;

    /* renamed from: s  reason: collision with root package name */
    private static final DecimalFormat f13485s = new DecimalFormat("#.#");

    /* renamed from: a  reason: collision with root package name */
    private final e f13486a;

    /* renamed from: b  reason: collision with root package name */
    private final List<k> f13487b;

    /* renamed from: c  reason: collision with root package name */
    private final i f13488c;

    /* renamed from: d  reason: collision with root package name */
    private final float f13489d;

    /* renamed from: e  reason: collision with root package name */
    private final float f13490e;

    /* renamed from: f  reason: collision with root package name */
    private final l f13491f;

    /* renamed from: g  reason: collision with root package name */
    private final int f13492g;

    /* renamed from: h  reason: collision with root package name */
    private SeekBar f13493h;

    /* renamed from: i  reason: collision with root package name */
    private SeekBar f13494i;

    /* renamed from: j  reason: collision with root package name */
    private Spinner f13495j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f13496k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f13497l;

    /* renamed from: m  reason: collision with root package name */
    private k f13498m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements View.OnTouchListener {
        private b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                SpringConfiguratorView.this.q();
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    private class c implements m {
        private c() {
        }

        @Override // com.facebook.rebound.m
        public void a(i iVar) {
            float f4 = (float) iVar.f();
            float f5 = SpringConfiguratorView.this.f13490e;
            SpringConfiguratorView.this.setTranslationY((f4 * (SpringConfiguratorView.this.f13489d - f5)) + f5);
        }

        @Override // com.facebook.rebound.m
        public void b(i iVar) {
        }

        @Override // com.facebook.rebound.m
        public void c(i iVar) {
        }

        @Override // com.facebook.rebound.m
        public void d(i iVar) {
        }
    }

    /* loaded from: classes2.dex */
    private class d implements SeekBar.OnSeekBarChangeListener {
        private d() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i2, boolean z3) {
            if (seekBar == SpringConfiguratorView.this.f13493h) {
                double d4 = ((i2 * 200.0f) / 100000.0f) + 0.0f;
                SpringConfiguratorView.this.f13498m.f13471b = g.d(d4);
                String format = SpringConfiguratorView.f13485s.format(d4);
                SpringConfiguratorView.this.f13497l.setText("T:" + format);
            }
            if (seekBar == SpringConfiguratorView.this.f13494i) {
                double d5 = ((i2 * 50.0f) / 100000.0f) + 0.0f;
                SpringConfiguratorView.this.f13498m.f13470a = g.a(d5);
                String format2 = SpringConfiguratorView.f13485s.format(d5);
                SpringConfiguratorView.this.f13496k.setText("F:" + format2);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final Context f13502a;

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f13503b = new ArrayList();

        public e(Context context) {
            this.f13502a = context;
        }

        public void a(String str) {
            this.f13503b.add(str);
            notifyDataSetChanged();
        }

        public void b() {
            this.f13503b.clear();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f13503b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f13503b.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = new TextView(this.f13502a);
                textView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                int f4 = com.facebook.rebound.ui.a.f(12.0f, SpringConfiguratorView.this.getResources());
                textView.setPadding(f4, f4, f4, f4);
                textView.setTextColor(SpringConfiguratorView.this.f13492g);
            } else {
                textView = (TextView) view;
            }
            textView.setText(this.f13503b.get(i2));
            return textView;
        }
    }

    /* loaded from: classes2.dex */
    private class f implements AdapterView.OnItemSelectedListener {
        private f() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j4) {
            SpringConfiguratorView springConfiguratorView = SpringConfiguratorView.this;
            springConfiguratorView.f13498m = (k) springConfiguratorView.f13487b.get(i2);
            SpringConfiguratorView springConfiguratorView2 = SpringConfiguratorView.this;
            springConfiguratorView2.r(springConfiguratorView2.f13498m);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public SpringConfiguratorView(Context context) {
        this(context, null);
    }

    private View o(Context context) {
        Resources resources = getResources();
        int f4 = com.facebook.rebound.ui.a.f(5.0f, resources);
        int f5 = com.facebook.rebound.ui.a.f(10.0f, resources);
        int f6 = com.facebook.rebound.ui.a.f(20.0f, resources);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, f4, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(com.facebook.rebound.ui.a.a(-1, com.facebook.rebound.ui.a.f(300.0f, resources)));
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams b4 = com.facebook.rebound.ui.a.b();
        b4.setMargins(0, f6, 0, 0);
        frameLayout2.setLayoutParams(b4);
        frameLayout2.setBackgroundColor(Color.argb(100, 0, 0, 0));
        frameLayout.addView(frameLayout2);
        this.f13495j = new Spinner(context, 0);
        FrameLayout.LayoutParams c4 = com.facebook.rebound.ui.a.c();
        c4.gravity = 48;
        c4.setMargins(f5, f5, f5, 0);
        this.f13495j.setLayoutParams(c4);
        frameLayout2.addView(this.f13495j);
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams c5 = com.facebook.rebound.ui.a.c();
        c5.setMargins(0, 0, 0, com.facebook.rebound.ui.a.f(80.0f, resources));
        c5.gravity = 80;
        linearLayout.setLayoutParams(c5);
        linearLayout.setOrientation(1);
        frameLayout2.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        FrameLayout.LayoutParams c6 = com.facebook.rebound.ui.a.c();
        c6.setMargins(f5, f5, f5, f6);
        linearLayout2.setPadding(f5, f5, f5, f5);
        linearLayout2.setLayoutParams(c6);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2);
        SeekBar seekBar = new SeekBar(context);
        this.f13493h = seekBar;
        seekBar.setLayoutParams(layoutParams);
        linearLayout2.addView(this.f13493h);
        TextView textView = new TextView(getContext());
        this.f13497l = textView;
        textView.setTextColor(this.f13492g);
        FrameLayout.LayoutParams a4 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.f(50.0f, resources), -1);
        this.f13497l.setGravity(19);
        this.f13497l.setLayoutParams(a4);
        this.f13497l.setMaxLines(1);
        linearLayout2.addView(this.f13497l);
        LinearLayout linearLayout3 = new LinearLayout(context);
        FrameLayout.LayoutParams c7 = com.facebook.rebound.ui.a.c();
        c7.setMargins(f5, f5, f5, f6);
        linearLayout3.setPadding(f5, f5, f5, f5);
        linearLayout3.setLayoutParams(c7);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3);
        SeekBar seekBar2 = new SeekBar(context);
        this.f13494i = seekBar2;
        seekBar2.setLayoutParams(layoutParams);
        linearLayout3.addView(this.f13494i);
        TextView textView2 = new TextView(getContext());
        this.f13496k = textView2;
        textView2.setTextColor(this.f13492g);
        FrameLayout.LayoutParams a5 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.f(50.0f, resources), -1);
        this.f13496k.setGravity(19);
        this.f13496k.setLayoutParams(a5);
        this.f13496k.setMaxLines(1);
        linearLayout3.addView(this.f13496k);
        View view = new View(context);
        FrameLayout.LayoutParams a6 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.f(60.0f, resources), com.facebook.rebound.ui.a.f(40.0f, resources));
        a6.gravity = 49;
        view.setLayoutParams(a6);
        view.setOnTouchListener(new b());
        view.setBackgroundColor(Color.argb(255, 0, 164, 209));
        frameLayout.addView(view);
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        this.f13488c.x(this.f13488c.h() == 1.0d ? 0.0d : 1.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(k kVar) {
        int round = Math.round(((((float) g.c(kVar.f13471b)) - 0.0f) * 100000.0f) / 200.0f);
        int round2 = Math.round(((((float) g.b(kVar.f13470a)) - 0.0f) * 100000.0f) / 50.0f);
        this.f13493h.setProgress(round);
        this.f13494i.setProgress(round2);
    }

    public void n() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        this.f13488c.d();
    }

    public void p() {
        Map<k, String> b4 = this.f13491f.b();
        this.f13486a.b();
        this.f13487b.clear();
        for (Map.Entry<k, String> entry : b4.entrySet()) {
            if (entry.getKey() != k.f13469c) {
                this.f13487b.add(entry.getKey());
                this.f13486a.a(entry.getValue());
            }
        }
        this.f13487b.add(k.f13469c);
        this.f13486a.a(b4.get(k.f13469c));
        this.f13486a.notifyDataSetChanged();
        if (this.f13487b.size() > 0) {
            this.f13495j.setSelection(0);
        }
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @TargetApi(11)
    public SpringConfiguratorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13487b = new ArrayList();
        this.f13492g = Color.argb(255, 225, 225, 225);
        o m4 = o.m();
        this.f13491f = l.c();
        e eVar = new e(context);
        this.f13486a = eVar;
        Resources resources = getResources();
        this.f13490e = com.facebook.rebound.ui.a.f(40.0f, resources);
        float f4 = com.facebook.rebound.ui.a.f(280.0f, resources);
        this.f13489d = f4;
        i d4 = m4.d();
        this.f13488c = d4;
        d4.v(1.0d).x(1.0d).a(new c());
        addView(o(context));
        d dVar = new d();
        this.f13493h.setMax(100000);
        this.f13493h.setOnSeekBarChangeListener(dVar);
        this.f13494i.setMax(100000);
        this.f13494i.setOnSeekBarChangeListener(dVar);
        this.f13495j.setAdapter((SpinnerAdapter) eVar);
        this.f13495j.setOnItemSelectedListener(new f());
        p();
        setTranslationY(f4);
    }
}
