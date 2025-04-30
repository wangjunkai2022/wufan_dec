.class public Lcom/join/mgps/ad/a;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field private static k:Lcom/join/mgps/ad/a; = null

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3

.field public static final o:I = 0x4

.field public static final p:I = 0x5


# instance fields
.field private a:Lcom/join/mgps/ad/m;

.field private b:Lcom/join/mgps/ad/e;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Lcom/join/mgps/ad/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/ad/a;->h:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/ad/a;->i:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/ad/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/a;->j:Lcom/join/mgps/ad/f;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/ad/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/e;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/ad/c;->g()V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/join/mgps/ad/a;->d:Ljava/lang/String;

    .line 6
    new-instance v6, Lcom/join/mgps/ad/a$b;

    iget-object v2, p0, Lcom/join/mgps/ad/a;->c:Landroid/content/Context;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/a$b;-><init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/e;

    .line 7
    invoke-virtual {v6}, Lcom/join/mgps/ad/e;->e()V

    :cond_3
    :goto_1
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/ad/a;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/m;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/ad/c;->g()V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/join/mgps/ad/a;->e:Ljava/lang/String;

    .line 6
    new-instance v6, Lcom/join/mgps/ad/a$a;

    iget-object v2, p0, Lcom/join/mgps/ad/a;->c:Landroid/content/Context;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/a$a;-><init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/m;

    .line 7
    invoke-virtual {v6}, Lcom/join/mgps/ad/m;->e()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static e(Landroid/content/Context;)Lcom/join/mgps/ad/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/ad/a;->k:Lcom/join/mgps/ad/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/ad/a;

    invoke-direct {v0, p0}, Lcom/join/mgps/ad/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/join/mgps/ad/a;->k:Lcom/join/mgps/ad/a;

    .line 3
    :cond_0
    sget-object p0, Lcom/join/mgps/ad/a;->k:Lcom/join/mgps/ad/a;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/ad/a;->j:Lcom/join/mgps/ad/f;

    return-void
.end method

.method public f(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/f;)V
    .locals 1

    .line 1
    iput-object p4, p0, Lcom/join/mgps/ad/a;->j:Lcom/join/mgps/ad/f;

    const/4 p4, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    :goto_0
    iput p1, p0, Lcom/join/mgps/ad/a;->h:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/ad/a;->i:Z

    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ad/a;->i:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/ad/a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/m;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/ad/c;->p(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/e;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/c;->p(Landroid/app/Activity;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "please call method load before show"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
