.class public Lcom/ss/android/downloadlib/addownload/j;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field public static final a:Lorg/json/JSONObject;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/ss/android/download/api/config/f;

.field private static d:Lcom/ss/android/download/api/config/c;

.field private static e:Lcom/ss/android/download/api/config/k;

.field private static f:Lcom/ss/android/download/api/config/g;

.field private static g:Lcom/ss/android/download/api/config/h;

.field private static h:Lcom/ss/android/download/api/config/i;

.field private static i:Lcom/ss/android/download/api/model/a;

.field private static j:Lcom/ss/android/download/api/config/b;

.field private static k:Lcom/ss/android/socialbase/appdownloader/c/h;

.field private static l:Lcom/ss/android/download/api/config/d;

.field private static m:Lcom/ss/android/download/api/config/e;

.field private static n:Lcom/ss/android/download/api/config/n;

.field private static o:Lcom/ss/android/download/api/config/j;

.field private static p:Lcom/ss/android/download/api/config/t;

.field private static q:Lcom/ss/android/download/api/config/m;

.field private static r:Lcom/ss/android/download/api/config/l;

.field private static s:Lcom/ss/android/download/api/config/o;

.field private static t:Lcom/ss/android/download/api/b/a;

.field private static u:Lcom/ss/android/download/api/config/p;

.field private static v:Lcom/ss/android/download/api/config/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static a()Lcom/ss/android/download/api/config/f;
    .locals 1

    .line 11
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->c:Lcom/ss/android/download/api/config/f;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->b:Landroid/content/Context;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/ss/android/download/api/b/a;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->t:Lcom/ss/android/download/api/b/a;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/b;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/config/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->j:Lcom/ss/android/download/api/config/b;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/f;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/config/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->c:Lcom/ss/android/download/api/config/f;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/g;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/config/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->f:Lcom/ss/android/download/api/config/g;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/h;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/config/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->g:Lcom/ss/android/download/api/config/h;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/i;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/config/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->h:Lcom/ss/android/download/api/config/i;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/k;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/config/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->e:Lcom/ss/android/download/api/config/k;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/config/p;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->u:Lcom/ss/android/download/api/config/p;

    return-void
.end method

.method public static a(Lcom/ss/android/download/api/model/a;)V
    .locals 0
    .param p0    # Lcom/ss/android/download/api/model/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->i:Lcom/ss/android/download/api/model/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lcom/ss/android/download/api/config/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->d:Lcom/ss/android/download/api/config/c;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/ss/android/downloadlib/addownload/j$1;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/j$1;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->d:Lcom/ss/android/download/api/config/c;

    .line 5
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->d:Lcom/ss/android/download/api/config/c;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/j;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static c()Lcom/ss/android/download/api/config/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->e:Lcom/ss/android/download/api/config/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/download/api/a/a;

    invoke-direct {v0}, Lcom/ss/android/download/api/a/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->e:Lcom/ss/android/download/api/config/k;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->e:Lcom/ss/android/download/api/config/k;

    return-object v0
.end method

.method public static d()Lcom/ss/android/download/api/config/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->f:Lcom/ss/android/download/api/config/g;

    return-object v0
.end method

.method public static e()Lcom/ss/android/download/api/config/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->g:Lcom/ss/android/download/api/config/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/download/api/a/b;

    invoke-direct {v0}, Lcom/ss/android/download/api/a/b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->g:Lcom/ss/android/download/api/config/h;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->g:Lcom/ss/android/download/api/config/h;

    return-object v0
.end method

.method public static f()Lcom/ss/android/socialbase/appdownloader/c/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->k:Lcom/ss/android/socialbase/appdownloader/c/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/addownload/j$2;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/j$2;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->k:Lcom/ss/android/socialbase/appdownloader/c/h;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->k:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object v0
.end method

.method public static g()Lcom/ss/android/download/api/config/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->n:Lcom/ss/android/download/api/config/n;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h()Lcom/ss/android/download/api/config/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->s:Lcom/ss/android/download/api/config/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/addownload/j$3;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/j$3;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->s:Lcom/ss/android/download/api/config/o;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->s:Lcom/ss/android/download/api/config/o;

    return-object v0
.end method

.method public static i()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->h:Lcom/ss/android/download/api/config/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/download/api/config/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->h:Lcom/ss/android/download/api/config/i;

    invoke-interface {v0}, Lcom/ss/android/download/api/config/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static j()Lcom/ss/android/download/api/config/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->r:Lcom/ss/android/download/api/config/l;

    return-object v0
.end method

.method public static k()Lcom/ss/android/download/api/config/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->j:Lcom/ss/android/download/api/config/b;

    return-object v0
.end method

.method public static l()Lcom/ss/android/download/api/config/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->q:Lcom/ss/android/download/api/config/m;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    const-string v0, "1.7.0"

    return-object v0
.end method

.method public static n()Lcom/ss/android/download/api/config/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->l:Lcom/ss/android/download/api/config/d;

    return-object v0
.end method

.method public static o()Lcom/ss/android/download/api/config/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->m:Lcom/ss/android/download/api/config/e;

    return-object v0
.end method

.method public static p()Lcom/ss/android/download/api/config/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->o:Lcom/ss/android/download/api/config/j;

    return-object v0
.end method

.method public static q()Lcom/ss/android/download/api/config/p;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->u:Lcom/ss/android/download/api/config/p;

    return-object v0
.end method

.method public static r()Lcom/ss/android/download/api/config/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->p:Lcom/ss/android/download/api/config/t;

    return-object v0
.end method

.method public static s()Lcom/ss/android/download/api/b/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->t:Lcom/ss/android/download/api/b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/addownload/j$4;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/j$4;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->t:Lcom/ss/android/download/api/b/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->t:Lcom/ss/android/download/api/b/a;

    return-object v0
.end method

.method public static t()Lcom/ss/android/download/api/config/r;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->v:Lcom/ss/android/download/api/config/r;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/addownload/j$5;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/j$5;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/j;->v:Lcom/ss/android/download/api/config/r;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->v:Lcom/ss/android/download/api/config/r;

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-le v0, v2, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "default_save_dir_name"

    const-string v3, "ByteDownload"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static v()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->c:Lcom/ss/android/download/api/config/f;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->f:Lcom/ss/android/download/api/config/g;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->h:Lcom/ss/android/download/api/config/i;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->j:Lcom/ss/android/download/api/config/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/j;->u:Lcom/ss/android/download/api/config/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
