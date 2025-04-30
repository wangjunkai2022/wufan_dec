.class Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1;
.super Ljava/lang/Object;
.source "WebAuthorizeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1;->a:Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1$1;

    invoke-direct {p1, p0}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1$1;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
