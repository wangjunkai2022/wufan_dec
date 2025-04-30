.class public Lcom/mob/commons/b/f;
.super Lcom/mob/commons/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "036GbecaYj$cjbacaPf\'bcdecjcaOcg5biGfgh%bcbe?g@cjdjefebcdcedgcfbbcfebecedceeeeb"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "015Mbeca0j\'cjRaCbabddbCgZbccj4a[dbbc f"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 8

    const-string v0, "0530becaLjUcjbacaZfTbcdecjca^cg,biIfgh3bcbe[gOcjbdbc?f3cbcjdjLcgDbidgQghHbcbe(gUceSfg8biDb3bcdfbcDgWbfcfUgVbfJhHbcbeUg"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v7, Lcom/mob/commons/b/g$c;

    invoke-direct {v7}, Lcom/mob/commons/b/g$c;-><init>()V

    const-string v1, "004JcabdbcYf"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    const-string v1, "024@bcdecibcBj(bcDb!ch7f2cgbfbdbebhbcbiddebbibddacbXgf"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 7
    iget-object p1, v7, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v7, Lcom/mob/commons/b/g$c;->a:Z

    return-object v7
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->i()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
