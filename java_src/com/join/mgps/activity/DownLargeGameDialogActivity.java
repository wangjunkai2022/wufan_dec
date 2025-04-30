package com.join.mgps.activity;

import android.content.Context;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.ResultMainBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.downlarge_game_dialog_activity)
/* loaded from: classes3.dex */
public class DownLargeGameDialogActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f29581a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f29582b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f29583c;

    /* renamed from: d  reason: collision with root package name */
    IntentDateBean f29584d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.d f29585e;

    /* renamed from: f  reason: collision with root package name */
    Context f29586f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        IntentUtil.getInstance().intentActivity(this.f29586f, this.f29584d);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(String str, String str2) {
        this.f29581a.setText(str);
        this.f29582b.setText(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f29586f = this;
        this.f29585e = com.join.mgps.rpc.impl.c.P1();
        IntentDateBean intentDateBean = new IntentDateBean();
        this.f29584d = intentDateBean;
        intentDateBean.setLink_type(4);
        this.f29584d.setLink_type_val("http://anv3cjapi.5fun.com/member/vip_view/welcome?go=vip");
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            ResultMainBean<List<RecomDatabean>> o02 = this.f29585e.o0(RequestBeanUtil.getInstance(this.f29586f).getSimulatorRequest("", "", 0));
            if (o02 == null || o02.getMessages() == null || o02.getMessages().getData() == null || o02.getMessages().getData().size() <= 0) {
                return;
            }
            RecomDatabean recomDatabean = o02.getMessages().getData().get(0);
            this.f29584d = recomDatabean.getSub().get(0).getIntentDataBean();
            G0(recomDatabean.getMain().getTitle(), recomDatabean.getMain().getSub_title());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
