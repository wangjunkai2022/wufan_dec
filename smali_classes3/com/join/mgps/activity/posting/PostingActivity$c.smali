.class Lcom/join/mgps/activity/posting/PostingActivity$c;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Lnet/bither/util/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/posting/PostingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget v1, v0, Lcom/join/mgps/activity/posting/PostingActivity;->n0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Lcom/join/mgps/activity/posting/PostingActivity;->n0:I

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->S0()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->A0:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/posting/PostingActivity;->A0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$c;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/posting/PostingActivity;->A0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    .line 6
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    .line 7
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_0

    move-object v2, v6

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    const/4 v5, 0x0

    .line 11
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    if-nez v5, :cond_2

    .line 12
    :try_start_2
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-ne v5, v4, :cond_3

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity$c;->b(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity$c;->b(Ljava/util/List;)V

    :goto_4
    return-void
.end method
