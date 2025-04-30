.class Lcom/join/mgps/activity/SearchHintActivity_$c;
.super Ljava/lang/Object;
.source "SearchHintActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity_;->w1(Lcom/join/mgps/activity/search/SearchIndexData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/search/SearchIndexData;

.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity_;Lcom/join/mgps/activity/search/SearchIndexData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity_$c;->b:Lcom/join/mgps/activity/SearchHintActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity_$c;->a:Lcom/join/mgps/activity/search/SearchIndexData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity_$c;->b:Lcom/join/mgps/activity/SearchHintActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity_$c;->a:Lcom/join/mgps/activity/search/SearchIndexData;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/SearchHintActivity_;->N1(Lcom/join/mgps/activity/SearchHintActivity_;Lcom/join/mgps/activity/search/SearchIndexData;)V

    return-void
.end method
