.class Lcom/join/mgps/fragment/p3$a;
.super Ljava/lang/Object;
.source "NewArenaMainFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p3;->i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/fragment/p3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p3$a;->c:Lcom/join/mgps/fragment/p3;

    iput-object p2, p0, Lcom/join/mgps/fragment/p3$a;->a:Lcom/papa91/battle/protocol/GameRoom;

    iput-object p3, p0, Lcom/join/mgps/fragment/p3$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p3$a;->c:Lcom/join/mgps/fragment/p3;

    iget-object v1, p0, Lcom/join/mgps/fragment/p3$a;->a:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v2, p0, Lcom/join/mgps/fragment/p3$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/p3;->Z0(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-void
.end method
