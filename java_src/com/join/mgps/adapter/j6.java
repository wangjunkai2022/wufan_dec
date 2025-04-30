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
/* compiled from: SimulatorGridAdapter.java */
/* loaded from: classes3.dex */
public class j6 extends BaseQuickAdapter<SimulatorFastEntryBean.GameInfo, com.join.mgps.base.b> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f42310a;

    public j6(@Nullable List<SimulatorFastEntryBean.GameInfo> list, boolean z3) {
        super(R.layout.layout_simulator_grid_game, list);
        this.f42310a = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(SimulatorFastEntryBean.GameInfo gameInfo, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameInfo.getId());
        if (intentDateBean.getExtBean() == null) {
            intentDateBean.setExtBean(new ExtBean());
        }
        intentDateBean.getExtBean().setFrom(this.f42310a ? "20701" : "207");
        intentDateBean.getExtBean().set_from_type(this.f42310a ? 20701 : 207);
        IntentUtil.getInstance().intentActivity(this.mContext, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: b */
    public void convert(com.join.mgps.base.b bVar, final SimulatorFastEntryBean.GameInfo gameInfo) {
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.gameIcon), gameInfo.getIco());
        bVar.K(R.id.gameName, gameInfo.getGame());
        bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j6.this.c(gameInfo, view);
            }
        });
    }
}
