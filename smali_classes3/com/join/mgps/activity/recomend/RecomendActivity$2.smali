.class Lcom/join/mgps/activity/recomend/RecomendActivity$2;
.super Ljava/lang/Object;
.source "RecomendActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecomendActivity;->sortIntMethod(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 2
    check-cast p2, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIndex()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
