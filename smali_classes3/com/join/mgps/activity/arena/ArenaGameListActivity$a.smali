.class Lcom/join/mgps/activity/arena/ArenaGameListActivity$a;
.super Ljava/lang/Object;
.source "ArenaGameListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/ArenaGameListActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/ArenaGameListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$a;->a:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$a;->a:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity$a;->a:Lcom/join/mgps/activity/arena/ArenaGameListActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->D0(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->a(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->b(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
