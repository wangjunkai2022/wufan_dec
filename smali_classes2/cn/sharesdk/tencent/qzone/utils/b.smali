.class public Lcn/sharesdk/tencent/qzone/utils/b;
.super Lcn/sharesdk/framework/e;
.source "QZoneHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/tencent/qzone/utils/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "get_user_info"

    const-string v1, "get_simple_userinfo"

    const-string v2, "get_user_profile"

    const-string v3, "get_app_friends"

    const-string v4, "add_share"

    const-string v5, "list_album"

    const-string v6, "upload_pic"

    const-string v7, "add_album"

    const-string v8, "set_user_face"

    const-string v9, "get_vip_info"

    const-string v10, "get_vip_rich_info"

    const-string v11, "get_intimate_friends_weibo"

    const-string v12, "match_nick_tips_weibo"

    const-string v13, "add_t"

    const-string v14, "add_pic_t"

    .line 1
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tencent/qzone/utils/b;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;
    .locals 1

    .line 3
    sget-object v0, Lcn/sharesdk/tencent/qzone/utils/b;->c:Lcn/sharesdk/tencent/qzone/utils/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/utils/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/tencent/qzone/utils/b;->c:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 5
    :cond_0
    sget-object p0, Lcn/sharesdk/tencent/qzone/utils/b;->c:Lcn/sharesdk/tencent/qzone/utils/b;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/utils/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/utils/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p5

    move-object/from16 v3, p7

    const-string v4, "ShareSDK"

    .line 26
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v9, "4"

    if-eq v2, v8, :cond_1

    if-ne v2, v9, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v8, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    .line 27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v8, "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"

    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v10, "utf-8"

    const/4 v11, 0x2

    if-nez v8, :cond_5

    :try_start_2
    const-string v8, "http"

    .line 30
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "https"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_2

    .line 31
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "/data/"

    .line 33
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 34
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "images"

    invoke-static {v12, v13}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 35
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    move-object v0, v5

    .line 38
    :cond_3
    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".cn.sharesdk.ShareSDKFileProvider"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-static {v0, v6, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.tencent.mobileqq"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v0, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v5, "&image_uri="

    .line 43
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 44
    :try_start_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doShareToQzone() getUriForFile exception:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v8, v6

    invoke-virtual {v5, v4, v8}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_4
    :goto_2
    const-string v5, "&image_url="

    .line 45
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_5
    :goto_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x258

    if-le v0, v5, :cond_6

    move-object/from16 v6, p4

    const/4 v8, 0x0

    .line 47
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object/from16 v6, p4

    move-object v0, v6

    .line 48
    :goto_4
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 49
    invoke-static/range {p7 .. p7}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    .line 50
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-direct {p0, v3}, Lcn/sharesdk/tencent/qzone/utils/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "&videoPath="

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&videoSize="

    .line 53
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "&videoDuration="

    .line 55
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "&title="

    .line 57
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "&description="

    .line 59
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v3, "&share_id="

    .line 60
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "&url="

    .line 62
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v3, "&app_name="

    .line 63
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "&share_qq_ext_str="

    .line 65
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "&req_type="

    .line 66
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "1"

    goto :goto_5

    :cond_c
    const-string v0, "0"

    :goto_5
    const-string v2, "&cflag="

    .line 68
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 72
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;-><init>()V

    .line 73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->setScheme(Ljava/lang/String;Z)V

    move-object/from16 v2, p8

    .line 74
    invoke-virtual {v0, v2}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->setSharedCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 75
    iget-object v2, v1, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->setAppId(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 78
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " QQ ShareActivity run catch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-virtual {v2, v4, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_d
    :goto_6
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/utils/b;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qzone/utils/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qzone/utils/b;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qzone/utils/b;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 7

    .line 2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->i:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcn/sharesdk/tencent/qzone/utils/b;->b:[Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    if-lez v4, :cond_1

    const/16 v6, 0x2c

    .line 5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qzone/utils/b;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    :try_start_0
    const-string v0, "android.media.MediaMetadataRetriever"

    .line 3
    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setDataSource"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 5
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    .line 6
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extractMetadata"

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v3, 0x9

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v2, p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v0, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->f:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-direct {v0, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    const-string v3, "oauth_consumer_key"

    invoke-direct {v0, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->e:Ljava/lang/String;

    const-string v3, "openid"

    invoke-direct {v0, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "format"

    const-string v3, "json"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v3, 0xc7

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 87
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "ssdk_symbol_ellipsis"

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 89
    :cond_0
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "photodesc"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v0, "mobile"

    const-string v1, "1"

    invoke-direct {p2, v0, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string p2, "picture"

    invoke-direct {v3, p2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.agent"

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ArzenAndroidSDK"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-direct {p1, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v6

    const-string v1, "https://graph.qq.com/photo/upload_pic"

    const-string v5, "/photo/upload_pic"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 98
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 99
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 100
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    new-instance v2, Lcom/mob/tools/network/KVPair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->f:Ljava/lang/String;

    const-string v2, "access_token"

    invoke-direct {p3, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p3, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    const-string v2, "oauth_consumer_key"

    invoke-direct {p3, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p3, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->e:Ljava/lang/String;

    const-string v2, "openid"

    invoke-direct {p3, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p3, Lcom/mob/tools/network/KVPair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {p3, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_3

    .line 107
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 108
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object p4, v0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 109
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-direct {v1, v2, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p4, v1

    goto :goto_1

    :cond_2
    move-object v4, p4

    goto :goto_2

    :cond_3
    move-object v4, v0

    .line 110
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance p3, Lcom/mob/tools/network/KVPair;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "http.agent"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ArzenAndroidSDK"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "User-Agent"

    invoke-direct {p3, v1, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string p3, "GET"

    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 113
    new-instance p2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {p2, p1, v3, v5, v0}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p3, "POST"

    .line 114
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 115
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 116
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_5
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_6

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 118
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method public a()V
    .locals 2

    .line 9
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;-><init>(Lcn/sharesdk/tencent/qzone/utils/b;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 11
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 12
    new-instance v1, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$3;-><init>(Lcn/sharesdk/tencent/qzone/utils/b;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v8, p8

    .line 21
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4"

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 22
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3"

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 24
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "The param of title or titleUrl is null !"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "1"

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 25
    invoke-direct/range {v0 .. v8}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p6

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-le v1, v3, :cond_1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v9, v0

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    move-object v0, p2

    .line 19
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    move-object v5, v0

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p12

    .line 20
    invoke-virtual/range {v3 .. v11}, Lcn/sharesdk/tencent/qzone/utils/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 0

    .line 8
    new-instance p2, Lcn/sharesdk/tencent/qzone/utils/b$1;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/tencent/qzone/utils/b$1;-><init>(Lcn/sharesdk/tencent/qzone/utils/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->i:[Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v1, "/t/add_pic_t"

    goto :goto_0

    :cond_0
    const-string v1, "/t/add_t"

    :goto_0
    move-object v6, v1

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    const-string v5, "oauth_consumer_key"

    invoke-direct {v1, v5, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/utils/b;->f:Ljava/lang/String;

    const-string v5, "access_token"

    invoke-direct {v1, v5, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/utils/b;->e:Ljava/lang/String;

    const-string v5, "openid"

    invoke-direct {v1, v5, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "format"

    const-string v5, "json"

    invoke-direct {v1, v2, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "content"

    invoke-direct {v1, v2, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 19
    new-instance v5, Lcom/mob/tools/network/KVPair;

    const-string p2, "pic"

    invoke-direct {v5, p2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/utils/b;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result p2

    invoke-virtual {p1, v3, v4, v6, p2}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 23
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "ret"

    .line 24
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    .line 25
    :cond_2
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 7

    const-string v0, "com.qzone"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v2, v0

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 6
    :try_start_1
    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 8
    aput v1, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    .line 9
    aget v2, v3, v1

    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    aget v2, v3, v0

    if-ge v2, v0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v1

    :catchall_1
    move-exception v0

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->f:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    const-string v1, "oauth_consumer_key"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->e:Ljava/lang/String;

    const-string v1, "openid"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "http.agent"

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ArzenAndroidSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v6

    const-string v1, "https://graph.qq.com/user/get_simple_userinfo"

    const/4 v4, 0x0

    const-string v5, "/user/get_simple_userinfo"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Z
    .locals 4

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 15
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.tim"

    .line 17
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 18
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 19
    :catchall_1
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.minihd.qq"

    .line 20
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 21
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 22
    :catchall_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "http.agent"

    .line 12
    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ArzenAndroidSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v6

    const-string v1, "https://graph.qq.com/oauth2.0/me"

    const/4 v4, 0x0

    const-string v5, "/oauth2.0/me"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callback"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const-string/jumbo v0, "{"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    const-string/jumbo v0, "}"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 21
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v0

    const-string v1, "/oauth2.0/authorize"

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 2
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "utf-8"

    .line 4
    invoke-static {v1, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&redirect_uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&display=mobile&scope="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Lcn/sharesdk/framework/authorize/b;
    .locals 1

    .line 1
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/a;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    const-string v0, "auth://tauth.qq.com/"

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)Lcn/sharesdk/framework/authorize/c;
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/c;-><init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V

    const/16 p1, 0x1618

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/c;->a(I)V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/tencent/qzone/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
