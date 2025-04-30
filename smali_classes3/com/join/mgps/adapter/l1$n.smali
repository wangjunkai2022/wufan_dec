.class Lcom/join/mgps/adapter/l1$n;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Lcom/join/mgps/customview/ExpandLayout$b;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$n;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$n;->a:Lcom/join/mgps/adapter/l1$n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$n;->a:Lcom/join/mgps/adapter/l1$n1;

    iget-object v1, v0, Lcom/join/mgps/adapter/l1$n1;->d:Ll1/g;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0}, Ll1/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
