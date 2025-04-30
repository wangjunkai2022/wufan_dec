package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
/* compiled from: NewUMIDTracker.java */
/* loaded from: classes4.dex */
public class h extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61369a = "newumid";

    /* renamed from: b  reason: collision with root package name */
    private Context f61370b;

    public h(Context context) {
        super(f61369a);
        this.f61370b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return UMEnvelopeBuild.imprintProperty(this.f61370b, ai.f60407g, null);
    }
}
