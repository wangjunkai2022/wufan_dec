.class public Lcom/join/mgps/adapter/z4;
.super Landroid/widget/BaseAdapter;
.source "RecomWifiAdapter.java"


# instance fields
.field a:Lcom/join/mgps/activity/RecomWifiActivity;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/view/LayoutInflater;

.field private e:Lo1/d;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/RecomWifiActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/RecomWifiActivity;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/z4;->a:Lcom/join/mgps/activity/RecomWifiActivity;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/z4;->d:Landroid/view/LayoutInflater;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/z4;->c:Ljava/util/List;

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/RecomWifiActivity;->E0()Lo1/d;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/z4;->e:Lo1/d;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/z4;)Lo1/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/z4;->e:Lo1/d;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z4;->c:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

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
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/z4;->d:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0558

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090687

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09017b

    .line 3
    invoke-static {p2, v0}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900e1

    .line 4
    invoke-static {p2, v1}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0807b1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/join/mgps/adapter/z4$a;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/adapter/z4$a;-><init>(Lcom/join/mgps/adapter/z4;Landroid/widget/CheckBox;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p3, Lcom/join/mgps/adapter/z4$b;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/z4$b;-><init>(Lcom/join/mgps/adapter/z4;I)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method
