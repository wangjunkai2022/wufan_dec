package com.join.mgps.adapter;

import android.view.View;
import androidx.annotation.Nullable;
import com.android.dx.rop.code.AccessFlags;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.SimulatorFastEntryBean;
import java.util.List;
/* compiled from: SimulatorFastEntryChangeGameAdapter.java */
/* loaded from: classes3.dex */
public class z5 extends BaseQuickAdapter<SimulatorFastEntryBean.ChangeGame, com.join.mgps.base.b> {
    public z5(@Nullable List<SimulatorFastEntryBean.ChangeGame> list) {
        super(R.layout.layout_simulator_change_game_item, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(SimulatorFastEntryBean.ChangeGame changeGame, View view) {
        IntentDateBean intentDataBean = changeGame.getIntentDataBean();
        ExtBean extBean = new ExtBean();
        extBean.setFrom("20703");
        extBean.set_from_type(AccessFlags.FIELD_FLAGS);
        intentDataBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.mContext, intentDataBean);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: b */
    public void convert(com.join.mgps.base.b bVar, final SimulatorFastEntryBean.ChangeGame changeGame) {
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.ivGamePic), changeGame.getBig_pic());
        bVar.K(R.id.tvGameName, changeGame.getTitle());
        bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z5.this.c(changeGame, view);
            }
        });
    }
}
