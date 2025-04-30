package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: PaPaLocalGameFragment.java */
@EFragment(R.layout.fragment_papa_game_local)
/* loaded from: classes4.dex */
public class u3 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XListView2 f50448a;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.adapter.r3 f50449b;

    /* renamed from: c  reason: collision with root package name */
    private List<Object> f50450c = new ArrayList();

    /* compiled from: PaPaLocalGameFragment.java */
    /* loaded from: classes4.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            Intent intent = new Intent();
            intent.putExtra("gameInfo", (DownloadTask) u3.this.f50450c.get(i2));
            ((Activity) u3.this.getContext()).setResult(-1, intent);
            ((Activity) u3.this.getContext()).finish();
        }
    }

    @UiThread
    public void N() {
        com.join.mgps.adapter.r3 r3Var = this.f50449b;
        if (r3Var != null) {
            r3Var.notifyDataSetChanged();
        }
        this.f50448a.u();
        this.f50448a.t();
        this.f50448a.setNoMore();
    }

    @UiThread
    public void O(List<DownloadTask> list) {
        if (this.f50449b != null) {
            this.f50450c.clear();
            this.f50450c.addAll(list);
            this.f50449b.notifyDataSetChanged();
        }
        this.f50448a.u();
        this.f50448a.t();
        this.f50448a.setNoMore();
    }

    public void P(List<DownloadTask> list) {
        this.f50450c.clear();
        this.f50450c.addAll(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.adapter.r3 r3Var = new com.join.mgps.adapter.r3(this.f50450c);
        this.f50449b = r3Var;
        this.f50448a.setAdapter((ListAdapter) r3Var);
        this.f50448a.setOnItemClickListener(new a());
    }
}
