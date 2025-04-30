.class Lcom/join/mgps/activity/IntroductionActivity$b;
.super Landroid/webkit/WebChromeClient;
.source "IntroductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/IntroductionActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic b:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->H0(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    const v2, 0x7f0c05dc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->I0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->H0(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->F0(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/IntroductionActivity;->G0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/IntroductionActivity;->S0()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0xa

    if-le p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->p:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const/16 p1, 0x50

    const/16 v0, 0x8

    if-le p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->p:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    const/16 p1, 0x64

    if-ne p2, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->p:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/IntroductionActivity;->J0(Lcom/join/mgps/activity/IntroductionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/activity/IntroductionActivity$b;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->F0(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->G0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-virtual {v0, p1, p2, p0}, Lcom/join/mgps/activity/IntroductionActivity;->n1(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V

    return-void
.end method
