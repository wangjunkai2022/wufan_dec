.class Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;
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

.field final synthetic val$paths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->val$paths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->val$paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/Filepath;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/join/mgps/pref/h;->V(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_$IntentBuilder_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
