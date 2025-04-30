.class public Lcom/ss/android/downloadlib/addownload/g;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/g/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/g$b;,
        Lcom/ss/android/downloadlib/addownload/g$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/ss/android/downloadlib/addownload/b/e;

.field private c:Z

.field private d:Lcom/ss/android/downloadlib/addownload/e;

.field private e:Lcom/ss/android/downloadlib/addownload/g$b;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/g;->c:Z

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->d:Lcom/ss/android/downloadlib/addownload/e;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/g;)Lcom/ss/android/downloadlib/addownload/b/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 136
    invoke-static {v1}, Lcom/ss/android/downloadlib/g/j;->b(Ljava/lang/String;)Z

    move-result v1

    .line 137
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/g;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 139
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    return-object v3

    .line 140
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    .line 141
    :cond_2
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    return-object v3

    :catch_0
    move-exception v3

    .line 142
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    .line 144
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_1
    const-string v5, "ttdownloader_code"

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    .line 145
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 146
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    const-string v7, "label_external_permission"

    invoke-virtual {v5, v7, v0, v6}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    const/4 v0, 0x0

    .line 148
    :try_start_2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 149
    :goto_2
    invoke-static {p1}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/socialbase/downloader/g/a;)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v5, 0x4

    if-eq p1, v5, :cond_8

    if-nez v1, :cond_6

    if-ne p1, v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    if-nez v1, :cond_a

    if-ne p1, v3, :cond_a

    .line 150
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    .line 151
    :cond_8
    :goto_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_4

    :cond_a
    move-object v2, v0

    :goto_4
    return-object v2
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/download/api/download/DownloadStatusChangeListener;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 200
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 202
    instance-of v2, v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eqz v2, :cond_2

    .line 203
    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private a(I)Z
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    return v2

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 22
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "disable_lp_if_market"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    return-wide v0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/download/api/download/a;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    instance-of v2, v1, Lcom/ss/android/download/api/download/a;

    if-eqz v2, :cond_2

    .line 17
    check-cast v1, Lcom/ss/android/download/api/download/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ss/android/download/api/download/a;

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private b(Lcom/ss/android/download/api/config/s;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5
    invoke-static {v0}, Lcom/ss/android/downloadlib/g/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/ss/android/download/api/config/s;->a()V

    :cond_0
    return-void

    .line 7
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/g$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/g$2;-><init>(Lcom/ss/android/downloadlib/addownload/g;Lcom/ss/android/download/api/config/s;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/j;->a([Ljava/lang/String;Lcom/ss/android/downloadlib/g/j$a;)V

    return-void
.end method

.method private c()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 3
    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isAddToDownloadManage()Z

    move-result v0

    return v0
.end method

.method private e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/g;->f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getLinkMode()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)I
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 67
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    .line 68
    new-instance v4, Lcom/ss/android/socialbase/downloader/model/c;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 70
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 71
    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getNotificationJumpUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 72
    invoke-interface {v4}, Lcom/ss/android/download/api/download/DownloadModel;->isShowToast()Z

    move-result v4

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 73
    invoke-interface {v5}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-static {v1, v3, v4, v5}, Lcom/ss/android/downloadlib/g/d;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v3}, Lcom/ss/android/downloadlib/g/e;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v4}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/download/api/download/DownloadModel;)Lorg/json/JSONObject;

    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v5}, Lcom/ss/android/download/api/download/DownloadController;->enableAH()Z

    move-result v5

    if-nez v5, :cond_3

    .line 78
    invoke-static {v4}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 79
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "ah_plans"

    invoke-static {v4, v6, v5}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_3
    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v5}, Lcom/ss/android/download/api/download/DownloadModel;->getExecutorGroup()I

    move-result v5

    .line 81
    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v6}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v6}, Lcom/ss/android/downloadlib/addownload/h;->b(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v5, 0x4

    .line 82
    :cond_5
    invoke-direct {p0, v3}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;

    move-result-object v6

    .line 83
    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v7, v7, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v7}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 84
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    const/4 v9, 0x3

    .line 85
    iget-object v10, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v10, v10, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v10}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 86
    invoke-virtual {v7, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 87
    :cond_6
    new-instance v7, Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v9, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v9, v9, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v9}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p1, v9}, Lcom/ss/android/socialbase/appdownloader/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 88
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getBackupUrls()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v7, v7, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 89
    invoke-interface {v7}, Lcom/ss/android/download/api/download/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 92
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->isShowNotification()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 93
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->isNeedWifi()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 94
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v6}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 96
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->j(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 97
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 98
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getSdkMonitorScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->i(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 99
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getExpectFileLength()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/socialbase/appdownloader/f;->a(J)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 101
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->needIndependentProcess()Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "need_independent_process"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_7

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->l(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 102
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 103
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->autoInstallWithoutNotification()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->b(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 104
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const/16 p2, 0x3e8

    .line 105
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->d(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const/16 p2, 0x64

    .line 106
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->e(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v8}, Lcom/ss/android/socialbase/appdownloader/f;->i(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v8}, Lcom/ss/android/socialbase/appdownloader/f;->j(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const/4 p2, 0x5

    const-string v1, "retry_count"

    .line 110
    invoke-virtual {v3, v1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->b(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "backup_url_retry_count"

    .line 111
    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->c(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v8}, Lcom/ss/android/socialbase/appdownloader/f;->j(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "need_head_connection"

    .line 113
    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_9

    const/4 p2, 0x1

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->m(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "need_https_to_http_retry"

    .line 114
    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_a

    const/4 p2, 0x1

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->d(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "need_chunk_downgrade_retry"

    .line 115
    invoke-virtual {v3, p2, v8}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_b

    const/4 p2, 0x1

    goto :goto_5

    :cond_b
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->h(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "need_retry_delay"

    .line 116
    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_c

    const/4 p2, 0x1

    goto :goto_6

    :cond_c
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->g(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "retry_delay_time_array"

    .line 117
    invoke-virtual {v3, p2}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const-string p2, "need_reuse_runnable"

    .line 118
    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_d

    const/4 p2, 0x1

    goto :goto_7

    :cond_d
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->k(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/appdownloader/f;->f(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 120
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->isAutoInstall()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->p(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 121
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->distinctDir()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->o(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 123
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    goto :goto_8

    :cond_e
    const-string p2, "application/vnd.android.package-archive"

    .line 124
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    :goto_8
    const-string p2, "notification_opt_2"

    .line 125
    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_f

    .line 126
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 127
    invoke-virtual {p1, v8}, Lcom/ss/android/socialbase/appdownloader/f;->b(Z)Lcom/ss/android/socialbase/appdownloader/f;

    :cond_f
    const/4 p2, 0x0

    const-string v1, "clear_space_use_disk_handler"

    .line 128
    invoke-virtual {v3, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_10

    .line 129
    new-instance p2, Lcom/ss/android/downloadlib/addownload/c/a;

    invoke-direct {p2}, Lcom/ss/android/downloadlib/addownload/c/a;-><init>()V

    .line 130
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 131
    :cond_10
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/g;->c()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/downloadlib/addownload/b/e;ZLcom/ss/android/socialbase/appdownloader/f;)I

    move-result p1

    if-eqz p2, :cond_11

    .line 132
    invoke-virtual {p2, p1}, Lcom/ss/android/downloadlib/addownload/c/a;->a(I)V

    :cond_11
    return p1
.end method

.method a()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->e:Lcom/ss/android/downloadlib/addownload/g$b;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ss/android/downloadlib/addownload/g$3;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/g$3;-><init>(Lcom/ss/android/downloadlib/addownload/g;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->e:Lcom/ss/android/downloadlib/addownload/g$b;

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/e;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    const-string p2, "setAdId ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method a(Landroid/os/Message;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/ss/android/download/api/model/DownloadShortInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_10

    .line 31
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    .line 32
    :cond_0
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 33
    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x6

    if-ne v1, v8, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, v6, :cond_4

    .line 34
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIsFirstDownload()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v1

    iget-object v8, v0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v9, v8, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v10, v8, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v8, v8, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-virtual {v1, v9, v10, v8}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V

    .line 36
    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 37
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 38
    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Lcom/ss/android/download/api/model/DownloadShortInfo;->updateFromNewDownloadInfo(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 39
    invoke-static/range {p2 .. p2}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/download/api/model/DownloadShortInfo;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    .line 40
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)I

    move-result v1

    .line 41
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_5

    .line 42
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    mul-long v12, v12, v14

    div-long/2addr v12, v8

    long-to-int v5, v12

    :cond_5
    cmp-long v12, v8, v10

    if-gtz v12, :cond_6

    .line 43
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v8

    const-string v9, "fix_click_start"

    invoke-virtual {v8, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 44
    :cond_6
    iget-object v8, v0, Lcom/ss/android/downloadlib/addownload/g;->e:Lcom/ss/android/downloadlib/addownload/g$b;

    if-eqz v8, :cond_7

    .line 45
    invoke-interface {v8, v3}, Lcom/ss/android/downloadlib/addownload/g$b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v8, 0x0

    .line 46
    iput-object v8, v0, Lcom/ss/android/downloadlib/addownload/g;->e:Lcom/ss/android/downloadlib/addownload/g$b;

    .line 47
    :cond_7
    invoke-static/range {p3 .. p3}, Lcom/ss/android/downloadlib/addownload/g;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    .line 48
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    if-eq v1, v7, :cond_e

    if-eq v1, v6, :cond_d

    if-eq v1, v4, :cond_9

    goto :goto_1

    .line 49
    :cond_9
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v10

    const/4 v11, -0x4

    if-ne v10, v11, :cond_a

    .line 50
    invoke-interface {v9}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_1

    .line 51
    :cond_a
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b

    .line 52
    invoke-interface {v9, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFailed(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_1

    .line 53
    :cond_b
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v10

    const/4 v11, -0x3

    if-ne v10, v11, :cond_8

    .line 54
    iget-object v10, v0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v10, v10, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v10}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 55
    invoke-interface {v9, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_1

    .line 56
    :cond_c
    invoke-interface {v9, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFinished(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_1

    .line 57
    :cond_d
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v10

    invoke-static {v10, v5}, Lcom/ss/android/downloadlib/addownload/i;->a(II)I

    move-result v10

    invoke-interface {v9, v2, v10}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadPaused(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_1

    .line 58
    :cond_e
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v10

    const/16 v11, 0xb

    if-eq v10, v11, :cond_f

    .line 59
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v10

    invoke-static {v10, v5}, Lcom/ss/android/downloadlib/addownload/i;->a(II)I

    move-result v10

    invoke-interface {v9, v2, v10}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_1

    .line 60
    :cond_f
    invoke-static/range {p3 .. p3}, Lcom/ss/android/downloadlib/addownload/g;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 61
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/download/api/download/a;

    .line 62
    invoke-interface {v10, v3}, Lcom/ss/android/download/api/download/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_2

    :cond_10
    :goto_3
    return-void
.end method

.method a(Lcom/ss/android/download/api/config/s;)V
    .locals 2
    .param p1    # Lcom/ss/android/download/api/config/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/ss/android/download/api/config/s;->a()V

    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p1}, Lcom/ss/android/download/api/config/s;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :catch_0
    :cond_1
    new-instance v0, Lcom/ss/android/downloadlib/addownload/g$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/addownload/g$1;-><init>(Lcom/ss/android/downloadlib/addownload/g;Lcom/ss/android/download/api/config/s;)V

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/download/api/config/s;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/g;->c:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Lcom/ss/android/download/api/model/DownloadShortInfo;",
            "Ljava/util/List<",
            "Lcom/ss/android/download/api/download/DownloadStatusChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 180
    :goto_1
    invoke-virtual {p2, p1}, Lcom/ss/android/download/api/model/DownloadShortInfo;->updateFromNewDownloadInfo(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 181
    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/download/api/model/DownloadShortInfo;)Lcom/ss/android/download/api/model/DownloadShortInfo;

    .line 182
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    .line 183
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 184
    :pswitch_1
    instance-of v2, v1, Lcom/ss/android/download/api/download/a;

    if-eqz v2, :cond_4

    .line 185
    check-cast v1, Lcom/ss/android/download/api/download/a;

    invoke-interface {v1, p1}, Lcom/ss/android/download/api/download/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/i;->a(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_2

    .line 187
    :pswitch_2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/i;->a(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadActive(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_2

    .line 188
    :pswitch_3
    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFailed(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    .line 189
    :pswitch_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/i;->a(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadPaused(Lcom/ss/android/download/api/model/DownloadShortInfo;I)V

    goto :goto_2

    .line 190
    :pswitch_5
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v2}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    .line 192
    :cond_5
    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadFinished(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    .line 193
    :pswitch_6
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v2}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x3

    .line 194
    iput v2, p2, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    .line 195
    invoke-interface {v1, p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onInstalled(Lcom/ss/android/download/api/model/DownloadShortInfo;)V

    goto :goto_2

    .line 196
    :cond_6
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_2

    :cond_7
    return-void

    .line 197
    :cond_8
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    .line 198
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_4

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    .line 160
    invoke-static {}, Lcom/ss/android/downloadlib/d/c;->a()Lcom/ss/android/downloadlib/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/d/c;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    .line 161
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    goto :goto_1

    .line 162
    :cond_4
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 163
    :pswitch_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/ss/android/downloadlib/d/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto/16 :goto_2

    .line 164
    :pswitch_2
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/ss/android/downloadlib/d/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    if-eqz p2, :cond_7

    .line 165
    invoke-static {}, Lcom/ss/android/downloadlib/d/c;->a()Lcom/ss/android/downloadlib/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/d/c;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 166
    invoke-static {}, Lcom/ss/android/downloadlib/d/c;->a()Lcom/ss/android/downloadlib/d/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/ss/android/downloadlib/d/c;->b(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 167
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    goto :goto_2

    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    const-string p2, "SUCCESSED isInstalledApp"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/e/c;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_6
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/ss/android/downloadlib/d/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    if-eqz p2, :cond_7

    .line 171
    invoke-static {}, Lcom/ss/android/downloadlib/d/c;->a()Lcom/ss/android/downloadlib/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/d/c;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 172
    invoke-static {}, Lcom/ss/android/downloadlib/d/c;->a()Lcom/ss/android/downloadlib/d/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/ss/android/downloadlib/d/c;->b(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 173
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/g;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    goto :goto_2

    .line 174
    :pswitch_4
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/g;->a()V

    .line 175
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p2

    new-instance v0, Lcom/ss/android/downloadad/api/a/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v3, v1, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/ss/android/downloadad/api/a/b;-><init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadad/api/a/b;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method a(Landroid/content/Context;IZ)Z
    .locals 3

    .line 8
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-wide p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z

    move-result p1

    return p1

    .line 12
    :cond_1
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/addownload/g;->a(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    .line 13
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "disable_market"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/e;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->d:Lcom/ss/android/downloadlib/addownload/e;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/e;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->d:Lcom/ss/android/downloadlib/addownload/e;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/e;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-eqz p3, :cond_5

    .line 17
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->d:Lcom/ss/android/downloadlib/addownload/e;

    .line 18
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/e;->e()Z

    move-result p1

    if-nez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->d:Lcom/ss/android/downloadlib/addownload/e;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/e;->c(Z)V

    return v1

    :cond_5
    return v0
.end method

.method a(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1
    .param p1    # Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->e:Lcom/ss/android/downloadlib/addownload/g$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/g$b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/g;->e:Lcom/ss/android/downloadlib/addownload/g$b;

    :cond_0
    return-void
.end method

.method c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/g;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/g/l;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 5
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/g;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    const-string v3, "file_status"

    invoke-virtual {v1, v3, p1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;ILcom/ss/android/downloadlib/addownload/b/e;)V

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/g;->c:Z

    :cond_1
    return-void
.end method

.method d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/g;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/g;->e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
