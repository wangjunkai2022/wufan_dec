.class Lcom/join/mgps/activity/f2$h;
.super Ljava/lang/Object;
.source "PapaMainFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->Q(Lcom/join/mgps/activity/f2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    const-string v1, "m1"

    invoke-static {v0, v1}, Lcom/join/mgps/activity/f2;->V(Lcom/join/mgps/activity/f2;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/f2;->X(Lcom/join/mgps/activity/f2;I)I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/f2;->Z(Lcom/join/mgps/activity/f2;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->U(Lcom/join/mgps/activity/f2;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v2}, Lcom/join/mgps/activity/f2;->W(Lcom/join/mgps/activity/f2;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/f2;->p0()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/f2$h;->a:Lcom/join/mgps/activity/f2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/f2;->k0()V

    :cond_0
    return-void
.end method
