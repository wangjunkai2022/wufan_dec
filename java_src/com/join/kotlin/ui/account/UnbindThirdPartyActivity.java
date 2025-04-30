package com.join.kotlin.ui.account;

import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.account.modle.UnBindPlatform;
import com.join.kotlin.ui.account.viewmodle.UnbindViewModle;
import com.join.kotlin.ui.base.BasViewModleActivity;
import com.join.kotlin.ui.base.DataBindingConfig;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BTActivityBean;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnbindThirdPartyActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\u0003H\u0014J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0014R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;", "Lcom/join/kotlin/ui/base/BasViewModleActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "", "initViewModel", "Lcom/join/kotlin/ui/base/DataBindingConfig;", "getDataBindingConfig", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Lcom/join/mgps/dto/BTActivityBean;", "data", "onClickItem", "onPause", "onClickBack", "onDestroy", "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "viewModle", "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "setViewModle", "(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UnbindThirdPartyActivity extends BasViewModleActivity implements ClickProxy {
    public UnbindViewModle viewModle;

    @Override // com.join.kotlin.ui.base.BasViewModleActivity
    @NotNull
    public DataBindingConfig getDataBindingConfig() {
        UnbindViewModle unbindViewModle = this.viewModle;
        if (unbindViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        return new DataBindingConfig(R.layout.unbind_thridpart_activity, 27, unbindViewModle).addBindingParam(7, this);
    }

    @NotNull
    public final UnbindViewModle getViewModle() {
        UnbindViewModle unbindViewModle = this.viewModle;
        if (unbindViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        return unbindViewModle;
    }

    @Override // com.join.kotlin.ui.base.BasViewModleActivity
    public void initViewModel() {
        this.viewModle = (UnbindViewModle) getActivityScopeViewModel(UnbindViewModle.class);
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        UnbindViewModle unbindViewModle = this.viewModle;
        if (unbindViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle.setBreakCodeCountDown(true);
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.ui.base.BasViewModleActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("type");
        UnbindViewModle unbindViewModle = this.viewModle;
        if (unbindViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle.setPlatform(String.valueOf(stringExtra));
        if (Intrinsics.areEqual(stringExtra, UnBindPlatform.QQ_OPENID.name())) {
            UnbindViewModle unbindViewModle2 = this.viewModle;
            if (unbindViewModle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            unbindViewModle2.getTitle().setValue("解绑QQ");
        } else if (Intrinsics.areEqual(stringExtra, UnBindPlatform.WEIXIN_OPENID.name())) {
            UnbindViewModle unbindViewModle3 = this.viewModle;
            if (unbindViewModle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            unbindViewModle3.getTitle().setValue("解绑微信");
        } else if (Intrinsics.areEqual(stringExtra, UnBindPlatform.WB_OPENID.name())) {
            UnbindViewModle unbindViewModle4 = this.viewModle;
            if (unbindViewModle4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            unbindViewModle4.getTitle().setValue("解绑微博");
        }
        AccountUtil_ instance_ = AccountUtil_.getInstance_(this);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(this)");
        AccountBean accountBean = instance_.getAccountData();
        UnbindViewModle unbindViewModle5 = this.viewModle;
        if (unbindViewModle5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        MutableLiveData<String> account = unbindViewModle5.getAccount();
        StringBuilder sb = new StringBuilder();
        sb.append("你的帐号为： ");
        Intrinsics.checkNotNullExpressionValue(accountBean, "accountBean");
        sb.append(accountBean.getAccount());
        account.setValue(sb.toString());
        UnbindViewModle unbindViewModle6 = this.viewModle;
        if (unbindViewModle6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle6.getMoble().setValue(accountBean.getMobile());
        UnbindViewModle unbindViewModle7 = this.viewModle;
        if (unbindViewModle7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        String mobile = accountBean.getMobile();
        Intrinsics.checkNotNullExpressionValue(mobile, "accountBean.mobile");
        unbindViewModle7.setMobleNumber(mobile);
        UnbindViewModle unbindViewModle8 = this.viewModle;
        if (unbindViewModle8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle8.sendsmsCode(this);
        UnbindViewModle unbindViewModle9 = this.viewModle;
        if (unbindViewModle9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle9.getCallStatus().observe(this, new Observer<Integer>() { // from class: com.join.kotlin.ui.account.UnbindThirdPartyActivity$onCreate$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Integer num) {
                if (num != null && num.intValue() == 1) {
                    UnbindThirdPartyActivity.this.finish();
                }
            }
        });
        UnbindViewModle unbindViewModle10 = this.viewModle;
        if (unbindViewModle10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle10.getHidesoftWard().observe(this, new Observer<Boolean>() { // from class: com.join.kotlin.ui.account.UnbindThirdPartyActivity$onCreate$2
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0008, code lost:
                r2 = r1.this$0.getViewBinding();
             */
            @Override // androidx.lifecycle.Observer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onChanged(java.lang.Boolean r2) {
                /*
                    r1 = this;
                    java.lang.Boolean r0 = java.lang.Boolean.TRUE
                    boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
                    if (r2 == 0) goto L17
                    com.join.kotlin.ui.account.UnbindThirdPartyActivity r2 = com.join.kotlin.ui.account.UnbindThirdPartyActivity.this
                    androidx.databinding.ViewDataBinding r2 = com.join.kotlin.ui.account.UnbindThirdPartyActivity.access$getViewBinding(r2)
                    if (r2 == 0) goto L17
                    com.join.android.app.mgsim.wufun.databinding.wc0 r2 = (com.join.android.app.mgsim.wufun.databinding.wc0) r2
                    android.widget.TextView r2 = r2.F
                    y1.a.b(r2)
                L17:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.account.UnbindThirdPartyActivity$onCreate$2.onChanged(java.lang.Boolean):void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        UnbindViewModle unbindViewModle = this.viewModle;
        if (unbindViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        unbindViewModle.setBreakCodeCountDown(true);
    }

    public final void setViewModle(@NotNull UnbindViewModle unbindViewModle) {
        Intrinsics.checkNotNullParameter(unbindViewModle, "<set-?>");
        this.viewModle = unbindViewModle;
    }
}
