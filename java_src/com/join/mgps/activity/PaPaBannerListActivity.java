package com.join.mgps.activity;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.fragment.s3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_papa_banner_list)
/* loaded from: classes.dex */
public class PaPaBannerListActivity extends BaseFragmentActivity {

    /* renamed from: m  reason: collision with root package name */
    public static final int f34541m = 1;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f34542a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    String f34543b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    boolean f34544c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    String f34545d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    boolean f34546e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34547f;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: g  reason: collision with root package name */
    ImageView f34548g;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: h  reason: collision with root package name */
    CustomerDownloadView f34549h;

    /* renamed from: i  reason: collision with root package name */
    Map<String, DownloadTask> f34550i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    Map<String, DownloadTask> f34551j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    private FragmentManager f34552k;

    /* renamed from: l  reason: collision with root package name */
    private s3 f34553l;

    private void hideFragments(FragmentTransaction fragmentTransaction) {
        s3 s3Var = this.f34553l;
        if (s3Var != null) {
            fragmentTransaction.hide(s3Var);
        }
    }

    void D0() {
        FragmentTransaction beginTransaction = this.f34552k.beginTransaction();
        hideFragments(beginTransaction);
        s3 s3Var = this.f34553l;
        if (s3Var == null) {
            if (this.f34542a == 1) {
                HashMap hashMap = new HashMap();
                hashMap.put("title", this.f34543b);
                hashMap.put("isSingle", this.f34546e ? "1" : "0");
                hashMap.put("factory_id", this.f34545d);
                hashMap.put(DownloadMethodPromptDialog_.F, "121");
                this.f34553l = s3.d0(1, hashMap);
            }
            beginTransaction.add(R.id.container, this.f34553l);
        } else {
            beginTransaction.show(s3Var);
        }
        beginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        SearchHintActivity_.S1(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34552k = getSupportFragmentManager();
        this.f34547f.setText(this.f34543b);
        if (this.f34544c) {
            getDownloadTaskInfo();
            org.greenrobot.eventbus.c.f().t(this);
            this.f34548g.setVisibility(0);
            this.f34549h.setVisibility(0);
        }
        D0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34550i
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34550i
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34551j
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34551j
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34550i
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34550i
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34550i
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34550i
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f34551j
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34550i
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34550i
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34551j
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f34551j
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PaPaBannerListActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f34550i.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f34551j.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f34544c) {
            org.greenrobot.eventbus.c.f().y(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        try {
            changeDownloadTaskNumber(lVar.a(), lVar.c());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            int size = this.f34550i.size();
            int size2 = this.f34551j.size();
            this.f34549h.setDownloadGameNum(size);
            if (size2 > 0) {
                this.f34549h.d();
            } else {
                this.f34549h.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
