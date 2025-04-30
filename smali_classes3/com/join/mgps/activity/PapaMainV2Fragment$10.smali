.class Lcom/join/mgps/activity/PapaMainV2Fragment$10;
.super Ljava/util/ArrayList;
.source "PapaMainV2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV2Fragment;->M1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field final synthetic b:Lcom/join/mgps/activity/PapaMainV2Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$10;->b:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iput-object p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$10;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
