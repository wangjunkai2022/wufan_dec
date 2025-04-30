.class public Lcom/ss/android/socialbase/downloader/g/a;
.super Ljava/lang/Object;
.source "DownloadSetting.java"


# static fields
.field private static final a:Lcom/ss/android/socialbase/downloader/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/h<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/socialbase/downloader/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/ss/android/socialbase/downloader/g/a;

.field private static c:Lorg/json/JSONObject;

.field private static d:Lorg/json/JSONObject;

.field private static e:Ljava/lang/Boolean;

.field private static f:Z

.field private static g:Lcom/ss/android/socialbase/downloader/g/a;


# instance fields
.field private final h:Lorg/json/JSONObject;

.field private final i:Lorg/json/JSONObject;

.field private final j:Ljava/lang/Boolean;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v1}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(II)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/h;

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->a()V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "bugfix"

    .line 3
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "default"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 7
    :goto_0
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    .line 8
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/a;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(I)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 2

    .line 15
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    if-eqz v0, :cond_0

    .line 16
    iget v1, v0, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 17
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/g/a;

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 20
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->c(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 21
    monitor-enter v0

    .line 22
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 24
    :cond_2
    :goto_1
    iput p0, v1, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    .line 25
    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    return-object v1

    :catchall_1
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 13
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_4

    .line 40
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eq p0, v0, :cond_4

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v1, p0, :cond_1

    return-object v0

    .line 43
    :cond_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/g/a;

    .line 45
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v3, p0, :cond_2

    .line 46
    sput-object v2, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 47
    monitor-exit v0

    return-object v2

    .line 48
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V

    .line 50
    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    return-object v0

    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 52
    :cond_4
    :goto_0
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0
.end method

.method public static a()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->E()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "disable_task_setting"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    const-string v1, "disabled_task_keys"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->c:Lorg/json/JSONObject;

    const-string v1, "bugfix"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v4, "default"

    .line 5
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 7
    :cond_2
    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    .line 8
    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(ILorg/json/JSONObject;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eq p1, v0, :cond_5

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    if-eqz v1, :cond_1

    .line 56
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v2, p1, :cond_1

    .line 57
    iput p0, v1, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/g/a;

    .line 59
    iget-object v4, v3, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v4, p1, :cond_2

    .line 60
    iput p0, v3, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    move-object v1, v3

    :cond_3
    if-nez v1, :cond_4

    .line 61
    new-instance v1, Lcom/ss/android/socialbase/downloader/g/a;

    invoke-direct {v1, p1}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V

    .line 62
    iput p0, v1, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    .line 63
    :cond_4
    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 64
    :goto_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 9
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    .line 11
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 1

    .line 19
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_0

    .line 20
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance p0, Lcom/ss/android/socialbase/downloader/g/a;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    :cond_1
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->E()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 1

    .line 13
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    if-eqz v0, :cond_0

    .line 14
    iget v0, v0, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 16
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()Lcom/ss/android/socialbase/downloader/g/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object v0
.end method

.method private static c(I)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->c:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;D)D
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1

    .line 36
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 30
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 33
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 7
    :cond_2
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 10
    :cond_4
    sget-object p1, Lcom/ss/android/socialbase/downloader/g/a;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    return p2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method
