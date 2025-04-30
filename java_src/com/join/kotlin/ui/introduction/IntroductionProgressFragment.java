package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.x;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.TimingBean;
import com.join.mgps.dto.VideoChaptersBean;
import i1.a;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EFragment(R.layout.introduction_progress_fragment)
/* loaded from: classes3.dex */
public class IntroductionProgressFragment extends Fragment implements View.OnClickListener {
    private int curSelected = -1;
    private boolean dataChanged = false;
    BbsDetailBean detailBean;
    @ViewById
    LinearLayout ll_empty;
    private ItemAdapter mItemAdapter;
    @ViewById
    RecyclerView rv_list_data;
    @ViewById
    TextView tv_title;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class ItemAdapter<T> extends BaseQuickAdapter<T, com.join.mgps.base.b> {
        public ItemAdapter() {
            super((int) R.layout.item_introduction_progress);
        }

        @Override // com.join.mgps.base.BaseQuickAdapter
        protected void convert(com.join.mgps.base.b bVar, T t3) {
            boolean z3 = t3 instanceof TimingBean;
            int i2 = R.drawable.shape_introduction_progress_selected;
            if (z3) {
                TimingBean timingBean = (TimingBean) t3;
                bVar.K(R.id.tv_time, x.g(timingBean.getTime().intValue()));
                bVar.K(R.id.tv_title, timingBean.getTitle());
                bVar.u(R.id.tv_type, false);
                if (!timingBean.isChecked()) {
                    i2 = R.drawable.shape_introduction_progress_normal;
                }
                bVar.r(R.id.ll_root, i2);
            } else if (t3 instanceof VideoChaptersBean) {
                VideoChaptersBean videoChaptersBean = (VideoChaptersBean) t3;
                bVar.K(R.id.tv_time, x.g(videoChaptersBean.getDuration().intValue()));
                bVar.K(R.id.tv_title, videoChaptersBean.getTitle());
                bVar.u(R.id.tv_type, true);
                bVar.K(R.id.tv_type, "P" + videoChaptersBean.getPage());
                if (!videoChaptersBean.isChecked()) {
                    i2 = R.drawable.shape_introduction_progress_normal;
                }
                bVar.r(R.id.ll_root, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$0(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        if (this.curSelected == -1) {
            this.curSelected = i2;
        }
        if (this.mItemAdapter.getItem(this.curSelected) instanceof TimingBean) {
            ((TimingBean) this.mItemAdapter.getItem(this.curSelected)).setChecked(false);
            this.curSelected = i2;
            ((TimingBean) this.mItemAdapter.getItem(i2)).setChecked(true);
            this.mItemAdapter.notifyDataSetChanged();
        } else if (this.mItemAdapter.getItem(this.curSelected) instanceof VideoChaptersBean) {
            ((VideoChaptersBean) this.mItemAdapter.getItem(this.curSelected)).setChecked(false);
            this.curSelected = i2;
            ((VideoChaptersBean) this.mItemAdapter.getItem(i2)).setChecked(true);
            this.mItemAdapter.notifyDataSetChanged();
        }
        if (getActivity() instanceof l1.e) {
            ((l1.e) getActivity()).u0(this);
            ((l1.e) getActivity()).a0(this.mItemAdapter.getItem(i2));
        }
    }

    public static IntroductionProgressFragment newInstance(CommentAlllistIntentData commentAlllistIntentData) {
        Bundle bundle = new Bundle();
        IntroductionProgressFragment_ introductionProgressFragment_ = new IntroductionProgressFragment_();
        introductionProgressFragment_.setArguments(bundle);
        return introductionProgressFragment_;
    }

    private void updateUI() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean != null) {
            if (bbsDetailBean.getIsCollection().intValue() == 1) {
                this.tv_title.setText("视频合集");
                if (this.detailBean.getVideoChapters() != null && this.detailBean.getVideoChapters().size() > 0) {
                    this.curSelected = 0;
                    this.detailBean.getVideoChapters().get(this.curSelected).setChecked(true);
                    this.mItemAdapter.setNewData(this.detailBean.getVideoChapters());
                    this.rv_list_data.setVisibility(0);
                    this.ll_empty.setVisibility(8);
                    return;
                }
                this.ll_empty.setVisibility(0);
                this.rv_list_data.setVisibility(8);
                return;
            }
            this.tv_title.setText("剧情进度");
            if (this.detailBean.getTiming() != null && this.detailBean.getTiming().size() > 0) {
                this.mItemAdapter.setNewData(this.detailBean.getTiming());
                this.rv_list_data.setVisibility(0);
                this.ll_empty.setVisibility(8);
                return;
            }
            this.ll_empty.setVisibility(0);
            this.rv_list_data.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.rv_list_data.setLayoutManager(new LinearLayoutManager(getContext()));
        if (this.mItemAdapter == null) {
            this.mItemAdapter = new ItemAdapter();
            final a.C0442a c0442a = new a.C0442a();
            c0442a.f65702f = 0;
            c0442a.f65706d = (int) getResources().getDimension(R.dimen.wdp20);
            this.rv_list_data.addItemDecoration(new i1.a() { // from class: com.join.kotlin.ui.introduction.IntroductionProgressFragment.1
                @Override // i1.a
                public a.b getItemOffsets(int i2) {
                    return c0442a;
                }
            });
            this.mItemAdapter.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.kotlin.ui.introduction.a
                @Override // com.join.mgps.base.BaseQuickAdapter.i
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    IntroductionProgressFragment.this.lambda$afterView$0(baseQuickAdapter, view, i2);
                }
            });
            this.rv_list_data.setAdapter(this.mItemAdapter);
        }
        updateUI();
    }

    public void notifyDataChanged(BbsDetailBean bbsDetailBean) {
        this.dataChanged = this.detailBean.getId() != bbsDetailBean.getId();
        this.detailBean = bbsDetailBean;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.iv_close})
    public void onClockClick() {
        if (getActivity() instanceof l1.e) {
            ((l1.e) getActivity()).u0(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (!this.dataChanged || z3) {
            return;
        }
        updateUI();
        this.dataChanged = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        view.setOnClickListener(this);
    }

    public void setData(BbsDetailBean bbsDetailBean) {
        this.detailBean = bbsDetailBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        i2.a(getContext()).b(str);
    }
}
