package cn.sharesdk.wechat.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.ShareSDKFileProvider;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.utils.i;
import com.mob.MobSDK;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ResHelper;
import com.tencent.mm.opensdk.channel.MMessageActV2;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
/* compiled from: WechatHelper.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static l f9126a;

    /* renamed from: b  reason: collision with root package name */
    private j f9127b = new j();

    /* renamed from: c  reason: collision with root package name */
    private k f9128c;

    /* renamed from: d  reason: collision with root package name */
    private String f9129d;

    /* renamed from: e  reason: collision with root package name */
    private String f9130e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9131f;

    /* renamed from: g  reason: collision with root package name */
    private int f9132g;

    private l() {
    }

    public static l a() {
        if (f9126a == null) {
            f9126a = new l();
        }
        return f9126a;
    }

    public void b(String str) {
        this.f9129d = str;
    }

    public void c(k kVar) throws Throwable {
        File parentFile;
        Platform b4 = kVar.b();
        Platform.ShareParams a4 = kVar.a();
        PlatformActionListener c4 = kVar.c();
        int shareType = a4.getShareType();
        if (shareType == 11 && e() < 620756993) {
            shareType = 4;
        }
        String title = a4.getTitle();
        String text = a4.getText();
        int scence = a4.getScence();
        String imagePath = a4.getImagePath();
        String imageFileProviderPath = a4.getImageFileProviderPath();
        String imageUrl = a4.getImageUrl();
        Bitmap imageData = a4.getImageData();
        String musicUrl = a4.getMusicUrl();
        String url = a4.getUrl();
        String filePath = a4.getFilePath();
        String extInfo = a4.getExtInfo();
        switch (shareType) {
            case 1:
                a(title, text, scence, kVar);
                return;
            case 2:
                if (imagePath != null && imagePath.length() > 0) {
                    b(MobSDK.getContext(), title, text, imagePath, scence, kVar);
                    return;
                } else if (imageFileProviderPath != null && imageFileProviderPath.length() > 0) {
                    a(MobSDK.getContext(), title, text, imageFileProviderPath, scence, kVar);
                    return;
                } else if (imageData != null && !imageData.isRecycled()) {
                    a(MobSDK.getContext(), title, text, imageData, scence, kVar);
                    return;
                } else if (imageUrl != null && imageUrl.length() > 0) {
                    String downloadBitmap = BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl);
                    try {
                        if (!TextUtils.isEmpty(downloadBitmap) && (parentFile = new File(downloadBitmap).getParentFile()) != null && parentFile.isDirectory()) {
                            File file = new File(parentFile.getAbsolutePath(), ".nomedia");
                            if (!file.exists() || !file.isFile()) {
                                file.createNewFile();
                            }
                        }
                    } catch (Throwable th) {
                        SSDKLog b5 = SSDKLog.b();
                        b5.a("when share iamge wechat that create nomedia catch " + th, new Object[0]);
                    }
                    b(MobSDK.getContext(), title, text, downloadBitmap, scence, kVar);
                    return;
                } else {
                    b(MobSDK.getContext(), title, text, "", scence, kVar);
                    return;
                }
            case 3:
            case 10:
            default:
                if (c4 != null) {
                    c4.onError(b4, 9, new IllegalArgumentException("shareType = " + shareType));
                    return;
                }
                return;
            case 4:
                String shortLintk = b4.getShortLintk(url, false);
                kVar.a().setUrl(shortLintk);
                if (imagePath != null && imagePath.length() > 0) {
                    b(MobSDK.getContext(), title, text, shortLintk, imagePath, scence, kVar);
                    return;
                } else if (imageData != null && !imageData.isRecycled()) {
                    b(MobSDK.getContext(), title, text, shortLintk, imageData, scence, kVar);
                    return;
                } else if (imageUrl != null && imageUrl.length() > 0) {
                    b(MobSDK.getContext(), title, text, shortLintk, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                    return;
                } else {
                    b(MobSDK.getContext(), title, text, shortLintk, "", scence, kVar);
                    return;
                }
            case 5:
                String shortLintk2 = b4.getShortLintk(musicUrl + " " + url, false);
                String str = shortLintk2.split(" ")[0];
                String str2 = shortLintk2.split(" ")[1];
                if (imagePath != null && imagePath.length() > 0) {
                    a(MobSDK.getContext(), title, text, str, str2, imagePath, scence, kVar);
                    return;
                } else if (imageData != null && !imageData.isRecycled()) {
                    a(MobSDK.getContext(), title, text, str, str2, imageData, scence, kVar);
                    return;
                } else if (imageUrl != null && imageUrl.length() > 0) {
                    a(MobSDK.getContext(), title, text, str, str2, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                    return;
                } else {
                    a(MobSDK.getContext(), title, text, str, str2, "", scence, kVar);
                    return;
                }
            case 6:
                String shortLintk3 = b4.getShortLintk(url, false);
                kVar.a().setUrl(shortLintk3);
                if (imagePath != null && imagePath.length() > 0) {
                    a(MobSDK.getContext(), title, text, shortLintk3, imagePath, scence, kVar);
                    return;
                } else if (imageData != null && !imageData.isRecycled()) {
                    a(MobSDK.getContext(), title, text, shortLintk3, imageData, scence, kVar);
                    return;
                } else if (imageUrl != null && imageUrl.length() > 0) {
                    a(MobSDK.getContext(), title, text, shortLintk3, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                    return;
                } else {
                    a(MobSDK.getContext(), title, text, shortLintk3, "", scence, kVar);
                    return;
                }
            case 7:
                if (scence == 1) {
                    throw new Throwable("WechatMoments does not support SAHRE_APP");
                }
                if (scence != 2) {
                    if (imagePath != null && imagePath.length() > 0) {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, imagePath, scence, kVar);
                        return;
                    } else if (imageData != null && !imageData.isRecycled()) {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, imageData, scence, kVar);
                        return;
                    } else if (imageUrl != null && imageUrl.length() > 0) {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                        return;
                    } else {
                        b(MobSDK.getContext(), title, text, filePath, extInfo, "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatFavorite does not support SAHRE_APP");
            case 8:
                if (scence != 1) {
                    if (imagePath != null && imagePath.length() > 0) {
                        c(MobSDK.getContext(), title, text, filePath, imagePath, scence, kVar);
                        return;
                    } else if (imageData != null && !imageData.isRecycled()) {
                        c(MobSDK.getContext(), title, text, filePath, imageData, scence, kVar);
                        return;
                    } else if (imageUrl != null && imageUrl.length() > 0) {
                        c(MobSDK.getContext(), title, text, filePath, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                        return;
                    } else {
                        c(MobSDK.getContext(), title, text, a(new File(filePath)), "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatMoments does not support SHARE_FILE");
            case 9:
                if (scence == 1) {
                    throw new Throwable("WechatMoments does not support SHARE_EMOJI");
                }
                if (scence != 2) {
                    if (imagePath != null && imagePath.length() > 0) {
                        c(MobSDK.getContext(), title, text, imagePath, scence, kVar);
                        return;
                    } else if (imageUrl != null && imageUrl.length() > 0) {
                        c(MobSDK.getContext(), title, text, new NetworkHelper().downloadCache(MobSDK.getContext(), imageUrl, "images", true, null), scence, kVar);
                        return;
                    } else if (imageData != null && !imageData.isRecycled()) {
                        b(MobSDK.getContext(), title, text, imageData, scence, kVar);
                        return;
                    } else {
                        c(MobSDK.getContext(), title, text, "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatFavorite does not support SHARE_EMOJI");
            case 11:
                if (scence == 1) {
                    throw new Throwable("WechatMoments does not support SAHRE_WXMINIPROGRAM");
                }
                if (scence != 2) {
                    if (TextUtils.isEmpty(this.f9129d)) {
                        c4.onError(b4, 9, new Throwable("checkArgs fail, UserName or Path is invalid"));
                        return;
                    }
                    String shortLintk4 = b4.getShortLintk(url, false);
                    kVar.a().setUrl(shortLintk4);
                    if (imagePath != null && imagePath.length() > 0) {
                        a(MobSDK.getContext(), shortLintk4, this.f9129d, this.f9130e, title, text, imagePath, scence, kVar);
                        return;
                    } else if (imageData != null && !imageData.isRecycled()) {
                        a(MobSDK.getContext(), shortLintk4, this.f9129d, this.f9130e, title, text, imageData, scence, kVar);
                        return;
                    } else if (imageUrl != null && imageUrl.length() > 0) {
                        a(MobSDK.getContext(), shortLintk4, this.f9129d, this.f9130e, title, text, BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl), scence, kVar);
                        return;
                    } else {
                        a(MobSDK.getContext(), shortLintk4, this.f9129d, this.f9130e, title, text, "", scence, kVar);
                        return;
                    }
                }
                throw new Throwable("WechatFavorite does not support SAHRE_WXMINIPROGRAM");
            case 12:
                if (!TextUtils.isEmpty(this.f9129d) && !TextUtils.isEmpty(this.f9130e)) {
                    a(this.f9129d, this.f9130e);
                    return;
                } else {
                    c4.onError(b4, 9, new Throwable("checkArgs fail, UserName or Path is invalid"));
                    return;
                }
        }
    }

    public boolean d() {
        return this.f9127b.c();
    }

    @SuppressLint({"WrongConstant"})
    public final int e() {
        if (new Wechat().isClientValid()) {
            try {
                return cn.sharesdk.framework.utils.a.c("com.tencent.mm", 128).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0);
            } catch (Exception e4) {
                SSDKLog b4 = SSDKLog.b();
                b4.a("WechatHelper getWXAppSupportAPI() get from metaData failed : " + e4, new Object[0]);
                return 0;
            }
        }
        return 0;
    }

    public boolean f() {
        String str;
        try {
            str = MobSDK.getContext().getPackageManager().getPackageInfo("com.tencent.mm", 0).versionName;
            SSDKLog b4 = SSDKLog.b();
            b4.b("wechat versionName ==>> " + str);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            str = "0";
        }
        String[] split = str.split("_")[0].split("\\.");
        int length = split.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            try {
                iArr[i2] = ResHelper.parseInt(split[i2]);
            } catch (Throwable th2) {
                SSDKLog.b().a(th2);
                iArr[i2] = 0;
            }
        }
        return length >= 3 && ((iArr[0] == 7 && iArr[1] == 0 && iArr[2] >= 13) || iArr[0] >= 8);
    }

    public boolean g() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public void b(k kVar) throws Throwable {
        this.f9128c = kVar;
        g gVar = new g();
        Platform.ShareParams a4 = kVar.a();
        String valueOf = String.valueOf(a4.getWxTemplateid());
        String valueOf2 = String.valueOf(a4.getWxReserved());
        int scence = a4.getScence();
        gVar.f9103b = valueOf;
        gVar.f9102a = scence;
        gVar.f9104c = valueOf2;
        this.f9127b.a(gVar);
    }

    public void a(String str) {
        this.f9130e = str;
    }

    public void a(boolean z3) {
        this.f9131f = z3;
    }

    public void a(int i2) {
        this.f9132g = i2;
    }

    public void a(k kVar) throws Throwable {
        this.f9128c = kVar;
        b bVar = new b();
        bVar.f9088a = "snsapi_userinfo";
        bVar.f9089b = "sharesdk_wechat_auth";
        this.f9127b.a((m) bVar, false);
    }

    public void a(k kVar, Platform.ShareParams shareParams, PlatformActionListener platformActionListener) throws Throwable {
        Platform b4 = kVar.b();
        String str = ((Integer) shareParams.get("scene", Integer.class)).intValue() == 1 ? "com.tencent.mm.ui.tools.ShareToTimeLineUI" : "com.tencent.mm.ui.tools.ShareImgUI";
        cn.sharesdk.framework.utils.h hVar = new cn.sharesdk.framework.utils.h();
        hVar.a("com.tencent.mm", str);
        hVar.a(shareParams, b4);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("ShareParams", shareParams);
        platformActionListener.onComplete(b4, 9, hashMap);
    }

    public boolean b() {
        return this.f9127b.a();
    }

    private void b(Context context, String str, String str2, String str3, int i2, k kVar) throws Throwable {
        WXImageObject wXImageObject = new WXImageObject();
        wXImageObject.imagePath = a(new File(str3));
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.mediaObject = wXImageObject;
        if (i2 != 0) {
            wXMediaMessage.title = str;
            wXMediaMessage.description = str2;
        }
        wXMediaMessage.thumbData = a(context, str3, false);
        a(wXMediaMessage, "img", i2, kVar);
    }

    private void a(String str, String str2, int i2, k kVar) throws Throwable {
        WXTextObject wXTextObject = new WXTextObject();
        wXTextObject.text = str2;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.mediaObject = wXTextObject;
        wXMediaMessage.description = str2;
        a(wXMediaMessage, "text", i2, kVar);
    }

    private void b(Context context, String str, String str2, String str3, String str4, int i2, k kVar) throws Throwable {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXWebpageObject;
        if (str4 != null && new File(str4).exists()) {
            byte[] a4 = a(context, str4, false);
            wXMediaMessage.thumbData = a4;
            if (a4 != null) {
                if (a4.length > 32768) {
                    throw new RuntimeException("checkArgs fail, thumbData is too large: " + wXMediaMessage.thumbData.length + " > 32768");
                }
            } else {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
        }
        a(wXMediaMessage, "webpage", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, int i2, k kVar) throws Throwable {
        WXImageObject wXImageObject = new WXImageObject();
        if (f()) {
            if (g()) {
                String a4 = a(new File(str3));
                wXImageObject.imagePath = a4;
                SSDKLog b4 = SSDKLog.b();
                b4.a("ShareSDK share file with FileProvider path is: " + a4);
            }
        } else if (kVar.c() != null) {
            kVar.c().onError(kVar.b(), 9, new Throwable("Wecaht Version is not new"));
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.mediaObject = wXImageObject;
        if (i2 != 0) {
            wXMediaMessage.title = str;
            wXMediaMessage.description = str2;
        }
        wXMediaMessage.thumbData = a(context, str3, false);
        a(wXMediaMessage, "img", i2, kVar);
    }

    private void b(Context context, String str, String str2, String str3, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXWebpageObject;
        if (bitmap != null && !bitmap.isRecycled()) {
            byte[] a4 = a(context, bitmap, false);
            wXMediaMessage.thumbData = a4;
            if (a4 != null) {
                if (a4.length > 32768) {
                    throw new RuntimeException("checkArgs fail, thumbData is too large: " + wXMediaMessage.thumbData.length + " > 32768");
                }
            } else {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
        }
        a(wXMediaMessage, "webpage", i2, kVar);
    }

    private void a(Context context, String str, String str2, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXImageObject wXImageObject = new WXImageObject();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        wXImageObject.imageData = byteArrayOutputStream.toByteArray();
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.mediaObject = wXImageObject;
        if (i2 != 0) {
            wXMediaMessage.title = str;
            wXMediaMessage.description = str2;
        }
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "img", i2, kVar);
    }

    private void b(Context context, String str, String str2, String str3, String str4, String str5, int i2, k kVar) throws Throwable {
        WXAppExtendObject wXAppExtendObject = new WXAppExtendObject();
        wXAppExtendObject.filePath = str3;
        wXAppExtendObject.extInfo = str4;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXAppExtendObject;
        wXMediaMessage.thumbData = a(context, str5, false);
        a(wXMediaMessage, "appdata", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, String str4, String str5, int i2, k kVar) throws Throwable {
        WXMusicObject wXMusicObject = new WXMusicObject();
        wXMusicObject.musicUrl = str4;
        wXMusicObject.musicDataUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXMusicObject;
        wXMediaMessage.thumbData = a(context, str5, false);
        a(wXMediaMessage, "music", i2, kVar);
    }

    private void b(Context context, String str, String str2, String str3, String str4, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXAppExtendObject wXAppExtendObject = new WXAppExtendObject();
        wXAppExtendObject.filePath = str3;
        wXAppExtendObject.extInfo = str4;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXAppExtendObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "appdata", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, String str4, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXMusicObject wXMusicObject = new WXMusicObject();
        wXMusicObject.musicUrl = str4;
        wXMusicObject.musicDataUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXMusicObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "music", i2, kVar);
    }

    private void b(Context context, String str, String str2, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXEmojiObject wXEmojiObject = new WXEmojiObject();
        byte[] a4 = a(context, bitmap, false);
        wXEmojiObject.emojiData = a4;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.mediaObject = wXEmojiObject;
        wXMediaMessage.description = str2;
        wXMediaMessage.thumbData = a4;
        a(wXMediaMessage, "emoji", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, String str4, int i2, k kVar) throws Throwable {
        WXVideoObject wXVideoObject = new WXVideoObject();
        wXVideoObject.videoUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXVideoObject;
        wXMediaMessage.thumbData = a(context, str4, false);
        a(wXMediaMessage, "video", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXVideoObject wXVideoObject = new WXVideoObject();
        wXVideoObject.videoUrl = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXVideoObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "video", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, String str4, String str5, Bitmap bitmap, int i2, k kVar) throws Throwable {
        String[] split;
        String str6;
        WXMiniProgramObject wXMiniProgramObject = new WXMiniProgramObject();
        wXMiniProgramObject.webpageUrl = str;
        if (!TextUtils.isEmpty(str2) && str2.endsWith("@app")) {
            wXMiniProgramObject.userName = str2;
        } else {
            wXMiniProgramObject.userName = str2 + "@app";
        }
        if (!TextUtils.isEmpty(str3)) {
            if (str3.split("\\?").length > 1) {
                str6 = split[0] + ".html?" + split[1];
            } else {
                str6 = split[0] + ".html";
            }
            wXMiniProgramObject.path = str6;
            wXMiniProgramObject.withShareTicket = this.f9131f;
            wXMiniProgramObject.miniprogramType = this.f9132g;
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str4;
        wXMediaMessage.mediaObject = wXMiniProgramObject;
        wXMediaMessage.description = str5;
        if (bitmap != null && !bitmap.isRecycled()) {
            byte[] a4 = a(context, bitmap, true);
            wXMediaMessage.thumbData = a4;
            if (a4 != null) {
                if (a4.length > 131072) {
                    throw new RuntimeException("checkArgs fail, thumbData is too large: " + wXMediaMessage.thumbData.length + " > 131072");
                }
            } else {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
        }
        a(wXMediaMessage, "webpage", i2, kVar);
    }

    private void a(Context context, String str, String str2, String str3, String str4, String str5, String str6, int i2, k kVar) throws Throwable {
        String[] split;
        String str7;
        WXMiniProgramObject wXMiniProgramObject = new WXMiniProgramObject();
        wXMiniProgramObject.miniprogramType = this.f9132g;
        wXMiniProgramObject.webpageUrl = str;
        if (!TextUtils.isEmpty(str2) && str2.endsWith("@app")) {
            wXMiniProgramObject.userName = str2;
        } else {
            wXMiniProgramObject.userName = str2 + "@app";
        }
        if (!TextUtils.isEmpty(str3)) {
            if (str3.split("\\?").length > 1) {
                str7 = split[0] + ".html?" + split[1];
            } else {
                str7 = split[0] + ".html";
            }
            wXMiniProgramObject.path = str7;
            wXMiniProgramObject.withShareTicket = this.f9131f;
            wXMiniProgramObject.miniprogramType = this.f9132g;
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str4;
        wXMediaMessage.mediaObject = wXMiniProgramObject;
        wXMediaMessage.description = str5;
        wXMediaMessage.thumbData = a(context, str6, true);
        a(wXMediaMessage, "miniProgram", i2, kVar);
    }

    private void c(Context context, String str, String str2, String str3, String str4, int i2, k kVar) throws Throwable {
        WXFileObject wXFileObject = new WXFileObject();
        wXFileObject.filePath = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        if (!TextUtils.isEmpty(str)) {
            wXMediaMessage.title = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            wXMediaMessage.description = str2;
        }
        wXMediaMessage.mediaObject = wXFileObject;
        if (!TextUtils.isEmpty(str4)) {
            wXMediaMessage.thumbData = a(context, str4, false);
        }
        a(wXMediaMessage, "filedata", i2, kVar);
    }

    private void c(Context context, String str, String str2, String str3, Bitmap bitmap, int i2, k kVar) throws Throwable {
        WXFileObject wXFileObject = new WXFileObject();
        wXFileObject.filePath = str3;
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.description = str2;
        wXMediaMessage.mediaObject = wXFileObject;
        wXMediaMessage.thumbData = a(context, bitmap, false);
        a(wXMediaMessage, "filedata", i2, kVar);
    }

    private void a(String str, String str2) throws Throwable {
        i.a aVar = new i.a();
        aVar.f9115a = str;
        aVar.f9116b = str2;
        aVar.f9117c = this.f9132g;
        this.f9127b.b(aVar);
    }

    private byte[] a(Context context, String str, boolean z3) throws Throwable {
        if (new File(str).exists()) {
            return a(context, BitmapHelper.getBitmap(str), BitmapHelper.getBmpFormat(str), z3);
        }
        throw new FileNotFoundException();
    }

    private void c(Context context, String str, String str2, String str3, int i2, k kVar) throws Throwable {
        WXEmojiObject wXEmojiObject = new WXEmojiObject();
        if (Build.VERSION.SDK_INT >= 24) {
            wXEmojiObject.emojiPath = a(new File(str3));
        } else {
            wXEmojiObject.emojiPath = str3;
        }
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        wXMediaMessage.title = str;
        wXMediaMessage.mediaObject = wXEmojiObject;
        wXMediaMessage.description = str2;
        wXMediaMessage.thumbData = a(context, str3, false);
        a(wXMediaMessage, "emoji", i2, kVar);
    }

    private byte[] a(Context context, Bitmap bitmap, boolean z3) throws Throwable {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                return a(context, bitmap, Bitmap.CompressFormat.PNG, z3);
            }
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        throw new RuntimeException("checkArgs fail, thumbData is null");
    }

    private byte[] a(Context context, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z3) throws Throwable {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(compressFormat, 100, byteArrayOutputStream);
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                int length = byteArray.length;
                int i2 = z3 ? 131072 : 32768;
                while (length > i2) {
                    double d4 = length;
                    double d5 = i2;
                    Double.isNaN(d4);
                    Double.isNaN(d5);
                    bitmap = a(bitmap, d4 / d5);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    bitmap.compress(compressFormat, 100, byteArrayOutputStream2);
                    byteArrayOutputStream2.flush();
                    byteArrayOutputStream2.close();
                    byteArray = byteArrayOutputStream2.toByteArray();
                    length = byteArray.length;
                }
                return byteArray;
            }
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        throw new RuntimeException("checkArgs fail, thumbData is null");
    }

    public boolean c(String str) {
        return this.f9127b.a(str);
    }

    public boolean c() {
        return this.f9127b.b();
    }

    private Bitmap a(Bitmap bitmap, double d4) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        double sqrt = Math.sqrt(d4);
        double d5 = width;
        Double.isNaN(d5);
        double d6 = height;
        Double.isNaN(d6);
        return Bitmap.createScaledBitmap(bitmap, (int) (d5 / sqrt), (int) (d6 / sqrt), true);
    }

    public boolean a(WechatHandlerActivity wechatHandlerActivity) {
        return this.f9127b.a(wechatHandlerActivity, this.f9128c);
    }

    private void a(WXMediaMessage wXMediaMessage, String str, int i2, k kVar) throws Throwable {
        Class<?> cls;
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        String str2 = deviceHelper.getPackageName() + MMessageActV2.DEFAULT_ENTRY_CLASS_NAME;
        try {
            cls = Class.forName(str2);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            cls = null;
        }
        if (cls != null && !WechatHandlerActivity.class.isAssignableFrom(cls)) {
            new Throwable(str2 + " does not extend from " + WechatHandlerActivity.class.getName()).printStackTrace();
        }
        SendMessageReq sendMessageReq = new SendMessageReq();
        sendMessageReq.f9133e = str + System.currentTimeMillis();
        sendMessageReq.f9078a = wXMediaMessage;
        sendMessageReq.f9079b = i2;
        this.f9128c = kVar;
        this.f9127b.a(sendMessageReq, wXMediaMessage.mediaObject instanceof WXMiniProgramObject);
    }

    public String a(File file) {
        String str;
        if (file != null && file.exists()) {
            try {
                str = MobSDK.getContext().getPackageName();
            } catch (Throwable th) {
                SSDKLog b4 = SSDKLog.b();
                b4.a("get packagename is catch: " + th, new Object[0]);
                str = null;
            }
            if (str != null) {
                Context context = MobSDK.getContext();
                Uri a4 = ShareSDKFileProvider.a(context, str + ".cn.sharesdk.ShareSDKFileProvider", file);
                MobSDK.getContext().grantUriPermission("com.tencent.mm", a4, 1);
                return a4.toString();
            }
        }
        return null;
    }
}
