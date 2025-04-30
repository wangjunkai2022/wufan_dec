package com.join.mgps.dialog;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.dialog_download_high_speed)
/* loaded from: classes3.dex */
public class DownloadHighSpeedDialog extends BaseFragmentActivity implements View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f47338a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f47339b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f47340c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    String f47341d;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean F0(View view, MotionEvent motionEvent) {
        Rect rect = new Rect();
        View view2 = this.f47339b;
        if (view2 != null) {
            view2.getGlobalVisibleRect(rect);
        }
        rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        i2.a(this).b("已接入专属通道，加速成功！");
        g1.f.G().B(this.f47341d);
        UtilsMy.r3(this, this.f47341d);
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.k(this.f47341d));
        com.papa.sim.statistic.p.l(this).K1(Event.DownloadAcceleration, new Ext());
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        TextView textView = this.f47340c;
        textView.setText("本次下载预计可提速" + (new Random().nextInt(20) + 30) + "%");
        this.f47338a.setOnTouchListener(this);
        com.papa.sim.statistic.p.l(this).K1(Event.AccelerationPopup, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        getWindow().setAttributes(attributes);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        getWindow().getDecorView().setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.dialog.f0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean F0;
                F0 = DownloadHighSpeedDialog.this.F0(view, motionEvent);
                return F0;
            }
        });
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f47339b != null) {
            return motionEvent.getX() < ((float) this.f47339b.getLeft()) || motionEvent.getX() > this.f47339b.getX() + ((float) this.f47339b.getMeasuredWidth()) || motionEvent.getY() < ((float) this.f47339b.getTop()) || motionEvent.getY() > this.f47339b.getY() + ((float) this.f47339b.getMeasuredHeight());
        }
        return false;
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.z1.o(this, 16777215, true);
    }
}
