.class Lcom/join/mgps/activity/ForumSearchHintActivity$i;
.super Landroid/widget/BaseAdapter;
.source "ForumSearchHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

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

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity$i;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0571

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->a:Landroid/widget/TextView;

    const v0, 0x7f090cb5

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->b:Landroid/widget/TextView;

    const v0, 0x7f090acd

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->c:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 9
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ge p1, v1, :cond_1

    .line 10
    iget-object v1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->a:Landroid/widget/TextView;

    aget p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p3, Lcom/join/mgps/activity/ForumSearchHintActivity$i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;->getColor()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/h;->d(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    new-instance p1, Lcom/join/mgps/activity/ForumSearchHintActivity$j;

    iget-object p3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity$j;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :array_0
    .array-data 4
        0x7f080acb
        0x7f080acc
        0x7f080acd
    .end array-data
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method
