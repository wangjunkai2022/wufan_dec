.class public final Lcn/sharesdk/wechat/utils/i$b;
.super Lcn/sharesdk/wechat/utils/WechatResp;
.source "WXLaunchMiniProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatResp;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/utils/i$b;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a(Landroid/os/Bundle;)V

    const-string v0, "_launch_wxminiprogram_ext_msg"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/i$b;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$b;->a:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_ext_msg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
