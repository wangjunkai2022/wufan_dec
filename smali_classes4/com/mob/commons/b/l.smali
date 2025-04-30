.class public Lcom/mob/commons/b/l;
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

    const-string v1, "035(cfdbFk.dkefce^kWefcbcjeedkcecj6g4cgdbcd;gMdk$ghiBcdcf4h_cdGg0ef;h1cg3iOcdcf(h"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "051McfdbXkWdkefce+k6efcbcjeedkcecjEg)cgdbcdXg(dkLghi1cdcf=hTcd6gSef%h6cgLi0cdcf0hSdkeh9hiCcdcf)h0dfQgZdgQhHcg+iGcdcf\'h"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "052EcfdbYkWdkefceLk0efcbcjeedkcecjQg cgdbcd0gZdkYghiUcdcfVh[cd.g=efWhHcg1i\'cdcf-h1dkdfeh.hi=cdcfPh.df]gAdg\'h_cg<iAcdcfGh"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    new-instance v3, Lcom/mob/commons/b/g$c;

    invoke-direct {v3}, Lcom/mob/commons/b/g$c;-><init>()V

    .line 6
    iput-boolean v2, v3, Lcom/mob/commons/b/g$c;->a:Z

    .line 7
    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    :cond_1
    const-string v2, "0040dbcecd5g"

    .line 9
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "052[cfdb3k2dkefce*k(efcbcjeedkcecjMgMcgdbcd6g)dkPghiGcdcf;hUcd>g[efUhDcgGi cdcf]h\'dkdfeh@hi1cdcfRh*df4g-dgIhScg7iHcdcfPh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v1, [Ljava/lang/String;

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    const-string v2, "004iJcecd2g"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "052(cfdb>k+dkefceIk2efcbcjeedkcecjQgJcgdbcd$gYdk]ghiEcdcfHh]cd1g(efAhXcg.i$cdcfLhRdkdfeh:hiLcdcfKh.dfZg0dgTh0cgBiDcdcfPh"

    .line 11
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    aput-object v2, v10, v1

    move-object v5, p0

    move-object v7, p1

    .line 12
    invoke-virtual/range {v5 .. v10}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "0045cececd@g"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "052Dcfdb+k\'dkefce]kUefcbcjeedkcecjZgPcgdbcd+gAdk<ghiYcdcfPh$cd_g>ef5hDcg@iPcdcfFh[dkdfehXhi(cdcfQhEdf5g?dgBh0cg\'i<cdcfBh"

    .line 14
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    aput-object v0, v9, v1

    move-object v4, p0

    move-object v6, p1

    .line 15
    invoke-virtual/range {v4 .. v9}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v3, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    return-object v3
.end method
