.class Lcom/join/mgps/activity/ClassifyGameActivity_$j;
.super Ljava/lang/Object;
.source "ClassifyGameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity_;->V0(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ClassifyGameActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;->c:Lcom/join/mgps/activity/ClassifyGameActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iput p3, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;->c:Lcom/join/mgps/activity/ClassifyGameActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ClassifyGameActivity_;->W0(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    return-void
.end method
