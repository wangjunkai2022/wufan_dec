.class Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FacebookHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/FacebookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/FacebookHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/FacebookHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/FacebookHandle;Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;-><init>(Lcom/androidquery/auth/FacebookHandle;)V

    return-void
.end method

.method private checkDone(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "https://www.facebook.com/connect/login_success.html"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_reason"

    .line 3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    .line 4
    invoke-static {v3, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {v0, p1}, Lcom/androidquery/auth/FacebookHandle;->access$1(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/androidquery/auth/FacebookHandle;->access$2(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$4(Lcom/androidquery/auth/FacebookHandle;)V

    .line 8
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {v3}, Lcom/androidquery/auth/FacebookHandle;->access$5(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/androidquery/auth/FacebookHandle;->access$6(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1, v2}, Lcom/androidquery/auth/FacebookHandle;->access$7(Lcom/androidquery/auth/FacebookHandle;Z)V

    .line 10
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/auth/FacebookHandle;->authenticated(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$8(Lcom/androidquery/auth/FacebookHandle;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/auth/AccountHandle;->success(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    :goto_0
    return v1

    :cond_2
    const-string v0, "fbconnect:cancel"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "cancelled"

    .line 14
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$10(Lcom/androidquery/auth/FacebookHandle;)V

    const-string p1, "finished"

    .line 3
    invoke-static {p1, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "started"

    .line 1
    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->this$0:Lcom/androidquery/auth/FacebookHandle;

    invoke-static {p1}, Lcom/androidquery/auth/FacebookHandle;->access$9(Lcom/androidquery/auth/FacebookHandle;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "return url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
