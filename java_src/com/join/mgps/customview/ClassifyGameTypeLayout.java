package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.ClassifyGameActivity_;
import com.join.mgps.dto.ClassifyGameTypeBean;
/* loaded from: classes3.dex */
public class ClassifyGameTypeLayout extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private SimpleDraweeView f45077a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f45078b;

    /* renamed from: c  reason: collision with root package name */
    private Context f45079c;

    /* renamed from: d  reason: collision with root package name */
    private ClassifyGameTypeBean f45080d;

    public ClassifyGameTypeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45079c = context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ClassifyGameActivity_.e1(this.f45079c).a(this.f45080d.getId()).b(0).c(this.f45080d.getTitle()).start();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f45077a = (SimpleDraweeView) findViewById(R.id.classify_game_img);
        this.f45078b = (TextView) findViewById(R.id.classify_game_name);
        setOnClickListener(this);
    }

    public void setClassifyGameTypeBean(ClassifyGameTypeBean classifyGameTypeBean) {
        if (classifyGameTypeBean != null) {
            this.f45080d = classifyGameTypeBean;
            MyImageLoader.h(this.f45077a, classifyGameTypeBean.getIco_remote());
            this.f45078b.setText(classifyGameTypeBean.getTitle());
        }
    }
}
