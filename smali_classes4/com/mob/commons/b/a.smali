.class public Lcom/mob/commons/b/a;
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
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "030Kdgec[l>eldffgdcfgel?lEfgdfeldfdg5d>deecdkelejgggggdehehddfiegfi"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "0295dgec]l%eldffgdcfgelFl<fgdfelehdc!ee4edDili(dkCdIdfdhdifiegfi"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "053WdgecMlXeldffgdcfgelFlOfgdfelehdc[ee@ed<ili[dk9d>dfdhdifiegfielehdc4ee@ed^ili7dkHd=dfdhdifiegfieh[iJdhSjMdedg4i"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 9

    .line 4
    new-instance v0, Lcom/mob/commons/b/g$c;

    invoke-direct {v0}, Lcom/mob/commons/b/g$c;-><init>()V

    const-string v1, "004@dc[h[deZh"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "047Hdgec.l(eldffgdcfgel$lXfgdfelehdcGee6ed+ili%dkSd(dfdhdifiegfielegfide.h\'ejde:hBedegdkCdi8dhfhdfdg2i"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    const/4 v6, 0x2

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->d:Ljava/lang/String;

    const-string v2, "004_ecdfdeTh"

    .line 6
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "047Rdgec5lMeldffgdcfgelUlFfgdfelehdc8eeOedAili!dk[dOdfdhdifiegfielegfideDh>ejdeGhJedegdk3di@dhfhdfdgVi"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/String;

    const/4 v7, 0x3

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    const-string v2, "004jKdfde h"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "0474dgec\'lZeldffgdcfgelCl9fgdfelehdc=eeNed9iliJdk_d(dfdhdifiegfielegfide^h=ejdePhFedegdkJdi+dhfhdfdgJi"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual/range {v3 .. v8}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    const-string v2, "0046dfdfde.h"

    .line 8
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "047Hdgec$lIeldffgdcfgelVlJfgdfelehdc[ee<edOiliQdk.dWdfdhdifiegfielegfide7h2ejde$hRedegdkHdiVdhfhdfdg_i"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/String;

    const/4 v7, 0x5

    invoke-virtual/range {v3 .. v8}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    const-string v2, "011Pdefgehdc]eeDecdhMdih"

    .line 9
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "047IdgecNlWeldffgdcfgel8lOfgdfelehdcZee,edMili0dk!dXdfdhdifiegfielegfide=h%ejde1h(edegdk)diQdhfhdfdg)i"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/mob/commons/b/g$c;->a:Z

    return-object v0
.end method
