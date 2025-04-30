.class Lcom/join/mgps/fragment/roomlist/d$a;
.super Ljava/lang/Object;
.source "StandardEliteRoomFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/d;->I0(Lcom/papa91/battle/protocol/SimpleRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/SimpleRoom;

.field final synthetic b:Lcom/join/mgps/fragment/roomlist/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/d;Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/d$a;->b:Lcom/join/mgps/fragment/roomlist/d;

    iput-object p2, p0, Lcom/join/mgps/fragment/roomlist/d$a;->a:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d$a;->b:Lcom/join/mgps/fragment/roomlist/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/d$a;->a:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/roomlist/d;->b1(Lcom/join/mgps/fragment/roomlist/d;Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-void
.end method
