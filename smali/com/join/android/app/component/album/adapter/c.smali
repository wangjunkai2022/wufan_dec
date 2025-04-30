.class public Lcom/join/android/app/component/album/adapter/c;
.super Landroid/widget/BaseAdapter;
.source "MyAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/adapter/c$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "camera"


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

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/component/album/adapter/c;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/join/android/app/component/album/adapter/c;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/android/app/component/album/adapter/c;->a:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    const-string v1, "camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private b(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/album/adapter/c;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080a00

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static c()Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->r(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/component/album/adapter/c;->c()Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/adapter/c;->b:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

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
    iget-object p3, p0, Lcom/join/android/app/component/album/adapter/c;->c:Landroid/content/Context;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/join/android/app/component/album/adapter/c;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/album/adapter/c$a;

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/join/android/app/component/album/adapter/c$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/adapter/c$a;-><init>(Lcom/join/android/app/component/album/adapter/c;)V

    .line 4
    iget-object v1, p0, Lcom/join/android/app/component/album/adapter/c;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c04c5

    invoke-virtual {v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09069a

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/android/app/component/album/adapter/c$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f0906fe

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/join/android/app/component/album/adapter/c$a;->b:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v1

    .line 8
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/join/android/app/component/album/adapter/c$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f0807b1

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 9
    iget-object v1, v0, Lcom/join/android/app/component/album/adapter/c$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10
    iget-object p3, v0, Lcom/join/android/app/component/album/adapter/c$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f0809fe

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/join/android/app/component/album/adapter/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, v0, Lcom/join/android/app/component/album/adapter/c$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res://"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/android/app/component/album/adapter/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f08027f

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 14
    iget-object p1, v0, Lcom/join/android/app/component/album/adapter/c$a;->b:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object p1, v0, Lcom/join/android/app/component/album/adapter/c$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 16
    iget-object p1, v0, Lcom/join/android/app/component/album/adapter/c$a;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, v0, Lcom/join/android/app/component/album/adapter/c$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, v0, Lcom/join/android/app/component/album/adapter/c$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, p3}, Lcom/join/android/app/component/album/adapter/c;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
