.class Lcom/join/mgps/activity/GamePaiWeiActivty$a;
.super Ljava/lang/Object;
.source "GamePaiWeiActivty.java"

# interfaces
.implements Lcom/join/mgps/customview/AutoScrollViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->I(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$a;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$a;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->m(Lcom/join/mgps/activity/GamePaiWeiActivty;Ljava/util/List;I)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p1

    return-object p1
.end method
