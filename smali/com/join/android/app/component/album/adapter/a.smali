.class public Lcom/join/android/app/component/album/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/adapter/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/android/app/component/album/adapter/a;->a:Landroid/content/Context;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p1, Lcom/join/android/app/component/album/lib/ImageLoader;

    sget-object p2, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;-><init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    iput-object p1, p0, Lcom/join/android/app/component/album/adapter/a;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    return-void
.end method

.method public static a()Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->r(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-virtual {v0, p2, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

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
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/join/android/app/component/album/adapter/a;->a:Landroid/content/Context;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/join/android/app/component/album/adapter/a;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/android/app/component/album/adapter/a$a;

    goto :goto_0

    .line 3
    :cond_1
    new-instance p3, Lcom/join/android/app/component/album/adapter/a$a;

    invoke-direct {p3, p0}, Lcom/join/android/app/component/album/adapter/a$a;-><init>(Lcom/join/android/app/component/album/adapter/a;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900b2

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/android/app/component/album/adapter/a$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0900b5

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/android/app/component/album/adapter/a$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0900b1

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/android/app/component/album/adapter/a$a;->c:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/component/album/lib/a;

    .line 10
    iget-object v0, p3, Lcom/join/android/app/component/album/adapter/a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/join/android/app/component/album/adapter/a;->b(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 11
    iget-object v0, p3, Lcom/join/android/app/component/album/adapter/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p3, p3, Lcom/join/android/app/component/album/adapter/a$a;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p2
.end method
