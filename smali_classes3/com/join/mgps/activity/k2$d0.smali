.class Lcom/join/mgps/activity/k2$d0;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/k2;->l0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field final synthetic b:Lcom/join/mgps/activity/k2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/k2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/k2$d0;->b:Lcom/join/mgps/activity/k2;

    iput-object p2, p0, Lcom/join/mgps/activity/k2$d0;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k2$d0;->b:Lcom/join/mgps/activity/k2;

    iget-object v1, p0, Lcom/join/mgps/activity/k2$d0;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/k2;->g2(Lcom/join/mgps/activity/k2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method
