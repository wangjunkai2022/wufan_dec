.class Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "IntroductionProgressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "TT;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    const p1, 0x7f0c031a

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "TT;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/join/mgps/dto/TimingBean;

    const v1, 0x7f080b6f

    const v2, 0x7f080b6e

    const v3, 0x7f09095b

    const v4, 0x7f091192

    const v5, 0x7f091190

    const v6, 0x7f091199

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Lcom/join/mgps/dto/TimingBean;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/TimingBean;->getTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/x;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/TimingBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/TimingBean;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080b6e

    :goto_0
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    goto :goto_2

    .line 7
    :cond_1
    instance-of v0, p2, Lcom/join/mgps/dto/VideoChaptersBean;

    if-eqz v0, :cond_3

    .line 8
    check-cast p2, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/x;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->getPage()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f080b6e

    :goto_1
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    :cond_3
    :goto_2
    return-void
.end method
