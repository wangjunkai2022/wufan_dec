.class Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot$MyClickListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$000(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$100(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;->oneClick()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$000(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$100(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;->doubleClick()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$200(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$002(Lcom/papa91/view/AutoSaveSlot$MyClickListener;I)I

    return-void
.end method
