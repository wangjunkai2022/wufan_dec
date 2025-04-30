.class Lcom/join/mgps/activity/PapaMainV2Fragment$i;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$i;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadMore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$i;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->a0(Lcom/join/mgps/activity/PapaMainV2Fragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$i;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->d0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$i;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->d0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$i;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->X(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$i;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->a0(Lcom/join/mgps/activity/PapaMainV2Fragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
