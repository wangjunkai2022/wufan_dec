.class public Lcom/mob/commons/b/i;
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
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "023NfigePn]gniefefggnMjklRfgfiGkIfg]jJhi]k+fjTl9fgfi4k"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0395figeZn>gniefefggn[jklJfgfiSk]fg-j-hi!k%fjQl2fgfiNkJgnhkLklFfgfiUk4fgXj5gj kCfjJlBfgfiEk"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 10

    const-string v0, "042^fige7nMgniefefggnTjklSfgfiZkAfg^j)hi)k fj\'lDfgfiSkAgngihkSkl7fgfiPk7fg9j4gifm<fk8fjhjfhfiMk"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v7, Lcom/mob/commons/b/g$c;

    invoke-direct {v7}, Lcom/mob/commons/b/g$c;-><init>()V

    const-string v1, "004,gefhfg9j"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    const-string v1, "004l%fhfgKj"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    aput-object v1, v6, v8

    const/4 v5, 0x4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    const-string v1, "004Jfe\'jLfgNj"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/g$c;->d:Ljava/lang/String;

    const-string v1, "004+fhfhfgEj"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    aput-object v1, v6, v8

    const/4 v5, 0x5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    const-string v1, "009%hifePgg4gefj0fkj"

    .line 9
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, v7, Lcom/mob/commons/b/g$c;->a:Z

    return-object v7
.end method

.method protected d()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method
