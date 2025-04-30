.class Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;
.super Ljava/lang/Object;
.source "CheckInviteDialogActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity_;->V0(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic b:Lcom/join/mgps/activity/CheckInviteDialogActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;->b:Lcom/join/mgps/activity/CheckInviteDialogActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;->a:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;->b:Lcom/join/mgps/activity/CheckInviteDialogActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;->a:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->Y0(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method
