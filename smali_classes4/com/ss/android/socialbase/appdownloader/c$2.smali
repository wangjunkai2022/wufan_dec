.class final Lcom/ss/android/socialbase/appdownloader/c$2;
.super Ljava/lang/Object;
.source "AppDownloadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic e:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->a:Landroid/content/Context;

    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->b:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->c:Z

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->e:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->a:Landroid/content/Context;

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->b:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->c:Z

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->e:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->o()Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->o()Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/depend/ag;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->c:Z

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    return-void
.end method
