package com.join.kotlin.ui.account.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.dto.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnThirdPartRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b%\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b7\u00108J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0002HÆ\u0003J\t\u0010\t\u001a\u00020\u0002HÆ\u0003JE\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0017\u001a\u0004\b%\u0010\u0019\"\u0004\b&\u0010\u001bR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0017\u001a\u0004\b'\u0010\u0019\"\u0004\b(\u0010\u001bR\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0017\u001a\u0004\b*\u0010\u0019\"\u0004\b+\u0010\u001bR\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b,\u0010\u0019\"\u0004\b-\u0010\u001bR\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0017\u001a\u0004\b/\u0010\u0019\"\u0004\b0\u0010\u001bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0017\u001a\u0004\b1\u0010\u0019\"\u0004\b2\u0010\u001bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0017\u001a\u0004\b3\u0010\u0019\"\u0004\b4\u0010\u001bR\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0017\u001a\u0004\b5\u0010\u0019\"\u0004\b6\u0010\u001b¨\u00069"}, d2 = {"Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;", "", "", "component1", "component2", "component3", "", "component4", "component5", "component6", "mobile", "smsCode", Constant.MD5, "uid", "userToken", "platformType", "copy", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "packageType", "Ljava/lang/String;", "getPackageType", "()Ljava/lang/String;", "setPackageType", "(Ljava/lang/String;)V", "deviceId", "getDeviceId", "setDeviceId", "I", "getUid", "()I", "setUid", "(I)V", "mac", "getMac", "setMac", "getMobile", "setMobile", "version", "getVersion", "setVersion", "getSmsCode", "setSmsCode", "packageName", "getPackageName", "setPackageName", "getPlatformType", "setPlatformType", "getSign", "setSign", "getUserToken", "setUserToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UnThirdPartRequest {
    @NotNull
    private String deviceId;
    @NotNull
    private String mac;
    @NotNull
    private String mobile;
    @NotNull
    private String packageName;
    @NotNull
    private String packageType;
    @NotNull
    private String platformType;
    @NotNull
    private String sign;
    @NotNull
    private String smsCode;
    private int uid;
    @NotNull
    private String userToken;
    @NotNull
    private String version;

    public UnThirdPartRequest(@NotNull String mobile, @NotNull String smsCode, @NotNull String sign, int i2, @NotNull String userToken, @NotNull String platformType) {
        Intrinsics.checkNotNullParameter(mobile, "mobile");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        Intrinsics.checkNotNullParameter(sign, "sign");
        Intrinsics.checkNotNullParameter(userToken, "userToken");
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        this.mobile = mobile;
        this.smsCode = smsCode;
        this.sign = sign;
        this.uid = i2;
        this.userToken = userToken;
        this.platformType = platformType;
        this.deviceId = "";
        this.mac = "";
        this.packageName = "com.join.android.app.mgsim.wufun";
        this.packageType = "wufun";
        this.version = "340_4.9.9.6";
    }

    public static /* synthetic */ UnThirdPartRequest copy$default(UnThirdPartRequest unThirdPartRequest, String str, String str2, String str3, int i2, String str4, String str5, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = unThirdPartRequest.mobile;
        }
        if ((i4 & 2) != 0) {
            str2 = unThirdPartRequest.smsCode;
        }
        String str6 = str2;
        if ((i4 & 4) != 0) {
            str3 = unThirdPartRequest.sign;
        }
        String str7 = str3;
        if ((i4 & 8) != 0) {
            i2 = unThirdPartRequest.uid;
        }
        int i5 = i2;
        if ((i4 & 16) != 0) {
            str4 = unThirdPartRequest.userToken;
        }
        String str8 = str4;
        if ((i4 & 32) != 0) {
            str5 = unThirdPartRequest.platformType;
        }
        return unThirdPartRequest.copy(str, str6, str7, i5, str8, str5);
    }

    @NotNull
    public final String component1() {
        return this.mobile;
    }

    @NotNull
    public final String component2() {
        return this.smsCode;
    }

    @NotNull
    public final String component3() {
        return this.sign;
    }

    public final int component4() {
        return this.uid;
    }

    @NotNull
    public final String component5() {
        return this.userToken;
    }

    @NotNull
    public final String component6() {
        return this.platformType;
    }

    @NotNull
    public final UnThirdPartRequest copy(@NotNull String mobile, @NotNull String smsCode, @NotNull String sign, int i2, @NotNull String userToken, @NotNull String platformType) {
        Intrinsics.checkNotNullParameter(mobile, "mobile");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        Intrinsics.checkNotNullParameter(sign, "sign");
        Intrinsics.checkNotNullParameter(userToken, "userToken");
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        return new UnThirdPartRequest(mobile, smsCode, sign, i2, userToken, platformType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof UnThirdPartRequest) {
                UnThirdPartRequest unThirdPartRequest = (UnThirdPartRequest) obj;
                return Intrinsics.areEqual(this.mobile, unThirdPartRequest.mobile) && Intrinsics.areEqual(this.smsCode, unThirdPartRequest.smsCode) && Intrinsics.areEqual(this.sign, unThirdPartRequest.sign) && this.uid == unThirdPartRequest.uid && Intrinsics.areEqual(this.userToken, unThirdPartRequest.userToken) && Intrinsics.areEqual(this.platformType, unThirdPartRequest.platformType);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final String getDeviceId() {
        return this.deviceId;
    }

    @NotNull
    public final String getMac() {
        return this.mac;
    }

    @NotNull
    public final String getMobile() {
        return this.mobile;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final String getPackageType() {
        return this.packageType;
    }

    @NotNull
    public final String getPlatformType() {
        return this.platformType;
    }

    @NotNull
    public final String getSign() {
        return this.sign;
    }

    @NotNull
    public final String getSmsCode() {
        return this.smsCode;
    }

    public final int getUid() {
        return this.uid;
    }

    @NotNull
    public final String getUserToken() {
        return this.userToken;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.mobile;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.smsCode;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.sign;
        int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.uid) * 31;
        String str4 = this.userToken;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.platformType;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setDeviceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.deviceId = str;
    }

    public final void setMac(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mac = str;
    }

    public final void setMobile(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mobile = str;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setPackageType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageType = str;
    }

    public final void setPlatformType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platformType = str;
    }

    public final void setSign(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sign = str;
    }

    public final void setSmsCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.smsCode = str;
    }

    public final void setUid(int i2) {
        this.uid = i2;
    }

    public final void setUserToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userToken = str;
    }

    public final void setVersion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.version = str;
    }

    @NotNull
    public String toString() {
        return "UnThirdPartRequest(mobile=" + this.mobile + ", smsCode=" + this.smsCode + ", sign=" + this.sign + ", uid=" + this.uid + ", userToken=" + this.userToken + ", platformType=" + this.platformType + ")";
    }
}
