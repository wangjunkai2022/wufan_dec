package com.join.mgps.activity;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class BaseAccountActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    protected ImageView f28401a;

    /* renamed from: b  reason: collision with root package name */
    protected TextView f28402b;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseAccountActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E0(View.OnClickListener onClickListener) {
        this.f28401a.setOnClickListener(onClickListener);
    }

    public void F0(String str) {
        this.f28402b.setText(str);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        View inflate = LayoutInflater.from(this).inflate(R.layout.account_base_activity, (ViewGroup) null);
        ((FrameLayout) inflate.findViewById(R.id.childLayout)).addView(LayoutInflater.from(this).inflate(i2, (ViewGroup) null));
        super.setContentView(inflate);
        this.f28401a = (ImageView) inflate.findViewById(R.id.backButn);
        this.f28402b = (TextView) inflate.findViewById(R.id.titleText);
        this.f28401a.setOnClickListener(new a());
        com.join.mgps.Util.z1.o(this, -1215968, false);
    }
}
