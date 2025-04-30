.class Lcom/join/mgps/dialog/y1$d;
.super Landroid/os/Handler;
.source "UserPermissDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$d;->a:Lcom/join/mgps/dialog/y1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$d;->a:Lcom/join/mgps/dialog/y1;

    iget-object v0, p1, Lcom/join/mgps/dialog/y1;->c:Landroid/webkit/WebView;

    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$d;->a:Lcom/join/mgps/dialog/y1;

    iget v1, p1, Lcom/join/mgps/dialog/y1;->e:I

    if-ne v1, v0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->c:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/dialogxieyi1.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->c:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/dialogxieyi2.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
