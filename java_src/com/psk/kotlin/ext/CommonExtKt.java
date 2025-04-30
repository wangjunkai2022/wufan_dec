package com.psk.kotlin.ext;

import android.content.Context;
import android.view.View;
import com.alipay.sdk.packet.d;
import com.join.mgps.Util.i2;
import com.papa.controller.component.bluetooth.spp.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0018\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¨\u0006\t"}, d2 = {"Landroid/view/View;", "Lkotlin/Function0;", "", d.f9798s, "onClick", "Landroid/content/Context;", "", "message", c.f54675o, "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class CommonExtKt {
    public static final void onClick(@NotNull View onClick, @NotNull final Function0<Unit> method) {
        Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
        Intrinsics.checkNotNullParameter(method, "method");
        onClick.setOnClickListener(new View.OnClickListener() { // from class: com.psk.kotlin.ext.CommonExtKt$onClick$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Function0.this.invoke();
            }
        });
    }

    public static final void toast(@NotNull Context toast, @Nullable String str) {
        Intrinsics.checkNotNullParameter(toast, "$this$toast");
        if (str == null) {
            return;
        }
        i2.a(toast).b(str);
    }
}
