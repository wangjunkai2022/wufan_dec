.class Lcom/join/mgps/activity/CheckInviteDialogActivity$e;
.super Ljava/lang/Object;
.source "CheckInviteDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;->V0(Lcom/papa91/battle/protocol/GameRoom;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$e;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$e;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
