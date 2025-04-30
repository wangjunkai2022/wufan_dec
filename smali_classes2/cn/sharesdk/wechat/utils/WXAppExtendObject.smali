.class public Lcn/sharesdk/wechat/utils/WXAppExtendObject;
.super Ljava/lang/Object;
.source "WXAppExtendObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# static fields
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000

.field private static final PATH_LENGTH_LIMIT:I = 0x2800


# instance fields
.field public extInfo:Ljava/lang/String;

.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->fileData:[B

    return-void
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->fileData:[B

    if-eqz v0, :cond_b

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x800

    if-gt v0, v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, extInfo is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 6
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2800

    if-gt v0, v2, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, filePath is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 9
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    const/high16 v2, 0xa00000

    if-eqz v0, :cond_8

    .line 10
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->getFileSize(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_7

    goto :goto_2

    .line 11
    :cond_7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, fileSize is too large"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 12
    :cond_8
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->fileData:[B

    if-eqz v0, :cond_a

    .line 13
    array-length v0, v0

    if-gt v0, v2, :cond_9

    goto :goto_3

    .line 14
    :cond_9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, fileData is too large"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_a
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 15
    :cond_b
    :goto_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, all arguments is null"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const-string v1, "_wxappextendobject_extInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->fileData:[B

    const-string v1, "_wxappextendobject_fileData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    const-string v1, "_wxappextendobject_filePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxappextendobject_extInfo"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const-string v0, "_wxappextendobject_fileData"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->fileData:[B

    const-string v0, "_wxappextendobject_filePath"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    return-void
.end method
