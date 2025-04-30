.class Lcom/papa91/VideoStrategyPop$5;
.super Landroid/webkit/WebChromeClient;
.source "VideoStrategyPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/VideoStrategyPop;->setWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/VideoStrategyPop;


# direct methods
.method constructor <init>(Lcom/papa91/VideoStrategyPop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$5;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
