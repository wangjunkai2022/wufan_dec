package com.join.mgps.activity;

import android.widget.ImageView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.fight_introduction_activity)
/* loaded from: classes3.dex */
public class FightIntroductionActivity extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f29761a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f29762b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (this.f29761a == 1) {
            this.f29762b.setImageDrawable(getResources().getDrawable(R.drawable.wifi_help));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
