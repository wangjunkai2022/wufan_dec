package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.r;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.DownloadCenterBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: MyPapaFragment.java */
@EFragment(R.layout.my_papa_layout)
/* loaded from: classes.dex */
public class a2 extends Fragment implements r.k {

    /* renamed from: b  reason: collision with root package name */
    private Activity f36292b;

    /* renamed from: c  reason: collision with root package name */
    DownloadCenterBean f36293c;

    /* renamed from: e  reason: collision with root package name */
    private String f36295e;
    @Pref

    /* renamed from: f  reason: collision with root package name */
    PrefDef_ f36296f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    XListView2 f36297g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f36298h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.adapter.r f36299i;

    /* renamed from: j  reason: collision with root package name */
    private List<DownloadTask> f36300j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f36301k;

    /* renamed from: a  reason: collision with root package name */
    private final String f36291a = "DownloadMYGameFragment";

    /* renamed from: d  reason: collision with root package name */
    private List<DownloadTask> f36294d = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.pref.f f36302l = null;

    @Override // com.join.mgps.adapter.r.k
    public void D(int i2, DownloadTask downloadTask) {
        new com.join.android.app.common.dialog.m(getActivity(), downloadTask, this.f36299i).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        try {
            if (this.f36300j.size() == 0) {
                TextView textView = this.f36301k;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                this.f36298h.setVisibility(0);
                return;
            }
            TextView textView2 = this.f36301k;
            if (textView2 != null) {
                textView2.setVisibility(0);
                TextView textView3 = this.f36301k;
                textView3.setText("共" + this.f36300j.size() + "款游戏");
            }
            LinearLayout linearLayout = this.f36298h;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @UiThread
    public void N() {
        com.join.mgps.adapter.r rVar = this.f36299i;
        if (rVar != null) {
            rVar.notifyDataSetChanged();
        }
    }

    @UiThread
    public void O(List<DownloadTask> list) {
        if (this.f36299i != null) {
            this.f36300j.clear();
            this.f36300j.addAll(list);
            M();
            this.f36299i.notifyDataSetChanged();
        }
    }

    public void P(List<DownloadTask> list) {
        this.f36294d = list;
    }

    public void Q(String str) {
        this.f36295e = str;
    }

    @SuppressLint({"LongLogTag"})
    void R(DownloadTask downloadTask, int i2) {
        boolean z3;
        StringBuilder sb = new StringBuilder();
        sb.append("downloadTask:from =");
        sb.append(i2);
        if (i2 == 4) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 7 && status != 2) {
            if (status == 5) {
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                    return;
                }
                List<DownloadTask> downloadFiles = this.f36299i.c().getDownloadFiles();
                boolean z4 = true;
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
                    Iterator<DownloadTask> it2 = downloadFiles.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z3 = false;
                            break;
                        }
                        DownloadTask next = it2.next();
                        if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                            next.setStatus(downloadTask.getStatus());
                            z3 = true;
                            break;
                        }
                    }
                    if (!z3) {
                        downloadFiles.add(0, downloadTask);
                    }
                    this.f36299i.notifyDataSetChanged();
                }
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                    Iterator<DownloadTask> it3 = downloadFiles.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z4 = false;
                            break;
                        }
                        DownloadTask next2 = it3.next();
                        if (next2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                            next2.setStatus(downloadTask.getStatus());
                            break;
                        }
                    }
                    if (!z4) {
                        downloadFiles.add(0, downloadTask);
                    }
                    this.f36299i.notifyDataSetChanged();
                }
            }
            M();
            return;
        }
        Iterator<DownloadTask> it4 = this.f36300j.iterator();
        while (true) {
            if (!it4.hasNext()) {
                break;
            } else if (it4.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it4.remove();
                this.f36299i.notifyDataSetChanged();
                com.join.mgps.Util.t0.c("移除数据");
                break;
            }
        }
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.t0.c("wode item showstart   " + System.currentTimeMillis());
        this.f36292b = getActivity();
        this.f36299i = new com.join.mgps.adapter.r(this.f36292b, this);
        View inflate = LayoutInflater.from(this.f36292b).inflate(R.layout.download_center_footer, (ViewGroup) null);
        this.f36301k = (TextView) inflate.findViewById(R.id.textViewCount);
        this.f36297g.addFooterView(inflate);
        DownloadCenterBean c4 = this.f36299i.c();
        this.f36293c = c4;
        this.f36300j = c4.getDownloadFiles();
        this.f36297g.setAdapter((ListAdapter) this.f36299i);
        if (this.f36294d != null) {
            ArrayList<DownloadTask> arrayList = new ArrayList();
            arrayList.addAll(this.f36294d);
            for (DownloadTask downloadTask : arrayList) {
                if (!TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.android.name()) && UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                    downloadTask.setStatus(43);
                    this.f36294d.remove(downloadTask);
                }
            }
        }
        this.f36300j.addAll(this.f36294d);
        this.f36299i.notifyDataSetChanged();
        StringBuilder sb = new StringBuilder();
        sb.append("hasCode=");
        sb.append(hashCode());
        sb.append("");
        M();
    }

    public String getType() {
        return this.f36295e;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f36302l = (MGMainActivity) getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().y(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        M();
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            R(a4, 1);
        } else if (c4 == 5) {
            R(a4, 5);
        } else if (c4 == 7) {
            a4.setStatus(7);
            R(a4, 3);
        } else if (c4 != 8) {
        } else {
            R(a4, 4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f36302l.callbackClassify(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        this.f36302l.callbackHome(null);
    }
}
