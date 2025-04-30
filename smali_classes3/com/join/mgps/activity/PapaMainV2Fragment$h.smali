.class Lcom/join/mgps/activity/PapaMainV2Fragment$h;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV2Fragment;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV2Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->R(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    const-string v1, "m1"

    invoke-static {v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->Z(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->b0(Lcom/join/mgps/activity/PapaMainV2Fragment;I)I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->c0(Lcom/join/mgps/activity/PapaMainV2Fragment;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->e0(Lcom/join/mgps/activity/PapaMainV2Fragment;Z)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->X(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->a0(Lcom/join/mgps/activity/PapaMainV2Fragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0()V

    :cond_0
    return-void
.end method
