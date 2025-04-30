.class public Lcom/mob/tools/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/a/c;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/mob/tools/a/a;

.field private volatile d:Lcom/mob/tools/a/a;

.field private volatile e:Lcom/mob/tools/a/a;

.field private volatile f:Lcom/mob/tools/a/a;

.field private volatile g:Lcom/mob/tools/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/tools/a/c;

    invoke-direct {v0}, Lcom/mob/tools/a/c;-><init>()V

    sput-object v0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    iget-object v0, v0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    .line 3
    :cond_0
    sget-object p0, Lcom/mob/tools/a/c;->a:Lcom/mob/tools/a/c;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mob/tools/a/a;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mob/tools/a/c;->c:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/mob/tools/a/c;->c()Lcom/mob/tools/a/a;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->c:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public a(Lcom/mob/tools/a/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mob/tools/a/c;->c:Lcom/mob/tools/a/a;

    .line 5
    invoke-virtual {p0}, Lcom/mob/tools/a/c;->e()Lcom/mob/tools/a/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/mob/tools/a/a;->aI()Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/d;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/mob/tools/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/c;->f:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/a/c;->c()Lcom/mob/tools/a/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->f:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public b(Lcom/mob/tools/a/a;)Z
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mob/tools/a/c;->g:Lcom/mob/tools/a/a;

    const/4 p1, 0x1

    return p1
.end method

.method public c()Lcom/mob/tools/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/c;->d:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/a/c$a;

    iget-object v1, p0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/c;->d:Lcom/mob/tools/a/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->d:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public d()Lcom/mob/tools/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/c;->e:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/a/i;

    iget-object v1, p0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/c;->e:Lcom/mob/tools/a/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->e:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public e()Lcom/mob/tools/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/c;->f:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/a/g;

    iget-object v1, p0, Lcom/mob/tools/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/a/c;->f:Lcom/mob/tools/a/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->f:Lcom/mob/tools/a/a;

    return-object v0
.end method

.method public f()Lcom/mob/tools/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/c;->g:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/c;->g:Lcom/mob/tools/a/a;

    return-object v0
.end method
