.class public Lcn/sharesdk/wechat/utils/a;
.super Ljava/lang/Object;
.source "AuthOptions.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/sharesdk/wechat/utils/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_options_callback_classname"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/sharesdk/wechat/utils/a;->b:I

    const-string v1, "_wxapi_sendauth_options_callback_flags"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_wxapi_sendauth_options_callback_classname"

    .line 1
    invoke-static {p1, v0}, Lcn/sharesdk/wechat/utils/n;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_options_callback_flags"

    const/4 v1, -0x1

    .line 2
    invoke-static {p1, v0, v1}, Lcn/sharesdk/wechat/utils/n;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/sharesdk/wechat/utils/a;->b:I

    return-void
.end method
