.class Lcom/join/mgps/activity/MGMainActivity_$k1;
.super Ljava/lang/Object;
.source "MGMainActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity_;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapp/mgsim/arena/ArenaResponse;

.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_$k1;->b:Lcom/join/mgps/activity/MGMainActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MGMainActivity_$k1;->a:Lapp/mgsim/arena/ArenaResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_$k1;->b:Lcom/join/mgps/activity/MGMainActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity_$k1;->a:Lapp/mgsim/arena/ArenaResponse;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity_;->E1(Lcom/join/mgps/activity/MGMainActivity_;Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method
