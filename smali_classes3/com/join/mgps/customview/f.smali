.class public final Lcom/join/mgps/customview/f;
.super Lcom/join/mgps/customview/e;
.source "ForumExtFuncPopWindow_.java"


# instance fields
.field private y:Landroid/content/Context;

.field private z:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/e;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/f;->y:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/f;->B()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/e;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/f;->y:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/f;->z:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/f;->B()V

    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/lang/Object;)Lcom/join/mgps/customview/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/f;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-object v0
.end method

.method private B()V
    .locals 0

    return-void
.end method

.method static synthetic s(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/e;->j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method static synthetic t(Lcom/join/mgps/customview/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/customview/f;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/customview/e;->i(IZ)V

    return-void
.end method

.method static synthetic v(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->e()V

    return-void
.end method

.method static synthetic w(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->d()V

    return-void
.end method

.method static synthetic x(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->f()V

    return-void
.end method

.method static synthetic y(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->c()V

    return-void
.end method

.method public static z(Landroid/content/Context;)Lcom/join/mgps/customview/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public C(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/f;->y:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/f;->B()V

    return-void
.end method

.method c()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$g;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$e;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$d;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$f;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method i(IZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/customview/f$c;-><init>(Lcom/join/mgps/customview/f;IZ)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/f$a;-><init>(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/f$b;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
