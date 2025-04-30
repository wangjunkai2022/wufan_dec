.class Lcom/join/mgps/Util/UtilsMy$l;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/dialog/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->P0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/dialog/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILcom/join/mgps/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$l;->c:Ljava/util/List;

    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$l;->d:I

    iput p5, p0, Lcom/join/mgps/Util/UtilsMy$l;->e:I

    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$l;->f:Lcom/join/mgps/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->S0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$l;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$l;->c:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/Util/UtilsMy$l;->d:I

    iget v4, p0, Lcom/join/mgps/Util/UtilsMy$l;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->G0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$l;->f:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
