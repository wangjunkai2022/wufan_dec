.class Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;
.super Ljava/lang/Object;
.source "MenuFrameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

.field final synthetic val$i:I

.field final synthetic val$slot:Lcom/papa91/arc/bean/Slot;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;Lcom/papa91/arc/bean/Slot;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$slot:Lcom/papa91/arc/bean/Slot;

    iput p3, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$slot:Lcom/papa91/arc/bean/Slot;

    iget v2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$i:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/papa91/arc/MenuFrameActivity;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;I)V

    return-void
.end method
