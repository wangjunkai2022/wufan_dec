package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.GoldFingerBean;
import com.join.mgps.dto.ModGameDetailBean;
import i1.a;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
@EFragment(R.layout.modgame_modtab_fragment_layout)
/* loaded from: classes3.dex */
public class ModgameModTabFragment extends Fragment {
    Context context;
    private int defSelectPos = 0;
    @ViewById
    View loding_faile;
    @ViewById
    View loding_layout;
    private CheatItemAdapter mCheatItemAdapter;
    private CheatTypeAdapter mCheatTypeAdapter;
    ModGameDetailBean modGameDetailBean;
    @ViewById(R.id.rv_cheat_list)
    RecyclerView rv_cheat_list;
    @ViewById(R.id.rv_cheat_type)
    RecyclerView rv_cheat_type;
    @ViewById
    View setNetwork;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class CheatItemAdapter extends BaseQuickAdapter<GoldFingerBean.ContentBean, com.join.mgps.base.b> {
        public CheatItemAdapter() {
            super((int) R.layout.item_mod_chat_item);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b bVar, GoldFingerBean.ContentBean contentBean) {
            bVar.K(R.id.tv_name, contentBean.getTitle());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class CheatTypeAdapter extends BaseQuickAdapter<GoldFingerBean, com.join.mgps.base.b> {
        public CheatTypeAdapter() {
            super((int) R.layout.item_mod_chat_type);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b bVar, GoldFingerBean goldFingerBean) {
            bVar.K(R.id.tv_name, goldFingerBean.getTitle());
            if (goldFingerBean.isSelected()) {
                bVar.L(R.id.tv_name, -1);
                bVar.O(R.id.iv_line, true);
                return;
            }
            bVar.L(R.id.tv_name, Color.parseColor("#C1D0DD"));
            bVar.O(R.id.iv_line, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$0(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
        if (modGameDetailBean != null) {
            List<GoldFingerBean> gold_finger = modGameDetailBean.getGold_finger();
            gold_finger.get(this.defSelectPos).setSelected(false);
            this.mCheatTypeAdapter.notifyItemChanged(this.defSelectPos);
            this.defSelectPos = i2;
            gold_finger.get(i2).setSelected(true);
            this.mCheatTypeAdapter.notifyItemChanged(this.defSelectPos);
            if (gold_finger.size() <= 0 || gold_finger.get(this.defSelectPos) == null) {
                return;
            }
            this.mCheatItemAdapter.setNewData(gold_finger.get(this.defSelectPos).getContent());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void aftervidew() {
        this.context = getActivity();
        initData();
        setData((ModGameDetailBean) getArguments().getSerializable("datas"));
    }

    void initData() {
        if (this.mCheatTypeAdapter == null) {
            this.mCheatTypeAdapter = new CheatTypeAdapter();
            final a.C0442a c0442a = new a.C0442a();
            c0442a.f65702f = 0;
            c0442a.f65704b = (int) getResources().getDimension(R.dimen.wdp24);
            this.rv_cheat_type.addItemDecoration(new i1.a() { // from class: com.join.kotlin.ui.cloudarchive.ModgameModTabFragment.1
                @Override // i1.a
                public a.b getItemOffsets(int i2) {
                    return c0442a;
                }
            });
        }
        this.rv_cheat_type.setAdapter(this.mCheatTypeAdapter);
        if (this.mCheatItemAdapter == null) {
            this.mCheatItemAdapter = new CheatItemAdapter();
        }
        final a.C0442a c0442a2 = new a.C0442a();
        c0442a2.f65702f = 0;
        c0442a2.f65706d = (int) getResources().getDimension(R.dimen.wdp26);
        c0442a2.f65703a = (int) getResources().getDimension(R.dimen.wdp24);
        this.rv_cheat_list.addItemDecoration(new i1.a() { // from class: com.join.kotlin.ui.cloudarchive.ModgameModTabFragment.2
            @Override // i1.a
            public a.b getItemOffsets(int i2) {
                return c0442a2;
            }
        });
        this.rv_cheat_list.setLayoutManager(new GridLayoutManager(this.context, 2));
        this.rv_cheat_list.setAdapter(this.mCheatItemAdapter);
        this.mCheatTypeAdapter.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.kotlin.ui.cloudarchive.c
            @Override // com.join.mgps.base.BaseQuickAdapter.i
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                ModgameModTabFragment.this.lambda$initData$0(baseQuickAdapter, view, i2);
            }
        });
        this.mCheatItemAdapter.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.kotlin.ui.cloudarchive.ModgameModTabFragment.3
            @Override // com.join.mgps.base.BaseQuickAdapter.i
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                i2.a(ModgameModTabFragment.this.context).b("增强模式启动游戏即可体验");
            }
        });
    }

    public void setData(ModGameDetailBean modGameDetailBean) {
        this.modGameDetailBean = modGameDetailBean;
        if (modGameDetailBean != null) {
            this.rv_cheat_type.setVisibility(0);
            this.rv_cheat_list.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        }
        List<GoldFingerBean> gold_finger = modGameDetailBean.getGold_finger();
        if (gold_finger == null || gold_finger.size() <= 0) {
            return;
        }
        gold_finger.get(this.defSelectPos).setSelected(true);
        this.mCheatTypeAdapter.setNewData(gold_finger);
        if (gold_finger.get(this.defSelectPos) != null) {
            this.mCheatItemAdapter.setNewData(gold_finger.get(this.defSelectPos).getContent());
        }
    }

    public void showLodingFailed() {
        this.loding_layout.setVisibility(8);
        try {
            ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
            if (modGameDetailBean == null || modGameDetailBean.getMod_game_info() == null) {
                this.loding_faile.setVisibility(0);
                if (f.j(getActivity())) {
                    this.setNetwork.setVisibility(8);
                } else {
                    this.setNetwork.setVisibility(0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
