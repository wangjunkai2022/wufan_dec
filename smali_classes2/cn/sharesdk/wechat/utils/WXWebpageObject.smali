.class public Lcn/sharesdk/wechat/utils/WXWebpageObject;
.super Ljava/lang/Object;
.source "WXWebpageObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public canvasPageXml:Ljava/lang/String;

.field public extInfo:Ljava/lang/String;

.field public extraInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isSecretMessage:Z

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->isSecretMessage:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->isSecretMessage:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    .line 7
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, webpageUrl is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    const-string v1, "_wxwebpageobject_webpageUrl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extInfo:Ljava/lang/String;

    const-string v1, "_wxwebpageobject_extInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->canvasPageXml:Ljava/lang/String;

    const-string v1, "_wxwebpageobject_canvaspagexml"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->isSecretMessage:Z

    const-string v1, "_wxwebpageobject_issecretmsg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "_wxwebpageobject_extrainfo"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxwebpageobject_webpageUrl"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    const-string v0, "_wxwebpageobject_extInfo"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extInfo:Ljava/lang/String;

    const-string v0, "_wxwebpageobject_canvaspagexml"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->canvasPageXml:Ljava/lang/String;

    const-string v0, "_wxwebpageobject_issecretmsg"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->isSecretMessage:Z

    const-string v0, "_wxwebpageobject_extrainfo"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->extraInfoMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method
