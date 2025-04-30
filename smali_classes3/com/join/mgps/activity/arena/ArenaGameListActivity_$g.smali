.class Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;
.super Ljava/lang/Object;
.source "ArenaGameListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->I0(Lcom/join/mgps/dto/ResultResMainBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ResultResMainBean;

.field final synthetic b:Lcom/join/mgps/activity/arena/ArenaGameListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;->a:Lcom/join/mgps/dto/ResultResMainBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;->b:Lcom/join/mgps/activity/arena/ArenaGameListActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;->a:Lcom/join/mgps/dto/ResultResMainBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->Q0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Lcom/join/mgps/dto/ResultResMainBean;)V

    return-void
.end method
