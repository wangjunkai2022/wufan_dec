.class public Lcom/heepay/plugin/d/a/a;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private a:Lcom/heepay/plugin/d/a/c;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Lcom/heepay/plugin/d/a/c;

    invoke-direct {v0, p1, p2}, Lcom/heepay/plugin/d/a/c;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/heepay/plugin/d/a/a;->a:Lcom/heepay/plugin/d/a/c;

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    iget-object p2, p0, Lcom/heepay/plugin/d/a/a;->a:Lcom/heepay/plugin/d/a/c;

    invoke-virtual {p2, p1, p3}, Lcom/heepay/plugin/d/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x19

    if-gt p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heepay/plugin/d/a/a;->b:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/heepay/plugin/d/a/a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heepay/plugin/d/a/a;->a:Lcom/heepay/plugin/d/a/c;

    invoke-virtual {v0}, Lcom/heepay/plugin/d/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heepay/plugin/d/a/a;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " inject js interface completely on progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "---->"

    invoke-static {v1, v0}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
