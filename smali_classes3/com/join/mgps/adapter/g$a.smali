.class Lcom/join/mgps/adapter/g$a;
.super Ljava/lang/Object;
.source "CodesBoxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic b:Lcom/join/mgps/adapter/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/g;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/g$a;->b:Lcom/join/mgps/adapter/g;

    iput-object p2, p0, Lcom/join/mgps/adapter/g$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/g$a;->b:Lcom/join/mgps/adapter/g;

    invoke-static {p1}, Lcom/join/mgps/adapter/g;->a(Lcom/join/mgps/adapter/g;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/g$a;->b:Lcom/join/mgps/adapter/g;

    invoke-static {v0}, Lcom/join/mgps/adapter/g;->a(Lcom/join/mgps/adapter/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/GiftsDetailActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/g$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->c(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->a(I)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method
