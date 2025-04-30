.class Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;
.super Ljava/lang/Object;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$authTokenLabel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;

    iput-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;

    iget-object v0, v0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;

    iget-object v0, v0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a$a;->b:Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;

    iget-object v0, v0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
