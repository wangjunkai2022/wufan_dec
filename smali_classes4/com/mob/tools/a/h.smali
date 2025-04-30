.class public Lcom/mob/tools/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/h$c;,
        Lcom/mob/tools/a/h$b;,
        Lcom/mob/tools/a/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mob/tools/a/h;


# instance fields
.field private c:Lcom/mob/tools/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "014)cjdeejeidchaehffbdde>fMfd^hZej"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_0

    .line 3
    new-instance p2, Lcom/mob/tools/a/h$b;

    invoke-direct {p2, p1}, Lcom/mob/tools/a/h$b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mob/tools/a/h;->c:Lcom/mob/tools/a/h$a;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/mob/tools/a/h$c;

    invoke-direct {p1}, Lcom/mob/tools/a/h$c;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/a/h;->c:Lcom/mob/tools/a/h$a;

    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)Lcom/mob/tools/a/h;
    .locals 2

    const-class v0, Lcom/mob/tools/a/h;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/mob/tools/a/h;->b:Lcom/mob/tools/a/h;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/mob/tools/a/h;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/a/h;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/mob/tools/a/h;->b:Lcom/mob/tools/a/h;

    .line 4
    :cond_0
    sget-object p0, Lcom/mob/tools/a/h;->b:Lcom/mob/tools/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/tools/a/h;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mob/tools/a/h;->c:Lcom/mob/tools/a/h$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/a/h$a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mob/tools/a/h;->c:Lcom/mob/tools/a/h$a;

    invoke-interface {v0, p1}, Lcom/mob/tools/a/h$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mob/tools/a/h;->c:Lcom/mob/tools/a/h$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/a/h$a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mob/tools/a/h;->c:Lcom/mob/tools/a/h$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    sget-object v1, Lcom/mob/tools/a/h;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
