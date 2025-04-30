.class Lcom/join/mgps/activity/ForumPostsActivity$f0;
.super Landroid/widget/BaseAdapter;
.source "ForumPostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f0"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$g0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/activity/ForumPostsActivity$g0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/ForumPostsActivity$g0;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$g0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$g0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a:Ljava/util/List;

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
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;

    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p3, p2}, Lcom/join/mgps/activity/ForumPostsActivity$h0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c01ee

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f090acd

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 8
    iget v0, p1, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$g0;->c:Z

    if-eqz p1, :cond_1

    const p1, 0x7f080867

    goto :goto_1

    :cond_1
    const p1, 0x7f080866

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 10
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u6536\u85cf"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 12
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f08086b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 13
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u5206\u4eab"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 15
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f080861

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u5012\u5e8f\u67e5\u770b"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 18
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f080862

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 19
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u6b63\u5e8f\u67e5\u770b"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$e;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$e;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 21
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f08086a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 22
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u4e3e\u62a5"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$f;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 24
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f080865

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 25
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u5220\u5e16"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$g;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$g;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 27
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$g0;->d:Z

    if-eqz p1, :cond_8

    const p1, 0x7f080864

    goto :goto_2

    :cond_8
    const p1, 0x7f080863

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 28
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u52a0\u7cbe"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$h;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$h;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_9
    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 30
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f08086c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 31
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u6536\u5f55\u81f3\u8bdd\u9898"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$i;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$i;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    .line 33
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    const v0, 0x7f08086d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 34
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u79fb\u9664\u8bdd\u9898"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$j;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$j;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_b
    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 36
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->a:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$g0;->e:Z

    if-eqz p1, :cond_c

    const p1, 0x7f080869

    goto :goto_3

    :cond_c
    const p1, 0x7f080868

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 37
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$h0;->b:Landroid/widget/TextView;

    const-string p3, "\u7f6e\u9876"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$f0$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    :goto_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method
