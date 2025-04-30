package com.join.mgps.activity;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_mygame_manager)
/* loaded from: classes3.dex */
public class MyGameManagerActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f34281a;

    /* renamed from: b  reason: collision with root package name */
    Fragment f34282b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        y1 y1Var = new y1();
        this.f34282b = y1Var;
        beginTransaction.add(R.id.frame, y1Var);
        beginTransaction.commit();
        com.papa.sim.statistic.p.l(this).K1(Event.enterMyGameCentre, new Ext());
    }
}
