.class public Lcom/join/mgps/adapter/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CloudArchiveTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/f$b;,
        Lcom/join/mgps/adapter/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/join/mgps/adapter/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/f;->d:Lcom/join/mgps/adapter/f$b;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/f;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/f;->a:Ljava/util/List;

    .line 6
    iput p2, p0, Lcom/join/mgps/adapter/f;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/adapter/f;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/f;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f;->b(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic b(ILandroid/view/View;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/f;->d:Lcom/join/mgps/adapter/f$b;

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/f$b;->onSelected(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/f;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setCount(I)V

    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/f;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setSelected(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public c(Lcom/join/mgps/adapter/f$a;I)V
    .locals 3
    .param p1    # Lcom/join/mgps/adapter/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/adapter/f$a;->a(Lcom/join/mgps/adapter/f$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/f$a;->a(Lcom/join/mgps/adapter/f$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    invoke-static {p1}, Lcom/join/mgps/adapter/f$a;->b(Lcom/join/mgps/adapter/f$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/f$a;->b(Lcom/join/mgps/adapter/f$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/e;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e;-><init>(Lcom/join/mgps/adapter/f;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/f$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/adapter/f;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/f$a;

    iget-object v1, p0, Lcom/join/mgps/adapter/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0302

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/f$a;-><init>(Lcom/join/mgps/adapter/f;Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/f$a;

    iget-object v1, p0, Lcom/join/mgps/adapter/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02f1

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/f$a;-><init>(Lcom/join/mgps/adapter/f;Landroid/view/View;)V

    return-object p2
.end method

.method public e(Lcom/join/mgps/adapter/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f;->d:Lcom/join/mgps/adapter/f$b;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f;->c(Lcom/join/mgps/adapter/f$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f;->d(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/f$a;

    move-result-object p1

    return-object p1
.end method
