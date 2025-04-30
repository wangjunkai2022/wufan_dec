.class public abstract Lcn/sharesdk/framework/authorize/b;
.super Lcn/sharesdk/framework/g;
.source "AuthorizeWebviewClient.java"


# instance fields
.field protected activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

.field protected listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field protected redirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/g;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->getHelper()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method


# virtual methods
.method protected abstract onComplete(Ljava/lang/String;)V
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->getHelper()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
