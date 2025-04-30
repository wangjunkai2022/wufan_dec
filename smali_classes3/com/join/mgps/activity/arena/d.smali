.class public final synthetic Lcom/join/mgps/activity/arena/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/arena/d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
