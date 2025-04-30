.class public Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;
.super Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;
.source "SSOAuthorizeActivity.java"


# static fields
.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x80cd


# instance fields
.field protected listener:Lcn/sharesdk/framework/authorize/SSOListener;

.field private sso:Lcn/sharesdk/framework/authorize/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;->sso:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/c;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0, p0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getSSOProcessor(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;->sso:Lcn/sharesdk/framework/authorize/c;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start SSO for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v2}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x80cd

    .line 6
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/c;->a(I)V

    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;->sso:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->a()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;->sso:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/c;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public setSSOListener(Lcn/sharesdk/framework/authorize/SSOListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;->listener:Lcn/sharesdk/framework/authorize/SSOListener;

    return-void
.end method
