.class Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;
.super Ljava/lang/Object;
.source "UnzipFailedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

.field final synthetic val$filepath:Lcom/join/mgps/dto/Filepath;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/Filepath;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->val$filepath:Lcom/join/mgps/dto/Filepath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->val$filepath:Lcom/join/mgps/dto/Filepath;

    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->access$000(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/lang/String;)V

    return-void
.end method
