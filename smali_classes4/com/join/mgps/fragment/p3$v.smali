.class Lcom/join/mgps/fragment/p3$v;
.super Ljava/lang/Object;
.source "NewArenaMainFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p3;->t0(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic b:Lcom/join/mgps/fragment/p3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p3$v;->b:Lcom/join/mgps/fragment/p3;

    iput-object p2, p0, Lcom/join/mgps/fragment/p3$v;->a:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p3$v;->b:Lcom/join/mgps/fragment/p3;

    iget-object v1, p0, Lcom/join/mgps/fragment/p3$v;->a:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/p3;->Y0(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method
