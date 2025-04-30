.class public abstract Lcn/sharesdk/framework/authorize/c;
.super Ljava/lang/Object;
.source "SSOProcessor.java"


# instance fields
.field protected a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

.field protected b:I

.field protected c:Lcn/sharesdk/framework/authorize/SSOListener;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->getHelper()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object p1

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getSSOListener()Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/framework/authorize/c;->b:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
