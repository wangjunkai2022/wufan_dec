.class public Lcom/join/mgps/adapter/ForumBaseAdapter$j0;
.super Landroid/widget/BaseAdapter;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumTopicBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private c(Landroid/widget/ImageView;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$a;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$j0;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumTopicBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumTopicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->a:Ljava/util/List;

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
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$j0;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d(Lcom/join/mgps/adapter/ForumBaseAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0448

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09079c

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getIcon_src()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 9
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->c(Landroid/widget/ImageView;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
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
