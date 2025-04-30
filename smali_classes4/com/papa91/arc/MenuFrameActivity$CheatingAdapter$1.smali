.class Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;
.super Ljava/lang/Object;
.source "MenuFrameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    iput-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->deleteEditCheat(I)V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    invoke-static {p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->access$000(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    invoke-virtual {p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->showModifyCheatDialog(I)V

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 10
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
