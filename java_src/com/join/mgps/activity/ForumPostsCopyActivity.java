package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CopyTextViewNew;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
@WindowFeature({10})
@EActivity(R.layout.mg_forum_post_copy_activity)
/* loaded from: classes3.dex */
public class ForumPostsCopyActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    CopyTextViewNew f30307a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f30308b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    String f30309c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30308b.setVisibility(0);
        this.f30308b.setText("请长按自由复制");
        this.f30307a.setTextForum(this.f30309c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
