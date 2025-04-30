.class Lcom/join/mgps/fragment/u4$h;
.super Landroid/widget/BaseAdapter;
.source "UserCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/u4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/u4$h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field final synthetic d:Lcom/join/mgps/fragment/u4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/u4;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u4$h;->d:Lcom/join/mgps/fragment/u4;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/fragment/u4$h;->b:I

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/fragment/u4$h;->c:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/fragment/u4$h;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/u4$h;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/join/mgps/fragment/u4$h;->c:Z

    .line 2
    iput p1, p0, Lcom/join/mgps/fragment/u4$h;->b:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4$h;->a:Ljava/util/List;

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

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0358

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/fragment/u4$h$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/fragment/u4$h$a;-><init>(Lcom/join/mgps/fragment/u4$h;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/u4$h;->d:Lcom/join/mgps/fragment/u4;

    iget-object v2, p3, Lcom/join/mgps/fragment/u4$h$a;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v1, Lcom/join/mgps/fragment/u4;->o:Landroid/view/View;

    const v1, 0x7f090812

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p3, Lcom/join/mgps/fragment/u4$h$a;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09113a

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/join/mgps/fragment/u4$h$a;->d:Landroid/widget/TextView;

    const v1, 0x7f091139

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/join/mgps/fragment/u4$h$a;->e:Landroid/widget/TextView;

    const v1, 0x7f09091d

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/join/mgps/fragment/u4$h$a;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f090415

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/join/mgps/fragment/u4$h$a;->b:Landroid/view/View;

    const v1, 0x7f090a29

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/fragment/u4$h$a;

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/u4$h;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/fragment/u4$h;->d:Lcom/join/mgps/fragment/u4;

    invoke-static {v2}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    .line 15
    iget p1, p0, Lcom/join/mgps/fragment/u4$h;->b:I

    if-lez p1, :cond_2

    .line 16
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget p1, p0, Lcom/join/mgps/fragment/u4$h;->b:I

    const/16 v2, 0x63

    if-le p1, v2, :cond_1

    .line 18
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    const-string v2, "+99"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/join/mgps/fragment/u4$h;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->b:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 25
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->a:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 28
    :cond_6
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    :goto_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterItemBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p3, Lcom/join/mgps/fragment/u4$h$a;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->c:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, p1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 32
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterItemBean;->getSub_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p3, Lcom/join/mgps/fragment/u4$h$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-object p2
.end method
