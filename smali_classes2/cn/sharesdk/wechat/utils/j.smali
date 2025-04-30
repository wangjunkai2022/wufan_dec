.class public Lcn/sharesdk/wechat/utils/j;
.super Ljava/lang/Object;
.source "WechatCore.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    or-int/2addr p3, v0

    .line 44
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "ShareSDK"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "content://com.tencent.mm.sdk.comm.provider/genTokenForOpenSdk"

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 p1, 0x2

    new-array v8, p1, [Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j;->a:Ljava/lang/String;

    aput-object p1, v8, v3

    const-string p1, "621086720"

    aput-object p1, v8, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 49
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MicroMsg.SDK.WXApiImplV10(WechatCore) getTokenFromWX token is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v0, v6}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 52
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WechatCore catch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v4, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const-string v2, "sendUsingPendingIntent"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v1, 0x3

    const/high16 v2, 0x8000000

    .line 40
    invoke-static {p0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    new-instance v7, Lcn/sharesdk/wechat/utils/j$1;

    invoke-direct {v7}, Lcn/sharesdk/wechat/utils/j$1;-><init>()V

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUsingPendingIntent fail, ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private a([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 125
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    .line 126
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 128
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, length is different"

    invoke-virtual {p1, v1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 130
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_3

    .line 131
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, not match"

    invoke-virtual {p1, v1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 132
    :cond_5
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, invalid arguments, checksum is empty"

    invoke-virtual {p1, v1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    .line 133
    :cond_6
    :goto_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, invalid arguments, \"_mmessage_checksum\" is empty"

    invoke-virtual {p1, v1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 5

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "mMcShCsTr"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x10

    new-array p2, p2, [C

    .line 83
    fill-array-data p2, :array_0

    const/4 p3, 0x0

    :try_start_0
    const-string v0, "MD5"

    .line 84
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 87
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 89
    aget-byte v3, p1, v1

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 90
    aget-char v4, p2, v4

    aput-char v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 91
    aget-char v3, p2, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 93
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    move-object p1, p3

    :goto_1
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    :cond_2
    return-object p3

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "content://com.tencent.mm.sdk.plugin.provider/sharedpref"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "_id"

    const-string v1, "key"

    const-string v3, "type"

    const-string v7, "value"

    .line 17
    filled-new-array {v0, v1, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "key = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    .line 19
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 22
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const-string v2, "launchWXUsingPendingIntent"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    .line 2
    invoke-static {p0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    new-instance v7, Lcn/sharesdk/wechat/utils/j$2;

    invoke-direct {v7}, Lcn/sharesdk/wechat/utils/j$2;-><init>()V

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchWXUsingPendingIntent pendingIntent send failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private d()Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checking signature of wechat client..."

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v0, "com.tencent.mm"

    const/16 v2, 0x40

    .line 2
    invoke-static {v0, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pass!"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Lcn/sharesdk/wechat/utils/m;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    check-cast p1, Lcn/sharesdk/wechat/utils/g;

    .line 55
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.tencent.mm.sdk.comm.provider/openTypeWebview"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    const-string v3, "1"

    aput-object v3, v5, v0

    iget v0, p1, Lcn/sharesdk/wechat/utils/g;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v5, v3

    iget-object v0, p1, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v0, v5, v3

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/g;->c:Ljava/lang/String;

    const/4 v0, 0x4

    aput-object p1, v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/m;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "ShareSDK"

    .line 13
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/m;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x26080000

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weixin://sendreq?appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/sharesdk/wechat/utils/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.tencent.mm"

    const-string v6, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    .line 17
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 19
    invoke-virtual {p1, v5}, Lcn/sharesdk/wechat/utils/m;->b(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v5, "_mmessage_sdkVersion"

    .line 21
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "_mmessage_appPackage"

    .line 22
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "_mmessage_content"

    .line 23
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-direct {p0, v3, v2, v1}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "_mmessage_checksum"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/m;->a()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 26
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_message_token"

    .line 28
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    new-array v5, p1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " _message_token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v0, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 30
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    new-array p1, p1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WechatCore that put token catch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {v3, v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    const/high16 p1, 0x10000000

    .line 31
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 32
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_1

    .line 34
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 35
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 36
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "starting activity, packageName=com.tencent.mm, className=com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {p1, v0, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "sendReq checkArgs fail"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 7

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    .line 66
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 67
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wechat versionName ==>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 69
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const-string v1, "0"

    :goto_0
    const-string v2, "_"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "\\."

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    array-length v2, v1

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 73
    :try_start_1
    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    .line 74
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 75
    aput v0, v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-lt v2, v1, :cond_1

    .line 76
    aget v1, v3, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v2, v3, v1

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget v4, v3, v2

    if-ne v4, v2, :cond_1

    const/4 v2, 0x3

    aget v2, v3, v2

    const/16 v3, 0x38

    if-gt v2, v3, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/k;)Z
    .locals 6

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "wx_token_key"

    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "com.tencent.mm.openapi.token"

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "_mmessage_appPackage"

    .line 98
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "invalid argument, \"_mmessage_appPackage\" is empty"

    invoke-virtual {p1, v0, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_2
    const-string v3, "_mmessage_content"

    .line 101
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_mmessage_sdkVersion"

    .line 102
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "_mmessage_checksum"

    .line 103
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 104
    invoke-direct {p0, v3, v2, v4}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    .line 105
    invoke-direct {p0, v5, v2}, Lcn/sharesdk/wechat/utils/j;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "checksum fail"

    invoke-virtual {p1, v0, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 107
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "_wxapi_command_type"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 p2, 0x3

    if-eq v2, p2, :cond_6

    const/4 p2, 0x4

    if-eq v2, p2, :cond_5

    const/16 p2, 0x13

    if-eq v2, p2, :cond_4

    return v1

    .line 109
    :cond_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Wechat MiniProgram CallBack"

    invoke-virtual {p2, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 110
    new-instance p2, Lcn/sharesdk/wechat/utils/i$b;

    invoke-direct {p2, v0}, Lcn/sharesdk/wechat/utils/i$b;-><init>(Landroid/os/Bundle;)V

    .line 111
    new-instance v1, Lcn/sharesdk/wechat/utils/d;

    invoke-direct {v1, v0}, Lcn/sharesdk/wechat/utils/d;-><init>(Landroid/os/Bundle;)V

    .line 112
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 113
    iget-object p2, p2, Lcn/sharesdk/wechat/utils/i$b;->a:Ljava/lang/String;

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->wxminiprogram_ext_msg:Ljava/lang/String;

    .line 114
    iget-object p2, v1, Lcn/sharesdk/wechat/utils/WechatResp;->j:Ljava/lang/String;

    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->openId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_0

    .line 116
    :cond_5
    new-instance p2, Lcn/sharesdk/wechat/utils/f;

    invoke-direct {p2, v0}, Lcn/sharesdk/wechat/utils/f;-><init>(Landroid/os/Bundle;)V

    .line 117
    iget-object p2, p2, Lcn/sharesdk/wechat/utils/f;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, p2}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_0

    .line 118
    :cond_6
    new-instance p2, Lcn/sharesdk/wechat/utils/d;

    invoke-direct {p2, v0}, Lcn/sharesdk/wechat/utils/d;-><init>(Landroid/os/Bundle;)V

    .line 119
    iget-object p2, p2, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, p2}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_0

    .line 120
    :cond_7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Wechat Share CallBack"

    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 121
    new-instance p1, Lcn/sharesdk/wechat/utils/e;

    invoke-direct {p1, v0}, Lcn/sharesdk/wechat/utils/e;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WechatResp;)V

    goto :goto_0

    .line 122
    :cond_8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Wechat Auth CallBack"

    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 123
    new-instance p1, Lcn/sharesdk/wechat/utils/c;

    invoke-direct {p1, v0}, Lcn/sharesdk/wechat/utils/c;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/WechatResp;)V

    :goto_0
    return v3

    .line 124
    :cond_9
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "invalid argument, \"wx_token_key\" is empty or does not equals \"com.tencent.mm.openapi.token\""

    invoke-virtual {p1, v0, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->a:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weixin://registerapp?appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.tencent.mm.permission.MM_MESSAGE"

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x26080000

    .line 4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "_mmessage_sdkVersion"

    .line 5
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "_mmessage_appPackage"

    .line 6
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "_mmessage_content"

    .line 7
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "_mmessage_support_content_type"

    const-wide/16 v7, 0x0

    .line 8
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "_mmessage_checksum"

    .line 9
    invoke-direct {p0, p1, v3, v4}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending broadcast, intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", perm="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeChat registerApp catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method public b(Lcn/sharesdk/wechat/utils/m;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    check-cast p1, Lcn/sharesdk/wechat/utils/i$a;

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.tencent.mm.sdk.comm.provider/launchWXMiniprogram"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    iget-object v0, p1, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v5, v3

    iget-object v0, p1, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v0, v5, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcn/sharesdk/wechat/utils/i$a;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v5, v3

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/i$a;->d:Ljava/lang/String;

    const/4 v0, 0x4

    aput-object p1, v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 9
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 13
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 15
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    const-string v0, "_build_info_sdk_int_"

    .line 1
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    const v1, 0x21020001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
