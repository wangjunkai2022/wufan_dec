.class Lcom/papa91/arc/MenuFrameActivity$5;
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

.field final synthetic val$i:I

.field final synthetic val$id:I

.field final synthetic val$slot:Lcom/papa91/arc/bean/Slot;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;IILcom/papa91/arc/bean/Slot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$id:I

    iput p3, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$i:I

    iput-object p4, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$id:I

    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-virtual {p1}, Lcom/papa91/arc/MenuFrameActivity;->notifySlotChanged()V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->delSlot(I)V

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->save:I

    if-ne p1, v0, :cond_2

    .line 7
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/g;->h(Landroid/net/Uri;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->saveSlot(I)V

    goto :goto_0

    .line 13
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->load:I

    if-ne p1, v0, :cond_3

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-virtual {p1}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 15
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/Slot;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->loadState(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
