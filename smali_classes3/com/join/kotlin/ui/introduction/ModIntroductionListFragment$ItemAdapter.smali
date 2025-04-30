.class Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "ModIntroductionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/BbsListBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;

    const p1, 0x7f0c0320

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/BbsListBean;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f091192

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f090dd1

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsListBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsListBean;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f091190

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsListBean;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/x;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v2, v1}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsListBean;->getIsCollection()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0x7f091157

    if-ne v0, v3, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5408\u96c6\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsListBean;->getVideos()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 10
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v2, v1}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_1
    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/BbsListBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;->convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/BbsListBean;)V

    return-void
.end method
