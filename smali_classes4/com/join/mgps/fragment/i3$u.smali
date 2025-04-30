.class public Lcom/join/mgps/fragment/i3$u;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyArchiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/i3$u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/fragment/i3$u$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field final synthetic c:Lcom/join/mgps/fragment/i3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/i3;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/fragment/i3$u;->b:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/i3$u;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/fragment/i3$u$b;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/fragment/i3$u$a;

    invoke-direct {v4, p0, p2, p1}, Lcom/join/mgps/fragment/i3$u$a;-><init>(Lcom/join/mgps/fragment/i3$u;ILcom/join/mgps/fragment/i3$u$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-boolean v4, v0, Lcom/join/mgps/fragment/i3;->B:Z

    if-eqz v4, :cond_5

    .line 9
    iget v2, v0, Lcom/join/mgps/fragment/i3;->t:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne v2, v4, :cond_3

    .line 10
    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 11
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-ne v2, v1, :cond_6

    .line 15
    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_5
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/fragment/i3$u$b;->c:Lcom/join/mgps/customview/ClouldItemView;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ClouldItemView;->setCloudItemListener(Lcom/join/mgps/listener/c;)V

    .line 22
    iget-object v2, p1, Lcom/join/mgps/fragment/i3$u$b;->c:Lcom/join/mgps/customview/ClouldItemView;

    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v3, p1, Lcom/join/mgps/fragment/i3;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    iget-object v9, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget v5, v9, Lcom/join/mgps/fragment/i3;->t:I

    const/16 v6, 0x9

    iget-boolean v7, v9, Lcom/join/mgps/fragment/i3;->B:Z

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/customview/ClouldItemView;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/i3$u$b;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/i3$u;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c032e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/fragment/i3$u$b;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/fragment/i3$u$b;-><init>(Lcom/join/mgps/fragment/i3$u;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/fragment/i3$u$b;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/i3$u;->a(Lcom/join/mgps/fragment/i3$u$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/i3$u;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/i3$u$b;

    move-result-object p1

    return-object p1
.end method
