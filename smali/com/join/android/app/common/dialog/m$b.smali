.class Lcom/join/android/app/common/dialog/m$b;
.super Ljava/lang/Object;
.source "ShowBottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/m;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/join/android/app/common/dialog/m;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/m;ZLandroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    iput-boolean p2, p0, Lcom/join/android/app/common/dialog/m$b;->a:Z

    iput-object p3, p0, Lcom/join/android/app/common/dialog/m$b;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/common/dialog/m$b;->a:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->a(Lcom/join/android/app/common/dialog/m;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/m;->a(Lcom/join/android/app/common/dialog/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/m;->b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->a(Lcom/join/android/app/common/dialog/m;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/m;->a(Lcom/join/android/app/common/dialog/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/m;->b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->c(Lcom/join/android/app/common/dialog/m;)Lcom/join/mgps/adapter/r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/m;->b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/r;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->c(Lcom/join/android/app/common/dialog/m;)Lcom/join/mgps/adapter/r;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->c(Lcom/join/android/app/common/dialog/m;)Lcom/join/mgps/adapter/r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/m;->b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/r;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->b(Lcom/join/android/app/common/dialog/m;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->c:Lcom/join/android/app/common/dialog/m;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/m;->c(Lcom/join/android/app/common/dialog/m;)Lcom/join/mgps/adapter/r;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/m$b;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
