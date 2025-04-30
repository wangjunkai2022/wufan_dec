package com.join.mgps.activity;

import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.GameTagsBean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.RequestFeedbackUserCustomTag;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TagReportReasonBean;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_tag_report)
/* loaded from: classes3.dex */
public class TagReportActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.impl.h f35914a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    String f35915b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f35916c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f35917d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    FlowLayout f35918e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ListView f35919f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    EditText f35920g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f35921h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    ListUserCustomGameTagBean f35922i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f35923j;

    /* renamed from: m  reason: collision with root package name */
    SimpleBaseAdapter<TagReportReasonBean> f35926m;

    /* renamed from: k  reason: collision with root package name */
    List<TagReportReasonBean> f35924k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    List<GameTagsBean> f35925l = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.dialog.x0 f35927n = null;

    /* loaded from: classes3.dex */
    class a extends SimpleBaseAdapter<TagReportReasonBean> {
        a() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            TagReportReasonBean item = getItem(i2);
            ImageView imageView = (ImageView) view.findViewById(R.id.iv_check);
            ((TextView) view.findViewById(R.id.tv_reason_text)).setText(item.getText());
            imageView.setImageResource(item.isChecked() ? R.drawable.ic_chk_simulator_h : R.drawable.ic_chk_simulator_n);
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_tag_report_reason;
        }
    }

    /* loaded from: classes3.dex */
    class b implements IOnItemClickListener {
        b() {
        }

        @Override // com.papa91.arc.interfaces.IOnItemClickListener
        public void onItemClick(int i2) {
            for (TagReportReasonBean tagReportReasonBean : TagReportActivity.this.f35924k) {
                tagReportReasonBean.setChecked(false);
            }
            TagReportActivity.this.f35924k.get(i2).setChecked(true);
            TagReportActivity.this.f35926m.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35930a;

        c(GameTagsBean gameTagsBean) {
            this.f35930a = gameTagsBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagReportActivity.this.f35918e.removeAllViews();
            for (GameTagsBean gameTagsBean : TagReportActivity.this.f35925l) {
                gameTagsBean.setChecked(false);
                this.f35930a.setChecked(true);
                TagReportActivity tagReportActivity = TagReportActivity.this;
                tagReportActivity.E0(gameTagsBean, tagReportActivity.f35918e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(GameTagsBean gameTagsBean, FlowLayout flowLayout) {
        View inflate = View.inflate(this, R.layout.item_tag_report_view, null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_title);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.ll_tag);
        textView.setText(gameTagsBean.getName());
        linearLayout.setBackgroundResource(gameTagsBean.isChecked() ? R.drawable.shape_ffa047_stroke_r_6 : R.drawable.shape_f7f7f7_r_6);
        textView.setTextColor(Color.parseColor(gameTagsBean.isChecked() ? "#FFA047" : "#555555"));
        inflate.setOnClickListener(new c(gameTagsBean));
        flowLayout.addView(inflate, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        this.f35927n.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0046 -> B:19:0x0051). Please submit an issue!!! */
    @Background
    public void G0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                RequestModel requestModel = new RequestModel(this);
                RequestListUserCustomGameTagArgs requestListUserCustomGameTagArgs = new RequestListUserCustomGameTagArgs();
                requestListUserCustomGameTagArgs.setUid(AccountUtil_.getInstance_(this).getUid());
                requestListUserCustomGameTagArgs.setGameId(this.f35915b);
                requestModel.setArgs(requestListUserCustomGameTagArgs);
                ResponseModel<ListUserCustomGameTagBean> x3 = this.f35914a.x(requestModel.makeSign());
                if (x3 != null && x3.getData() != null) {
                    L0(x3.getData());
                } else {
                    showLodingFailed();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
            }
            return;
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        try {
            this.f35916c.setVisibility(8);
            this.f35917d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btn_commit})
    public void I0() {
        TagReportReasonBean tagReportReasonBean;
        GameTagsBean gameTagsBean;
        Iterator<GameTagsBean> it2 = this.f35925l.iterator();
        while (true) {
            tagReportReasonBean = null;
            if (!it2.hasNext()) {
                gameTagsBean = null;
                break;
            }
            gameTagsBean = it2.next();
            if (gameTagsBean.isChecked()) {
                break;
            }
        }
        if (gameTagsBean == null) {
            com.join.mgps.Util.i2.a(this).b("请选择想要投诉的标签");
            return;
        }
        Iterator<TagReportReasonBean> it3 = this.f35924k.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            TagReportReasonBean next = it3.next();
            if (next.isChecked()) {
                tagReportReasonBean = next;
                break;
            }
        }
        if (tagReportReasonBean == null) {
            com.join.mgps.Util.i2.a(this).b("请选择举报原因");
        } else if (tagReportReasonBean.getType() == 2 && com.join.mgps.Util.d2.h(this.f35920g.getText().toString())) {
            com.join.mgps.Util.i2.a(this).b("请输入举报说明");
        } else {
            J0(gameTagsBean.getName(), tagReportReasonBean.getType());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(String str, int i2) {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    K0();
                    RequestModel requestModel = new RequestModel(this);
                    RequestFeedbackUserCustomTag requestFeedbackUserCustomTag = new RequestFeedbackUserCustomTag();
                    requestFeedbackUserCustomTag.setFeedbackUid(AccountUtil_.getInstance_(this).getUid());
                    requestFeedbackUserCustomTag.setGameId(this.f35915b);
                    requestFeedbackUserCustomTag.setTagName(str);
                    requestFeedbackUserCustomTag.setFeedbackType(Integer.valueOf(i2));
                    requestFeedbackUserCustomTag.setReason(this.f35920g.getText().toString());
                    requestFeedbackUserCustomTag.setReason(this.f35920g.getText().toString());
                    requestModel.setArgs(requestFeedbackUserCustomTag);
                    ResponseModel a4 = this.f35914a.a(requestModel.makeSign());
                    if (a4 != null && a4.getCode() == 200) {
                        com.join.mgps.Util.i2.a(this).b("举报标签成功");
                        F0();
                        finish();
                    } else if (a4 != null && com.join.mgps.Util.d2.i(a4.getMessage())) {
                        com.join.mgps.Util.i2.a(this).b(a4.getMessage());
                    } else {
                        com.join.mgps.Util.i2.a(this).b("数据异常，请重试");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            com.join.mgps.Util.i2.a(this).b("网络连接失败，请重试");
        } finally {
            F0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.f35927n.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(ListUserCustomGameTagBean listUserCustomGameTagBean) {
        if (listUserCustomGameTagBean == null) {
            return;
        }
        try {
            H0();
            this.f35925l.clear();
            Iterator<GameTagsBean> it2 = this.f35922i.getGameTags().iterator();
            while (it2.hasNext()) {
                GameTagsBean next = it2.next();
                if (next.getTagType().intValue() == 2 || next.getTagType().intValue() == 3) {
                    this.f35925l.add(next);
                }
            }
            Iterator<GameTagsBean> it3 = this.f35922i.getPersonalTags().iterator();
            while (it3.hasNext()) {
                GameTagsBean next2 = it3.next();
                if (next2.getTagType().intValue() == 2 || next2.getTagType().intValue() == 3) {
                    this.f35925l.add(next2);
                }
            }
            for (GameTagsBean gameTagsBean : this.f35925l) {
                E0(gameTagsBean, this.f35918e);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35927n = com.join.mgps.Util.a0.c0(this).x(this);
        this.f35923j.setText("举报标签");
        this.f35923j.setTypeface(Typeface.defaultFromStyle(1));
        this.f35914a = com.join.mgps.rpc.impl.h.L();
        this.f35924k.add(new TagReportReasonBean(1, "标签不适合此游戏"));
        this.f35924k.add(new TagReportReasonBean(2, "其他"));
        this.f35918e.setHorizontalDivider((int) getResources().getDimension(R.dimen.wdp20));
        this.f35918e.setVerticalDivider((int) getResources().getDimension(R.dimen.wdp28));
        if (this.f35922i == null) {
            showLoding();
            G0();
        } else {
            H0();
            if (this.f35922i.getGameTags() != null) {
                Iterator<GameTagsBean> it2 = this.f35922i.getGameTags().iterator();
                while (it2.hasNext()) {
                    GameTagsBean next = it2.next();
                    if (next.getTagType().intValue() == 2 || next.getTagType().intValue() == 3) {
                        this.f35925l.add(next);
                    }
                }
                Iterator<GameTagsBean> it3 = this.f35922i.getPersonalTags().iterator();
                while (it3.hasNext()) {
                    GameTagsBean next2 = it3.next();
                    if (next2.getTagType().intValue() == 2 || next2.getTagType().intValue() == 3) {
                        this.f35925l.add(next2);
                    }
                }
            }
            for (GameTagsBean gameTagsBean : this.f35925l) {
                E0(gameTagsBean, this.f35918e);
            }
        }
        if (this.f35926m == null) {
            a aVar = new a();
            this.f35926m = aVar;
            this.f35919f.setAdapter((ListAdapter) aVar);
            this.f35926m.setItemClickListener(new b());
        }
        this.f35926m.setDatas(this.f35924k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        G0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f35916c.setVisibility(0);
            this.f35917d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.f35917d.setVisibility(0);
            this.f35916c.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
