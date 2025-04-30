.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;
.super Ljava/lang/Object;
.source "GameDetialGiftMoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->I0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p3, p1, :cond_3

    if-gez p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/activity/GiftsDetailActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->c(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p3}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/activity/GiftsDetailActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->c(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p1

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->a(I)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_3
    :goto_0
    return-void
.end method
