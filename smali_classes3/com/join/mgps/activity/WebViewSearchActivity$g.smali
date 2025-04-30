.class Lcom/join/mgps/activity/WebViewSearchActivity$g;
.super Landroid/webkit/WebViewClient;
.source "WebViewSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->D0(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished() called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iput-object p2, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    const-string v0, "data:text/html,chromewebdata"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->E0(Lcom/join/mgps/activity/WebViewSearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->G0(Lcom/join/mgps/activity/WebViewSearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "word"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->U0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->V0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f1102d9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:wufan.processHtml(document.documentElement.outerHTML);"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->H0(Lcom/join/mgps/activity/WebViewSearchActivity;Z)Z

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->c1()V

    return-void

    .line 18
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->e1()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->D0(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageStarted() called."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "http"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "file://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iput-object p2, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->showLoading()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->c1()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->D0(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError() called."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/join/mgps/activity/WebViewSearchActivity;->F0(Lcom/join/mgps/activity/WebViewSearchActivity;Z)Z

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->e1()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->c1()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->D0(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v0, "weixin:"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "android.intent.action.VIEW"

    if-nez v0, :cond_2

    const-string v0, "http"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iput-object p2, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    .line 8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 9
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    const v0, 0x7f110206

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_2
    return v1
.end method
