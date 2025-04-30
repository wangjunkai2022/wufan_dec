.class Lcom/join/mgps/activity/WebViewSearchActivity_$d;
.super Ljava/lang/Object;
.source "WebViewSearchActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity_;->updateLine(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/WebViewSearchActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity_;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$d;->b:Lcom/join/mgps/activity/WebViewSearchActivity_;

    iput p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$d;->b:Lcom/join/mgps/activity/WebViewSearchActivity_;

    iget v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$d;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity_;->w1(Lcom/join/mgps/activity/WebViewSearchActivity_;I)V

    return-void
.end method
