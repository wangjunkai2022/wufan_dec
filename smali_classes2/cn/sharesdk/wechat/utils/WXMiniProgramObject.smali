.class public Lcn/sharesdk/wechat/utils/WXMiniProgramObject;
.super Ljava/lang/Object;
.source "WXMiniProgramObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# static fields
.field public static final MINIPROGRAM_TYPE_PREVIEW:I = 0x2

.field public static final MINIPROGRAM_TYPE_TEST:I = 0x1

.field public static final MINIPTOGRAM_TYPE_RELEASE:I


# instance fields
.field public disableforward:I

.field private extraInfoMap:Ljava/util/HashMap;
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

.field public isUpdatableMessage:Z

.field public miniprogramType:I

.field public path:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public webpageUrl:Ljava/lang/String;

.field public withShareTicket:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    .line 3
    iput v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->disableforward:I

    .line 4
    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->isUpdatableMessage:Z

    .line 5
    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->isSecretMessage:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2800

    if-le v0, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 5
    :cond_3
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW"

    aput-object v3, v2, v1

    const-string v3, "checkArgs fail"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 6
    :cond_4
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, userName is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 7
    :cond_5
    :goto_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, webpageUrl is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    const-string v1, "_wxminiprogram_webpageurl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    const-string v1, "_wxminiprogram_username"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    const-string v1, "_wxminiprogram_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    const-string v1, "_wxminiprogram_withsharetiket"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    const-string v1, "_wxminiprogram_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->disableforward:I

    const-string v1, "_wxminiprogram_disableforward"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->isUpdatableMessage:Z

    const-string v1, "_wxminiprogram_isupdatablemsg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->isSecretMessage:Z

    const-string v1, "_wxminiprogram_issecretmsg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "_wxminiprogram_extrainfo"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxminiprogram_webpageurl"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    const-string v0, "_wxminiprogram_username"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    const-string v0, "_wxminiprogram_path"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    const-string v0, "_wxminiprogram_withsharetiket"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->withShareTicket:Z

    const-string v0, "_wxminiprogram_type"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->miniprogramType:I

    const-string v0, "_wxminiprogram_disableforward"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->disableforward:I

    const-string v0, "_wxminiprogram_isupdatablemsg"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->isUpdatableMessage:Z

    const-string v0, "_wxminiprogram_issecretmsg"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->isSecretMessage:Z

    const-string v0, "_wxminiprogram_extrainfo"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->extraInfoMap:Ljava/util/HashMap;

    return-void
.end method
