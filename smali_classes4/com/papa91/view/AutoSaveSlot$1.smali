.class Lcom/papa91/view/AutoSaveSlot$1;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Lcom/papa91/view/CountDownView$OnCountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSaveSlot;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$1;->this$0:Lcom/papa91/view/AutoSaveSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountFinished()V
    .locals 0

    return-void
.end method

.method public onSuccessFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$1;->this$0:Lcom/papa91/view/AutoSaveSlot;

    iget-object v0, v0, Lcom/papa91/view/AutoSaveSlot;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/view/AutoSaveSlot$1$1;

    invoke-direct {v1, p0}, Lcom/papa91/view/AutoSaveSlot$1$1;-><init>(Lcom/papa91/view/AutoSaveSlot$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
