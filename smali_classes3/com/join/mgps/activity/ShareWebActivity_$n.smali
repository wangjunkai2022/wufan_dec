.class Lcom/join/mgps/activity/ShareWebActivity_$n;
.super Ljava/lang/Object;
.source "ShareWebActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity_;->e2(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_$n;->b:Lcom/join/mgps/activity/ShareWebActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity_$n;->a:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_$n;->b:Lcom/join/mgps/activity/ShareWebActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity_$n;->a:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity_;->w2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method
