.class public Lcom/ss/android/downloadlib/c/c;
.super Ljava/lang/Object;
.source "ApkUpdateManager.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2e

    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->j()Lcom/ss/android/download/api/config/l;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/ss/android/downloadlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/ss/android/downloadad/api/a/b;->g()Lorg/json/JSONObject;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 8
    :goto_0
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/download/api/config/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/json/JSONObject;)V

    const-string v0, "application/vnd.android.package-archive"

    .line 9
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setMd5(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/download/api/c/b;->a(Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
