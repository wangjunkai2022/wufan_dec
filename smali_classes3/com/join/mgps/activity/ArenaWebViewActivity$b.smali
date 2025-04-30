.class Lcom/join/mgps/activity/ArenaWebViewActivity$b;
.super Landroid/webkit/WebViewClient;
.source "ArenaWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ArenaWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ArenaWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/ArenaWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ArenaWebViewActivity$b;->a:Lcom/join/mgps/activity/ArenaWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/ArenaWebViewActivity;Lcom/join/mgps/activity/ArenaWebViewActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ArenaWebViewActivity$b;-><init>(Lcom/join/mgps/activity/ArenaWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    return-void
.end method
