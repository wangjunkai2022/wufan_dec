.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;
.super Ljava/lang/Object;
.source "GameDetialGiftMoreActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->X0(Lcom/join/mgps/dto/GamedetialMoreGiftData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GamedetialMoreGiftData;

.field final synthetic b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GamedetialMoreGiftData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;->a:Lcom/join/mgps/dto/GamedetialMoreGiftData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;->a:Lcom/join/mgps/dto/GamedetialMoreGiftData;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->j1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GamedetialMoreGiftData;)V

    return-void
.end method
