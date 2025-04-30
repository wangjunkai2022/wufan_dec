.class public Lcom/join/mgps/adapter/ForumTMemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumTMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumTMemberAdapter$c;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$f;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$g;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$e;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$d;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$j;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$h;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$i;,
        Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTMemberAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/ForumTMemberAdapter$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->c:Lcom/join/mgps/adapter/ForumTMemberAdapter$c;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumTMemberAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumTMemberAdapter;)Lcom/join/mgps/adapter/ForumTMemberAdapter$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->c:Lcom/join/mgps/adapter/ForumTMemberAdapter$c;

    return-object p0
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$d;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTMemberAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0401

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090392

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$d;->a:Landroid/view/View;

    const v0, 0x7f090df6

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$d;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$a;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$a;->a:Ljava/lang/String;

    .line 9
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0400

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090126

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090b06

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->b:Landroid/widget/TextView;

    const v0, 0x7f090340

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->c:Landroid/widget/TextView;

    const v0, 0x7f0904e7

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->d:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$b;

    if-nez p1, :cond_1

    return-object p2

    .line 10
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$e;->d:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;

    invoke-direct {p3}, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0402

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0908de

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->a:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f090b17

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$c;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    .line 10
    :cond_1
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$f;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p3, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->b(Ljava/util/ArrayList;)V

    .line 16
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;

    invoke-direct {p3}, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0404

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090126

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090b06

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->b:Landroid/widget/TextView;

    const v0, 0x7f090340

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->c:Landroid/widget/TextView;

    const v0, 0x7f0904e7

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904ea

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->e:Landroid/widget/Button;

    const v0, 0x7f0904ec

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->f:Landroid/widget/Button;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$d;

    if-nez p1, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$g;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i$d;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private h(Ljava/util/ArrayList;)Landroid/widget/SimpleAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/adapter/ForumTMemberAdapter$a;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a:Landroid/content/Context;

    const-string v0, "itemImg"

    const-string v1, "itemName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const v4, 0x7f0c0403

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumTMemberAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v7

    :array_0
    .array-data 4
        0x7f09079c
        0x7f0907a7
    .end array-data
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTMemberAdapter$i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter$i;->a()Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumTMemberAdapter$i;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter$i;->b()Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_HEADER:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_ITEM:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_MODERATORS:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->MEMBER_MY:Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_3
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumTMemberAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public i(Lcom/join/mgps/adapter/ForumTMemberAdapter$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->c:Lcom/join/mgps/adapter/ForumTMemberAdapter$c;

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTMemberAdapter$i;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public k(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
