.class public Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;
.super Lcom/cmic/sso/sdk/view/LoginAuthActivity;
.source "CmccLoginActivity.java"


# instance fields
.field private F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->F:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackPressedAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->onResume()V

    return-void
.end method
