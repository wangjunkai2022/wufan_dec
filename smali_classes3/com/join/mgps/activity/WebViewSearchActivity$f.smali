.class public Lcom/join/mgps/activity/WebViewSearchActivity$f;
.super Ljava/lang/Object;
.source "WebViewSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHtml(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "word"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v2, v1, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/WebViewSearchActivity;->U0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->L0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->V0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->J0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
