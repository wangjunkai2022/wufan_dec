package com.join.mgps.fragment.roomlist;

import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: RaceRoomFragment.java */
@EFragment(R.layout.fragment_raceroom)
/* loaded from: classes4.dex */
public class a extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    WebView f50072a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        WebSettings settings = this.f50072a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(false);
        settings.setCacheMode(2);
    }
}
