.class Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;
.super Ljava/lang/Object;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$authTokenTypeView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;

    iput-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;

    new-instance v1, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;

    invoke-direct {v1, p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
