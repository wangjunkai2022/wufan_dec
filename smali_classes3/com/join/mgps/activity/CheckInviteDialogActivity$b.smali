.class Lcom/join/mgps/activity/CheckInviteDialogActivity$b;
.super Ljava/lang/Object;
.source "CheckInviteDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$b;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$b;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H0(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method
