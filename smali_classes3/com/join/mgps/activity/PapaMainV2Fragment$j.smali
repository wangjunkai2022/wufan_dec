.class Lcom/join/mgps/activity/PapaMainV2Fragment$j;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/h4$l1;


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
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$j;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$j;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "20503"

    goto :goto_0

    :cond_1
    const-string v0, "20502"

    goto :goto_0

    :cond_2
    const-string v0, "20501"

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$j;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v1, p1, p2, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->f0(Lcom/join/mgps/activity/PapaMainV2Fragment;ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public c(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    return-void
.end method
