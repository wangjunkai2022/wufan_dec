.class Lcom/papa91/view/AutoSaveSlot$2;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;


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
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$2;->this$0:Lcom/papa91/view/AutoSaveSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doubleClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$2;->this$0:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->quickLoadSlot()V

    return-void
.end method

.method public oneClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$2;->this$0:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->showSlots()V

    return-void
.end method
