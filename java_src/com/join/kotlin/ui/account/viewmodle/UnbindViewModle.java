package com.join.kotlin.ui.account.viewmodle;

import android.content.Context;
import android.graphics.Color;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.ui.account.modle.UnThirdPartRequest;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.u1;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.MMSRequesBean;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnbindViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bH\u0010IJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR(\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0011\u001a\u0004\b!\u0010\u0013\"\u0004\b\"\u0010\u0015R\"\u0010#\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\t\u001a\u0004\b$\u0010\u000b\"\u0004\b%\u0010\rR\"\u0010&\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R(\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u0011\u001a\u0004\b-\u0010\u0013\"\u0004\b.\u0010\u0015R(\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u0011\u001a\u0004\b0\u0010\u0013\"\u0004\b1\u0010\u0015R$\u00103\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u00109\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010\u0017\u001a\u0004\b:\u0010\u0019\"\u0004\b;\u0010\u001bR(\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010\u0011\u001a\u0004\b=\u0010\u0013\"\u0004\b>\u0010\u0015R(\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\u0011\u001a\u0004\b@\u0010\u0013\"\u0004\bA\u0010\u0015R(\u0010B\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0011\u001a\u0004\bC\u0010\u0013\"\u0004\bD\u0010\u0015R\"\u0010E\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010'\u001a\u0004\bF\u0010)\"\u0004\bG\u0010+¨\u0006J"}, d2 = {"Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "Landroidx/lifecycle/ViewModel;", "Landroid/content/Context;", "context", "", "sendUnbindThridPart", "sendsmsCode", "", "canSendCode", "Z", "getCanSendCode", "()Z", "setCanSendCode", "(Z)V", "Landroidx/lifecycle/MutableLiveData;", "", "callStatus", "Landroidx/lifecycle/MutableLiveData;", "getCallStatus", "()Landroidx/lifecycle/MutableLiveData;", "setCallStatus", "(Landroidx/lifecycle/MutableLiveData;)V", "colorNormal", "I", "getColorNormal", "()I", "setColorNormal", "(I)V", "", "moble", "getMoble", "setMoble", "sendCodeButnColor", "getSendCodeButnColor", "setSendCodeButnColor", "breakCodeCountDown", "getBreakCodeCountDown", "setBreakCodeCountDown", "platform", "Ljava/lang/String;", "getPlatform", "()Ljava/lang/String;", "setPlatform", "(Ljava/lang/String;)V", GrantCredentialsPermissionActivity.f64042f, "getAccount", "setAccount", "title", "getTitle", "setTitle", "Lkotlinx/coroutines/c2;", "coluting", "Lkotlinx/coroutines/c2;", "getColuting", "()Lkotlinx/coroutines/c2;", "setColuting", "(Lkotlinx/coroutines/c2;)V", "colorWait", "getColorWait", "setColorWait", "hidesoftWard", "getHidesoftWard", "setHidesoftWard", "sendCodeButnText", "getSendCodeButnText", "setSendCodeButnText", "codeText", "getCodeText", "setCodeText", "mobleNumber", "getMobleNumber", "setMobleNumber", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UnbindViewModle extends ViewModel {
    private boolean breakCodeCountDown;
    @Nullable
    private c2 coluting;
    @NotNull
    private MutableLiveData<String> moble = new MutableLiveData<>();
    @NotNull
    private String mobleNumber = "";
    @NotNull
    private MutableLiveData<String> account = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> codeText = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> sendCodeButnText = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> sendCodeButnColor = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>();
    private int colorNormal = Color.parseColor("#3CA4FD");
    private int colorWait = Color.parseColor("#4C4B5F");
    private boolean canSendCode = true;
    @NotNull
    private String platform = "";
    @NotNull
    private MutableLiveData<Boolean> hidesoftWard = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> callStatus = new MutableLiveData<>();

    public UnbindViewModle() {
        this.hidesoftWard.setValue(Boolean.FALSE);
        this.title.setValue("解绑帐号");
        this.moble.setValue("");
        this.account.setValue("");
        this.codeText.setValue("");
        this.sendCodeButnText.setValue("获取验证码");
        this.sendCodeButnColor.setValue(Integer.valueOf(this.colorNormal));
        this.callStatus.setValue(0);
    }

    @NotNull
    public final MutableLiveData<String> getAccount() {
        return this.account;
    }

    public final boolean getBreakCodeCountDown() {
        return this.breakCodeCountDown;
    }

    @NotNull
    public final MutableLiveData<Integer> getCallStatus() {
        return this.callStatus;
    }

    public final boolean getCanSendCode() {
        return this.canSendCode;
    }

    @NotNull
    public final MutableLiveData<String> getCodeText() {
        return this.codeText;
    }

    public final int getColorNormal() {
        return this.colorNormal;
    }

    public final int getColorWait() {
        return this.colorWait;
    }

    @Nullable
    public final c2 getColuting() {
        return this.coluting;
    }

    @NotNull
    public final MutableLiveData<Boolean> getHidesoftWard() {
        return this.hidesoftWard;
    }

    @NotNull
    public final MutableLiveData<String> getMoble() {
        return this.moble;
    }

    @NotNull
    public final String getMobleNumber() {
        return this.mobleNumber;
    }

    @NotNull
    public final String getPlatform() {
        return this.platform;
    }

    @NotNull
    public final MutableLiveData<Integer> getSendCodeButnColor() {
        return this.sendCodeButnColor;
    }

    @NotNull
    public final MutableLiveData<String> getSendCodeButnText() {
        return this.sendCodeButnText;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [com.join.kotlin.ui.account.modle.UnThirdPartRequest, T] */
    public final void sendUnbindThridPart(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean account = instance_.getAccountData();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        String str = this.mobleNumber;
        String valueOf = String.valueOf(this.codeText.getValue());
        Intrinsics.checkNotNullExpressionValue(account, "account");
        int uid = account.getUid();
        String token = account.getToken();
        Intrinsics.checkNotNullExpressionValue(token, "account.token");
        objectRef.element = new UnThirdPartRequest(str, valueOf, "", uid, token, this.platform);
        this.hidesoftWard.setValue(Boolean.TRUE);
        T t3 = objectRef.element;
        UnThirdPartRequest unThirdPartRequest = (UnThirdPartRequest) t3;
        String f4 = u1.f((UnThirdPartRequest) t3);
        Intrinsics.checkNotNullExpressionValue(f4, "SignUtil.getSign(request)");
        unThirdPartRequest.setSign(f4);
        k.f(v1.f72528a, g1.c(), null, new UnbindViewModle$sendUnbindThridPart$job$1(this, objectRef, context, null), 2, null);
    }

    public final void sendsmsCode(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.canSendCode) {
            this.canSendCode = false;
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.mobleNumber);
            mMSRequesBean.setType(MMSRequesBean.TYPE_BIND);
            mMSRequesBean.setSign(u1.f(mMSRequesBean));
            k.f(v1.f72528a, g1.c(), null, new UnbindViewModle$sendsmsCode$job$1(this, mMSRequesBean, context, null), 2, null);
        }
    }

    public final void setAccount(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.account = mutableLiveData;
    }

    public final void setBreakCodeCountDown(boolean z3) {
        this.breakCodeCountDown = z3;
    }

    public final void setCallStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.callStatus = mutableLiveData;
    }

    public final void setCanSendCode(boolean z3) {
        this.canSendCode = z3;
    }

    public final void setCodeText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.codeText = mutableLiveData;
    }

    public final void setColorNormal(int i2) {
        this.colorNormal = i2;
    }

    public final void setColorWait(int i2) {
        this.colorWait = i2;
    }

    public final void setColuting(@Nullable c2 c2Var) {
        this.coluting = c2Var;
    }

    public final void setHidesoftWard(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.hidesoftWard = mutableLiveData;
    }

    public final void setMoble(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.moble = mutableLiveData;
    }

    public final void setMobleNumber(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mobleNumber = str;
    }

    public final void setPlatform(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platform = str;
    }

    public final void setSendCodeButnColor(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.sendCodeButnColor = mutableLiveData;
    }

    public final void setSendCodeButnText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.sendCodeButnText = mutableLiveData;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }
}
