.class Lcom/join/mgps/adapter/l1$q0;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/l1$m1;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$m1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q0;->c:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    iput p3, p0, Lcom/join/mgps/adapter/l1$q0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/l1$q0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/l1$q0$a;-><init>(Lcom/join/mgps/adapter/l1$q0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
