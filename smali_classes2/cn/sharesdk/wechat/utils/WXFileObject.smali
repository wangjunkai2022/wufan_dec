.class public Lcn/sharesdk/wechat/utils/WXFileObject;
.super Ljava/lang/Object;
.source "WXFileObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field private contentLengthLimit:I

.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x72800000

    .line 2
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    .line 4
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x72800000

    .line 9
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    .line 10
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x72800000

    .line 6
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    .line 7
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    iget v2, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    if-le v0, v2, :cond_2

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, fileData is too large"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6
    :try_start_0
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/WXFileObject;->getFileSize(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    if-le v0, v3, :cond_3

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v3, "checkArgs fail, fileSize is too large"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WXAppExendObject catch don\'t worry will be two style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "ShareSDK"

    invoke-virtual {v3, v0, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 9
    invoke-static {}, Lcn/sharesdk/wechat/utils/n;->a()Lcn/sharesdk/wechat/utils/n;

    move-result-object v0

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/sharesdk/wechat/utils/n;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget v3, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    if-le v0, v3, :cond_3

    return v1

    :cond_3
    return v2

    .line 11
    :cond_4
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, both arguments is null"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const-string v1, "_wxfileobject_fileData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    const-string v1, "_wxfileobject_filePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLengthLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->contentLengthLimit:I

    return-void
.end method

.method public setFileData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxfileobject_fileData"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const-string v0, "_wxfileobject_filePath"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method
