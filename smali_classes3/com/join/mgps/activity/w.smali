.class public final synthetic Lcom/join/mgps/activity/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/FriendActivity;

.field public final synthetic b:Lapp/mgsim/arena/ArenaRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FriendActivity;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/w;->a:Lcom/join/mgps/activity/FriendActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/w;->b:Lapp/mgsim/arena/ArenaRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/w;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/w;->b:Lapp/mgsim/arena/ArenaRequest;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/FriendActivity;->N0(Lcom/join/mgps/activity/FriendActivity;Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method
