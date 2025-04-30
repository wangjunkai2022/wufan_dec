.class public Lcom/join/mgps/adapter/t1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameInfoAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/t1$f;,
        Lcom/join/mgps/adapter/t1$d;,
        Lcom/join/mgps/adapter/t1$c;,
        Lcom/join/mgps/adapter/t1$e;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/join/mgps/adapter/t1$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t1;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/t1;->c:Landroid/content/Context;

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/adapter/t1;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t1;)Lcom/join/mgps/adapter/t1$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t1;->d:Lcom/join/mgps/adapter/t1$e;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t1;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(ILcom/join/mgps/adapter/t1$c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->a(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->b(Lcom/join/mgps/adapter/t1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getPic_remote_vertical()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    const v4, 0x7f0801c0

    invoke-static {v1, v4, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getRoom_count()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->c(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->d(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->a(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->c(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->d(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->a(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->c(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getRoom_count()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$c;->e(Lcom/join/mgps/adapter/t1$c;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/adapter/t1$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/t1$a;-><init>(Lcom/join/mgps/adapter/t1;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(ILcom/join/mgps/adapter/t1$d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$d;->a(Lcom/join/mgps/adapter/t1$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getPic_cover()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f0711ec

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$d;->b(Lcom/join/mgps/adapter/t1$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getPic_cover()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/adapter/t1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$d;->b(Lcom/join/mgps/adapter/t1$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_ico()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/adapter/t1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$d;->c(Lcom/join/mgps/adapter/t1$d;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getRoom_count()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {p2}, Lcom/join/mgps/adapter/t1$d;->d(Lcom/join/mgps/adapter/t1$d;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/adapter/t1$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/t1$b;-><init>(Lcom/join/mgps/adapter/t1;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t1;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f(Lcom/join/mgps/adapter/t1$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t1;->d:Lcom/join/mgps/adapter/t1$e;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/adapter/t1;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/t1;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/join/mgps/adapter/t1$c;

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/t1;->c(ILcom/join/mgps/adapter/t1$c;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lcom/join/mgps/adapter/t1$d;

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/t1;->d(ILcom/join/mgps/adapter/t1$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/t1;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c030e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/t1$c;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t1$c;-><init>(Lcom/join/mgps/adapter/t1;Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/t1;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c030f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/adapter/t1$d;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t1$d;-><init>(Lcom/join/mgps/adapter/t1;Landroid/view/View;)V

    return-object p2
.end method
