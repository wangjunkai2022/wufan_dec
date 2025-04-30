.class public Lcom/heepay/plugin/activity/HyNotityActivity;
.super Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    invoke-static {}, Lcom/heepay/plugin/b/a;->c()Lcom/heepay/plugin/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->e:Lcom/heepay/plugin/b/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    const-string v1, "aid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b:I

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->c:Ljava/lang/String;

    const-string v1, "pay_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->i()V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&phoneInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/heepay/plugin/domain/e;->a()Lcom/heepay/plugin/domain/e;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/heepay/plugin/domain/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    iget v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b:I

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "-----------onCreate------------"

    invoke-static {p1}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/HyNotityActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "-----------onDestroy------------"

    invoke-static {v0}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h()V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------onResume------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------isNeedQuery------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    const-string v0, "isLoaded"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
