.class Lcom/join/mgps/activity/GameDetailActivity_$u;
.super Ljava/lang/Object;
.source "GameDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity_;->f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity$l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/activity/GameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->g:Lcom/join/mgps/activity/GameDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->a:Lcom/join/mgps/activity/GameDetailActivity$l;

    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->d:Lcom/join/mgps/dto/GameListItemBean;

    iput p6, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->e:I

    iput p7, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->g:Lcom/join/mgps/activity/GameDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->a:Lcom/join/mgps/activity/GameDetailActivity$l;

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->d:Lcom/join/mgps/dto/GameListItemBean;

    iget v5, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->e:I

    iget v6, p0, Lcom/join/mgps/activity/GameDetailActivity_$u;->f:I

    invoke-static/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetailActivity_;->E1(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    return-void
.end method
