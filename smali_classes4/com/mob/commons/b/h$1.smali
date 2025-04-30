.class Lcom/mob/commons/b/h$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b/h;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b/h;


# direct methods
.method constructor <init>(Lcom/mob/commons/b/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/b/h$1;->a:Lcom/mob/commons/b/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    const-string v0, "0168ecPei3dkeg6h]efecZdRdefhdifkeddfff"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "017\'ec0ei^dkegHh@ghdfdgdjdfffEiBekdefgGd"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_4

    const-string p1, "0100ec0ei9dkeg_hHeidi>ei"

    .line 4
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "0041dc.hXdeEh"

    .line 5
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/mob/commons/b/h$1;->a:Lcom/mob/commons/b/h;

    invoke-static {p1}, Lcom/mob/commons/b/h;->a(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/h$a;->a(J)V

    goto :goto_0

    :cond_1
    const-string p2, "004+ecdfde(h"

    .line 7
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/mob/commons/b/h$1;->a:Lcom/mob/commons/b/h;

    invoke-static {p1}, Lcom/mob/commons/b/h;->b(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/h$a;->a(J)V

    goto :goto_0

    :cond_2
    const-string p2, "004jWdfdeQh"

    .line 9
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/mob/commons/b/h$1;->a:Lcom/mob/commons/b/h;

    invoke-static {p1}, Lcom/mob/commons/b/h;->c(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/h$a;->a(J)V

    goto :goto_0

    :cond_3
    const-string p2, "004Udfdfde<h"

    .line 11
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/mob/commons/b/h$1;->a:Lcom/mob/commons/b/h;

    invoke-static {p1}, Lcom/mob/commons/b/h;->d(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/h$a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method
