.class Lcom/papa91/arc/adapter/SimpleBaseAdapter$1;
.super Ljava/lang/Object;
.source "SimpleBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/adapter/SimpleBaseAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/adapter/SimpleBaseAdapter$1;->this$0:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    iput p2, p0, Lcom/papa91/arc/adapter/SimpleBaseAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/adapter/SimpleBaseAdapter$1;->this$0:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-static {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->access$000(Lcom/papa91/arc/adapter/SimpleBaseAdapter;)Lcom/papa91/arc/interfaces/IOnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/adapter/SimpleBaseAdapter$1;->this$0:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-static {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->access$000(Lcom/papa91/arc/adapter/SimpleBaseAdapter;)Lcom/papa91/arc/interfaces/IOnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/papa91/arc/adapter/SimpleBaseAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/papa91/arc/interfaces/IOnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
