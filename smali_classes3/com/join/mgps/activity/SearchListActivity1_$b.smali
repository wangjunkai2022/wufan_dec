.class Lcom/join/mgps/activity/SearchListActivity1_$b;
.super Ljava/lang/Object;
.source "SearchListActivity1_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1_;->j1(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/SearchListActivity1_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_$b;->c:Lcom/join/mgps/activity/SearchListActivity1_;

    iput-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1_$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1_$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_$b;->c:Lcom/join/mgps/activity/SearchListActivity1_;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1_$b;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1_$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_;->o1(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
