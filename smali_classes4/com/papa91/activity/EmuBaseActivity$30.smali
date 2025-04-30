.class Lcom/papa91/activity/EmuBaseActivity$30;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->pauseGame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pause:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/activity/EmuBaseActivity$30;->val$pause:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$30;->val$pause:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->pause()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->resume()V

    :cond_1
    :goto_0
    return-void
.end method
