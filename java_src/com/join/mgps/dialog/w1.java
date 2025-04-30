package com.join.mgps.dialog;

import android.content.Context;
import android.os.CountDownTimer;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dialog.w1;
/* compiled from: SimulatorNotifyDialog.java */
/* loaded from: classes3.dex */
public class w1 extends q implements View.OnClickListener {

    /* renamed from: j  reason: collision with root package name */
    private TextView f48034j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f48035k;

    /* renamed from: l  reason: collision with root package name */
    private ImageView f48036l;

    /* renamed from: m  reason: collision with root package name */
    private Button f48037m;

    /* renamed from: n  reason: collision with root package name */
    private CheckBox f48038n;

    /* renamed from: o  reason: collision with root package name */
    private b f48039o;

    /* renamed from: p  reason: collision with root package name */
    private CountDownTimer f48040p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f48041q;

    /* renamed from: r  reason: collision with root package name */
    private Handler f48042r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimulatorNotifyDialog.java */
    /* loaded from: classes3.dex */
    public class a extends CountDownTimer {
        a(long j4, long j5) {
            super(j4, j5);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            w1.this.f48037m.setEnabled(true);
            w1.this.f48037m.setText("开始挑战");
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (w1.this.f48041q) {
                return;
            }
            w1.this.f48042r.postDelayed(new Runnable() { // from class: com.join.mgps.dialog.v1
                @Override // java.lang.Runnable
                public final void run() {
                    w1.a.this.b();
                }
            }, 200L);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            Button button = w1.this.f48037m;
            button.setText("开始挑战（" + (j4 / 1000) + "）");
        }
    }

    /* compiled from: SimulatorNotifyDialog.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(boolean z3);

        void onClose();

        void onConfirm();
    }

    public w1(@NonNull Context context) {
        this(context, R.style.Dialog);
    }

    private void q() {
        this.f48034j = (TextView) findViewById(R.id.tv_title);
        this.f48035k = (TextView) findViewById(R.id.tv_content);
        this.f48036l = (ImageView) findViewById(R.id.iv_close);
        this.f48037m = (Button) findViewById(R.id.btn_ok);
        this.f48038n = (CheckBox) findViewById(R.id.chk_notify);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(CompoundButton compoundButton, boolean z3) {
        b bVar = this.f48039o;
        if (bVar != null) {
            bVar.a(z3);
        }
    }

    private void t() {
        this.f48037m.setOnClickListener(this);
        this.f48036l.setOnClickListener(this);
        this.f48038n.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.dialog.u1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                w1.this.r(compoundButton, z3);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_ok) {
            dismiss();
            b bVar = this.f48039o;
            if (bVar != null) {
                bVar.onConfirm();
            }
        } else if (view.getId() == R.id.iv_close) {
            this.f48041q = true;
            b bVar2 = this.f48039o;
            if (bVar2 != null) {
                bVar2.onClose();
            }
            CountDownTimer countDownTimer = this.f48040p;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            dismiss();
        }
    }

    public w1 s(CharSequence charSequence) {
        this.f48037m.setText(charSequence);
        return this;
    }

    @Override // com.join.mgps.dialog.q, android.app.Dialog
    public void show() {
        super.show();
        this.f48037m.setEnabled(false);
        if (this.f48040p == null) {
            a aVar = new a(5000L, 1000L);
            this.f48040p = aVar;
            aVar.start();
        }
    }

    public void u(b bVar) {
        this.f48039o = bVar;
    }

    public w1 v(CharSequence charSequence) {
        this.f48035k.setText(charSequence);
        return this;
    }

    public w1 w(CharSequence charSequence) {
        this.f48034j.setText(charSequence);
        return this;
    }

    public w1(@NonNull Context context, int i2) {
        super(context, i2);
        this.f48041q = false;
        setContentView(R.layout.dialog_simulator_notify);
        g(false);
        this.f48042r = new Handler();
        q();
        t();
    }
}
