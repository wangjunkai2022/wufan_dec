.class Lcom/join/mgps/activity/w1$e;
.super Ljava/lang/Object;
.source "MyGamePapaFragment.java"

# interfaces
.implements Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/w1;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/w1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p1}, Lcom/join/mgps/activity/w1;->e0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p1}, Lcom/join/mgps/activity/w1;->e0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p1}, Lcom/join/mgps/activity/w1;->d0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p1}, Lcom/join/mgps/activity/w1;->f0(Lcom/join/mgps/activity/w1;)I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {v0}, Lcom/join/mgps/activity/w1;->d0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p1}, Lcom/join/mgps/activity/w1;->d0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p1}, Lcom/join/mgps/activity/w1;->d0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/w1;->g0(Lcom/join/mgps/activity/w1;I)I

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/w1$e;->a:Lcom/join/mgps/activity/w1;

    invoke-virtual {p1}, Lcom/join/mgps/activity/w1;->u0()V

    :cond_2
    return-void
.end method
