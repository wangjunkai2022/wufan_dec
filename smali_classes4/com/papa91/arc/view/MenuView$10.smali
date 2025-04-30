.class Lcom/papa91/arc/view/MenuView$10;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->startTimer(J)V
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
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$10;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$10;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-boolean v1, v0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    if-nez v1, :cond_0

    .line 2
    iget v1, v0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 3
    :cond_0
    iget v1, v0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/MenuView;->updateTime(I)V

    return-void
.end method
