.class Lcom/papa91/activity/EmuBaseActivity$35;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->loadRomCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    if-eqz v0, :cond_0

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->show()V

    .line 3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->start()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showJavaShortCut(Z)V

    return-void
.end method
