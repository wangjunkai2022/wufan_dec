.class Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;
.super Landroid/os/Handler;
.source "WufunGameDownFirstNotPermissDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    iget-boolean v0, p1, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->isbackground:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->access$000(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->access$100(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    iget-object p1, p1, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
