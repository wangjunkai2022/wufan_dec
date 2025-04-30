.class Lcom/join/mgps/customview/LJWebView$a;
.super Landroid/webkit/WebChromeClient;
.source "LJWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LJWebView;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic b:Lcom/join/mgps/customview/LJWebView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LJWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    iput-object p1, v0, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->c(Lcom/join/mgps/customview/LJWebView;)V

    return-void
.end method

.method public b(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    iput-object p1, p2, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    .line 2
    invoke-static {p2}, Lcom/join/mgps/customview/LJWebView;->c(Lcom/join/mgps/customview/LJWebView;)V

    return-void
.end method

.method public c(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    iput-object p1, p2, Lcom/join/mgps/customview/LJWebView;->m:Landroid/webkit/ValueCallback;

    .line 2
    invoke-static {p2}, Lcom/join/mgps/customview/LJWebView;->c(Lcom/join/mgps/customview/LJWebView;)V

    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->n(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->j(Lcom/join/mgps/customview/LJWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    const v2, 0x7f0c05dc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/mgps/customview/LJWebView;->o(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->n(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Uncaught ReferenceError"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "papaBackPageUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/customview/LJWebView$b;->s()V

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->l(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/customview/LJWebView;->m(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

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
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/customview/LJWebView$b;->q0()V

    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0xa

    if-le p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/LJWebView$b;->U()V

    :cond_0
    const/16 p1, 0x50

    const/16 v0, 0x8

    if-le p2, p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->b(Lcom/join/mgps/customview/LJWebView;)I

    move-result p1

    sget v1, Lcom/join/mgps/customview/LJWebView;->q:I

    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    const/16 p1, 0x64

    if-ne p2, p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->b(Lcom/join/mgps/customview/LJWebView;)I

    move-result p1

    sget p2, Lcom/join/mgps/customview/LJWebView;->q:I

    if-ne p1, p2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->h(Lcom/join/mgps/customview/LJWebView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->b(Lcom/join/mgps/customview/LJWebView;)I

    move-result v0

    sget v2, Lcom/join/mgps/customview/LJWebView;->q:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v2, :cond_5

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->j(Lcom/join/mgps/customview/LJWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c054b

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/join/mgps/customview/LJWebView;->e(Lcom/join/mgps/customview/LJWebView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v2}, Lcom/join/mgps/customview/LJWebView;->k(Lcom/join/mgps/customview/LJWebView;)I

    move-result v2

    invoke-virtual {p1, v0, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->j(Lcom/join/mgps/customview/LJWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c03bc

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/LJWebView;->g(Lcom/join/mgps/customview/LJWebView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/customview/LJWebView;->i(Lcom/join/mgps/customview/LJWebView;Z)Z

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->b(Lcom/join/mgps/customview/LJWebView;)I

    move-result p1

    sget v0, Lcom/join/mgps/customview/LJWebView;->q:I

    if-ne p1, v0, :cond_7

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v1}, Lcom/join/mgps/customview/LJWebView;->p(Lcom/join/mgps/customview/LJWebView;)Ljava/lang/String;

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

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/join/mgps/customview/LJWebView$b;->p0(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/customview/LJWebView$a;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->l(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/LJWebView;->m(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJWebView;->a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Lcom/join/mgps/customview/LJWebView$b;->D(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V

    :cond_1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView$a;->b:Lcom/join/mgps/customview/LJWebView;

    iput-object p2, p1, Lcom/join/mgps/customview/LJWebView;->n:Landroid/webkit/ValueCallback;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/customview/LJWebView;->c(Lcom/join/mgps/customview/LJWebView;)V

    const/4 p1, 0x1

    return p1
.end method
