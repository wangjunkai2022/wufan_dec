.class Lcom/papa91/activity/EmuBaseActivity$33;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->onAutoSaveClick()V
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
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    if-eqz v0, :cond_0

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->showSlots()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "showAutosave"

    .line 3
    invoke-static {v1, v0}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
