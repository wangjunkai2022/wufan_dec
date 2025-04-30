package com.join.kotlin.presenter;

import androidx.lifecycle.ViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HomeViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/presenter/HomeViewModle;", "Landroidx/lifecycle/ViewModel;", "Landroid/content/Context;", "context", "", "initStat", "", "", "lists", "Ljava/util/List;", "getLists", "()Ljava/util/List;", "setLists", "(Ljava/util/List;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class HomeViewModle extends ViewModel {
    @NotNull
    private List<String> lists = new ArrayList();

    @NotNull
    public final List<String> getLists() {
        return this.lists;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initStat(@org.jetbrains.annotations.NotNull android.content.Context r11) {
        /*
            r10 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            byte r0 = com.join.android.app.common.utils.f.d(r11)
            r1 = -1
            java.lang.String r2 = ""
            if (r0 == r1) goto L2e
            r1 = 1
            if (r0 == r1) goto L2b
            r1 = 2
            if (r0 == r1) goto L28
            r1 = 3
            if (r0 == r1) goto L25
            r1 = 4
            if (r0 == r1) goto L22
            r1 = 5
            if (r0 == r1) goto L1f
            r9 = r2
            goto L31
        L1f:
            java.lang.String r0 = "5g"
            goto L30
        L22:
            java.lang.String r0 = "2g"
            goto L30
        L25:
            java.lang.String r0 = "3g"
            goto L30
        L28:
            java.lang.String r0 = "4g"
            goto L30
        L2b:
            java.lang.String r0 = "wifi"
            goto L30
        L2e:
            java.lang.String r0 = "no"
        L30:
            r9 = r0
        L31:
            com.psk.eventmodule.StatFactory$Companion r0 = com.psk.eventmodule.StatFactory.Companion
            com.psk.eventmodule.StatFactory r3 = r0.getInstance(r11)
            java.lang.String r0 = com.MApplication.f9231u
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L40
            goto L42
        L40:
            java.lang.String r2 = com.MApplication.f9231u
        L42:
            r4 = r2
            com.join.mgps.Util.AccountUtil_ r0 = com.join.mgps.Util.AccountUtil_.getInstance_(r11)
            java.lang.String r1 = "AccountUtil_.getInstance_(context)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            com.join.mgps.dto.AccountBean r0 = r0.getAccountData()
            java.lang.String r2 = "AccountUtil_.getInstance_(context).accountData"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            int r0 = r0.getUid()
            long r5 = (long) r0
            com.join.mgps.Util.AccountUtil_ r11 = com.join.mgps.Util.AccountUtil_.getInstance_(r11)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r1)
            com.join.mgps.dto.AccountBean r11 = r11.getAccountData()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r2)
            int r7 = r11.getAccount_type()
            java.lang.String r8 = "340_4.9.9.6"
            r3.initDatas(r4, r5, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.presenter.HomeViewModle.initStat(android.content.Context):void");
    }

    public final void setLists(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.lists = list;
    }
}
