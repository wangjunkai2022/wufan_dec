package cn.sharesdk.onekeyshare;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.moments.WechatMoments;
import com.join.mgps.service.CommonService_;
import com.mob.MobSDK;
import com.mob.tools.utils.ResHelper;
import com.mob.tools.utils.UIHandler;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class OnekeyShareThemeImpl implements PlatformActionListener, Handler.Callback {
    public PlatformActionListener callback = this;
    protected Context context;
    protected ArrayList<CustomerLogo> customerLogos;
    protected ShareContentCustomizeCallback customizeCallback;
    protected boolean dialogMode;
    protected boolean disableSSO;
    protected HashMap<String, String> hiddenPlatforms;
    protected HashMap<String, Object> shareParamsMap;
    protected boolean silent;

    private void prepareForEditPage(Platform platform) {
        Platform.ShareParams shareDataToShareParams;
        if (!formateShareData(platform) || (shareDataToShareParams = shareDataToShareParams(platform)) == null) {
            return;
        }
        ShareSDK.logDemoEvent(3, platform);
        shareDataToShareParams.setOpenCustomEven(true);
        ShareContentCustomizeCallback shareContentCustomizeCallback = this.customizeCallback;
        if (shareContentCustomizeCallback != null) {
            shareContentCustomizeCallback.onShare(platform, shareDataToShareParams);
        }
        showEditPage(this.context, platform, shareDataToShareParams);
        this.customizeCallback = null;
    }

    private void toast(final String str) {
        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.sharesdk.onekeyshare.OnekeyShareThemeImpl.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int stringRes = ResHelper.getStringRes(OnekeyShareThemeImpl.this.context, str);
                if (stringRes > 0) {
                    Toast.makeText(OnekeyShareThemeImpl.this.context, stringRes, 0).show();
                } else {
                    Toast.makeText(OnekeyShareThemeImpl.this.context, str, 0).show();
                }
                return false;
            }
        });
    }

    public final void disableSSO() {
        this.disableSSO = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01a6, code lost:
        if (r1 != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01da, code lost:
        if (r1 != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01dc, code lost:
        r6 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0241, code lost:
        if (r1 != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0292, code lost:
        if (r1 != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02db, code lost:
        if (r1 != false) goto L115;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean formateShareData(cn.sharesdk.framework.Platform r13) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.sharesdk.onekeyshare.OnekeyShareThemeImpl.formateShareData(cn.sharesdk.framework.Platform):boolean");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.arg1;
        if (i2 == 1) {
            int stringRes = ResHelper.getStringRes(this.context, "ssdk_oks_share_completed");
            if (stringRes > 0) {
                toast(this.context.getString(stringRes));
                return false;
            }
            return false;
        } else if (i2 != 2) {
            if (i2 != 3) {
                return false;
            }
            toast("ssdk_oks_share_canceled");
            return false;
        } else {
            String simpleName = message.obj.getClass().getSimpleName();
            if (!"WechatClientNotExistException".equals(simpleName) && !"WechatTimelineNotSupportedException".equals(simpleName) && !"WechatFavoriteNotSupportedException".equals(simpleName)) {
                if ("GooglePlusClientNotExistException".equals(simpleName)) {
                    toast("ssdk_google_plus_client_inavailable");
                    return false;
                } else if ("QQClientNotExistException".equals(simpleName)) {
                    toast("ssdk_qq_client_inavailable");
                    return false;
                } else if (!"YixinClientNotExistException".equals(simpleName) && !"YixinTimelineNotSupportedException".equals(simpleName)) {
                    if ("KakaoTalkClientNotExistException".equals(simpleName)) {
                        toast("ssdk_kakaotalk_client_inavailable");
                        return false;
                    } else if ("KakaoStoryClientNotExistException".equals(simpleName)) {
                        toast("ssdk_kakaostory_client_inavailable");
                        return false;
                    } else if ("WhatsAppClientNotExistException".equals(simpleName)) {
                        toast("ssdk_whatsapp_client_inavailable");
                        return false;
                    } else if ("FacebookMessengerClientNotExistException".equals(simpleName)) {
                        toast("ssdk_facebookmessenger_client_inavailable");
                        return false;
                    } else {
                        toast("ssdk_oks_share_failed");
                        return false;
                    }
                } else {
                    toast("ssdk_yixin_client_inavailable");
                    return false;
                }
            }
            toast("ssdk_wechat_client_inavailable");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isUseClientToShare(Platform platform) {
        String name = platform.getName();
        if (SinaWeibo.NAME.equals(name) || Wechat.NAME.equals(name) || WechatMoments.NAME.equals(name) || "WechatFavorite".equals(name) || "ShortMessage".equals(name) || "Email".equals(name) || "Qzone".equals(name) || QQ.NAME.equals(name) || "Pinterest".equals(name) || "Instagram".equals(name) || "Yixin".equals(name) || "YixinMoments".equals(name) || QZone.NAME.equals(name) || "Mingdao".equals(name) || "Line".equals(name) || "KakaoStory".equals(name) || "KakaoTalk".equals(name) || "Bluetooth".equals(name) || "WhatsApp".equals(name) || "BaiduTieba".equals(name) || "Laiwang".equals(name) || "LaiwangMoments".equals(name) || "Alipay".equals(name) || "AlipayMoments".equals(name) || "FacebookMessenger".equals(name) || "GooglePlus".equals(name) || "Dingding".equals(name) || "Youtube".equals(name) || "Meipai".equals(name) || "Telegram".equals(name) || "Douyin".equals(name) || "Oasis".equals(name) || "Tiktok".equals(name) || "Pocket".equals(name)) {
            return true;
        }
        if ("Evernote".equals(name)) {
            return "true".equals(platform.getDevinfo("ShareByAppClient"));
        } else if (!"Facebook".equals(name)) {
            return "LinkedIn".equals(name) && "true".equals(platform.getDevinfo("ShareByAppClient")) && platform.isClientValid();
        } else if ("true".equals(platform.getDevinfo("ShareByAppClient")) && platform.isClientValid()) {
            return true;
        } else {
            return this.shareParamsMap.containsKey("url") && !TextUtils.isEmpty((String) this.shareParamsMap.get("url"));
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public final void onCancel(Platform platform, int i2) {
        Message message = new Message();
        message.arg1 = 3;
        message.arg2 = i2;
        message.obj = platform;
        UIHandler.sendMessage(message, this);
        ShareSDK.logDemoEvent(5, platform);
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public final void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
        Message message = new Message();
        message.arg1 = 1;
        message.arg2 = i2;
        message.obj = platform;
        UIHandler.sendMessage(message, this);
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public final void onError(Platform platform, int i2, Throwable th) {
        th.printStackTrace();
        Message message = new Message();
        message.arg1 = 2;
        message.arg2 = i2;
        message.obj = th;
        UIHandler.sendMessage(message, this);
        ShareSDK.logDemoEvent(4, platform);
    }

    public final void setCustomerLogos(ArrayList<CustomerLogo> arrayList) {
        this.customerLogos = arrayList;
    }

    public final void setDialogMode(boolean z3) {
        this.dialogMode = z3;
    }

    public final void setHiddenPlatforms(HashMap<String, String> hashMap) {
        this.hiddenPlatforms = hashMap;
    }

    public final void setPlatformActionListener(PlatformActionListener platformActionListener) {
        if (platformActionListener == null) {
            platformActionListener = this;
        }
        this.callback = platformActionListener;
    }

    public final void setShareContentCustomizeCallback(ShareContentCustomizeCallback shareContentCustomizeCallback) {
        this.customizeCallback = shareContentCustomizeCallback;
    }

    public final void setShareParamsMap(HashMap<String, Object> hashMap) {
        this.shareParamsMap = hashMap;
    }

    public final void setSilent(boolean z3) {
        this.silent = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Platform.ShareParams shareDataToShareParams(Platform platform) {
        HashMap<String, Object> hashMap;
        if (platform != null && (hashMap = this.shareParamsMap) != null) {
            try {
                Bitmap bitmap = (Bitmap) ResHelper.forceCast(this.shareParamsMap.get("viewToShare"));
                if (TextUtils.isEmpty((String) ResHelper.forceCast(hashMap.get(CommonService_.b0.f51756b))) && bitmap != null && !bitmap.isRecycled()) {
                    String cachePath = ResHelper.getCachePath(MobSDK.getContext(), "screenshot");
                    File file = new File(cachePath, String.valueOf(System.currentTimeMillis()) + ".jpg");
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.shareParamsMap.put(CommonService_.b0.f51756b, file.getAbsolutePath());
                }
                return new Platform.ShareParams(this.shareParamsMap);
            } catch (Throwable th) {
                th.printStackTrace();
                toast("ssdk_oks_share_failed");
                return null;
            }
        }
        toast("ssdk_oks_share_failed");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void shareSilently(Platform platform) {
        Platform.ShareParams shareDataToShareParams;
        if (!formateShareData(platform) || (shareDataToShareParams = shareDataToShareParams(platform)) == null) {
            return;
        }
        HashMap<String, Object> hashMap = this.shareParamsMap;
        if (hashMap != null) {
            if (!Boolean.valueOf(hashMap.containsKey("disappearsharetoast") ? ((Boolean) this.shareParamsMap.get("disappearsharetoast")).booleanValue() : false).booleanValue()) {
                toast("ssdk_oks_sharing");
            }
        }
        ShareContentCustomizeCallback shareContentCustomizeCallback = this.customizeCallback;
        if (shareContentCustomizeCallback != null) {
            shareContentCustomizeCallback.onShare(platform, shareDataToShareParams);
        }
        boolean z3 = this.disableSSO;
        if (z3) {
            platform.SSOSetting(z3);
        }
        platform.setPlatformActionListener(this.callback);
        platform.share(shareDataToShareParams);
        this.callback = null;
        this.customizeCallback = null;
    }

    public final void show(Context context) {
        this.context = context;
        if (this.shareParamsMap.containsKey("platform")) {
            Platform platform = null;
            try {
                platform = ShareSDK.getPlatform(String.valueOf(this.shareParamsMap.get("platform")));
            } catch (Throwable unused) {
            }
            boolean z3 = platform instanceof CustomPlatform;
            boolean isUseClientToShare = isUseClientToShare(platform);
            if (!this.silent && !z3 && !isUseClientToShare) {
                prepareForEditPage(platform);
                return;
            } else {
                shareSilently(platform);
                return;
            }
        }
        showPlatformPage(context);
    }

    protected abstract void showEditPage(Context context, Platform platform, Platform.ShareParams shareParams);

    protected abstract void showPlatformPage(Context context);
}
