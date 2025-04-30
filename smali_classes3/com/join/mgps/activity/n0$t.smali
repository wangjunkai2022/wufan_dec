.class Lcom/join/mgps/activity/n0$t;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GamedetialModleFourFragemnt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/n0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/n0$t;->a:Lcom/join/mgps/activity/n0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/join/mgps/activity/n0$t;->a:Lcom/join/mgps/activity/n0;

    iget-object p2, p2, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p2, 0x7f080690

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    new-instance p2, Lcom/join/mgps/activity/n0$s;

    iget-object v0, p0, Lcom/join/mgps/activity/n0$t;->a:Lcom/join/mgps/activity/n0;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/n0$s;-><init>(Lcom/join/mgps/activity/n0;Landroid/view/View;)V

    return-object p2
.end method
