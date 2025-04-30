.class Lcom/join/mgps/activity/GameDetailActivity_$g;
.super Ljava/lang/Object;
.source "GameDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity_;->n1(Lcom/join/mgps/dto/ForumResponseGame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumResponseGame;

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity_$g;->b:Lcom/join/mgps/activity/GameDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity_$g;->a:Lcom/join/mgps/dto/ForumResponseGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_$g;->b:Lcom/join/mgps/activity/GameDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity_$g;->a:Lcom/join/mgps/dto/ForumResponseGame;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetailActivity_;->M1(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/dto/ForumResponseGame;)V

    return-void
.end method
