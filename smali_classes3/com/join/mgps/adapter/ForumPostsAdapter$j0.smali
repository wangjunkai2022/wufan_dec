.class public Lcom/join/mgps/adapter/ForumPostsAdapter$j0;
.super Landroid/widget/BaseAdapter;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->a:Landroid/content/Context;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->c:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->c:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->d:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->a:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c01e9

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090f20

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 6
    :goto_0
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-object p3

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendLabelTag;

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$b;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0$a;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$j0;Lcom/join/mgps/dto/RecommendLabelTag;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p3
.end method
