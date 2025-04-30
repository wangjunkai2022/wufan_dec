package com.join.mgps.activity;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableWebView;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.TipBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: MGDetailSimpleInfoFragment.java */
@EFragment(R.layout.detail_simple_info_layout)
/* loaded from: classes3.dex */
public class r0 extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    String f38360a = r0.class.getSimpleName();
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f38361b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ObservableWebView f38362c;

    /* renamed from: d  reason: collision with root package name */
    private Context f38363d;

    /* renamed from: e  reason: collision with root package name */
    private LinearLayout.LayoutParams f38364e;

    /* renamed from: f  reason: collision with root package name */
    private DetailResultBean f38365f;

    /* renamed from: g  reason: collision with root package name */
    float f38366g;

    /* renamed from: h  reason: collision with root package name */
    float f38367h;

    private void M(List<TipBean> list, LinearLayout linearLayout) {
        linearLayout.removeAllViews();
        for (TipBean tipBean : list) {
            TextView textView = new TextView(this.f38363d);
            textView.setLayoutParams(this.f38364e);
            textView.setGravity(17);
            textView.setText(tipBean.getName());
            textView.setTextColor(-1);
            textView.setPadding(0, 0, 0, 0);
            textView.setTextSize(this.f38363d.getResources().getDimensionPixelSize(R.dimen.main_detial_textsize));
            textView.setTextSize(10.0f);
            textView.setBackgroundDrawable(com.join.mgps.Util.h2.a(this.f38363d, tipBean.getColor()));
            linearLayout.addView(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f38363d = getActivity();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.f38364e = layoutParams;
        layoutParams.setMargins(getResources().getDimensionPixelSize(R.dimen.detail_tipsitem_magin), 0, getResources().getDimensionPixelSize(R.dimen.detail_tipsitem_magin), 0);
        DetailResultBean detailResultBean = (DetailResultBean) getArguments().getSerializable("simpleInfoData");
        this.f38365f = detailResultBean;
        M(detailResultBean.getTag_info(), this.f38361b);
        this.f38362c.getSettings().setDefaultTextEncodingName("utf-8");
        this.f38362c.loadData(this.f38365f.getDescribe(), "text/html;charset=UTF-8", "utf-8");
        this.f38362c.getSettings().setJavaScriptEnabled(true);
        this.f38362c.setWebChromeClient(new WebChromeClient());
        this.f38362c.getParent().requestDisallowInterceptTouchEvent(true);
    }
}
