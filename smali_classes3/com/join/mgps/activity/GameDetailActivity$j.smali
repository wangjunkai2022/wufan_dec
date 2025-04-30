.class Lcom/join/mgps/activity/GameDetailActivity$j;
.super Landroid/widget/BaseAdapter;
.source "GameDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic d:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;Ljava/util/List;ILcom/join/mgps/dto/GameListItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;I",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->a:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:I

    .line 5
    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c02a3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0712ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f86

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const v1, 0x7f09122b

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f091237

    .line 8
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902ac

    .line 9
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/customview/MStarBar;

    const v4, 0x7f0902eb

    .line 10
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/customview/GamelistExpandableTextView;

    const v5, 0x7f090a7b

    .line 11
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v5, 0x7f0909eb

    .line 12
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09124a

    .line 13
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 14
    invoke-virtual {v5, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result p3

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p3, v1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float p3, p3, v1

    if-nez p3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v4, p3, v1, v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->u(Ljava/lang/CharSequence;II)V

    .line 26
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$j$a;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$j$b;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$j$c;

    invoke-direct {p3, p0, v4, p1}, Lcom/join/mgps/activity/GameDetailActivity$j$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-object p2
.end method
