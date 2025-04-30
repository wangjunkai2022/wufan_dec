.class Lcom/join/mgps/activity/SharePostsActivity$i;
.super Landroid/widget/BaseAdapter;
.source "SharePostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SharePostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SharePostsActivity$i$d;,
        Lcom/join/mgps/activity/SharePostsActivity$i$e;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "add_image"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field c:Z

.field private d:Lcom/join/mgps/activity/SharePostsActivity$i$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/SharePostsActivity$i;)Lcom/join/mgps/activity/SharePostsActivity$i$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->d:Lcom/join/mgps/activity/SharePostsActivity$i$d;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/SharePostsActivity$i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c()Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->r(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070df0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070def

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v2, v1

    .line 5
    div-int/lit8 v2, v2, 0x4

    .line 6
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v2, v0

    .line 8
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    const-string v0, "add_image"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Z

    return-void
.end method

.method public g(Lcom/join/mgps/activity/SharePostsActivity$i$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->d:Lcom/join/mgps/activity/SharePostsActivity$i$d;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c01eb

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$i$e;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;)V

    const v2, 0x7f09069a

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    const v2, 0x7f0906fd

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v2, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-direct {p0, p3, p2}, Lcom/join/mgps/activity/SharePostsActivity$i;->f(Landroid/view/View;Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/SharePostsActivity$i;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "add_image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    iget-object p1, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    const p3, 0x7f0809fc

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p1, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    new-instance p3, Lcom/join/mgps/activity/SharePostsActivity$i$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/SharePostsActivity$i$a;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity$i;->c()Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object p3

    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    invoke-virtual {p3, v0, v3}, Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 15
    iget-object p3, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity$i$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SharePostsActivity$i$b;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->a:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_2

    .line 20
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 21
    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    .line 23
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_1
    if-ge v2, v3, :cond_3

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_3
    iget-object p3, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$i$c;

    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/activity/SharePostsActivity$i$c;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;I[Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
