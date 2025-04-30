package com.join.mgps.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
import com.join.mgps.dto.SimulatorAreaDataBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: SimulatorAreaAdapter.java */
/* loaded from: classes3.dex */
public class p5 extends BaseAdapter {

    /* renamed from: i  reason: collision with root package name */
    public static final int f43256i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f43257j = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f43258k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f43259l = 4;

    /* renamed from: m  reason: collision with root package name */
    public static final int f43260m = 5;

    /* renamed from: n  reason: collision with root package name */
    public static final int f43261n = 6;

    /* renamed from: o  reason: collision with root package name */
    public static final int f43262o = 7;

    /* renamed from: p  reason: collision with root package name */
    public static final int f43263p = 8;

    /* renamed from: q  reason: collision with root package name */
    public static final int f43264q = 9;

    /* renamed from: a  reason: collision with root package name */
    private Context f43265a;

    /* renamed from: b  reason: collision with root package name */
    private List<g> f43266b;

    /* renamed from: c  reason: collision with root package name */
    private int f43267c;

    /* renamed from: d  reason: collision with root package name */
    private int f43268d;

    /* renamed from: e  reason: collision with root package name */
    private int f43269e;

    /* renamed from: f  reason: collision with root package name */
    private int f43270f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f43271g;

    /* renamed from: h  reason: collision with root package name */
    private String f43272h;

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean.SubjectListBean.SubBean f43273a;

        a(SimulatorAreaDataBean.SubjectListBean.SubBean subBean) {
            this.f43273a = subBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43273a != null) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setCrc_link_type_val(this.f43273a.getCrc_link_type_val());
                intentDateBean.setLink_type(Integer.valueOf(this.f43273a.getLink_type()).intValue());
                intentDateBean.setLink_type_val(this.f43273a.getLink_type_val());
                intentDateBean.setJump_type(Integer.valueOf(this.f43273a.getJump_type()).intValue());
                intentDateBean.setTpl_type(this.f43273a.getTpl_type());
                IntentUtil.getInstance().intentActivity(p5.this.f43265a, intentDateBean);
            }
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean.SubjectListBean.SubBean f43275a;

        b(SimulatorAreaDataBean.SubjectListBean.SubBean subBean) {
            this.f43275a = subBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43275a != null) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setCrc_link_type_val(this.f43275a.getCrc_link_type_val());
                intentDateBean.setLink_type(Integer.valueOf(this.f43275a.getLink_type()).intValue());
                intentDateBean.setLink_type_val(this.f43275a.getLink_type_val());
                intentDateBean.setJump_type(Integer.valueOf(this.f43275a.getJump_type()).intValue());
                intentDateBean.setTpl_type(this.f43275a.getTpl_type());
                IntentUtil.getInstance().intentActivity(p5.this.f43265a, intentDateBean);
            }
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean.GameTypeBean f43277a;

        c(SimulatorAreaDataBean.GameTypeBean gameTypeBean) {
            this.f43277a = gameTypeBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(p5.this.f43265a, CategoryDetailListActivity.class);
            intent.putExtra("typeId", 1);
            intent.putExtra("tagId", p5.this.f43271g);
            intent.putExtra("tagId2", Integer.parseInt(this.f43277a.getId()));
            intent.putExtra("tagName", this.f43277a.getTitle());
            p5.this.f43265a.startActivity(intent);
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(p5.this.f43265a, CategoryDetailListActivity.class);
            intent.putExtra("typeId", 1);
            intent.putExtra("tagId", p5.this.f43271g);
            intent.putExtra("tagName", p5.this.f43272h);
            p5.this.f43265a.startActivity(intent);
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(p5.this.f43265a, CategoryDetailListActivity.class);
            intent.putExtra("typeId", 1);
            intent.putExtra("tagId", p5.this.f43271g);
            intent.putExtra("tagName", p5.this.f43272h);
            p5.this.f43265a.startActivity(intent);
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f43281a;

        f(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f43281a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivity(p5.this.f43265a, this.f43281a.getCrc_sign_id(), this.f43281a.getGame_info_tpl_type(), Integer.valueOf(this.f43281a.getSp_tpl_two_position()).intValue(), this.f43281a.get_from_type());
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        public Object f43283a;

        /* renamed from: b  reason: collision with root package name */
        public int f43284b;

        public g(Object obj, int i2) {
            this.f43283a = obj;
            this.f43284b = i2;
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    public class h {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43285a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f43286b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43287c;

        /* renamed from: d  reason: collision with root package name */
        DownloadViewStroke f43288d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f43289e;

        /* renamed from: f  reason: collision with root package name */
        View f43290f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f43291g;

        /* renamed from: h  reason: collision with root package name */
        LinearLayout f43292h;

        /* renamed from: i  reason: collision with root package name */
        LinearLayout f43293i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f43294j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f43295k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f43296l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f43297m;

        public h() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class i {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43299a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f43300b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43301c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43302d;

        i() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class j {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43304a;

        j() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class k {
        k() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    public class l {

        /* renamed from: a  reason: collision with root package name */
        TextView f43307a;

        /* renamed from: b  reason: collision with root package name */
        RelativeLayout f43308b;

        public l() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class m {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43310a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f43311b;

        m() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class n {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43313a;

        /* renamed from: b  reason: collision with root package name */
        public RelativeLayout f43314b;

        n() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class o {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43316a;

        o() {
        }
    }

    /* compiled from: SimulatorAreaAdapter.java */
    /* loaded from: classes3.dex */
    class p {
        p() {
        }
    }

    public p5(Context context, int i2, String str) {
        this.f43265a = context;
        this.f43271g = i2;
        this.f43272h = str;
        this.f43267c = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
        int a4 = com.join.mgps.Util.b0.a(context, 12.0f);
        this.f43269e = a4;
        int i4 = this.f43267c - (a4 * 2);
        this.f43267c = i4;
        this.f43268d = (i4 * 229) / 664;
    }

    void d(String str, int i2, String str2, TipNew tipNew, List<TipBean> list, LinearLayout linearLayout, Context context) {
        String str3;
        TipBean tipBean;
        TipBean tipBean2;
        String str4 = com.join.mgps.Util.d2.h(str2) ? "1" : str2;
        linearLayout.removeAllViews();
        TipBean tipBean3 = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        textView.setText(com.join.mgps.Util.d2.c(i2));
        ((TextView) inflate.findViewById(R.id.appsize)).setText(UtilsMy.Y1((long) (Double.parseDouble(str4) * 1048576.0d)));
        if (tipNew != null) {
            if (tipNew.getModel() != null) {
                TipBean model = tipNew.getModel();
                if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                    str3 = "安卓";
                    if (list != null) {
                        ArrayList arrayList = new ArrayList();
                        for (TipBean tipBean4 : list) {
                            if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                                if (arrayList.size() >= 2) {
                                    break;
                                }
                                arrayList.add(tipBean4);
                            }
                        }
                        if (arrayList.size() > 1) {
                            TipBean tipBean5 = (TipBean) arrayList.get(0);
                            str3 = tipBean5 != null ? tipBean5.getName() : "安卓";
                            if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                                str3 = str3 + "·" + tipBean2.getName();
                            }
                        } else if (arrayList.size() > 0 && (tipBean = (TipBean) arrayList.get(0)) != null) {
                            str3 = "安卓·" + tipBean.getName();
                        }
                    }
                    textView2.setText(str3);
                } else {
                    if (list != null) {
                        Iterator<TipBean> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            TipBean next = it2.next();
                            if (com.join.mgps.Util.d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                                tipBean3 = next;
                                break;
                            }
                        }
                    }
                    if (tipBean3 != null) {
                        textView2.setText(tipNew.getModel().getName() + "·" + tipBean3.getName());
                    } else {
                        textView2.setText(tipNew.getModel().getName());
                    }
                }
            } else {
                textView2.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView2.setVisibility(8);
        }
        if (com.join.mgps.Util.d2.i(str) && !"0".equals(str)) {
            textView3.setText(str + "分");
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    boolean e(List<TipBean> list) {
        if (list != null) {
            for (TipBean tipBean : list) {
                if (tipBean.getId().equals("46")) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    /* renamed from: f */
    public g getItem(int i2) {
        return this.f43266b.get(i2);
    }

    public List<g> g() {
        if (this.f43266b == null) {
            this.f43266b = new ArrayList();
        }
        return this.f43266b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43266b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f43266b.get(i2).f43284b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0147: MOVE  (r10 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:35:0x0147 */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x022b: MOVE  (r10 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:45:0x022b */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.lang.Object, com.join.mgps.adapter.p5$m] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r6v10, types: [com.join.mgps.adapter.p5$m] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v22 */
    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        int itemViewType;
        View view3;
        View view4;
        n nVar;
        View inflate;
        i iVar;
        i iVar2;
        h hVar;
        l lVar;
        o oVar;
        j jVar;
        i iVar3;
        View inflate2;
        i iVar4;
        h hVar2;
        o oVar2;
        i iVar5;
        h hVar3;
        o oVar3;
        j jVar2;
        j jVar3;
        h hVar4;
        j jVar4;
        o oVar4;
        ?? r6;
        i iVar6;
        Object obj;
        Object obj2;
        Object obj3;
        i iVar7;
        Object obj4;
        l lVar2;
        i iVar8;
        i iVar9;
        try {
            itemViewType = getItemViewType(i2);
            if (view == null) {
                try {
                    try {
                        switch (itemViewType) {
                            case 1:
                                nVar = new n();
                                inflate = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_title_view, (ViewGroup) null);
                                nVar.f43313a = (TextView) inflate.findViewById(R.id.simulator_title_tv);
                                nVar.f43314b = (RelativeLayout) inflate.findViewById(R.id.simulator_right_rl);
                                inflate.setTag(nVar);
                                iVar = null;
                                iVar3 = iVar;
                                h hVar5 = iVar3;
                                lVar = hVar5;
                                o oVar5 = lVar;
                                jVar2 = oVar5;
                                jVar3 = nVar;
                                iVar5 = iVar;
                                hVar3 = hVar5;
                                oVar3 = oVar5;
                                break;
                            case 2:
                                h hVar6 = new h();
                                inflate = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_download_view, (ViewGroup) null);
                                hVar6.f43285a = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
                                hVar6.f43286b = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
                                hVar6.f43287c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
                                hVar6.f43291g = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
                                hVar6.f43292h = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
                                hVar6.f43293i = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
                                hVar6.f43294j = (TextView) inflate.findViewById(R.id.appSize);
                                hVar6.f43295k = (TextView) inflate.findViewById(R.id.loding_info);
                                hVar6.f43296l = (ProgressBar) inflate.findViewById(R.id.progressBar);
                                hVar6.f43297m = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
                                hVar6.f43288d = (DownloadViewStroke) inflate.findViewById(R.id.downloadView);
                                hVar6.f43289e = (RelativeLayout) inflate.findViewById(R.id.relateLayoutApp);
                                hVar6.f43297m = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
                                hVar6.f43290f = inflate.findViewById(R.id.line);
                                inflate.setTag(hVar6);
                                iVar2 = null;
                                hVar = null;
                                lVar = null;
                                oVar = null;
                                jVar = null;
                                iVar3 = hVar6;
                                jVar3 = jVar;
                                iVar5 = iVar2;
                                hVar3 = hVar;
                                oVar3 = oVar;
                                jVar2 = jVar;
                                break;
                            case 3:
                                inflate2 = LayoutInflater.from(this.f43265a).inflate(R.layout.layout_ranking_more, (ViewGroup) null);
                                l lVar3 = new l();
                                lVar3.f43307a = (TextView) inflate2.findViewById(R.id.ranking_more);
                                lVar3.f43308b = (RelativeLayout) inflate2.findViewById(R.id.moreItem);
                                inflate2.setTag(lVar3);
                                iVar4 = null;
                                iVar3 = null;
                                hVar2 = null;
                                oVar2 = null;
                                jVar = null;
                                lVar = lVar3;
                                inflate = inflate2;
                                iVar2 = iVar4;
                                hVar = hVar2;
                                oVar = oVar2;
                                jVar3 = jVar;
                                iVar5 = iVar2;
                                hVar3 = hVar;
                                oVar3 = oVar;
                                jVar2 = jVar;
                                break;
                            case 4:
                                inflate2 = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_title_two_view, (ViewGroup) null);
                                o oVar6 = new o();
                                oVar6.f43316a = (TextView) inflate2.findViewById(R.id.simulator_title_two_tv);
                                inflate2.setTag(oVar6);
                                iVar4 = null;
                                iVar3 = null;
                                hVar2 = null;
                                lVar = null;
                                jVar = null;
                                oVar2 = oVar6;
                                inflate = inflate2;
                                iVar2 = iVar4;
                                hVar = hVar2;
                                oVar = oVar2;
                                jVar3 = jVar;
                                iVar5 = iVar2;
                                hVar3 = hVar;
                                oVar3 = oVar;
                                jVar2 = jVar;
                                break;
                            case 5:
                                View inflate3 = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_footer_view, (ViewGroup) null);
                                j jVar5 = new j();
                                jVar5.f43304a = (TextView) inflate3.findViewById(R.id.text);
                                inflate3.setTag(jVar5);
                                iVar5 = null;
                                iVar3 = null;
                                hVar3 = null;
                                lVar = null;
                                oVar3 = null;
                                jVar2 = jVar5;
                                inflate = inflate3;
                                jVar3 = null;
                                break;
                            case 6:
                                k kVar = new k();
                                inflate = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_spacing_view, (ViewGroup) null);
                                inflate.setTag(kVar);
                                nVar = null;
                                iVar = null;
                                iVar3 = iVar;
                                h hVar52 = iVar3;
                                lVar = hVar52;
                                o oVar52 = lVar;
                                jVar2 = oVar52;
                                jVar3 = nVar;
                                iVar5 = iVar;
                                hVar3 = hVar52;
                                oVar3 = oVar52;
                                break;
                            case 7:
                                ?? mVar = new m();
                                inflate = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_subject_view, (ViewGroup) null);
                                mVar.f43310a = (LinearLayout) inflate.findViewById(R.id.simulator_subject_ll);
                                mVar.f43311b = (SimpleDraweeView) inflate.findViewById(R.id.simulator_subject_iv);
                                inflate.setTag(mVar);
                                iVar2 = null;
                                iVar3 = null;
                                lVar = null;
                                oVar = null;
                                jVar = null;
                                hVar = mVar;
                                jVar3 = jVar;
                                iVar5 = iVar2;
                                hVar3 = hVar;
                                oVar3 = oVar;
                                jVar2 = jVar;
                                break;
                            case 8:
                                p pVar = new p();
                                inflate = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_white_spacing_view, (ViewGroup) null);
                                inflate.setTag(pVar);
                                nVar = null;
                                iVar = null;
                                iVar3 = iVar;
                                h hVar522 = iVar3;
                                lVar = hVar522;
                                o oVar522 = lVar;
                                jVar2 = oVar522;
                                jVar3 = nVar;
                                iVar5 = iVar;
                                hVar3 = hVar522;
                                oVar3 = oVar522;
                                break;
                            case 9:
                                i iVar10 = new i();
                                inflate = LayoutInflater.from(this.f43265a).inflate(R.layout.item_simulator_encyclopedia_view, (ViewGroup) null);
                                iVar10.f43299a = (LinearLayout) inflate.findViewById(R.id.simulator_encyclopedia_ll);
                                iVar10.f43300b = (SimpleDraweeView) inflate.findViewById(R.id.simulator_encyclopedia_iv);
                                iVar10.f43301c = (TextView) inflate.findViewById(R.id.simulator_encyclopedia_title_tv);
                                iVar10.f43302d = (TextView) inflate.findViewById(R.id.simulator_encyclopedia_label_tv);
                                inflate.setTag(iVar10);
                                iVar3 = null;
                                hVar = null;
                                lVar = null;
                                oVar = null;
                                jVar = null;
                                iVar2 = iVar10;
                                jVar3 = jVar;
                                iVar5 = iVar2;
                                hVar3 = hVar;
                                oVar3 = oVar;
                                jVar2 = jVar;
                                break;
                            default:
                                inflate = view;
                                nVar = null;
                                iVar = null;
                                iVar3 = iVar;
                                h hVar5222 = iVar3;
                                lVar = hVar5222;
                                o oVar5222 = lVar;
                                jVar2 = oVar5222;
                                jVar3 = nVar;
                                iVar5 = iVar;
                                hVar3 = hVar5222;
                                oVar3 = oVar5222;
                                break;
                        }
                        hVar4 = iVar3;
                        j jVar6 = jVar2;
                        view2 = inflate;
                        jVar4 = jVar6;
                        iVar6 = iVar5;
                        r6 = hVar3;
                        oVar4 = oVar3;
                    } catch (Exception e4) {
                        e = e4;
                        view2 = view4;
                        e.printStackTrace();
                        com.join.mgps.Util.t0.d("Exception", "Exception_tbl:" + e.getMessage());
                        return view2;
                    }
                } catch (Exception e5) {
                    e = e5;
                    view2 = view3;
                    e.printStackTrace();
                    com.join.mgps.Util.t0.d("Exception", "Exception_tbl:" + e.getMessage());
                    return view2;
                }
            } else {
                switch (itemViewType) {
                    case 1:
                        jVar3 = (n) view.getTag();
                        view2 = view;
                        obj = null;
                        obj2 = obj;
                        obj3 = obj2;
                        iVar9 = obj;
                        lVar = obj3;
                        iVar8 = iVar9;
                        obj4 = obj3;
                        lVar2 = lVar;
                        iVar7 = iVar8;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                    case 2:
                        view2 = view;
                        jVar3 = null;
                        jVar4 = null;
                        iVar6 = null;
                        r6 = null;
                        lVar = null;
                        oVar4 = null;
                        hVar4 = (h) view.getTag();
                        break;
                    case 3:
                        lVar = (l) view.getTag();
                        view2 = view;
                        jVar3 = null;
                        iVar7 = null;
                        obj2 = null;
                        obj4 = null;
                        lVar2 = null;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                    case 4:
                        view2 = view;
                        jVar3 = null;
                        jVar4 = null;
                        iVar6 = null;
                        r6 = null;
                        lVar = null;
                        hVar4 = null;
                        oVar4 = (o) view.getTag();
                        break;
                    case 5:
                        jVar3 = null;
                        iVar6 = null;
                        r6 = null;
                        lVar = null;
                        oVar4 = null;
                        hVar4 = null;
                        jVar4 = (j) view.getTag();
                        view2 = view;
                        break;
                    case 6:
                        k kVar2 = (k) view.getTag();
                        view2 = view;
                        jVar3 = null;
                        obj = null;
                        obj2 = obj;
                        obj3 = obj2;
                        iVar9 = obj;
                        lVar = obj3;
                        iVar8 = iVar9;
                        obj4 = obj3;
                        lVar2 = lVar;
                        iVar7 = iVar8;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                    case 7:
                        view2 = view;
                        jVar3 = null;
                        iVar8 = null;
                        obj2 = null;
                        lVar = null;
                        obj4 = (m) view.getTag();
                        lVar2 = lVar;
                        iVar7 = iVar8;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                    case 8:
                        p pVar2 = (p) view.getTag();
                        view2 = view;
                        jVar3 = null;
                        obj = null;
                        obj2 = obj;
                        obj3 = obj2;
                        iVar9 = obj;
                        lVar = obj3;
                        iVar8 = iVar9;
                        obj4 = obj3;
                        lVar2 = lVar;
                        iVar7 = iVar8;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                    case 9:
                        obj2 = (i) view.getTag();
                        view2 = view;
                        jVar3 = null;
                        iVar9 = null;
                        obj3 = null;
                        lVar = obj3;
                        iVar8 = iVar9;
                        obj4 = obj3;
                        lVar2 = lVar;
                        iVar7 = iVar8;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                    default:
                        view2 = view;
                        jVar3 = null;
                        obj = null;
                        obj2 = obj;
                        obj3 = obj2;
                        iVar9 = obj;
                        lVar = obj3;
                        iVar8 = iVar9;
                        obj4 = obj3;
                        lVar2 = lVar;
                        iVar7 = iVar8;
                        hVar4 = lVar2;
                        jVar4 = iVar7;
                        iVar6 = obj2;
                        r6 = obj4;
                        oVar4 = lVar2;
                        break;
                }
            }
        } catch (Exception e6) {
            e = e6;
            view2 = view;
        }
        try {
            g gVar = this.f43266b.get(i2);
            if (itemViewType == 1) {
                jVar3.f43313a.setText((String) gVar.f43283a);
                jVar3.f43314b.setOnClickListener(new e());
            } else if (itemViewType == 2) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) gVar.f43283a;
                DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
                long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
                MyImageLoader.h(hVar4.f43285a, collectionBeanSubBusiness.getIco_remote().trim());
                d(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), hVar4.f43293i, this.f43265a);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.c1(collectionBeanSubBusiness.getDownloadTask(), collectionBeanSubBusiness);
                hVar4.f43288d.a(downloadTask, collectionBeanSubBusiness);
                hVar4.f43287c.setText(collectionBeanSubBusiness.getGame_name());
                hVar4.f43291g.setText(collectionBeanSubBusiness.getInfo());
                hVar4.f43289e.setOnClickListener(new f(collectionBeanSubBusiness));
                if (collectionBeanSubBusiness.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    hVar4.f43293i.setVisibility(8);
                    hVar4.f43286b.setVisibility(8);
                } else if (downloadTask == null) {
                    i(hVar4, Boolean.TRUE, Boolean.FALSE);
                } else {
                    com.join.mgps.Util.t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
                    int status = downloadTask.getStatus();
                    if (status != 0) {
                        if (status != 42) {
                            if (status != 48) {
                                if (status != 2) {
                                    if (status != 3) {
                                        if (status != 5) {
                                            if (status != 6) {
                                                if (status != 7) {
                                                    switch (status) {
                                                        case 9:
                                                            i(hVar4, Boolean.TRUE, Boolean.FALSE);
                                                            break;
                                                        case 10:
                                                            Boolean bool = Boolean.FALSE;
                                                            i(hVar4, bool, bool);
                                                            hVar4.f43294j.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            try {
                                                                hVar4.f43296l.setProgress((int) downloadTask.getProgress());
                                                            } catch (Exception e7) {
                                                                e7.printStackTrace();
                                                            }
                                                            hVar4.f43295k.setText("等待中");
                                                            break;
                                                        case 12:
                                                            i(hVar4, Boolean.FALSE, Boolean.TRUE);
                                                            hVar4.f43294j.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            hVar4.f43295k.setText("解压中..");
                                                            hVar4.f43297m.setProgress((int) downloadTask.getProgress());
                                                            break;
                                                        case 13:
                                                            i(hVar4, Boolean.FALSE, Boolean.TRUE);
                                                            hVar4.f43294j.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            hVar4.f43295k.setText("点击重新解压");
                                                            hVar4.f43297m.setProgress((int) downloadTask.getProgress());
                                                            break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    Boolean bool2 = Boolean.FALSE;
                                    i(hVar4, bool2, bool2);
                                    try {
                                        if (downloadTask.getSize() == 0) {
                                            hVar4.f43294j.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                        } else {
                                            hVar4.f43294j.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                        }
                                        hVar4.f43296l.setProgress((int) downloadTask.getProgress());
                                    } catch (Exception e8) {
                                        e8.printStackTrace();
                                    }
                                } else {
                                    UtilsMy.C3(downloadTask);
                                    Boolean bool3 = Boolean.FALSE;
                                    i(hVar4, bool3, bool3);
                                    if (downloadTask.getSize() == 0) {
                                        hVar4.f43294j.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                    } else {
                                        hVar4.f43294j.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                    }
                                    hVar4.f43296l.setProgress((int) downloadTask.getProgress());
                                    String speed = downloadTask.getSpeed();
                                    hVar4.f43295k.setText(speed + "/S");
                                }
                            }
                            i(hVar4, Boolean.TRUE, Boolean.FALSE);
                        }
                        Boolean bool4 = Boolean.TRUE;
                        i(hVar4, bool4, bool4);
                    }
                    i(hVar4, Boolean.TRUE, Boolean.FALSE);
                }
            } else if (itemViewType == 3) {
                lVar.f43308b.setOnClickListener(new d());
            } else if (itemViewType == 4) {
                oVar4.f43316a.setText((String) gVar.f43283a);
            } else if (itemViewType == 5) {
                SimulatorAreaDataBean.GameTypeBean gameTypeBean = (SimulatorAreaDataBean.GameTypeBean) gVar.f43283a;
                jVar4.f43304a.setText(gameTypeBean.getTitle());
                jVar4.f43304a.setOnClickListener(new c(gameTypeBean));
            } else if (itemViewType == 7) {
                SimulatorAreaDataBean.SubjectListBean subjectListBean = (SimulatorAreaDataBean.SubjectListBean) gVar.f43283a;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f43267c, this.f43268d);
                int i4 = this.f43269e;
                layoutParams.setMargins(i4, 0, i4, 0);
                r6.f43311b.setLayoutParams(layoutParams);
                MyImageLoader.h(r6.f43311b, subjectListBean.getMain().getPic_remote());
                r6.f43310a.setOnClickListener(new b(subjectListBean.getSub().size() > 0 ? subjectListBean.getSub().get(0) : null));
            } else if (itemViewType == 9) {
                SimulatorAreaDataBean.SimulatorFbaEncyclopediasBean simulatorFbaEncyclopediasBean = (SimulatorAreaDataBean.SimulatorFbaEncyclopediasBean) gVar.f43283a;
                iVar6.f43301c.setText(simulatorFbaEncyclopediasBean.getMain().getSub_title());
                iVar6.f43302d.setText(simulatorFbaEncyclopediasBean.getMain().getLabel());
                MyImageLoader.h(iVar6.f43300b, simulatorFbaEncyclopediasBean.getMain().getPic_remote());
                iVar6.f43299a.setOnClickListener(new a(simulatorFbaEncyclopediasBean.getSub().size() > 0 ? simulatorFbaEncyclopediasBean.getSub().get(0) : null));
            }
        } catch (Exception e9) {
            e = e9;
            e.printStackTrace();
            com.join.mgps.Util.t0.d("Exception", "Exception_tbl:" + e.getMessage());
            return view2;
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 10;
    }

    public boolean h() {
        if (this.f43266b == null) {
            this.f43266b = new ArrayList();
        }
        if (this.f43266b.size() <= 0) {
            return false;
        }
        List<g> list = this.f43266b;
        int i2 = list.get(list.size() - 1).f43284b;
        return i2 == 5 || i2 == 4;
    }

    void i(h hVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            hVar.f43292h.setVisibility(8);
            hVar.f43296l.setVisibility(8);
            hVar.f43297m.setVisibility(8);
            hVar.f43293i.setVisibility(0);
            hVar.f43291g.setVisibility(0);
            return;
        }
        hVar.f43292h.setVisibility(0);
        if (bool2.booleanValue()) {
            hVar.f43296l.setVisibility(8);
            hVar.f43297m.setVisibility(0);
        } else {
            hVar.f43297m.setVisibility(8);
            hVar.f43296l.setVisibility(0);
        }
        hVar.f43293i.setVisibility(8);
        hVar.f43291g.setVisibility(8);
    }
}
