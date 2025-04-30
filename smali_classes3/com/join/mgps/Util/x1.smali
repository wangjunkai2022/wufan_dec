.class public final Lcom/join/mgps/Util/x1;
.super Lcom/join/mgps/Util/w1;
.source "StartGame_.java"


# static fields
.field private static d:Lcom/join/mgps/Util/x1;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/w1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/x1;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/Util/w1;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/x1;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/Util/x1;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/Util/x1;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/Util/w1;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/Util/x1;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/Util/w1;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/join/mgps/Util/x1;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/x1;->d:Lcom/join/mgps/Util/x1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/x1;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/x1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/mgps/Util/x1;->d:Lcom/join/mgps/Util/x1;

    .line 4
    invoke-direct {v1}, Lcom/join/mgps/Util/x1;->h()V

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    .line 6
    :cond_0
    sget-object p0, Lcom/join/mgps/Util/x1;->d:Lcom/join/mgps/Util/x1;

    return-object p0
.end method

.method private h()V
    .locals 0

    return-void
.end method


# virtual methods
.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/Util/x1$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/Util/x1$a;-><init>(Lcom/join/mgps/Util/x1;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/Util/x1$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/Util/x1$b;-><init>(Lcom/join/mgps/Util/x1;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
