.class public Lcn/sharesdk/wechat/utils/WXMediaMessage$a;
.super Ljava/lang/Object;
.source "WXMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/utils/WXMediaMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcn/sharesdk/wechat/utils/WXMediaMessage;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->sdkVer:I

    const-string v2, "_wxobject_sdkVer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    const-string v2, "_wxobject_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string v2, "_wxobject_description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string v2, "_wxobject_thumbdata"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_wxobject_identifier_"

    if-eqz v2, :cond_0

    const-string v2, "com.tencent.mm.opensdk.modelmsg"

    const-string v4, "com.tencent.mm.sdk.openapi"

    .line 9
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    invoke-interface {v1, v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->serialize(Landroid/os/Bundle;)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    const-string v2, "_wxobject_mediatagname"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageAction:Ljava/lang/String;

    const-string v2, "_wxobject_message_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageExt:Ljava/lang/String;

    const-string v2, "_wxobject_message_ext"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->wxminiprogram_ext_msg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->wxminiprogram_ext_msg:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_ext_msg"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WechatResp toBundle that _launch_wxminiprogram_ext_msg is null"

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcn/sharesdk/wechat/utils/WXMediaMessage;
    .locals 7

    .line 19
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    const-string v1, "_wxobject_sdkVer"

    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->sdkVer:I

    const-string v1, "_wxobject_title"

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    const-string v1, "_wxobject_description"

    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string v1, "_wxobject_thumbdata"

    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string v1, "_wxobject_mediatagname"

    .line 24
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    const-string v1, "_wxobject_message_action"

    .line 25
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageAction:Ljava/lang/String;

    const-string v1, "_wxobject_message_ext"

    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageExt:Ljava/lang/String;

    const-string v1, "_wxobject_identifier_"

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->wxminiprogram_ext_msg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :try_start_0
    const-string v2, "_launch_wxminiprogram_ext_msg"

    .line 30
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->wxminiprogram_ext_msg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WechatResp get _launch_wxminiprogram_ext_msg error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 33
    iput-object v2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 34
    invoke-interface {v2, p0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->unserialize(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 35
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get media object from bundle failed: unknown ident "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ex = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cn.sharesdk.wechat.utils"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathOldToNew fail, invalid pos, oldPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p0

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "pathOldToNew fail, oldPath is null"

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p0
.end method
