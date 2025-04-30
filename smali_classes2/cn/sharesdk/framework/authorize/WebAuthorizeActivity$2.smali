.class Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;
.super Ljava/lang/Thread;
.source "WebAuthorizeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-static {v1}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->access$100(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "none"

    .line 4
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-static {v1}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->access$200(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    iget-object v1, v1, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
