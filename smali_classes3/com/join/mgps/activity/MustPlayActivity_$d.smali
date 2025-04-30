.class Lcom/join/mgps/activity/MustPlayActivity_$d;
.super Ljava/lang/Object;
.source "MustPlayActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MustPlayActivity_;->K0(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/MustPlayActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_$d;->c:Lcom/join/mgps/activity/MustPlayActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MustPlayActivity_$d;->a:Ljava/util/List;

    iput p3, p0, Lcom/join/mgps/activity/MustPlayActivity_$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_$d;->c:Lcom/join/mgps/activity/MustPlayActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MustPlayActivity_$d;->a:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/MustPlayActivity_$d;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MustPlayActivity_;->P0(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/util/List;I)V

    return-void
.end method
