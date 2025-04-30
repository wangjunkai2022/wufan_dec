.class public Lcom/mob/commons/b/o;
.super Lcom/mob/commons/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "012)dgec;lNelWlh@de1hWel0lZfgdf"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "033\'dgec?l9el6lh;de*h?elRl*fgdfelfg\'i<dhPjBdedg1i$elgifgdfhjedeh>i>dhMjWdedgLi"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "032_dgecNl<elfcdcdkelWl1fgdfeldfdgAd@deecdkelfg5d_dfdhPd_elfg%i-dh9jGdedg%i"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "0253dgec,lJelfcdcdkelNlZfgdfel_eAdfdhdf8l[el8e5djffdkdf$li"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "026EdgecJl,elfcdcdkel[l6fgdfelZe^dfdhdf_l:eldhdcdkdedkfg^id"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "012Udgec_lEel5lh)de$hZelQl1fgdf"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/b/o;->j()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "012Odgec]l\'el3lhCde%hQel-lZfgdf"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "033,dgec lAelNlhYde6hMelYl!fgdfelfg]i+dhFjAdedgKi6elgifgdfeg?h@eh_i)dh-jNdedg5i"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "033Ndgec(l=elfcdcdkelBl7fgdfeldfdgPd=deecdkelfcdedkOhd4ecelfgMi,dh+jYdedg7i"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "025YdgecPl\'elfcdcdkel4lKfgdfel@eLdfdhdf_l?el,ePdjffdkdf<li"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 8

    .line 6
    new-instance v0, Lcom/mob/commons/b/g$c;

    invoke-direct {v0}, Lcom/mob/commons/b/g$c;-><init>()V

    const-string v1, "004ZecdfdeAh"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "026$dgecBl:elfcdcdkeleddefcelgifgdfegSh]egdkPdi$dhfhdfdg4i"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    const/4 v6, 0x3

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lcom/mob/commons/b/o;->k()Z

    move-result p1

    iput-boolean p1, v0, Lcom/mob/commons/b/g$c;->a:Z

    return-object v0
.end method
