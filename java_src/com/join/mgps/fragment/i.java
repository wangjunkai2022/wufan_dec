package com.join.mgps.fragment;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.activity.ClassifyGameActivity_;
import com.join.mgps.customview.CellClassifyItem;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.ClassifyBean;
import com.join.mgps.dto.ClassifyGameTagBean;
import com.join.mgps.dto.ClassifyGameTypeBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa91.arc.CContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: ClassifyFragment.java */
@EFragment(R.layout.fragment_classify)
/* loaded from: classes4.dex */
public class i extends com.join.mgps.basefragment.a implements View.OnClickListener {
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    FlowLayout f48822b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f48823c;

    /* renamed from: d  reason: collision with root package name */
    HashMap<Integer, View> f48824d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.d f48825e;

    /* renamed from: f  reason: collision with root package name */
    List<ClassifyGameTagBean> f48826f;

    /* renamed from: g  reason: collision with root package name */
    private Context f48827g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassifyFragment.java */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48828a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f48829b;

        a(int i2, String str) {
            this.f48828a = i2;
            this.f48829b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.e1(i.this.f48827g).a(0).b(this.f48828a).c(this.f48829b).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassifyFragment.java */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48831a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f48832b;

        b(int i2, String str) {
            this.f48831a = i2;
            this.f48832b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.e1(i.this.f48827g).a(0).b(this.f48831a).c(this.f48832b).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassifyFragment.java */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassifyGameTypeBean f48834a;

        c(ClassifyGameTypeBean classifyGameTypeBean) {
            this.f48834a = classifyGameTypeBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.e1(i.this.f48827g).b(0).a(this.f48834a.getId()).c(this.f48834a.getTitle()).start();
        }
    }

    private void X() {
        this.f48826f = new ArrayList();
        new ClassifyGameTagBean();
        int[] iArr = {ConstantIntEnum.FEATURED_ONLINE.value(), ConstantIntEnum.LARGE_SINGLE.value(), ConstantIntEnum.FBA.value(), ConstantIntEnum.FC.value(), ConstantIntEnum.GBA.value(), ConstantIntEnum.PSP.value(), ConstantIntEnum.PS.value(), ConstantIntEnum.NDS.value(), ConstantIntEnum.MD.value(), ConstantIntEnum.ONS.value(), ConstantIntEnum.SFC.value(), ConstantIntEnum.GBC.value(), ConstantIntEnum.N64.value(), ConstantIntEnum.WSC.value(), ConstantIntEnum.DC.value(), ConstantIntEnum.PS2.value(), ConstantIntEnum.H5.value()};
        int[] iArr2 = {R.drawable.onlin_icon, R.drawable.single_icon, R.drawable.fba_icon, R.drawable.fc_icon, R.drawable.gba_icon, R.drawable.psp_icon, R.drawable.ps_icon, R.drawable.nd_icon, R.drawable.md_icon, R.drawable.on_icon, R.drawable.sfc_icon, R.drawable.gbc_icon, R.drawable.n64_icon, R.drawable.wsc_icon, R.drawable.dc_icon, R.drawable.ps2_icon, R.drawable.ps2_icon};
        String[] strArr = {"网游", "单机", "街机", "FC小霸王", CContext.SCENE_GBA, CContext.SCENE_PSP, "PS", "NDS", "MD", "ONS", "SFC", "GBC", "N64", "WSC", "DC", "PS2", "H5"};
        String[] strArr2 = {"潮流网络游戏", "优秀大型单机，汉化破解一网打尽", "经典街机房游戏，代表游戏有拳皇、合金弹头、恐龙快打、三国战纪等", "任天堂在1983年发售的游戏机，代表游戏有超级玛丽，魂斗罗等", "任天堂于2001年发售的第二代掌机，代表游戏有口袋妖怪，火焰纹章等", "索尼经典掌机", "索尼电视主机", "任天堂DS游戏", "世嘉MD主机", "GAL模拟器", "任天堂SNES主机", "任天堂第二代掌机", "任天堂经典主机", "经典掌机神奇天鹅", "任天堂经典主机", "任天堂经典主机", "页游"};
        this.f48824d = new HashMap<>();
        int a4 = com.join.mgps.Util.b0.a(this.f48827g, 1.0f);
        for (int i2 = 0; i2 < 17; i2++) {
            CellClassifyItem cellClassifyItem = new CellClassifyItem(this.f48827g);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i2 != 0) {
                layoutParams.setMargins(0, a4, 0, 0);
            }
            cellClassifyItem.setLayoutParams(layoutParams);
            int i4 = iArr[i2];
            int i5 = iArr2[i2];
            String str = strArr[i2];
            String str2 = strArr2[i2];
            cellClassifyItem.setOnClickListener(new a(i4, str));
            cellClassifyItem.setmId(i4);
            cellClassifyItem.setmName(str);
            cellClassifyItem.setmDesc(str2);
            cellClassifyItem.setmIconRes(i5);
            this.f48823c.addView(cellClassifyItem);
            this.f48824d.put(Integer.valueOf(i4), cellClassifyItem);
        }
    }

    private void a0(List<ClassifyGameTagBean> list) {
        LinearLayout linearLayout = this.f48823c;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        if (this.f48827g == null || !isAdded()) {
            return;
        }
        int a4 = com.join.mgps.Util.b0.a(this.f48827g, 1.0f);
        for (int i2 = 0; i2 < list.size(); i2++) {
            CellClassifyItem cellClassifyItem = new CellClassifyItem(this.f48827g);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i2 != 0) {
                layoutParams.setMargins(0, a4, 0, 0);
            }
            cellClassifyItem.setLayoutParams(layoutParams);
            ClassifyGameTagBean classifyGameTagBean = list.get(i2);
            int id = classifyGameTagBean.getId();
            String ico_remote = classifyGameTagBean.getIco_remote();
            String name = classifyGameTagBean.getName();
            String describe = classifyGameTagBean.getDescribe();
            cellClassifyItem.setOnClickListener(new b(id, name));
            cellClassifyItem.setmId(id);
            cellClassifyItem.setmName(name);
            cellClassifyItem.setmDesc(describe);
            cellClassifyItem.setmIconSrc(ico_remote);
            cellClassifyItem.setCountTip(classifyGameTagBean.getGame_count());
            this.f48823c.addView(cellClassifyItem);
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.fragment_classify;
    }

    @Override // com.join.mgps.basefragment.a
    protected int O() {
        return R.id.fragment_classify;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z(ClassifyBean classifyBean) {
        if (this.f48822b != null) {
            if (classifyBean.getGame_type() != null && classifyBean.getGame_type().size() > 0) {
                this.f48822b.setVisibility(0);
                List<ClassifyGameTypeBean> game_type = classifyBean.getGame_type();
                int a4 = com.join.mgps.Util.b0.a(this.f48827g, 1.0f);
                for (int i2 = 0; i2 < game_type.size(); i2++) {
                    CellClassifyItem cellClassifyItem = new CellClassifyItem(this.f48827g);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    if (i2 != 0) {
                        layoutParams.setMargins(0, a4, 0, 0);
                    }
                    cellClassifyItem.setLayoutParams(layoutParams);
                    ClassifyGameTypeBean classifyGameTypeBean = game_type.get(i2);
                    cellClassifyItem.setOnClickListener(new c(classifyGameTypeBean));
                    cellClassifyItem.setmId(classifyGameTypeBean.getId());
                    cellClassifyItem.setmName(classifyGameTypeBean.getTitle());
                    cellClassifyItem.setmDesc(classifyGameTypeBean.getDescribe());
                    cellClassifyItem.setmIconSrc(classifyGameTypeBean.getIco_remote());
                    cellClassifyItem.setCountTip(classifyGameTypeBean.getGame_count());
                    if (com.join.mgps.Util.d2.h(classifyGameTypeBean.getDescribe())) {
                        cellClassifyItem.setDescVisibility(8);
                    } else {
                        cellClassifyItem.setDescVisibility(0);
                    }
                    this.f48822b.addView(cellClassifyItem);
                }
            } else {
                this.f48822b.setVisibility(8);
            }
        }
        if (classifyBean.getGame_tag_type() != null && classifyBean.getGame_tag_type().size() > 0) {
            a0(classifyBean.getGame_tag_type());
        }
        Q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48825e = com.join.mgps.rpc.impl.c.P1();
        this.f48827g = getContext();
        X();
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.basefragment.a
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.f.j(this.f48827g.getApplicationContext())) {
            try {
                ResultMainBean<ClassifyBean> q02 = this.f48825e.q0(RequestBeanUtil.getInstance(this.f48827g).getGameSortRequestBean(com.join.android.app.common.utils.j.n(this.f48827g.getApplicationContext()).z(), ""));
                if (q02 != null && q02.getFlag() == 1 && q02.getMessages() != null) {
                    ClassifyBean data = q02.getMessages().getData();
                    if (data != null) {
                        Z(data);
                    } else {
                        S();
                    }
                } else {
                    S();
                }
                return;
            } catch (Exception e4) {
                S();
                e4.printStackTrace();
                return;
            }
        }
        S();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            if (view instanceof TextView) {
                IntentUtil.getInstance().intentActivity(this.f48827g, ((AppBeanMain) view.getTag()).getIntentDataBean());
            } else if (view instanceof RelativeLayout) {
                ClassifyGameTagBean classifyGameTagBean = (ClassifyGameTagBean) view.getTag();
                ClassifyGameActivity_.e1(this.f48827g).a(0).b(classifyGameTagBean.getId()).c(classifyGameTagBean.getName()).start();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
