.class public Lcom/join/android/app/component/album/lib/b;
.super Ljava/lang/Object;
.source "ImageScaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/lib/b$g;
    }
.end annotation


# static fields
.field private static j:Lcom/join/android/app/component/album/lib/b; = null

.field private static final k:I = 0x0

.field private static final l:I = 0x2

.field private static final m:I = 0x4

.field private static final n:I = 0x8


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field private e:Z

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/os/Handler;

.field private i:Lcom/join/android/app/component/album/lib/b$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/android/app/component/album/lib/b;->d:I

    .line 5
    iput-boolean v0, p0, Lcom/join/android/app/component/album/lib/b;->e:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/join/android/app/component/album/lib/b$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$a;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->h:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/component/album/lib/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/album/lib/b;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lcom/join/android/app/component/album/lib/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/b;->j:Lcom/join/android/app/component/album/lib/b;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/component/album/lib/b;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/android/app/component/album/lib/b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/android/app/component/album/lib/b;->j:Lcom/join/android/app/component/album/lib/b;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5
    :cond_0
    :goto_0
    sget-object p0, Lcom/join/android/app/component/album/lib/b;->j:Lcom/join/android/app/component/album/lib/b;

    return-object p0
.end method

.method private h()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$d;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    return-object v0
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized i()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    const-string v1, "\u6682\u65e0\u5916\u90e8\u5b58\u50a8"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/join/android/app/component/album/lib/b;->e:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->g:Landroid/app/ProgressDialog;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/join/android/app/component/album/lib/b$g;->a()V

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/android/app/component/album/lib/b$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/lib/b$b;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/join/android/app/component/album/lib/b$g;->a()V

    .line 3
    :cond_0
    new-instance p1, Lcom/join/android/app/component/album/lib/b$c;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/album/lib/b$c;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/join/android/app/component/album/lib/b;->h()Ljava/io/FilenameFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/component/album/lib/b;->m(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public l(Lcom/join/android/app/component/album/lib/b$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    return-void
.end method

.method m(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b$e;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/album/lib/b$e;-><init>(Lcom/join/android/app/component/album/lib/b;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method n(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$f;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
