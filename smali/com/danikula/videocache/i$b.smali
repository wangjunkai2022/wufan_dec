.class public final Lcom/danikula/videocache/i$b;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final f:J = 0x20000000L


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/danikula/videocache/file/c;

.field private c:Lcom/danikula/videocache/file/a;

.field private d:Lcom/danikula/videocache/sourcestorage/c;

.field private e:Lw/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/danikula/videocache/sourcestorage/d;->b(Landroid/content/Context;)Lcom/danikula/videocache/sourcestorage/c;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/i$b;->d:Lcom/danikula/videocache/sourcestorage/c;

    .line 3
    invoke-static {p1}, Lcom/danikula/videocache/s;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->a:Ljava/io/File;

    .line 4
    new-instance p1, Lcom/danikula/videocache/file/h;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/danikula/videocache/file/h;-><init>(J)V

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    .line 5
    new-instance p1, Lcom/danikula/videocache/file/f;

    invoke-direct {p1}, Lcom/danikula/videocache/file/f;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->b:Lcom/danikula/videocache/file/c;

    .line 6
    new-instance p1, Lw/a;

    invoke-direct {p1}, Lw/a;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->e:Lw/b;

    return-void
.end method

.method static synthetic a(Lcom/danikula/videocache/i$b;)Lcom/danikula/videocache/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/i$b;->c()Lcom/danikula/videocache/e;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/danikula/videocache/e;
    .locals 7

    .line 1
    new-instance v6, Lcom/danikula/videocache/e;

    iget-object v1, p0, Lcom/danikula/videocache/i$b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/i$b;->b:Lcom/danikula/videocache/file/c;

    iget-object v3, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    iget-object v4, p0, Lcom/danikula/videocache/i$b;->d:Lcom/danikula/videocache/sourcestorage/c;

    iget-object v5, p0, Lcom/danikula/videocache/i$b;->e:Lw/b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/danikula/videocache/e;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/c;Lcom/danikula/videocache/file/a;Lcom/danikula/videocache/sourcestorage/c;Lw/b;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/danikula/videocache/i;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/i$b;->c()Lcom/danikula/videocache/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/danikula/videocache/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/i;-><init>(Lcom/danikula/videocache/e;Lcom/danikula/videocache/i$a;)V

    return-object v1
.end method

.method public d(Ljava/io/File;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->a:Ljava/io/File;

    return-object p0
.end method

.method public e(Lcom/danikula/videocache/file/a;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/file/a;

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    return-object p0
.end method

.method public f(Lcom/danikula/videocache/file/c;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/file/c;

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->b:Lcom/danikula/videocache/file/c;

    return-object p0
.end method

.method public g(Lw/b;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/b;

    iput-object p1, p0, Lcom/danikula/videocache/i$b;->e:Lw/b;

    return-object p0
.end method

.method public h(I)Lcom/danikula/videocache/i$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/file/g;

    invoke-direct {v0, p1}, Lcom/danikula/videocache/file/g;-><init>(I)V

    iput-object v0, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    return-object p0
.end method

.method public i(J)Lcom/danikula/videocache/i$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/file/h;

    invoke-direct {v0, p1, p2}, Lcom/danikula/videocache/file/h;-><init>(J)V

    iput-object v0, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    return-object p0
.end method
