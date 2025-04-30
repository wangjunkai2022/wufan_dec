package com.join.kotlin.domain.ext;

import android.content.Context;
import androidx.fragment.app.DialogFragment;
import com.alipay.sdk.authjs.a;
import com.join.android.app.common.utils.f;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.i2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EXT.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u0018\u0010\u0005\u001a\u00020\u0002*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Landroid/content/Context;", "Lkotlin/Function0;", "", a.f9679m, "checkHasLogin", "checkHasNetWork", "Landroidx/fragment/app/DialogFragment;", "dialogFragment", "", "dialogFragmentCanShow", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class EXTKt {
    public static final void checkHasLogin(@NotNull Context checkHasLogin, @NotNull Function0<Unit> func) {
        Intrinsics.checkNotNullParameter(checkHasLogin, "$this$checkHasLogin");
        Intrinsics.checkNotNullParameter(func, "func");
        if (IntentUtil.getInstance().goLogin(checkHasLogin)) {
            return;
        }
        func.invoke();
    }

    public static final void checkHasNetWork(@NotNull Context checkHasNetWork, @NotNull Function0<Unit> func) {
        Intrinsics.checkNotNullParameter(checkHasNetWork, "$this$checkHasNetWork");
        Intrinsics.checkNotNullParameter(func, "func");
        if (f.j(checkHasNetWork)) {
            func.invoke();
        } else {
            i2.a(checkHasNetWork).b("请检查网络！");
        }
    }

    public static final boolean dialogFragmentCanShow(@NotNull DialogFragment dialogFragment) {
        Intrinsics.checkNotNullParameter(dialogFragment, "dialogFragment");
        return (dialogFragment.isAdded() || dialogFragment.isVisible() || dialogFragment.isRemoving()) ? false : true;
    }
}
