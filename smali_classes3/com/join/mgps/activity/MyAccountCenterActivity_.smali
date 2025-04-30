.class public Lcom/join/mgps/activity/MyAccountCenterActivity_;
.super Lcom/BaseActivity;
.source "MyAccountCenterActivity_.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/MyAccountLoginActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
