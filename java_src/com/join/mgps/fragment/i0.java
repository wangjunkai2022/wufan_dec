package com.join.mgps.fragment;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.dto.DownloadCenterBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: DownloadMYGameFragment.java */
@EFragment(R.layout.download_mygame_fragment)
/* loaded from: classes.dex */
public class i0 extends Fragment {

    /* renamed from: b  reason: collision with root package name */
    private Activity f48837b;

    /* renamed from: c  reason: collision with root package name */
    DownloadCenterBean f48838c;
    @Pref

    /* renamed from: d  reason: collision with root package name */
    PrefDef_ f48839d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ListView f48840e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f48841f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f48842g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.adapter.r f48843h;

    /* renamed from: i  reason: collision with root package name */
    private List<DownloadTask> f48844i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f48845j;

    /* renamed from: a  reason: collision with root package name */
    private final String f48836a = "DownloadMYGameFragment";

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.pref.f f48846k = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65512y})
    public void M(Intent intent) {
        try {
            O();
            this.f48843h.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N() {
        if (this.f48844i.size() == 0) {
            TextView textView = this.f48845j;
            if (textView != null) {
                textView.setVisibility(8);
            }
            this.f48841f.setVisibility(0);
        } else {
            TextView textView2 = this.f48845j;
            if (textView2 != null) {
                textView2.setVisibility(0);
                TextView textView3 = this.f48845j;
                textView3.setText("共" + this.f48844i.size() + "款游戏");
            }
            this.f48841f.setVisibility(8);
        }
        if (this.f48844i.size() <= 0 || !this.f48839d.FirstShowMYgameTopTip().d().booleanValue()) {
            return;
        }
        this.f48842g.setVisibility(0);
    }

    void O() {
        List<DownloadTask> N = g1.f.G().N(null);
        Iterator<DownloadTask> it2 = N.iterator();
        while (it2.hasNext()) {
            if (it2.next().getStatus() == 11) {
                it2.remove();
            }
        }
        this.f48844i.clear();
        this.f48844i.addAll(N);
        this.f48843h.notifyDataSetChanged();
        N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P() {
        this.f48842g.setVisibility(8);
        this.f48839d.FirstShowMYgameTopTip().g(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65484k})
    public void Q(@Receiver.Extra String str) {
        Iterator<DownloadTask> it2 = this.f48844i.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(str)) {
                next.setOpen(true);
                break;
            }
        }
        this.f48843h.notifyDataSetChanged();
        N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R(Context context, String str) {
        g1.f.G().e0(str, true);
        Intent intent = new Intent(f1.a.f65484k);
        intent.putExtra("gameId", str);
        context.sendBroadcast(intent);
    }

    @SuppressLint({"LongLogTag"})
    void S(DownloadTask downloadTask, int i2) {
        boolean z3;
        StringBuilder sb = new StringBuilder();
        sb.append("downloadTask:from =");
        sb.append(i2);
        if (i2 == 4) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status == 7) {
            Iterator<DownloadTask> it2 = this.f48844i.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    it2.remove();
                    this.f48843h.notifyDataSetChanged();
                    com.join.mgps.Util.t0.c("移除数据");
                    break;
                }
            }
            N();
            return;
        }
        if (status == 5 || status == 11) {
            if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                return;
            }
            List<DownloadTask> downloadFiles = this.f48843h.c().getDownloadFiles();
            boolean z4 = true;
            if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
                Iterator<DownloadTask> it3 = downloadFiles.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z3 = false;
                        break;
                    }
                    DownloadTask next = it3.next();
                    if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                        next.setStatus(downloadTask.getStatus());
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    downloadFiles.add(0, downloadTask);
                }
                this.f48843h.notifyDataSetChanged();
            }
            if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                Iterator<DownloadTask> it4 = downloadFiles.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        z4 = false;
                        break;
                    }
                    DownloadTask next2 = it4.next();
                    if (next2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                        next2.setStatus(downloadTask.getStatus());
                        break;
                    }
                }
                if (!z4) {
                    downloadFiles.add(0, downloadTask);
                }
                this.f48843h.notifyDataSetChanged();
            }
        }
        N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48837b = getActivity();
        this.f48843h = new com.join.mgps.adapter.r(this.f48837b);
        View inflate = LayoutInflater.from(this.f48837b).inflate(R.layout.download_center_footer, (ViewGroup) null);
        this.f48845j = (TextView) inflate.findViewById(R.id.textViewCount);
        this.f48840e.addFooterView(inflate);
        this.f48840e.setAdapter((ListAdapter) this.f48843h);
        this.f48843h.e(this.f48840e);
        DownloadCenterBean c4 = this.f48843h.c();
        this.f48838c = c4;
        this.f48844i = c4.getDownloadFiles();
        StringBuilder sb = new StringBuilder();
        sb.append("hasCode=");
        sb.append(hashCode());
        sb.append("");
        com.join.mgps.Util.c0.a().d(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f48846k = (MGMainActivity) getParentFragment().getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().y(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        N();
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 5 || c4 == 11 || c4 == 48) {
            S(a4, 5);
        } else if (c4 == 7) {
            a4.setStatus(7);
            S(a4, 3);
        } else if (c4 != 8) {
        } else {
            S(a4, 4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        try {
            O();
            this.f48843h.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f48846k.callbackClassify(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        this.f48846k.callbackHome(null);
    }
}
