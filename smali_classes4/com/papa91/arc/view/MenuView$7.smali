.class Lcom/papa91/arc/view/MenuView$7;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->showReloadPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$7;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$7;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$7;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$7;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->reload()V

    :cond_1
    return-void
.end method
