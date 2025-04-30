.class public Lcom/join/mgps/adapter/ForumTMemberAdapter$h;
.super Landroid/widget/BaseAdapter;
.source "ForumTMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/join/mgps/adapter/ForumTMemberAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->d:Lcom/join/mgps/adapter/ForumTMemberAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string p1, "itemImg"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->a:Ljava/lang/String;

    const-string p1, "itemName"

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;-><init>(Lcom/join/mgps/adapter/ForumTMemberAdapter$h;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->d:Lcom/join/mgps/adapter/ForumTMemberAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->a(Lcom/join/mgps/adapter/ForumTMemberAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0403

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09079c

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0907a7

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter$h;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "itemImg"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "itemName"

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 11
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTMemberAdapter$h$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method
