package com.join.mgps.activity;

import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: CheckLocalGameFragment.java */
@EFragment(R.layout.fragment_check_local_game)
/* loaded from: classes3.dex */
public class b extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f36745a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f36746b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f36747c;

    /* renamed from: d  reason: collision with root package name */
    public String f36748d;

    /* renamed from: e  reason: collision with root package name */
    public CollectionBeanSub f36749e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f36745a.setText(this.f36748d);
        this.f36746b.setText(this.f36749e.getGame_name());
        String ico_remote = this.f36749e.getIco_remote();
        if (com.join.mgps.Util.d2.h(ico_remote)) {
            return;
        }
        this.f36747c.setImageURI(ico_remote);
    }
}
