.class Lcom/join/mgps/adapter/r1$c;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$c;->a:Lcom/join/mgps/adapter/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$c;->a:Lcom/join/mgps/adapter/r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1;->f:Lcom/join/mgps/adapter/r1$c1;

    invoke-interface {p1}, Lcom/join/mgps/adapter/r1$c1;->k()V

    return-void
.end method
