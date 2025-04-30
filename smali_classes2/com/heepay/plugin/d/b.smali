.class public Lcom/heepay/plugin/d/b;
.super Lcom/heepay/plugin/d/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heepay/plugin/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/heepay/plugin/d/a/a;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/heepay/plugin/d/a/a;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/heepay/plugin/d/a/a;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
