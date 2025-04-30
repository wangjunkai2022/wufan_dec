.class Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_$2;
.super Ljava/lang/Object;
.source "InstallAppFirstNoticeDialog_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog_;

    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->startButn()V

    return-void
.end method
