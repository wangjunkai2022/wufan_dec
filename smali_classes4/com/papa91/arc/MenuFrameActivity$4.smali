.class Lcom/papa91/arc/MenuFrameActivity$4;
.super Ljava/lang/Object;
.source "MenuFrameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$4;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$4;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
