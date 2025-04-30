.class Lcom/join/mgps/activity/ClassifyGameActivity_$k;
.super Ljava/lang/Object;
.source "ClassifyGameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity_;->O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ClassifyGameTagBean;

.field final synthetic b:Lcom/join/mgps/activity/ClassifyGameActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/dto/ClassifyGameTagBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$k;->b:Lcom/join/mgps/activity/ClassifyGameActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$k;->a:Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$k;->b:Lcom/join/mgps/activity/ClassifyGameActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_$k;->a:Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->X0(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    return-void
.end method
