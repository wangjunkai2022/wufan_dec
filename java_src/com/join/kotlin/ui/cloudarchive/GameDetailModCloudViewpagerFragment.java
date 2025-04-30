package com.join.kotlin.ui.cloudarchive;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.adapter.f;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.NoScrollViewPager;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.StandaloneCloudArchive;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
@EFragment(R.layout.fragment_game_detail_mod_cloud_viewpager)
/* loaded from: classes3.dex */
public class GameDetailModCloudViewpagerFragment extends Fragment {
    private f cloudArchiveTagAdapter;
    private List<x.a> fragments;
    private String gameId;
    private StandaloneCloudArchive modgameBean;
    @ViewById
    RecyclerView subTabList;
    private int type;
    @ViewById
    NoScrollViewPager viewpager;
    private ArrayList<ModGameArchiveTagBean> tags = new ArrayList<>();
    private int defaultSelectedIndex = 0;
    private int lastSelectedTagIndex = 0;

    private void addTagList() {
        ArrayList<ModGameArchiveTagBean> arrayList = this.tags;
        if (arrayList != null && arrayList.size() > 0) {
            this.tags.get(this.defaultSelectedIndex).setSelected(true);
        }
        this.subTabList.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        f fVar = new f(getActivity(), 1, this.tags);
        this.cloudArchiveTagAdapter = fVar;
        fVar.e(new f.b() { // from class: com.join.kotlin.ui.cloudarchive.a
            @Override // com.join.mgps.adapter.f.b
            public final void onSelected(int i2) {
                GameDetailModCloudViewpagerFragment.this.lambda$addTagList$0(i2);
            }
        });
        this.subTabList.setAdapter(this.cloudArchiveTagAdapter);
    }

    private void initDefaultSelectedIndex() {
        ArrayList<ModGameArchiveTagBean> arrayList;
        StandaloneCloudArchive standaloneCloudArchive = this.modgameBean;
        if (standaloneCloudArchive == null || standaloneCloudArchive.getTag_list() == null || (arrayList = this.tags) == null || arrayList.size() <= 0) {
            return;
        }
        if (this.modgameBean.getLocation_at().intValue() == 2) {
            Iterator<ModGameArchiveTagBean> it2 = this.tags.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ModGameArchiveTagBean next = it2.next();
                if (TextUtils.equals(next.getTagId(), "5")) {
                    this.defaultSelectedIndex = this.tags.indexOf(next);
                    break;
                }
            }
        }
        this.lastSelectedTagIndex = this.defaultSelectedIndex;
    }

    private void initViewPager() {
        this.fragments = new ArrayList();
        Iterator<ModGameArchiveTagBean> it2 = this.tags.iterator();
        while (it2.hasNext()) {
            ModGameArchiveTagBean next = it2.next();
            Bundle bundle = new Bundle();
            GameDetailModCloudListFragment gameDetailModCloudListFragment = new GameDetailModCloudListFragment();
            bundle.putString("gameId", this.gameId);
            bundle.putInt("type", this.type);
            bundle.putSerializable("datas", this.modgameBean);
            bundle.putSerializable(TagGameListActivity_.f35885q0, next);
            gameDetailModCloudListFragment.setArguments(bundle);
            this.fragments.add(new x.a(next.getName(), gameDetailModCloudListFragment));
        }
        x xVar = new x(getFragmentManager(), this.fragments);
        this.viewpager.setOffscreenPageLimit(this.tags.size() - 1);
        this.viewpager.setAdapter(xVar);
        this.viewpager.setCurrentItem(this.defaultSelectedIndex);
        this.viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudViewpagerFragment.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f4, int i4) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                Iterator it3 = GameDetailModCloudViewpagerFragment.this.tags.iterator();
                while (it3.hasNext()) {
                    ModGameArchiveTagBean modGameArchiveTagBean = (ModGameArchiveTagBean) it3.next();
                    boolean z3 = false;
                    if (GameDetailModCloudViewpagerFragment.this.tags.indexOf(modGameArchiveTagBean) == i2) {
                        modGameArchiveTagBean.setCount(0);
                    }
                    if (GameDetailModCloudViewpagerFragment.this.tags.indexOf(modGameArchiveTagBean) == i2) {
                        z3 = true;
                    }
                    modGameArchiveTagBean.setSelected(z3);
                }
                GameDetailModCloudViewpagerFragment.this.cloudArchiveTagAdapter.notifyDataSetChanged();
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) GameDetailModCloudViewpagerFragment.this.subTabList.getLayoutManager();
                if (linearLayoutManager != null && (linearLayoutManager.findLastCompletelyVisibleItemPosition() < i2 || linearLayoutManager.findFirstCompletelyVisibleItemPosition() > i2)) {
                    GameDetailModCloudViewpagerFragment.this.subTabList.smoothScrollToPosition(i2);
                }
                if (GameDetailModCloudViewpagerFragment.this.lastSelectedTagIndex != i2) {
                    p.l(GameDetailModCloudViewpagerFragment.this.getContext()).K1(Event.clickCloudLabelButton, new Ext().setFrom(String.valueOf(((ModGameArchiveTagBean) GameDetailModCloudViewpagerFragment.this.tags.get(i2)).getType())).setGameId(GameDetailModCloudViewpagerFragment.this.gameId).setPosition(((ModGameArchiveTagBean) GameDetailModCloudViewpagerFragment.this.tags.get(i2)).getTagId()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addTagList$0(int i2) {
        this.viewpager.setCurrentItem(i2, true);
        if (i2 == this.lastSelectedTagIndex) {
            Fragment fragment = this.fragments.get(i2).f44493c;
            if (fragment != null && fragment.isAdded() && fragment.isVisible() && (fragment instanceof GameDetailModCloudListFragment)) {
                ((GameDetailModCloudListFragment) fragment).scrollToTop();
                return;
            }
            return;
        }
        this.lastSelectedTagIndex = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        Bundle arguments = getArguments();
        this.modgameBean = (StandaloneCloudArchive) arguments.getSerializable("datas");
        this.type = arguments.getInt("type");
        this.gameId = arguments.getString("gameId");
        this.tags = arguments.getParcelableArrayList("tags");
        initDefaultSelectedIndex();
        addTagList();
        initViewPager();
    }
}
