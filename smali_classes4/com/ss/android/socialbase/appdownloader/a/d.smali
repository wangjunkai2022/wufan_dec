.class public Lcom/ss/android/socialbase/appdownloader/a/d;
.super Ljava/lang/Object;
.source "DevicePlans.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/appdownloader/a/a;
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    if-eqz p0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v5

    const-string v1, "v1"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/j;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1}, Lcom/ss/android/socialbase/appdownloader/a/j;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "v2"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/k;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1}, Lcom/ss/android/socialbase/appdownloader/a/k;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "v3"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/l;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1}, Lcom/ss/android/socialbase/appdownloader/a/l;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "o1"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/g;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1}, Lcom/ss/android/socialbase/appdownloader/a/g;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "o2"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/h;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1}, Lcom/ss/android/socialbase/appdownloader/a/h;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "o3"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "file_content_uri"

    .line 16
    invoke-virtual {p3, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDBJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 18
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/i;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/socialbase/appdownloader/a/i;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "custom"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/c;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1, p2}, Lcom/ss/android/socialbase/appdownloader/a/c;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_8
    const-string p2, "vbi"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 22
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadFileUriProvider(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/d;->d()Ljava/lang/String;

    move-result-object p2

    .line 24
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-static {p3, p1, p0, p2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/m;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v5, p1}, Lcom/ss/android/socialbase/appdownloader/a/m;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 27
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->b()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 29
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "v1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/j;

    invoke-direct {v1, p0, p3, v7}, Lcom/ss/android/socialbase/appdownloader/a/j;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "v2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/k;

    invoke-direct {v1, p0, p3, v7}, Lcom/ss/android/socialbase/appdownloader/a/k;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "v3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/l;

    invoke-direct {v1, p0, p3, v7}, Lcom/ss/android/socialbase/appdownloader/a/l;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :cond_4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "o1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/g;

    invoke-direct {v1, p0, p3, v7}, Lcom/ss/android/socialbase/appdownloader/a/g;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "o2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/h;

    invoke-direct {v1, p0, p3, v7}, Lcom/ss/android/socialbase/appdownloader/a/h;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_6
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "o3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 40
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/i;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/socialbase/appdownloader/a/i;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "custom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/c;

    invoke-direct {v1, p0, p3, v7, p2}, Lcom/ss/android/socialbase/appdownloader/a/c;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 43
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "vbi"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 44
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/m;

    invoke-direct {v1, p0, p3, v7}, Lcom/ss/android/socialbase/appdownloader/a/m;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    :cond_9
    :goto_0
    if-eqz v1, :cond_a

    .line 45
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/a;->a()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_1
    return v0
.end method
