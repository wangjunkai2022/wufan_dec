package cn.sharesdk.onekeyshare;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.NotificationCompat;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import com.alipay.sdk.authjs.a;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.service.CommonService_;
import com.mob.MobApplication;
import com.mob.MobSDK;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class OnekeyShare {
    public static final String SHARESDK_TAG = "ShareSDK";
    private HashMap<String, Object> params;

    public OnekeyShare() {
        HashMap<String, Object> hashMap = new HashMap<>();
        this.params = hashMap;
        hashMap.put("customers", new ArrayList());
        this.params.put("hiddenPlatforms", new HashMap());
    }

    public void addHiddenPlatform(String str) {
        ((HashMap) ResHelper.forceCast(this.params.get("hiddenPlatforms"))).put(str, str);
    }

    public void disableSSOWhenAuthorize() {
        this.params.put("disableSSO", Boolean.TRUE);
    }

    public PlatformActionListener getCallback() {
        return (PlatformActionListener) ResHelper.forceCast(this.params.get(a.f9675i));
    }

    public ShareContentCustomizeCallback getShareContentCustomizeCallback() {
        return (ShareContentCustomizeCallback) ResHelper.forceCast(this.params.get("customizeCallback"));
    }

    public String getText() {
        if (this.params.containsKey("text")) {
            return String.valueOf(this.params.get("text"));
        }
        return null;
    }

    public void setActivity(Activity activity) {
        this.params.put(TTDownloadField.TT_ACTIVITY, activity);
    }

    public void setAddress(String str) {
        this.params.put("address", str);
    }

    public void setCallback(PlatformActionListener platformActionListener) {
        this.params.put(a.f9675i, platformActionListener);
    }

    public void setComment(String str) {
        this.params.put("comment", str);
    }

    public void setCustomerLogo(Bitmap bitmap, String str, View.OnClickListener onClickListener) {
        CustomerLogo customerLogo = new CustomerLogo();
        customerLogo.logo = bitmap;
        customerLogo.label = str;
        customerLogo.listener = onClickListener;
        ((ArrayList) ResHelper.forceCast(this.params.get("customers"))).add(customerLogo);
    }

    public void setDialogMode(boolean z3) {
        this.params.put("dialogMode", Boolean.valueOf(z3));
    }

    public void setDisappearShareToast(boolean z3) {
        this.params.put("disappearsharetoast", Boolean.valueOf(z3));
    }

    public void setExecuteUrl(String str) {
        this.params.put("executeurl", str);
    }

    public void setFilePath(String str) {
        this.params.put("filePath", str);
    }

    public void setHashtag(String str) {
        this.params.put("HASHTAG", str);
    }

    public void setHashtags(String[] strArr) {
        this.params.put("HASHTAGS", strArr);
    }

    public void setImageArray(String[] strArr) {
        this.params.put("imageArray", strArr);
    }

    public void setImageData(Bitmap bitmap) {
        if (bitmap != null) {
            this.params.put("imageData", bitmap);
        }
    }

    public void setImagePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.params.put(CommonService_.b0.f51756b, str);
    }

    public void setImageUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.params.put("imageUrl", str);
    }

    public void setInstallUrl(String str) {
        this.params.put("installurl", str);
    }

    public void setLatitude(float f4) {
        this.params.put("latitude", Float.valueOf(f4));
    }

    public void setLinkedinDescription(String str) {
        this.params.put("linkedinDescription", str);
    }

    public void setLongitude(float f4) {
        this.params.put("longitude", Float.valueOf(f4));
    }

    public void setMusicUrl(String str) {
        this.params.put("musicUrl", str);
    }

    public void setPlatform(String str) {
        this.params.put("platform", str);
    }

    public void setQQMiniProgramAppid(String str) {
        this.params.put("mini_program_appid", str);
    }

    public void setQQMiniProgramPath(String str) {
        this.params.put("mini_program_path", str);
    }

    public void setQQMiniProgramType(String str) {
        this.params.put("mini_program_type", str);
    }

    public void setQuote(String str) {
        this.params.put("QUOTE", str);
    }

    public void setShareContentCustomizeCallback(ShareContentCustomizeCallback shareContentCustomizeCallback) {
        this.params.put("customizeCallback", shareContentCustomizeCallback);
    }

    public void setShareToTencentWeiboWhenPerformingQQOrQZoneSharing() {
        this.params.put("isShareTencentWeibo", Boolean.TRUE);
    }

    public void setSilent(boolean z3) {
        this.params.put(NotificationCompat.GROUP_KEY_SILENT, Boolean.valueOf(z3));
    }

    public void setSite(String str) {
        this.params.put("site", str);
    }

    public void setSiteUrl(String str) {
        this.params.put("siteUrl", str);
    }

    public void setText(String str) {
        this.params.put("text", str);
    }

    public void setTheme(OnekeyShareTheme onekeyShareTheme) {
        this.params.put("theme", Integer.valueOf(onekeyShareTheme.getValue()));
    }

    public void setTitle(String str) {
        this.params.put("title", str);
    }

    public void setTitleUrl(String str) {
        this.params.put("titleUrl", str);
    }

    public void setUrl(String str) {
        this.params.put("url", str);
    }

    public void setVenueDescription(String str) {
        this.params.put("venueDescription", str);
    }

    public void setVenueName(String str) {
        this.params.put("venueName", str);
    }

    public void setVideoArray(String[] strArr) {
        this.params.put("videoArray", strArr);
    }

    public void setVideoPath(String str) {
        this.params.put("videoPath", str);
    }

    public void setVideoUrl(String str) {
        this.params.put("url", str);
        this.params.put("shareType", 6);
    }

    public void setViewToShare(View view) {
        try {
            this.params.put("viewToShare", BitmapHelper.captureView(view, view.getWidth(), view.getHeight()));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void show(Context context) {
        int i2;
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.putAll(this.params);
        if (!(context instanceof MobApplication)) {
            MobSDK.init(context.getApplicationContext());
        }
        ShareSDK.logDemoEvent(1, null);
        try {
            i2 = ResHelper.parseInt(String.valueOf(hashMap.remove("theme")));
        } catch (Throwable unused) {
            i2 = 0;
        }
        OnekeyShareThemeImpl impl = OnekeyShareTheme.fromValue(i2).getImpl();
        impl.setShareParamsMap(hashMap);
        impl.setDialogMode(hashMap.containsKey("dialogMode") ? ((Boolean) hashMap.remove("dialogMode")).booleanValue() : false);
        impl.setSilent(hashMap.containsKey(NotificationCompat.GROUP_KEY_SILENT) ? ((Boolean) hashMap.remove(NotificationCompat.GROUP_KEY_SILENT)).booleanValue() : false);
        impl.setCustomerLogos((ArrayList) hashMap.remove("customers"));
        impl.setHiddenPlatforms((HashMap) hashMap.remove("hiddenPlatforms"));
        impl.setPlatformActionListener((PlatformActionListener) hashMap.remove(a.f9675i));
        impl.setShareContentCustomizeCallback((ShareContentCustomizeCallback) hashMap.remove("customizeCallback"));
        if (hashMap.containsKey("disableSSO") && ((Boolean) hashMap.remove("disableSSO")).booleanValue()) {
            impl.disableSSO();
        }
        impl.show(context.getApplicationContext());
    }
}
