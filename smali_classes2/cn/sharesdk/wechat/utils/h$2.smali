.class Lcn/sharesdk/wechat/utils/h$2;
.super Ljava/lang/Thread;
.source "WXAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/wechat/utils/h;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/h;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    iput-object p2, p0, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "unionid"

    const-string v3, "country"

    const-string v4, "city"

    const-string v5, "province"

    const-string v6, "nickname"

    const-string v0, "errcode"

    const-string v7, "userTags"

    const-string v8, "openid"

    .line 1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v10, Lcom/mob/tools/network/KVPair;

    const-string v11, "access_token"

    iget-object v12, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v12}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v12

    invoke-virtual {v12}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v12

    invoke-virtual {v12}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v10, Lcom/mob/tools/network/KVPair;

    iget-object v11, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v11}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v11

    invoke-virtual {v11}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v10, Lcom/mob/tools/network/KVPair;

    const-string v11, "lang"

    const-string/jumbo v12, "zh_CN"

    invoke-direct {v10, v11, v12}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "https://api.weixin.qq.com/sns/userinfo"

    .line 5
    iget-object v11, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v11}, Lcn/sharesdk/wechat/utils/h;->c(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object v11

    const-string v12, "/sns/userinfo"

    iget-object v13, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v13}, Lcn/sharesdk/wechat/utils/h;->b(Lcn/sharesdk/wechat/utils/h;)I

    move-result v13

    invoke-virtual {v11, v10, v9, v12, v13}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v11, 0x8

    if-eqz v10, :cond_1

    .line 7
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 8
    iget-object v2, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v2}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v2, v11, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getUserInfo ==>>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v10, v12, v13}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 10
    new-instance v10, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v10}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v10, v9}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 11
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 12
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v9}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v3, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v3}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v11, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    .line 16
    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "sex"

    .line 18
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 20
    :goto_0
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 21
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 22
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "headimgurl"

    .line 23
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v7

    .line 25
    iget-object v7, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v7}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v7

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v6, v12}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    const-string v7, "gender"

    if-ne v0, v6, :cond_4

    .line 26
    :try_start_3
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v6, "0"

    invoke-virtual {v0, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 27
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v0, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_5
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v6, "2"

    invoke-virtual {v0, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_1
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 30
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v6, "icon"

    invoke-virtual {v0, v6, v13}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v5, v14}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v4, v15}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v3, v11}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2, v9}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object/from16 v3, v18

    .line 38
    :goto_2
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v2}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v4, 0x8

    invoke-interface {v0, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 39
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
