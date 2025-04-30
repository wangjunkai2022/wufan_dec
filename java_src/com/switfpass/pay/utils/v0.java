package com.switfpass.pay.utils;

import android.content.Context;
import android.content.DialogInterface;
import java.util.List;
/* loaded from: classes4.dex */
final class v0 implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ List f59073a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Context f59074b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(List list, Context context) {
        this.f59073a = list;
        this.f59074b = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        if (((g) this.f59073a.get(i2)).c() != 0) {
            ((g) this.f59073a.get(i2)).f58990d.startActivityForResult(((g) this.f59073a.get(i2)).f58988b, ((g) this.f59073a.get(i2)).c());
        } else {
            this.f59074b.startActivity(((g) this.f59073a.get(i2)).f58988b);
        }
    }
}
