.class Lcom/join/mgps/activity/ForumMyActivity$k;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ForumMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumMyActivity$l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/activity/ForumMyActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumMyActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->b:Landroid/content/Context;

    return-void
.end method

.method private f(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumMyActivity$k$d;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$e;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumMyActivity$k$e;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/activity/ForumMyActivity$l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumMyActivity$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(I)Lcom/join/mgps/activity/ForumMyActivity$l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumMyActivity$l;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumMyActivity$l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumMyActivity$k$a;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$k$b;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/ForumMyActivity$j;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/activity/ForumMyActivity$j;

    iget-object p4, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p3, p4}, Lcom/join/mgps/activity/ForumMyActivity$j;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 3
    iget-object p4, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->b:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const p5, 0x7f0c040f

    const/4 v0, 0x0

    invoke-virtual {p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    const p5, 0x7f09050a

    .line 4
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p5, 0x7f09050d

    .line 5
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->b:Landroid/widget/TextView;

    const p5, 0x7f090506

    .line 6
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->c:Landroid/widget/TextView;

    const p5, 0x7f090309

    .line 7
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    const p5, 0x7f090110

    .line 8
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->e:Landroid/view/View;

    .line 9
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getChild(II)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_1

    return-object p4

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p5, :cond_3

    .line 12
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p5

    invoke-virtual {p5}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result p5

    const/4 v2, 0x1

    if-ne p5, v2, :cond_2

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommenGroup;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getIcon_src()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getName()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getDescription()Ljava/lang/String;

    move-result-object p5

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getToday_posts()I

    move-result v2

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getFid()I

    move-result p1

    invoke-direct {p0, p4, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->f(Landroid/view/View;I)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p5

    invoke-virtual {p5}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result p5

    const/4 v2, 0x2

    if-ne p5, v2, :cond_3

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_icon()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getDescription()Ljava/lang/String;

    move-result-object p5

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getToday_posts()I

    move-result v2

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result p1

    invoke-direct {p0, p4, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->i(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    move-object p2, v1

    move-object p5, p2

    const/4 v2, 0x0

    .line 26
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 27
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_4

    .line 29
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u4eca\u65e5\u66f4\u65b0\uff1a"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 30
    :cond_4
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    const-string p2, "\u4eca\u65e5\u66f4\u65b0\uff1a0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/join/mgps/activity/ForumMyActivity$m;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p4, Lcom/join/mgps/activity/ForumMyActivity$m;

    iget-object p3, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p4, p3}, Lcom/join/mgps/activity/ForumMyActivity$m;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0411

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    const v0, 0x7f09100f

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    const v0, 0x7f090edf

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    const v0, 0x7f090110

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    const v0, 0x7f09038e

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    const v0, 0x7f09038f

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    .line 10
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 11
    :try_start_0
    iget-object p2, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p2, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    const-string v0, "\u5c55\u5f00"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->e(Landroid/view/View;I)V

    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    .line 16
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    const p2, 0x7f0807e5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    const-string p2, "\u5c0f\u7ec4"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 22
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 23
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    const p2, 0x7f0807e7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    const-string p2, "\u8bdd\u9898"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 30
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    const p2, 0x7f0807e6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    const-string p2, "\u5e16\u5b50"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/ForumMyActivity$k;->g(Landroid/view/View;)V

    goto :goto_2

    .line 37
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 38
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    const p2, 0x7f0807e4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    const-string p2, "\u8bc4\u8bba"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/ForumMyActivity$k;->h(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-object p3
.end method

.method public h(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$k$c;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
