.class Lcom/join/mgps/activity/WebViewSearchActivity$a;
.super Ljava/lang/Object;
.source "WebViewSearchActivity.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V
    .locals 2

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u5df2\u5b8c\u6210"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5df2\u521b\u5efa\u4e0b\u8f7d\u4efb\u52a1"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->d:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    return-void
.end method

.method public b(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->d:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    return-void
.end method
