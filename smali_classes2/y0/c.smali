.class public Ly0/c;
.super Ljava/lang/Object;
.source "ISqlImpl.java"

# interfaces
.implements Ly0/b;


# instance fields
.field private a:Lcom/join/android/app/common/db/DatabaseHelper;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ly0/c;->a:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    iput-object v0, p0, Ly0/c;->b:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Ly0/c;->b:Landroid/content/Context;

    return-void
.end method

.method private f()Lcom/join/android/app/common/db/DatabaseHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/c;->a:Lcom/join/android/app/common/db/DatabaseHelper;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly0/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Ly0/c;->a:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Ly0/c;->a:Lcom/join/android/app/common/db/DatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v2, "url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_1
    return-object v0
.end method

.method public b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_1
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg1/f;->n(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ly0/c;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/c;->a:Lcom/join/android/app/common/db/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ly0/c;->a:Lcom/join/android/app/common/db/DatabaseHelper;

    :cond_0
    return-void
.end method
