.class Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;
.super Ljava/lang/Object;
.source "LoginAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/view/c;->b()V

    :cond_0
    return p1
.end method
