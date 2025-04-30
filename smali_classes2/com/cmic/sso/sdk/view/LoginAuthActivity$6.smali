.class Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;
.super Ljava/lang/Object;
.source "LoginAuthActivity.java"

# interfaces
.implements Lcom/cmic/sso/sdk/view/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)V

    return-void
.end method
