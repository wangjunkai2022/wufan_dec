package cn.sharesdk.wechat.utils;

import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.wechat.utils.i;
import com.mob.MobSDK;
import com.mob.tools.utils.ResHelper;
import com.tencent.mm.opensdk.constants.Build;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.security.MessageDigest;
/* compiled from: WechatCore.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private String f9120a;

    private static void b(Context context, Intent intent) {
        try {
            SSDKLog.b().a("launchWXUsingPendingIntent", new Object[0]);
            a(context, 1, intent, 134217728).send(context, 2, null, new PendingIntent.OnFinished() { // from class: cn.sharesdk.wechat.utils.j.2
                @Override // android.app.PendingIntent.OnFinished
                public void onSendFinished(PendingIntent pendingIntent, Intent intent2, int i2, String str, Bundle bundle) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("launchWXUsingPendingIntent onSendFinished resultCode: " + i2 + ", resultData: " + str, new Object[0]);
                }
            }, null);
        } catch (Exception e4) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("launchWXUsingPendingIntent pendingIntent send failed: " + e4.getMessage(), new Object[0]);
            context.startActivity(intent);
        }
    }

    private boolean d() {
        SSDKLog.b().a("checking signature of wechat client...", new Object[0]);
        PackageInfo b4 = cn.sharesdk.framework.utils.a.b("com.tencent.mm", 64);
        if (b4 == null) {
            return false;
        }
        int length = b4.signatures.length;
        for (int i2 = 0; i2 < length; i2++) {
            if ("308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499".equals(b4.signatures[i2].toCharsString().toLowerCase())) {
                SSDKLog.b().a("pass!", new Object[0]);
                return true;
            }
        }
        return false;
    }

    public boolean a(String str) {
        try {
            this.f9120a = str;
            String str2 = "weixin://registerapp?appid=" + str;
            String packageName = MobSDK.getContext().getPackageName();
            Intent intent = new Intent(ConstantsAPI.ACTION_HANDLE_APP_REGISTER);
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, str2);
            intent.putExtra(ConstantsAPI.APP_SUPORT_CONTENT_TYPE, 0L);
            intent.putExtra(ConstantsAPI.CHECK_SUM, a(str2, packageName, Build.SDK_INT));
            MobSDK.getContext().sendBroadcast(intent, ConstantsAPI.WXApp.WXAPP_BROADCAST_PERMISSION);
            SSDKLog.b().a("sending broadcast, intent=" + ConstantsAPI.ACTION_HANDLE_APP_REGISTER + ", perm=" + ConstantsAPI.WXApp.WXAPP_BROADCAST_PERMISSION, new Object[0]);
            return true;
        } catch (Throwable th) {
            SSDKLog.b().d("WeChat registerApp catch " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    public boolean c() {
        int i2;
        try {
            i2 = ResHelper.parseInt(b("_build_info_sdk_int_"));
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            i2 = -1;
        }
        return i2 >= 553779201;
    }

    public void b(m mVar) throws Throwable {
        i.a aVar = (i.a) mVar;
        ContentResolver contentResolver = MobSDK.getContext().getContentResolver();
        Uri parse = Uri.parse("content://com.tencent.mm.sdk.comm.provider/launchWXMiniprogram");
        Cursor query = contentResolver.query(parse, null, null, new String[]{this.f9120a, aVar.f9115a, aVar.f9116b, aVar.f9117c + "", aVar.f9118d}, null);
        if (query != null) {
            query.close();
        }
        Intent launchIntentForPackage = MobSDK.getContext().getPackageManager().getLaunchIntentForPackage("com.tencent.mm");
        if (Build.VERSION.SDK_INT < 29) {
            MobSDK.getContext().startActivity(launchIntentForPackage);
        } else {
            b(MobSDK.getContext(), launchIntentForPackage);
        }
    }

    public void a(m mVar, boolean z3) throws Throwable {
        if (mVar.b()) {
            String packageName = MobSDK.getContext().getPackageName();
            String str = "weixin://sendreq?appid=" + this.f9120a;
            Intent intent = new Intent();
            intent.setClassName("com.tencent.mm", "com.tencent.mm.plugin.base.stub.WXEntryActivity");
            Bundle bundle = new Bundle();
            mVar.b(bundle);
            intent.putExtras(bundle);
            intent.putExtra(ConstantsAPI.SDK_VERSION, com.tencent.mm.opensdk.constants.Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, str);
            intent.putExtra(ConstantsAPI.CHECK_SUM, a(str, packageName, com.tencent.mm.opensdk.constants.Build.SDK_INT));
            if (mVar.a() == 2) {
                try {
                    String a4 = a(MobSDK.getContext());
                    if (!TextUtils.isEmpty(a4)) {
                        intent.putExtra(ConstantsAPI.TOKEN, a4);
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " _message_token " + a4);
                    }
                } catch (Exception e4) {
                    SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, " WechatCore that put token catch " + e4);
                }
            }
            intent.addFlags(268435456);
            intent.addFlags(134217728);
            if (Build.VERSION.SDK_INT < 29) {
                MobSDK.getContext().startActivity(intent);
            } else if (z3) {
                b(MobSDK.getContext(), intent);
            } else {
                a(MobSDK.getContext(), intent);
            }
            SSDKLog.b().a("starting activity, packageName=com.tencent.mm, className=com.tencent.mm.plugin.base.stub.WXEntryActivity", new Object[0]);
            return;
        }
        throw new Throwable("sendReq checkArgs fail");
    }

    public boolean b() {
        return d();
    }

    private String b(String str) {
        try {
            Cursor query = MobSDK.getContext().getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref"), new String[]{"_id", "key", "type", "value"}, "key = ?", new String[]{str}, null);
            if (query == null) {
                return null;
            }
            String string = query.moveToFirst() ? query.getString(query.getColumnIndex("value")) : null;
            query.close();
            return string;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    private static void a(Context context, Intent intent) {
        try {
            SSDKLog.b().a("sendUsingPendingIntent", new Object[0]);
            a(context, 3, intent, 134217728).send(context, 4, null, new PendingIntent.OnFinished() { // from class: cn.sharesdk.wechat.utils.j.1
                @Override // android.app.PendingIntent.OnFinished
                public void onSendFinished(PendingIntent pendingIntent, Intent intent2, int i2, String str, Bundle bundle) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("sendUsingPendingIntent onSendFinished resultCode: " + i2 + ", resultData: " + str, new Object[0]);
                }
            }, null);
        } catch (Exception e4) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("sendUsingPendingIntent fail, ex = " + e4.getMessage(), new Object[0]);
            context.startActivity(intent);
        }
    }

    private static PendingIntent a(Context context, int i2, Intent intent, int i4) {
        if (Build.VERSION.SDK_INT >= 23) {
            return PendingIntent.getActivity(context, i2, intent, i4 | 67108864);
        }
        return PendingIntent.getActivity(context, i2, intent, i4);
    }

    private String a(Context context) {
        try {
            Cursor query = context.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/genTokenForOpenSdk"), null, null, new String[]{this.f9120a, "621086720"}, null);
            if (query == null || !query.moveToFirst()) {
                return null;
            }
            String string = query.getString(0);
            SSDKLog b4 = SSDKLog.b();
            b4.a(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.WXApiImplV10(WechatCore) getTokenFromWX token is " + string);
            query.close();
            return string;
        } catch (Throwable th) {
            SSDKLog b5 = SSDKLog.b();
            b5.d(OnekeyShare.SHARESDK_TAG, "WechatCore catch " + th);
            return null;
        }
    }

    public void a(m mVar) throws Throwable {
        g gVar = (g) mVar;
        Cursor query = MobSDK.getContext().getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.f9120a, "1", String.valueOf(gVar.f9102a), gVar.f9103b, gVar.f9104c}, null);
        if (query != null) {
            query.close();
        }
        Intent intent = new Intent();
        intent.setClassName("com.tencent.mm", "com.tencent.mm.plugin.base.stub.WXEntryActivity");
        intent.addFlags(268435456);
        intent.addFlags(134217728);
        MobSDK.getContext().startActivity(intent);
    }

    public boolean a() {
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
        return length >= 4 && iArr[0] == 6 && iArr[1] == 0 && iArr[2] == 2 && iArr[3] <= 56;
    }

    private byte[] a(String str, String str2, int i2) {
        String str3;
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null) {
            stringBuffer.append(str);
        }
        stringBuffer.append(i2);
        stringBuffer.append(str2);
        stringBuffer.append("mMcShCsTr");
        byte[] bytes = stringBuffer.toString().substring(1, 9).getBytes();
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[digest.length * 2];
            int i4 = 0;
            for (byte b4 : digest) {
                cArr2[i4] = cArr[(b4 >>> 4) & 15];
                int i5 = i4 + 1;
                cArr2[i5] = cArr[b4 & 15];
                i4 = i5 + 1;
            }
            str3 = new String(cArr2);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            str3 = null;
        }
        if (str3 != null) {
            return str3.getBytes();
        }
        return null;
    }

    public boolean a(WechatHandlerActivity wechatHandlerActivity, k kVar) {
        Intent intent = wechatHandlerActivity.getIntent();
        if (intent == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra(ConstantsAPI.Token.WX_TOKEN_KEY);
        if (stringExtra != null && stringExtra.equals(ConstantsAPI.Token.WX_TOKEN_VALUE_MSG)) {
            String stringExtra2 = intent.getStringExtra(ConstantsAPI.APP_PACKAGE);
            if (TextUtils.isEmpty(stringExtra2)) {
                SSDKLog.b().a("invalid argument, \"_mmessage_appPackage\" is empty", new Object[0]);
                return false;
            }
            if (!a(intent.getByteArrayExtra(ConstantsAPI.CHECK_SUM), a(intent.getStringExtra(ConstantsAPI.CONTENT), stringExtra2, intent.getIntExtra(ConstantsAPI.SDK_VERSION, 0)))) {
                SSDKLog.b().a("checksum fail", new Object[0]);
                return false;
            }
            Bundle extras = intent.getExtras();
            int i2 = extras.getInt("_wxapi_command_type", 0);
            if (i2 == 1) {
                SSDKLog.b().a("Wechat Auth CallBack", new Object[0]);
                kVar.a(new c(extras));
            } else if (i2 == 2) {
                SSDKLog.b().a("Wechat Share CallBack", new Object[0]);
                kVar.a(new e(extras));
            } else if (i2 == 3) {
                wechatHandlerActivity.onGetMessageFromWXReq(new d(extras).f9098a);
            } else if (i2 == 4) {
                wechatHandlerActivity.onShowMessageFromWXReq(new f(extras).f9099a);
            } else if (i2 != 19) {
                return false;
            } else {
                SSDKLog.b().a("Wechat MiniProgram CallBack", new Object[0]);
                i.b bVar = new i.b(extras);
                d dVar = new d(extras);
                WXMediaMessage wXMediaMessage = new WXMediaMessage();
                wXMediaMessage.wxminiprogram_ext_msg = bVar.f9119a;
                wXMediaMessage.openId = dVar.f9085j;
                wechatHandlerActivity.onGetMessageFromWXReq(wXMediaMessage);
            }
            return true;
        }
        SSDKLog.b().a("invalid argument, \"wx_token_key\" is empty or does not equals \"com.tencent.mm.openapi.token\"", new Object[0]);
        return false;
    }

    private boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length != 0) {
            if (bArr2 != null && bArr2.length != 0) {
                if (bArr.length != bArr2.length) {
                    SSDKLog.b().a("checkSumConsistent fail, length is different", new Object[0]);
                    return false;
                }
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    if (bArr[i2] != bArr2[i2]) {
                        SSDKLog.b().a("checkSumConsistent fail, not match", new Object[0]);
                        return false;
                    }
                }
                return true;
            }
            SSDKLog.b().a("checkSumConsistent fail, invalid arguments, checksum is empty", new Object[0]);
            return false;
        }
        SSDKLog.b().a("checkSumConsistent fail, invalid arguments, \"_mmessage_checksum\" is empty", new Object[0]);
        return false;
    }
}
