.class Lcom/join/mgps/activity/WebViewSearchActivity_$h;
.super Ljava/lang/Object;
.source "WebViewSearchActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity_;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/WebViewSearchActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$h;->c:Lcom/join/mgps/activity/WebViewSearchActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$h;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput p3, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$h;->c:Lcom/join/mgps/activity/WebViewSearchActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$h;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget v2, p0, Lcom/join/mgps/activity/WebViewSearchActivity_$h;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/WebViewSearchActivity_;->i1(Lcom/join/mgps/activity/WebViewSearchActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method
