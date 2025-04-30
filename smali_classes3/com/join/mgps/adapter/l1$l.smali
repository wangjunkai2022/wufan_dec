.class Lcom/join/mgps/adapter/l1$l;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/l1$n1;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$n1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$l;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$l;->a:Lcom/join/mgps/adapter/l1$n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$l;->a:Lcom/join/mgps/adapter/l1$n1;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$n1;->d:Ll1/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ll1/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
