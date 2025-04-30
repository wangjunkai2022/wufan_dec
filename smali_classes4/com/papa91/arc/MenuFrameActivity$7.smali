.class Lcom/papa91/arc/MenuFrameActivity$7;
.super Ljava/lang/Object;
.source "MenuFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->saveSlot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$7;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$7;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-static {v0}, Lcom/papa91/arc/MenuFrameActivity;->access$100(Lcom/papa91/arc/MenuFrameActivity;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$7;->val$id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->saveState(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$7;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-virtual {v0}, Lcom/papa91/arc/MenuFrameActivity;->notifySlotChanged()V

    return-void
.end method
