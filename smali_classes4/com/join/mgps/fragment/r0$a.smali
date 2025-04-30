.class Lcom/join/mgps/fragment/r0$a;
.super Ljava/lang/Object;
.source "ForumIndexFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r0;->y0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

.field final synthetic b:Lcom/join/mgps/fragment/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r0$a;->b:Lcom/join/mgps/fragment/r0;

    iput-object p2, p0, Lcom/join/mgps/fragment/r0$a;->a:Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r0$a;->b:Lcom/join/mgps/fragment/r0;

    iget-object v1, p0, Lcom/join/mgps/fragment/r0$a;->a:Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/r0;->f1(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    return-void
.end method
