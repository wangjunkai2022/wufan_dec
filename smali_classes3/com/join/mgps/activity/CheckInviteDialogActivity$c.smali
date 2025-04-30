.class Lcom/join/mgps/activity/CheckInviteDialogActivity$c;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "CheckInviteDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CheckInviteDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->E0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    return-void
.end method
