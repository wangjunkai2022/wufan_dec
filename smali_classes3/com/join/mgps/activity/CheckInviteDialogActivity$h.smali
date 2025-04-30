.class Lcom/join/mgps/activity/CheckInviteDialogActivity$h;
.super Ljava/lang/Object;
.source "CheckInviteDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;->P0(Lapp/mgsim/arena/ArenaResponse;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$h;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$h;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
