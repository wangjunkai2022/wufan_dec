.class Lcom/join/mgps/activity/g$k;
.super Ljava/lang/Object;
.source "ClassifyListGameFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g;->showMain(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/activity/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g$k;->b:Lcom/join/mgps/activity/g;

    iput-object p2, p0, Lcom/join/mgps/activity/g$k;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g$k;->b:Lcom/join/mgps/activity/g;

    iget-object v1, p0, Lcom/join/mgps/activity/g$k;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/g;->t0(Lcom/join/mgps/activity/g;Ljava/util/List;)V

    return-void
.end method
