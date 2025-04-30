package com.join.mgps.adapter;

import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.SimulatorFastEntryBean;
import java.util.List;
/* compiled from: SimulatorFastEntryTagGameAdapter.java */
/* loaded from: classes3.dex */
public class g6 extends BaseQuickAdapter<SimulatorFastEntryBean.GameInfo, com.join.mgps.base.b> {
    public g6(@Nullable List<SimulatorFastEntryBean.GameInfo> list) {
        super(R.layout.layout_simulator_tag_game_item, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(SimulatorFastEntryBean.GameInfo gameInfo, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameInfo.getId());
        if (intentDateBean.getExtBean() == null) {
            intentDateBean.setExtBean(new ExtBean());
        }
        intentDateBean.getExtBean().setFrom(String.valueOf(207));
        intentDateBean.getExtBean().set_from_type(207);
        IntentUtil.getInstance().intentActivity(this.mContext, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: b */
    public void convert(com.join.mgps.base.b bVar, final SimulatorFastEntryBean.GameInfo gameInfo) {
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.ivGameIcon), gameInfo.getIco());
        bVar.K(R.id.tvGameName, gameInfo.getGame());
        bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g6.this.c(gameInfo, view);
            }
        });
    }
}
