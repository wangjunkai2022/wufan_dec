.class public Lcn/sharesdk/wechat/utils/WXEmojiObject;
.super Ljava/lang/Object;
.source "WXEmojiObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public emojiData:[B

.field public emojiPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const-string v1, "MicroMsg.SDK.WXEmojiObject"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, both arguments is null"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const/high16 v4, 0xa00000

    if-eqz v0, :cond_2

    array-length v0, v0

    if-le v0, v4, :cond_2

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, emojiData is too large"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "checkArgs fail, emojiPath not found"

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0xa00000

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "checkArgs fail, emojiSize is too large"

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WXEmojiObject catch don\'t worry will be two style "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "ShareSDk"

    invoke-virtual {v1, v0, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 13
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    if-le v0, v4, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const-string v1, "_wxemojiobject_emojiData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    const-string v1, "_wxemojiobject_emojiPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmojiData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    return-void
.end method

.method public setEmojiPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxemojiobject_emojiData"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const-string v0, "_wxemojiobject_emojiPath"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method
