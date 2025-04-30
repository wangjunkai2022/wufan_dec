.class public final Lcn/sharesdk/wechat/utils/i$a;
.super Lcn/sharesdk/wechat/utils/m;
.source "WXLaunchMiniProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/m;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    .line 4
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 5
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->b(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_username"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    const-string v1, "_launch_wxminiprogram_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->d:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_extData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2800

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 3
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW"

    aput-object v3, v2, v1

    const-string v3, "checkArgs fail"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 4
    :cond_3
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, userName is invalid"

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method
